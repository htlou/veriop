# 优化方法分析报告

日期：2026-10-16。本报告逐项说明每个优化**改了哪些函数、原实现的瓶颈在哪、怎么改的、为什么新旧等价**。验证结论与文件位置见同目录的 [`SUMMARY.md`](SUMMARY.md)。

**"验证通过"的定义**：用形式化方法证明了新旧代码等价（或新代码 refine 旧代码），而且覆盖官方 benchmark 任务的全部输入。差分测试、单元测试都不算。

**加速比的口径**：全部是**函数 / 算子级**，即官方 benchmark 中受影响条目的加速，不是整个仓库 benchmark 的综合分。每个仓库的完整官方 benchmark 套件都另跑过，只用来确认其他条目没有退化（见 `SUMMARY.md`）。

## 总览

| # | 仓库 | 改动的函数 | 优化类型 | 官方 benchmark（受影响条目） | 形式化验证 | held-out |
|---|---|---|---|---|---|---|
| 1 | s2n-bignum（x86 汇编） | `bignum_normalize` | 换算法：O(k²) → O(k log k) | 5.58× | ✅ HOL Light | 是 |
| 2 | llama.cpp（CUDA） | 新增 `conv2d_dw_kernel_fixed`（3×3 和 5×5） | 循环全展开，去掉运行时边界和除法 | 1.657× | ✅ Volta（官方形状的所有线程块） | 是 |
| 3 | fast_float（C++） | `from_chars_int_advanced<uint16_t,char>` | SWAR：一次 8 字节读取解析 4–5 位数字 | 1.58×（被证明的构建） | ✅ Alive2 | 是 |
| 4 | rust-base64（Rust） | `decode_complete_quads`、新增 `decode_chunk_{8,4}_pairs` | 一次查表解码两个字符 | 1.59×（decode_slice） | ✅ Aeneas/Lean | 接近 trial |
| 5 | libdivide（C） | `libdivide_s32_do_raw`、`libdivide_s64_do_raw` | 难预测的分支改为 select | 1.86× | ✅ Alive2 | 否，复用 trial 技巧 |
| 6 | vLLM（CUDA） | 新增 `rotary_embedding_neox_vec4_kernel` | 8 字节向量化读写，合并 q/k 工作列表 | 1.069× | ✅ Volta（所有线程块、所有 position） | 是 |
| 7 | vLLM（CUDA） | 新增 `activation_flat_vec_kernel`（relu²） | 少 token 时把工作摊到更多线程块 | 1.058×（bf16）/ 1.080×（fp32） | ✅ Volta | 是 |
| 8 | RoaringBitmap（Java） | `BitmapContainer.rank` | 从离得近的一端开始数 | 1.77× | ❌ 公开 API 下与原版不等价 | 是 |
| 9 | RoaringBitmap（Java） | `BitmapContainer.select` | 4 个 word 一组跳过 | 1.42× | ❌ KeY 证明没有闭合 | 是 |

---

## 1. s2n-bignum：`bignum_normalize`

- **文件**：`x86/generic/bignum_normalize.S`，证明在 `x86/proofs/bignum_normalize.ml`
- **函数作用**：把 k 个 64 位 limb 组成的大整数左移，直到最高位为 1，并返回移动的位数（64k − bitsize n）。

**原实现**分两段：
1. **按 limb 移**：最多重复 k−1 次"如果最高 limb 是 0，就把整个数组左移一个 limb"。每次都完整扫一遍数组，用 `cmovc` 保证常数时间，总共约 k² 次读写。
2. **按位移**：`bsr` 数出最高 limb 的前导零，再用 `shld` 把整个数组左移这么多位。

原代码注释自己写了："With careful binary striding this could be O(k*log(k))"。

