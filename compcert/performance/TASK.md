我建议先别全量跑得特别复杂，先做一个干净的 CPU benchmark：
- Primary metric：wall-clock / cycles
- 辅助 metric：instructions、branches、branch-misses
- 次要：i-cache misses / frontend stalls，如果 perf 权限允许
- baseline 和 C1-global 用完全相同编译/链接参数
- 固定 CPU core，尽量固定频率，关闭 turbo 或至少记录频率
- 每个程序 warm-up 后重复很多次，baseline/candidate 交错跑
- 报 median + bootstrap CI / p5-p95，不看单次时间
特别值得先挑 jump reduction 大的程序做 sanity check，比如你们已有的：
- Embench sglib-combined
- nettle-sha256
- MiBench lout
- jpeg
- regression 的 aes / fft
因为整个 suite 只有 2.7% jump reduction，真实 speedup 很可能只有 0.x%–1.x%，噪声会比较大；不要期待自动对应 2.7%。
最关键的是最后得到三种可能结果：
1. runtime/cycles 也改善 → 最理想，可以说 verified optimization 真正带来 performance gain。
2. instructions/branches 下降但 runtime ≈ 0 → 也有价值，说明 layout objective 与真实性能相关性有限。
3. 甚至 runtime 变差 → 更有 research insight：Lgoto 不是好的 standalone cost model，需要 profile-guided / microarchitecture-aware objective。
所以我会让 agent 下一步直接做：
Benchmark baseline vs C1-global on Embench and MiBench using repeated pinned-core runs. Measure runtime, cycles, instructions, branches, and branch misses. Do not tune the layout policy based on these results yet; treat this as a frozen-policy evaluation.

先测 C1，不要测 C2。C2 还没正式 proof，混进去会把“verified performance gain”这个结论搞脏。