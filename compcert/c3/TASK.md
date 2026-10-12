对。现在最合理的下一步是：**不要再优化静态 `Lgoto`，而是把 C1 改造成 profile-guided / microarchitecture-aware 的 verified layout optimization**。你现在即使没有 admin，仍然能拿到不少有用信号。

CompCert 官方本身也把 **execution speed** 和 **executable size** 当成不同优化目标：普通优化偏速度，`-Os` 偏代码大小。:chatgpt-content-reference{index="0"} 所以“编译出来的代码 performance”不应该只等于 wall-clock。

### 可以看的 performance metrics

| 层级 | Metric | 现在能不能测 | 对你们最有用吗 |
|---|---|---:|---:|
| 最终效果 | latency / throughput | ✅ | **最高** |
| 代码质量 | `.text` / executable size | ✅ | **高** |
| 动态工作量 | retired-like instruction count | ✅ Callgrind/Cachegrind proxy | **很高** |
| 控制流 | executed branches / jumps | ✅ | **很高** |
| 分支预测 | branch mispredict proxy | ✅ 模拟 | 中高 |
| I-cache | instruction-cache miss proxy | ✅ 模拟 | **高，尤其 layout** |
| D-cache / memory | loads/stores + simulated misses | ✅ | 中 |
| CPU cycles | hardware cycles | ❌ 当前没权限 | 很高 |
| IPC/CPI | hardware counters | ❌ | 很高 |
| frontend/backend stalls | hardware counters | ❌ | 很高 |
| register pressure / spills | 静态汇编可看 | ✅ | 中高 |
| stack frame size | ✅ | 中 |
| energy/power | 通常需权限 | ❌/困难 | 次要 |

Valgrind 的 Cachegrind/Callgrind **不需要硬件 performance counter 权限**。默认就能统计动态 instruction count；还可以打开 branch/cache simulation，得到 `Bc/Bcm`、`I1mr/ILmr`、`Dr/Dw` 等。官方文档也强调 instruction counts 非常 reproducible；但 cache/branch predictor 是软件模型，只能当 proxy，不能假装是真实 Zen 4 counters。:chatgpt-content-reference{index="1"}

---

## 下一步 plan

1. **冻结现在的 C1-global，先做 regression diagnosis。** 不再改当前策略。对 `picojpeg`、`sglib-combined`、MiBench JPEG encode，再加几个 runtime 基本不变的 control，用 baseline/C1 两个 executable 跑 Callgrind/Cachegrind。至少收集 `Ir`、dynamic branches、simulated branch misses、I1/LL instruction misses、data reads/writes，并用 `--collect-jumps=yes` 保存动态 jump 信息。这样先回答：C1 慢是因为多执行了指令、hot edge 被放错了、I-cache locality 变差，还是纯 alignment/layout effect。Callgrind 支持 instruction-level 和 jump collection。:chatgpt-content-reference{index="2"}

2. **建立真正的 edge-frequency profile。** 你现在的 loop-weighted 版本本质还是“猜 hotness”：SCC 内给 8、外面给 1，而实验已经说明这个 proxy 没有转化成 runtime gain。下一版不要猜 loop 权重，而是从实际运行得到：
   \[
   f(u\to v)=\text{edge execution count}.
   \]
   可以通过 Callgrind jump trace，或者做一个只用于 profiling 的 instrumented build，把 machine-code/basic-block address 映射回 LTL node。最终 production compiler 不带 instrumentation，所以不影响证明边界。

3. **做 C3：profile-guided layout，而不是 jump-count layout。** 目标改成类似 LLVM ExtTSP 的思想：
   \[
   \max_{\pi}\sum_{e=(u,v)} f(e)\cdot \mathrm{benefit}(\pi,u,v),
   \]
   其中 benefit 不只是“是不是 fall-through”，还考虑 hot blocks 是否靠近、jump distance 和 locality。LLVM 当前的 ExtTSP 就是同时利用 node/edge execution counts，优化 fall-through 和 instruction-cache locality。:chatgpt-content-reference{index="3"}

   具体可以先做：
   ```text
   score =
       hot fall-through benefit
     + hot block locality benefit
     - taken-unconditional-branch cost
     - long-jump / separation penalty
     - code-size growth penalty
   ```

   关键是：**仍然只输出 block permutation。** 所以还是：
   ```text
   profile-guided heuristic
          ↓
   candidate enumeration
          ↓
   unchanged CompCert checker
          ↓
   unchanged Linearize proof
   ```
   这意味着 C3 仍然可以保持 C1 那种完整的 verified status。

4. **用 frozen profile / held-out workload 验收，不要直接按 wall-clock hill-climb。** Development input 用来收 profile；evaluation input 或至少 evaluation programs 不参与 objective 调参。否则很容易变成 benchmark-specific optimizer。最终 acceptance gate 应该是：existing proof 全过 + runtime ratio > 1，并报告 CI；代码大小不能明显爆炸。现在 C1 的 `.text` 基本不变，这是一个很好的 baseline。:chatgpt-content-reference{index="4"}

5. **如果 PGO layout 仍然收益很小，就停止 layout，转向更有性能潜力的现有 verified interfaces。** 我建议顺序是：**Inlining heuristic → Register allocation → branch/if-conversion decisions**。其中 register allocation 尤其值得做：spill、reload、coalescing 对真实性能的影响通常远大于“少几个 goto”，而 CompCert 本身就有 external allocator + verified checker 的架构，非常符合你们“untrusted optimizer proposes, verified system accepts”的范式。C2 cloning 则继续作为“越过现有 interface 后需要新 proof”的 case，不要和这一阶段混在一起。

---

### 我会优先跑的无-admin诊断

直接让 agent 先对 baseline/C1 做：

```bash
valgrind --tool=callgrind \
  --collect-jumps=yes \
  --branch-sim=yes \
  --cache-sim=yes \
  ./program ...
```

以及更轻量、更 deterministic 的：

```bash
valgrind --tool=cachegrind \
  --branch-sim=yes \
  --cache-sim=yes \
  ./program ...
```

重点不是相信模拟出来的 “L1 miss 数就是 EPYC 9654 的真实 miss 数”——Valgrind 自己也警告它的 cache/branch 模型比较粗糙。:chatgpt-content-reference{index="5"} 真正有价值的是**baseline vs C1 的相对变化和动态 instruction/edge counts**。

---

所以我会把接下来 CompCert 的研究路线收敛成：

> **C1 证明了：静态 structural objective 可以在原 proof boundary 内优化，但会误导真实性能。C3 要证明：换成 profile-guided objective 后，能否在同一 proof boundary 内获得真实 runtime improvement。**

如果 C3 能做到哪怕 **稳定 +0.5%～1% runtime，95% CI 明确 > 1**，同时 proof chain 原封不动，我觉得这个 case 就已经很漂亮了。

再往后如果 register allocation 能拿到更大的 verified speedup，那 CompCert 这一条会非常强。