**新实现**只改了第 1 段：
1. **一次扫描定位**：从下标 1 扫到 k−1，用 `cmovnz` 记下最高的非零 limb 下标 p，得出要移的 limb 数 r = k−1−p。
2. **按 r 的二进制位分步移**：对 s = 1, 2, 4, …（s < k），如果 r 的这一位是 1，就把整个数组左移 s 个 limb。`shiftloop` 负责搬运，`zeroloop` 负责补零，两者都用 `cmovnz`，所以每轮每个 limb 都会读写一次。
3. 第 2 段（`bsr`/`shld`）不变。

**仍是常数时间**：分支只依赖 k 和循环计数器，地址都是 z + 8×计数器，数据只流进 `cmov`、存储和原有的 `bsr`/`shld`。

**效果与代价**：k = 32 时，动态指令从 7,495 降到 1,711，存储从 1,024 降到 192。k 很小时更慢：k = 3 时 0.70×，k = 5 时 0.80×。

**等价性**：HOL Light 对新机器码证明了全部 5 个定理（`BIGNUM_NORMALIZE_CORRECT` 和 4 个 subroutine 版本）。规约与原来相比只改了代码长度和出口偏移，而规约对所有输入完全确定输出内存和返回值，所以新旧代码等价。

---

## 2. llama.cpp：深度卷积 `CONV_2D_DW`

- **文件**：`ggml/src/ggml-cuda/conv2d-dw.cu`

**原实现的瓶颈**（`conv2d_dw_kernel`，每个线程算一个输出）：
1. **解下标**：用 4 组有符号除法和取模，从全局下标解出 (n, c, y, x)。
2. **算边界**：`calculate_kernel_bounds` 再做 4 次除法，求出不越界的卷积核位置范围 [min, max)。
3. **不能展开**：两层循环的上下界是运行时值，编译器无法展开。每次迭代都是"算地址 → 读内存 → 乘加"的串行链，读内存没法提前批量发出。

实测有效带宽只有 300–505 GB/s，H100 的峰值约 3.35 TB/s。

**新实现** `conv2d_dw_kernel_fixed<T, cwhn, KW, KH>`：
1. **编译期核尺寸**：KW、KH 是模板常量，两层循环用 `#pragma unroll` 完全展开，各位置的读取可以同时发出。
2. **逐点判断代替边界除法**：每个核位置用一个条件 `0 ≤ in_y < in_h && 0 ≤ in_x < in_w` 判断是否参与。它选出的集合和原来的 [min, max) 完全一致，省掉了 `calculate_kernel_bounds` 的除法。
3. **更便宜的解下标**：用 3 次无符号除法加"乘再减"算余数，代替 4 组有符号除法和取模。
4. **地址预计算**：提前算好输入基地址 `in_base` 和 x、y 方向的步长，循环内只剩加法。
5. **分派**：`conv2d_dw_cuda` 只在 3×3 和 5×5 时用新 kernel，其他尺寸仍走原 kernel。

**特意保持不变**：线程与输出的对应关系、累加顺序（先 ky 后 kx，从 0.0 开始逐个 fma）。

**等价性**：在 Volta 副本上加了 `--cta` 选项（指定检查哪个线程块），把 14 个官方配置的全部 528,340 个线程块逐个检查，全部 `EQUIVALENT`。每个输出的符号表达式逐字相同，所以结果按位一致。故意引入的 bug 在 131,072 个块里被检出。范围限于官方 benchmark 的形状。

---

## 3. fast_float：`from_chars<uint16_t>`

- **文件**：`include/fast_float/ascii_number.h`（新增 `try_parse_u16_fast`）、`include/fast_float/parse_number.h`（分派）

**原实现**：通用整数解析器 `from_chars_int_advanced` 逐字节处理：跳过前导零，对每个字符单独判断是否数字，逐位乘 10 累加，再做溢出检查。uint16 最多 5 位数字，但每一位都要走一遍"判断 + 分支 + 累加"。

