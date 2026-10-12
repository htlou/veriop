# CUTLASS `1ab10279`: SM80 MMA register constraints

**Verdict: unsupported by Volta on the changed f16 MMA path.** This is a sampled performance commit. The parent is `86931fef8538008a1a92036732b3eb7fe47b25d0`; the child is `1ab1027954bafc513cef2d3ca673d0e2c1eebb24`. Among other changes, `include/cutlass/arch/mma_sm80.h` changes f32 accumulators and outputs for SM80 MMA from integer (`"r"`) to floating-point (`"f"`) inline-PTX constraints. The commit message calls this a performance fix, but no official CUTLASS benchmark before/after score was measured here.

The identical [wrapper](mma_f16_wrapper.cu) instantiates the historical `Mma<GemmShape<16,8,16>, 32, half_t, ..., float, ...>` specialization from each revision. CUDA 12.8 `nvcc -std=c++14 -arch=sm_80 -ptx` generated distinct [old](old.ptx) and [new](new.ptx) PTX; `ptxas -arch=sm_80` assembled both successfully. The old PTX uses `.b32` registers and `ld/st.global.u32` for f32 accumulators; the new PTX uses `.f32` registers and `ld/st.global.f32`. The FMA instruction itself remains `mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32`. This wrapper covers one changed specialization, **not** every file or specialization in the commit or an official CUTLASS benchmark kernel.

Volta parsed both PTX modules ([old parse](volta-parse-old.log), [new parse](volta-parse-new.log)). A 32-thread comparison over separate A, B, C and output arrays stopped before the equivalence decision with `value kind mismatch (matrix fragment register does not hold a packed f16 pair)` on the reference side ([compare log](volta-sample1.log)); analyzing the optimized PTX alone stopped with the same error ([new analysis log](volta-new-analyze.log)). Current Volta cannot carry these packed-f16 operands from ordinary `ld.global.u32` into its MMA fragment model. Thus there is no semantic verdict here; neither the parser's success nor `ptxas` assembly is an equivalence proof.

Reproduce the frontend boundary from the project root with:

```sh
nvcc -std=c++14 -arch=sm_80 -ptx -I history-eq/wt/cutlass-mma-old/include history-eq/gpu/cutlass/1ab10279/mma_f16_wrapper.cu -o history-eq/gpu/cutlass/1ab10279/old.ptx
nvcc -std=c++14 -arch=sm_80 -ptx -I history-eq/wt/cutlass-mma-new/include history-eq/gpu/cutlass/1ab10279/mma_f16_wrapper.cu -o history-eq/gpu/cutlass/1ab10279/new.ptx
cuda/repos/volta/target/release/volta --no-log-file compare history-eq/gpu/cutlass/1ab10279/old.ptx history-eq/gpu/cutlass/1ab10279/new.ptx --block 32 --grid 1 --array a:0x10000:4:128:in --array b:0x20000:4:64:in --array c:0x30000:4:128:in --array out:0x40000:4:128:out --param ptr:a --param ptr:b --param ptr:c --param ptr:out --check-array out --sample 1
```
