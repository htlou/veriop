# C1 diagnosis: dynamic work and software cache model

These are diagnostic event counts from Callgrind 3.18.1, not official benchmark scores. All 12 executions passed. Executables and workloads match the earlier wall-clock regression cases. The cache/branch model is the recorded generic simulator, not measured EPYC hardware.

| Program | Event | Baseline | C1 |
|---|---|---:|---:|
| edn | Ir | 4839922326 | 4839922326 |
| edn | Bc | 361081340 | 361081340 |
| edn | Bcm | 9660229 | 9660229 |
| edn | Bi | 299 | 299 |
| edn | Bim | 152 | 152 |
| edn | I1mr | 1309 | 1309 |
| edn | ILmr | 1295 | 1295 |
| edn | Dr | 893708009 | 893708009 |
| edn | Dw | 156788854 | 156788854 |
| nettle-sha256 | Ir | 3974953266 | 3974953266 |
| nettle-sha256 | Bc | 35177504 | 35177504 |
| nettle-sha256 | Bcm | 1428026 | 1428022 |
| nettle-sha256 | Bi | 2850318 | 2850318 |
| nettle-sha256 | Bim | 161 | 161 |
| nettle-sha256 | I1mr | 1250 | 1250 |
| nettle-sha256 | ILmr | 1236 | 1236 |
| nettle-sha256 | Dr | 409960015 | 409960015 |
| nettle-sha256 | Dw | 183363421 | 183363421 |
| picojpeg | Ir | 5510616282 | 5508863990 |
| picojpeg | Bc | 353996306 | 353996306 |
| picojpeg | Bcm | 17082652 | 17064638 |
| picojpeg | Bi | 4201003 | 4201003 |
| picojpeg | Bim | 2154516 | 2154516 |
| picojpeg | I1mr | 1287 | 1288 |
| picojpeg | ILmr | 1271 | 1272 |
| picojpeg | Dr | 713360853 | 713360853 |
| picojpeg | Dw | 778570695 | 778570695 |
| sglib-combined | Ir | 4083842247 | 4062236502 |
| sglib-combined | Bc | 626856168 | 626856168 |
| sglib-combined | Bcm | 80539294 | 80829347 |
| sglib-combined | Bi | 29302 | 29302 |
| sglib-combined | Bim | 154 | 154 |
| sglib-combined | I1mr | 1251 | 1255 |
| sglib-combined | ILmr | 1238 | 1242 |
| sglib-combined | Dr | 798839574 | 798839574 |
| sglib-combined | Dw | 417048178 | 417048178 |
| consumer-jpeg-cjpeg | Ir | 116012427 | 115989142 |
| consumer-jpeg-cjpeg | Bc | 9518550 | 9518548 |
| consumer-jpeg-cjpeg | Bcm | 503950 | 504214 |
| consumer-jpeg-cjpeg | Bi | 58378 | 58378 |
| consumer-jpeg-cjpeg | Bim | 803 | 792 |
| consumer-jpeg-cjpeg | I1mr | 2069 | 2069 |
| consumer-jpeg-cjpeg | ILmr | 2006 | 2007 |
| consumer-jpeg-cjpeg | Dr | 27685460 | 27685459 |
| consumer-jpeg-cjpeg | Dw | 9877851 | 9877851 |
| aes | Ir | 1188170071 | 1188170016 |
| aes | Bc | 6028575 | 6028575 |
| aes | Bcm | 3227 | 3228 |
| aes | Bi | 424 | 424 |
| aes | Bim | 179 | 179 |
| aes | I1mr | 1449 | 1449 |
| aes | ILmr | 1426 | 1426 |
| aes | Dr | 224038895 | 224038895 |
| aes | Dw | 21014899 | 21014899 |

Picojpeg executes fewer modeled instructions with C1 and has essentially unchanged instruction-cache misses. The software branch model also predicts fewer mispredictions. These measurements therefore do not explain its observed wall-clock regression; they do not establish an alignment or real hardware predictor cause.

The cjpeg instruction count also falls slightly while the simulated instruction-cache count stays essentially unchanged. Static jump reduction and modeled instruction reduction are insufficient performance objectives for these workloads.

Raw event totals, commands, binary hashes and exit codes: [summary.json](../results/c3-diagnosis/summary.json). Per-program `callgrind.out` files preserve instruction-level jump records. The model uses I1=32768,8,64; D1=32768,8,64; LL=8388608,16,64 with branch simulation enabled.

The C3 candidate uses measured CFG edge frequencies to favor hot fallthrough and locality. Its internal objective is a search heuristic; only the [official benchmark procedure](../performance/OFFICIAL.md) determines performance results.