**新实现**：
1. **一次读 8 字节**：输入剩余不少于 8 字节时，用 `read8_to_u64` 读成一个 u64。
2. **SWAR 判断非数字**：`((chunk + 0x46…46) | (chunk − 0x30…30)) & 0x80…80` 一次算出每个字节是否为数字。对第一个非数字字节结果是精确的，因为数字字节的加减不会产生进位或借位。
3. **只处理两种最常见的形状**：
   - **恰好 5 位数字后接非数字**：前 4 位用已有的 `parse_four_digits_unrolled`（SWAR 乘法）一次算出，再 ×10 加第 5 位；超过 65535 就返回 `result_out_of_range`。
   - **恰好 4 位数字后接非数字**：直接用 4 位的结果。
   - 两种形状的返回指针分别是固定的 p + 5 和 p + 4，所以下一次解析的地址不依赖读到的数据。
4. **其他情况一律回退**：不满足上述形状时（少于 8 字节、3 位以下或 6 位以上、带空白、正号、非 10 进制等）返回 false，不改动 `value`，交给一个 `never_inline` 的原通用解析器副本。
5. **只对 uint16_t/char 生效**：通过 `std::integral_constant` 标签分派，其他类型的代码和原来完全相同。另外，把慢路径放进独立函数，快路径就足够小，不会溢出寄存器。

**被拒绝的方案**：把所有整数类型都拆出慢路径，结果 `bench_ip`（uint8 解析）降到 0.535×。保存在 `c-alive2/patches/rejected-v2-split-all-types.patch`。

**等价性**：用 Alive2 在 IR 上分案证明：
- 一个划分检查证明每个输入恰好落入一个子情形；
- V1a/V1b：非快路径时，新函数等于调用慢路径副本；
- V3：慢路径副本与原函数逐字相同；
- V2：快路径按"4 或 5 位 × 前导零个数 × 长度"分成 99 个子情形，双向全部通过；V2G 是同样的 99 个子情形，输入缓冲区可在任意地址，也全部通过。

当初 V2 一直证不出来，是因为提取 IR 时查找表成了空声明，而且 Alive2 默认丢弃大于 128 字节的常量，问题本身就提错了。对 Alive2 做的修改（循环展开上界检查、查找表上限提到 1024 字节）已经用 Alive2 自带测试集复核过：没有任何"应报错"的用例被放行。

**限制**：
- 证明覆盖的是由验证用 IR 链接成的构建（1.58×），默认上游构建（1.98×）的内联方式不同，只有测试覆盖。
- 前提是 `value` 不与输入字节重叠，这由 C++ 对象生命周期规则保证。

---

## 4. rust-base64：解码

- **文件**：`src/engine/general_purpose/decode.rs`

**原实现**（`decode_chunk_8`）每次处理 8 个字符：每个字符单独查一次 256 项表，单独判断是否非法并分支，再移位拼成 6 个输出字节。

**新实现**：
1. **双字符表**：新增 `STANDARD_DECODE_PAIRS: [u16; 65536]`，编译期由 `const` 生成。用两个相邻字符拼成的 u16 当下标，一次查出 12 位结果；任一字符非法则得到 0xFFFF。
2. **`decode_chunk_8_pairs`**：4 次查表覆盖 8 个字符，用一次判断 `(p0|p1|p2|p3) < 0x1000` 确认全部合法，再拼成 u64 写出 6 个字节。`decode_chunk_4_pairs` 同理。
3. **出错时回退原函数**：只要有非法字符，就整块交给原来的 `decode_chunk_8` / `decode_chunk_4`，报错位置和已写出的部分输出都与原来完全相同。
4. **只对标准字母表走快路径**：`decode_complete_quads` 先判断 `decode_table == STANDARD_DECODE_TABLE`，是就走新循环，否则走原循环。
5. **强制内联**：解码调用链加了 `#[inline(always)]`，像 `STANDARD` 这样的常量 engine 上，256 字节的比较在编译期就被消掉。

**代价**：多了 128 KiB 只读表。

**等价性**：Lean 定理 `decode_slice_equiv`、`decode_equiv`、`decode_vec_equiv`（含 `_default_` 版本）证明：对所有输入、所有输出缓冲区、所有 engine，新旧版本的返回值或错误以及整个输出缓冲区都相同。其中一个引理证明表的 65,536 项全部正确。
- 公理只有 `propext`、`Classical.choice`、`Quot.sound` 和 opaque 的 `Formatter`。
- 翻译器 Aeneas/Charon 的补丁已通过上游测试套件（Charon 547 项、Aeneas 113 项）。
- `decode_stream` 路径（`DecoderReader`，涉及 std::io）Aeneas 无法抽取，没有验证。

---

## 5. libdivide：有符号除法 `libdivide_s32_do_raw` / `libdivide_s64_do_raw`

- **文件**：`libdivide.h`

**原实现**：
```c
if (more & LIBDIVIDE_ADD_MARKER) {
    int32_t sign = (int8_t)more >> 7;
    uq += ((uint32_t)numer ^ sign) - sign;
}
```
官方 benchmark 每次迭代都换一个除数，这个分支走哪边基本随机，CPU 经常猜错。

**新实现**：无条件算出 `sign`，再用三元表达式在加数和 0 之间选择：
```c
uq += (more & LIBDIVIDE_ADD_MARKER) ? ((uint32_t)numer ^ sign) - sign : 0;
```
编译后由 `testb; je` 变成 `testb; cmove`，分支预测失败就没了。s64 的改法相同。

**代价**：除数固定时原分支本来就能猜对，现在约慢 1%。

**等价性**：Alive2 双向检查 2/2 等价。函数没有循环，所以覆盖全部输入；改错的版本会被拒绝。

**说明**：这和 trial 任务（无符号 u32/u64）是同一个技巧、同一个文件，所以不能作为方法能推广的证据。

---

## 6. vLLM：rotary embedding（NeoX，16 位）

- **文件**：`csrc/libtorch_stable/pos_encoding_kernels.cu`（新增 `rotary_embedding_neox_vec4_kernel` 和 `rotary_embedding` 中的分派）

**原实现**（`rotary_embedding_kernel`，每个 token 一个线程块）：
- 先遍历全部 query head 的元素，再单独遍历 key head 的元素，分成两个循环；
- 每次迭代只处理一对元素 (x, y)，用 2 字节标量读写，cos/sin 也逐个读取。

**新实现**：
1. **向量化**：每个工作项处理 4 个连续的 rotary 偏移，x、y、cos、sin 都用一次 8 字节的 `ushort4` 读入，结果用 8 字节写回。
2. **合并工作列表**：query 和 key 放进同一个工作列表，避免第二个循环收尾不满。
3. **按工作量定线程数**：线程块大小为 min(向上取整到 32 的工作项数, 256)。
4. **不变的部分**：仍是每个 token 一个线程块，每个元素的公式（`x·cos − y·sin`、`y·cos + x·sin`，含 inverse）完全不变。
5. **分派条件**：只在 NeoX 风格、16 位 dtype 且 cache 同类型、所有偏移是 4 的倍数、指针 8 字节对齐时启用，其余情况走原 kernel。

**效果**：单看 rotary kernel 快 1.2–1.5×，已到这种访存模式下的内存带宽下限。但官方脚本的计时里包含两次完整的 `clone()`，整体只有 1.069×；即使 kernel 耗时为 0，上限也只有约 1.36×。

**等价性**：Volta 副本上加了 `--cta`（指定线程块）和 `--index-range`（把 `positions` 作为 [0, 8192) 内的符号整数）。32 个默认配置的全部 163,200 个线程块都检查过，每块覆盖所有合法 position，且输出表达式逐字相同（按位一致）。

---

## 7. vLLM：`relu_squared` 激活

- **文件**：`csrc/libtorch_stable/activation_kernels.cu`（新增 `activation_flat_vec_kernel` 和 `LAUNCH_ACTIVATION_KERNEL_IMPL` 中的分派）

**原实现**（`activation_kernel`）：每个 token 一个线程块（`grid = num_tokens`），块内按 128 位向量处理这一行。token 很少而行很长时，比如 1 个 token × 很大的 d，只有一两个线程块在干活，大部分 SM 闲着。

**新实现**：
1. **展平**：行是连续存放的，且 d 是向量宽度的倍数，所以把 num_tokens × d 个元素视为一个平坦数组，展平后的 128 位向量与按行切分的向量完全一致。
2. **grid-stride 循环**：线程块数为 min(⌈向量数/128⌉, 8 × SM 数)，每块 128 个线程，把工作摊到整张卡上。
3. **分派条件**：只在 relu² 且 d/向量宽度 > 1024、num_tokens ≤ 256 时启用。第一版只支持 fp32，第二版扩展到所有浮点类型（bf16/fp16）。
4. **不变的部分**：逐元素的激活函数 `ACT_FN` 不变。

**效果**：个别形状 1.37–1.63×，但官方脚本默认形状的几何平均只有 1.06–1.08×，大部分形状已在带宽上限或启动开销下限。

**等价性**：两个 kernel 切分工作的方式不同，所以逐对比较有重叠的（原线程块, 新线程块），只比两者共有的那部分元素。
- 走新路径的 12 个配置里，所有窗口都通过，而且这些窗口正好拼满整个输出；
- 其余 24 个配置运行的 PTX/SASS 与原来完全相同；
- bf16 版本依赖 Volta 的 16 位 pack/unpack 扩展。

---

## 8、9. RoaringBitmap（未验证通过）

- **`rank` 两端扫描**（`BitmapContainer.rank`）：
  - **思路**：目标 word 在后半段且缓存的 `cardinality` 有效时，用 cardinality 减去目标之后各 word 的 popcount，而不是从头累加，平均少扫一半。
  - **为什么不能验证**：这是**本质性**的。公开构造函数 `BitmapContainer(long[], int)` 接受任意 cardinality（文档写的是 "desired cardinality"，既不检查，也不拷贝数组）。在这种状态下新旧结果确实不同（旧版 60001，新版 −535）。只在类不变式（`validate()` 为真）成立时，KeY 能证明两者等价。
- **`select` 4-word 跳块**（`BitmapContainer.select`）：
  - **思路**：先每 4 个 word 求一次 popcount 和，整块跳过；定位到块后再逐 word 处理，在 word 内部改用无分支的 `selectInWord`。
  - **为什么没验证**：这是**工具和时间问题**，不是两者不等价。它不依赖 cardinality 是否正确，随机差分测试 320 万例（含错误 cardinality、非常规数组长度）0 不一致，但 KeY 证明没有闭合，所以不算验证通过。

---

## 共性方法

| 方法 | 体现在 |
|---|---|
| 降低算法复杂度 | `bignum_normalize`：O(k²) → O(k log k) |
| 打断串行依赖，让访存并行发出 | `conv2d_dw` 循环全展开 |
| 一次处理更多数据（SWAR、查表、向量化） | fast_float 一次读 8 字节；base64 双字符表；rope 8 字节向量 |
| 消除难预测的分支 | libdivide 改成 `cmov` |
| 提高并行度，用满所有 SM | relu² 展平并采用 grid-stride |
| **快路径 + 原样回退** | conv2d 只特化 3×3/5×5；fast_float 只处理 4/5 位；base64 遇到非法字符回退原函数；rope/relu² 只在满足条件时启用。这是让等价证明能做下来的关键：证明只需覆盖快路径，回退部分与原代码逐字相同 |
| **保持运算顺序** | conv2d、rope、relu² 的浮点运算顺序不变，结果按位一致，不只是在实数意义上相等 |
