; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_early/bench-cli/upstream/cli/xxhsum.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_early/bench-cli/upstream/cli/xxhsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH128_hash_t = type { i64, i64 }
%struct.ParsedLine = type { %union.Canonical, ptr, i32 }
%union.Canonical = type { %struct.XXH_INLINE_XXH128_canonical_t }
%struct.XXH_INLINE_XXH128_canonical_t = type { [16 x i8] }
%union.Multihash = type { %struct.XXH_INLINE_XXH128_hash_t }
%struct.ParseFileArg = type { ptr, ptr, i32, ptr, i64, ptr, i32, i32, i32, i32, i32, i32, i64, %struct.ParseFileReport }
%struct.ParseFileReport = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.XXH_INLINE_XXH32_state_s = type { i32, i32, [4 x i32], [16 x i8], i32, i32 }
%struct.XXH_INLINE_XXH64_state_s = type { i64, [4 x i64], [32 x i8], i32, i32, i64 }
%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }
%struct.XXH_INLINE_XXH32_canonical_t = type { [4 x i8] }
%struct.XXH_INLINE_XXH64_canonical_t = type { [8 x i8] }

@g_defaultAlgo = internal unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [9 x i8] c"xxh32sum\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"xxh64sum\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"xxh128sum\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"xxh3sum\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"argument != NULL\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_early/bench-cli/upstream/cli/xxhsum.c\00", align 1
@__PRETTY_FUNCTION__.XSUM_main = private unnamed_addr constant [34 x i8] c"int XSUM_main(int, const char **)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"--check\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"--files-from\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"--filelist\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"--benchmark-all\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"--bench-all\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@XSUM_logLevel = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"--little-endian\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"--strict\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"--status\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"--warn\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"--binary\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"--ignore-missing\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"%s %s by %s \0Acompiled as %i-bit %s %s with Clang %s \0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"0.8.4\00", align 1
@author = internal constant [12 x i8] c"Yann Collet\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"x86_64 + AVX2\00", align 1
@g_lename = internal constant [14 x i8] c"little endian\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"--tag\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"--seed\00", align 1
@g_nbTestFunctions = external local_unnamed_addr constant i32, align 4
@g_testIDs = external local_unnamed_addr global [0 x i8], align 1
@g_nbIterations = external local_unnamed_addr global i32, align 4
@k_testIDs_default = external local_unnamed_addr constant [0 x i8], align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [20 x i8] c"No input provided \0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"\0AAdvanced: \0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"  -V, --version        Display version information \0A\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"      --tag            Produce BSD-style checksum lines \0A\00", align 1
@.str.31 = private unnamed_addr constant [92 x i8] c"      --little-endian  Checksum values use little endian convention (default: big endian) \0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"      --binary         Read in binary mode \0A\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"  -s#, --seed #        Set seed (default: 0) \0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"  -b                   Run benchmark \0A\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"  -b#                  Bench only algorithm variant # \0A\00", align 1
@.str.36 = private unnamed_addr constant [76 x i8] c"  -i#                  Number of times to run the benchmark (default: %i) \0A\00", align 1
@.str.37 = private unnamed_addr constant [86 x i8] c"  -B#                  Block size to hash per benchmark iteration (default: %llu B) \0A\00", align 1
@.str.38 = private unnamed_addr constant [72 x i8] c"  -q, --quiet          Don't display version header in benchmark mode \0A\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.40 = private unnamed_addr constant [106 x i8] c"The following five options are useful only when using lists in [files] to verify or generate checksums: \0A\00", align 1
@.str.41 = private unnamed_addr constant [76 x i8] c"  -q, --quiet          Don't print OK for each successfully verified hash \0A\00", align 1
@.str.42 = private unnamed_addr constant [74 x i8] c"      --status         Don't output anything, status code shows success \0A\00", align 1
@.str.43 = private unnamed_addr constant [81 x i8] c"      --strict         Exit non-zero for improperly formatted lines in [files] \0A\00", align 1
@.str.44 = private unnamed_addr constant [74 x i8] c"      --warn           Warn about improperly formatted lines in [files] \0A\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"      --ignore-missing Don't fail or report status for missing files \0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"%s %s by %s \0A\00", align 1
@.str.47 = private unnamed_addr constant [76 x i8] c"Create or verify checksums using fast non-cryptographic algorithm xxHash \0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [files] \0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [74 x i8] c"When no filename provided or when '-' is provided, uses stdin as input. \0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"\0AOptions: \0A\00", align 1
@.str.51 = private unnamed_addr constant [66 x i8] c"  -H#                  select an xxhash algorithm (default: %i) \0A\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"                       0: XXH32 \0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"                       1: XXH64 \0A\00", align 1
@.str.54 = private unnamed_addr constant [62 x i8] c"                       2: XXH128 (also called XXH3_128bits) \0A\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c"                       3: XXH3   (also called XXH3_64bits) \0A\00", align 1
@.str.56 = private unnamed_addr constant [74 x i8] c"  -c, --check          read xxHash checksum from [files] and check them \0A\00", align 1
@.str.57 = private unnamed_addr constant [69 x i8] c"      --files-from     generate hashes for files listed in [files] \0A\00", align 1
@.str.58 = private unnamed_addr constant [69 x i8] c"      --filelist       generate hashes for files listed in [files] \0A\00", align 1
@.str.59 = private unnamed_addr constant [73 x i8] c"  -                    forces stdin as input, even if it's the console \0A\00", align 1
@.str.60 = private unnamed_addr constant [73 x i8] c"  -h, --help           display a long help page about advanced options \0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"Wrong parameters\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"Error: numeric value cannot be negative\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"Error: invalid numeric value\00", align 1
@.str.64 = private constant [31 x i8] c"Error: numeric value too large\00", align 16
@.str.65 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1
@stdinName = internal constant [2 x i8] c"-\00", align 1
@stdinFileName = internal constant [6 x i8] c"stdin\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"Error: Could not open '%s': %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"Error: : memory allocation failed \0A\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"%s: no properly formatted xxHash checksum lines found\0A\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"%lu %s improperly formatted\0A\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"line is\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"lines are\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"%lu listed %s could not be read\0A\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"%lu computed %s did NOT match\0A\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"checksums\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"%s: no file was verified\0A\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"%s: Error: Too many checksum lines\0A\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"%s:%lu: Error: Line too long.\0A\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"%s:%lu: Error: Out of memory.\0A\00", align 1
@.str.85 = private unnamed_addr constant [52 x i8] c"%s:%lu: Error: Improperly formatted checksum line.\0A\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"%s:%lu: Could not open or read '%s': %s.\0A\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"%s:%lu: Could not read '%s'.\0A\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"_LE\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"XXH3\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"XXH32\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"XXH64\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"XXH128\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"XXH3_\00", align 1
@__PRETTY_FUNCTION__.XSUM_hashStream = private unnamed_addr constant [88 x i8] c"LineStatus XSUM_hashStream(FILE *, AlgoSelected, XSUM_U64, void *, size_t, Multihash *)\00", align 1
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@.str.100 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.104 = private unnamed_addr constant [48 x i8] c"%s: no properly formatted filename lines found\0A\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"%s: Error: Too many generate lines\0A\00", align 1
@.str.106 = private unnamed_addr constant [43 x i8] c"%s:%lu: Error: Improperly formatted line.\0A\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"\0AError: Out of memory.\0A\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"%s:%lu: Target is a directory '%s'.\0A\00", align 1
@XSUM_kDisplayLine_fTable = internal unnamed_addr constant [2 x [2 x ptr]] [[2 x ptr] [ptr @XSUM_printLine_GNU, ptr @XSUM_printLine_GNU_LE], [2 x ptr] [ptr @XSUM_printLine_BSD, ptr @XSUM_printLine_BSD_LE]], align 16
@__PRETTY_FUNCTION__.XSUM_hashFile = private unnamed_addr constant [121 x i8] c"LineStatus XSUM_hashFile(const char *, const AlgoSelected, XSUM_U64, const Display_endianness, const Display_convention)\00", align 1
@.str.111 = private unnamed_addr constant [29 x i8] c"Error: unable to open input\0A\00", align 1
@.str.112 = private unnamed_addr constant [72 x i8] c"0 <= hashType && (size_t)hashType <= XSUM_TABLE_ELT_SIZE(XSUM_algoName)\00", align 1
@__PRETTY_FUNCTION__.XSUM_printLine_GNU_internal = private unnamed_addr constant [101 x i8] c"void XSUM_printLine_GNU_internal(const char *, const void *, const AlgoSelected, XSUM_displayHash_f)\00", align 1
@XSUM_algoLength = internal unnamed_addr constant [4 x i64] [i64 4, i64 8, i64 16, i64 8], align 16
@.str.113 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@XSUM_algoName = internal global [4 x ptr] [ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.95], align 16
@__PRETTY_FUNCTION__.XSUM_printLine_BSD_internal = private unnamed_addr constant [116 x i8] c"void XSUM_printLine_BSD_internal(const char *, const void *, const AlgoSelected, const char **, XSUM_displayHash_f)\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"%s (\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@XSUM_algoLE_name = internal global [4 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], align 16
@.str.117 = private unnamed_addr constant [9 x i8] c"XXH32_LE\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"XXH64_LE\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"XXH128_LE\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"XXH3_LE\00", align 1
@.str.121 = private unnamed_addr constant [29 x i8] c"xxhsum: %s: Is a directory \0A\00", align 1
@.str.122 = private unnamed_addr constant [34 x i8] c"Error: Could not open '%s': %s. \0A\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"Error: Could not read '%s'. \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @XSUM_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %5, i32 noundef 47) #27
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %9 = select i1 %7, ptr %5, ptr %8
  %10 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 92) #27
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 1
  %13 = select i1 %11, ptr %9, ptr %12
  %14 = load i32, ptr @g_defaultAlgo, align 4
  %15 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str) #27
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, ptr @g_defaultAlgo, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = phi i32 [ 1, %17 ], [ 15, %2 ]
  %20 = phi i32 [ 0, %17 ], [ %14, %2 ]
  %21 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.1) #27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 1, ptr @g_defaultAlgo, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i32 [ 2, %23 ], [ %19, %18 ]
  %26 = phi i32 [ 1, %23 ], [ %20, %18 ]
  %27 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.2) #27
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 2, ptr @g_defaultAlgo, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ 4, %29 ], [ %25, %24 ]
  %32 = phi i32 [ 2, %29 ], [ %26, %24 ]
  %33 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.3) #27
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 3, ptr @g_defaultAlgo, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i32 [ 8, %35 ], [ %31, %30 ]
  %38 = phi i32 [ 3, %35 ], [ %32, %30 ]
  %39 = icmp sgt i32 %0, 1
  br i1 %39, label %40, label %396

40:                                               ; preds = %36
  %41 = load i32, ptr @g_nbTestFunctions, align 4
  br label %42

42:                                               ; preds = %40, %341
  %43 = phi i32 [ 3, %40 ], [ %342, %341 ]
  %44 = phi i32 [ 0, %40 ], [ %343, %341 ]
  %45 = phi i32 [ 0, %40 ], [ %344, %341 ]
  %46 = phi i32 [ %38, %40 ], [ %345, %341 ]
  %47 = phi i64 [ 0, %40 ], [ %346, %341 ]
  %48 = phi i64 [ 102400, %40 ], [ %347, %341 ]
  %49 = phi i32 [ 0, %40 ], [ %348, %341 ]
  %50 = phi i32 [ 0, %40 ], [ %349, %341 ]
  %51 = phi i32 [ 0, %40 ], [ %350, %341 ]
  %52 = phi i32 [ 0, %40 ], [ %351, %341 ]
  %53 = phi i32 [ 0, %40 ], [ %352, %341 ]
  %54 = phi i32 [ 0, %40 ], [ %353, %341 ]
  %55 = phi i32 [ 0, %40 ], [ %354, %341 ]
  %56 = phi i32 [ 0, %40 ], [ %355, %341 ]
  %57 = phi i32 [ 0, %40 ], [ %356, %341 ]
  %58 = phi i32 [ 1, %40 ], [ %359, %341 ]
  %59 = phi i32 [ 0, %40 ], [ %358, %341 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds ptr, ptr %1, i64 %60
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %42
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1594, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_main) #29
  unreachable

65:                                               ; preds = %42
  %66 = load i8, ptr %62, align 1
  %67 = icmp eq i8 %66, 45
  br i1 %67, label %68, label %140

68:                                               ; preds = %65
  %69 = getelementptr inbounds nuw i8, ptr %62, i64 1
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 45
  br i1 %71, label %72, label %145

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %62, i64 2
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %145

76:                                               ; preds = %72
  %77 = add nsw i32 %58, 1
  %78 = icmp slt i32 %77, %0
  br i1 %78, label %79, label %115

79:                                               ; preds = %76
  %80 = sext i32 %77 to i64
  %81 = sext i32 %59 to i64
  %82 = xor i32 %58, -1
  %83 = add i32 %0, %82
  %84 = add nsw i32 %0, -2
  %85 = sub i32 %84, %58
  %86 = and i32 %83, 3
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %79, %88
  %89 = phi i64 [ %94, %88 ], [ %81, %79 ]
  %90 = phi i64 [ %97, %88 ], [ %80, %79 ]
  %91 = phi i32 [ %98, %88 ], [ 0, %79 ]
  %92 = getelementptr inbounds ptr, ptr %1, i64 %90
  %93 = load ptr, ptr %92, align 8
  %94 = add nsw i64 %89, 1
  %95 = getelementptr inbounds ptr, ptr %1, i64 %94
  %96 = load ptr, ptr %95, align 8
  store ptr %96, ptr %92, align 8
  store ptr %93, ptr %95, align 8
  %97 = add nsw i64 %90, 1
  %98 = add i32 %91, 1
  %99 = icmp eq i32 %98, %86
  br i1 %99, label %100, label %88, !llvm.loop !5

100:                                              ; preds = %88, %79
  %101 = phi i64 [ poison, %79 ], [ %94, %88 ]
  %102 = phi i64 [ %81, %79 ], [ %94, %88 ]
  %103 = phi i64 [ %80, %79 ], [ %97, %88 ]
  %104 = icmp ult i32 %85, 3
  br i1 %104, label %112, label %105

105:                                              ; preds = %100
  %106 = getelementptr i8, ptr %1, i64 8
  %107 = getelementptr i8, ptr %1, i64 8
  %108 = getelementptr i8, ptr %1, i64 16
  %109 = getelementptr i8, ptr %1, i64 16
  %110 = getelementptr i8, ptr %1, i64 24
  %111 = getelementptr i8, ptr %1, i64 24
  br label %117

112:                                              ; preds = %117, %100
  %113 = phi i64 [ %101, %100 ], [ %134, %117 ]
  %114 = trunc nsw i64 %113 to i32
  br label %115

115:                                              ; preds = %112, %76
  %116 = phi i32 [ %59, %76 ], [ %114, %112 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  br label %361

117:                                              ; preds = %117, %105
  %118 = phi i64 [ %102, %105 ], [ %134, %117 ]
  %119 = phi i64 [ %103, %105 ], [ %137, %117 ]
  %120 = getelementptr inbounds ptr, ptr %1, i64 %119
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr ptr, ptr %106, i64 %118
  %123 = load ptr, ptr %122, align 8
  store ptr %123, ptr %120, align 8
  store ptr %121, ptr %122, align 8
  %124 = getelementptr ptr, ptr %107, i64 %119
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr ptr, ptr %108, i64 %118
  %127 = load ptr, ptr %126, align 8
  store ptr %127, ptr %124, align 8
  store ptr %125, ptr %126, align 8
  %128 = getelementptr ptr, ptr %109, i64 %119
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr ptr, ptr %110, i64 %118
  %131 = load ptr, ptr %130, align 8
  store ptr %131, ptr %128, align 8
  store ptr %129, ptr %130, align 8
  %132 = getelementptr ptr, ptr %111, i64 %119
  %133 = load ptr, ptr %132, align 8
  %134 = add nsw i64 %118, 4
  %135 = getelementptr inbounds ptr, ptr %1, i64 %134
  %136 = load ptr, ptr %135, align 8
  store ptr %136, ptr %132, align 8
  store ptr %133, ptr %135, align 8
  %137 = add nsw i64 %119, 4
  %138 = trunc i64 %137 to i32
  %139 = icmp eq i32 %0, %138
  br i1 %139, label %112, label %117, !llvm.loop !7

140:                                              ; preds = %65
  %141 = add nsw i32 %59, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %1, i64 %142
  %144 = load ptr, ptr %143, align 8
  store ptr %144, ptr %61, align 8
  store ptr %62, ptr %143, align 8
  br label %341

145:                                              ; preds = %72, %68
  %146 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(8) @.str.7) #27
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %341, label %148

148:                                              ; preds = %145
  %149 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(13) @.str.8) #27
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %341, label %151

151:                                              ; preds = %148
  %152 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(11) @.str.9) #27
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %341, label %154

154:                                              ; preds = %151
  %155 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(16) @.str.10) #27
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %341, label %157

157:                                              ; preds = %154
  %158 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(12) @.str.11) #27
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %341, label %160

160:                                              ; preds = %157
  %161 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(8) @.str.12) #27
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, ptr @XSUM_logLevel, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, ptr @XSUM_logLevel, align 4
  br label %341

166:                                              ; preds = %160
  %167 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(16) @.str.13) #27
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %341, label %169

169:                                              ; preds = %166
  %170 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(9) @.str.14) #27
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %341, label %172

172:                                              ; preds = %169
  %173 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(9) @.str.15) #27
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %341, label %175

175:                                              ; preds = %172
  %176 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(7) @.str.16) #27
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %341, label %178

178:                                              ; preds = %175
  %179 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(9) @.str.17) #27
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %341, label %181

181:                                              ; preds = %178
  %182 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(17) @.str.18) #27
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %341, label %184

184:                                              ; preds = %181
  %185 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(7) @.str.19) #27
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  tail call fastcc void @XSUM_usage_advanced(ptr noundef %13)
  br label %334

188:                                              ; preds = %184
  %189 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(10) @.str.20) #27
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.21, ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull @author, i32 noundef 64, ptr noundef nonnull @.str.23, ptr noundef nonnull @g_lename, ptr noundef nonnull @.str.24) #28
  tail call void @XSUM_sanityCheck() #28
  br label %334

193:                                              ; preds = %188
  %194 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(6) @.str.25) #27
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %341, label %196

196:                                              ; preds = %193
  %197 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(7) @.str.26) #27
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %200 = add nsw i32 %58, 1
  %201 = icmp slt i32 %200, %0
  br i1 %201, label %336, label %202

202:                                              ; preds = %199
  %203 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.61) #28
  tail call fastcc void @XSUM_usage(ptr noundef %13)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  br label %511

204:                                              ; preds = %196
  %205 = getelementptr inbounds nuw i8, ptr %62, i64 1
  %206 = load i8, ptr %205, align 1
  %207 = icmp eq i8 %206, 0
  %208 = select i1 %207, i32 1, i32 %50
  br label %209

209:                                              ; preds = %323, %204
  %210 = phi i8 [ %206, %204 ], [ %333, %323 ]
  %211 = phi ptr [ %205, %204 ], [ %332, %323 ]
  %212 = phi i32 [ %57, %204 ], [ %324, %323 ]
  %213 = phi i32 [ %56, %204 ], [ %325, %323 ]
  %214 = phi i32 [ %52, %204 ], [ %326, %323 ]
  %215 = phi i32 [ %49, %204 ], [ %327, %323 ]
  %216 = phi i64 [ %48, %204 ], [ %328, %323 ]
  %217 = phi i64 [ %47, %204 ], [ %329, %323 ]
  %218 = phi i32 [ %46, %204 ], [ %330, %323 ]
  %219 = phi i32 [ %43, %204 ], [ %331, %323 ]
  switch i8 %210, label %321 [
    i8 0, label %341
    i8 86, label %220
    i8 104, label %222
    i8 72, label %223
    i8 99, label %231
    i8 119, label %233
    i8 98, label %235
    i8 105, label %307
    i8 66, label %310
    i8 115, label %314
    i8 113, label %317
  ]

220:                                              ; preds = %209
  %221 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.21, ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull @author, i32 noundef 64, ptr noundef nonnull @.str.23, ptr noundef nonnull @g_lename, ptr noundef nonnull @.str.24) #28
  tail call void @XSUM_sanityCheck() #28
  br label %334

222:                                              ; preds = %209
  tail call fastcc void @XSUM_usage_advanced(ptr noundef %13)
  br label %334

223:                                              ; preds = %209
  %224 = getelementptr inbounds nuw i8, ptr %211, i64 1
  store ptr %224, ptr %3, align 8
  %225 = call fastcc i32 @XSUM_readU32FromChar(ptr noundef %3)
  switch i32 %225, label %229 [
    i32 0, label %323
    i32 32, label %323
    i32 1, label %226
    i32 64, label %226
    i32 2, label %227
    i32 128, label %227
    i32 3, label %228
  ]

226:                                              ; preds = %223, %223
  br label %323

227:                                              ; preds = %223, %223
  br label %323

228:                                              ; preds = %223
  br label %323

229:                                              ; preds = %223
  %230 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.61) #28
  tail call fastcc void @XSUM_usage(ptr noundef %13)
  br label %334

231:                                              ; preds = %209
  %232 = getelementptr inbounds nuw i8, ptr %211, i64 1
  store ptr %232, ptr %3, align 8
  br label %323

233:                                              ; preds = %209
  %234 = getelementptr inbounds nuw i8, ptr %211, i64 1
  store ptr %234, ptr %3, align 8
  br label %323

235:                                              ; preds = %209
  %236 = getelementptr inbounds nuw i8, ptr %211, i64 1
  store ptr %236, ptr %3, align 8
  %237 = load i8, ptr %236, align 1
  br label %238

238:                                              ; preds = %303, %235
  %239 = phi i8 [ 44, %303 ], [ %237, %235 ]
  %240 = phi ptr [ %297, %303 ], [ %236, %235 ]
  %241 = icmp eq i8 %239, 44
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = getelementptr inbounds nuw i8, ptr %240, i64 1
  store ptr %243, ptr %3, align 8
  %244 = load i8, ptr %243, align 1
  br label %245

245:                                              ; preds = %242, %238
  %246 = phi i8 [ %244, %242 ], [ %239, %238 ]
  %247 = phi ptr [ %243, %242 ], [ %240, %238 ]
  %248 = add i8 %246, -48
  %249 = icmp ult i8 %248, 10
  br i1 %249, label %252, label %265

250:                                              ; preds = %252
  %251 = icmp ugt i32 %259, 429496728
  br i1 %251, label %294, label %252, !llvm.loop !9

252:                                              ; preds = %245, %250
  %253 = phi ptr [ %260, %250 ], [ %247, %245 ]
  %254 = phi i32 [ %259, %250 ], [ 0, %245 ]
  %255 = phi i8 [ %261, %250 ], [ %246, %245 ]
  %256 = mul nuw i32 %254, 10
  %257 = add nsw i8 %255, -48
  %258 = zext nneg i8 %257 to i32
  %259 = add nuw i32 %256, %258
  %260 = getelementptr inbounds nuw i8, ptr %253, i64 1
  %261 = load i8, ptr %260, align 1
  %262 = add i8 %261, -48
  %263 = icmp ult i8 %262, 10
  br i1 %263, label %250, label %264, !llvm.loop !9

264:                                              ; preds = %252
  store ptr %260, ptr %3, align 8
  br label %265

265:                                              ; preds = %264, %245
  %266 = phi ptr [ %247, %245 ], [ %260, %264 ]
  %267 = phi i32 [ 0, %245 ], [ %259, %264 ]
  %268 = phi i8 [ %246, %245 ], [ %261, %264 ]
  switch i8 %268, label %296 [
    i8 75, label %269
    i8 77, label %269
  ]

269:                                              ; preds = %265, %265
  %270 = icmp ugt i32 %267, 4194303
  br i1 %270, label %294, label %271

271:                                              ; preds = %269
  %272 = shl nuw i32 %267, 10
  %273 = icmp eq i8 %268, 77
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = icmp samesign ugt i32 %267, 4095
  br i1 %275, label %294, label %276

276:                                              ; preds = %274
  %277 = shl nuw i32 %267, 20
  br label %278

278:                                              ; preds = %276, %271
  %279 = phi i32 [ %277, %276 ], [ %272, %271 ]
  %280 = getelementptr inbounds nuw i8, ptr %266, i64 1
  store ptr %280, ptr %3, align 8
  %281 = load i8, ptr %280, align 1
  %282 = icmp eq i8 %281, 105
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = getelementptr inbounds nuw i8, ptr %266, i64 2
  store ptr %284, ptr %3, align 8
  %285 = load i8, ptr %284, align 1
  br label %286

286:                                              ; preds = %283, %278
  %287 = phi ptr [ %284, %283 ], [ %280, %278 ]
  %288 = phi i8 [ %285, %283 ], [ %281, %278 ]
  %289 = phi i64 [ 2, %283 ], [ 1, %278 ]
  %290 = icmp eq i8 %288, 66
  br i1 %290, label %291, label %296

291:                                              ; preds = %286
  %292 = getelementptr inbounds nuw i8, ptr %266, i64 %289
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 1
  store ptr %293, ptr %3, align 8
  br label %296

294:                                              ; preds = %274, %269, %250
  %295 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64) #28
  tail call void @exit(i32 noundef 1) #30
  unreachable

296:                                              ; preds = %265, %286, %291
  %297 = phi ptr [ %287, %286 ], [ %293, %291 ], [ %266, %265 ]
  %298 = phi i32 [ %279, %286 ], [ %279, %291 ], [ %267, %265 ]
  %299 = icmp slt i32 %298, %41
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = zext i32 %298 to i64
  %302 = getelementptr inbounds nuw [0 x i8], ptr @g_testIDs, i64 0, i64 %301
  store i8 1, ptr %302, align 1
  br label %303

303:                                              ; preds = %296, %300
  %304 = phi i32 [ %298, %300 ], [ 99, %296 ]
  %305 = load i8, ptr %297, align 1
  %306 = icmp eq i8 %305, 44
  br i1 %306, label %238, label %323, !llvm.loop !10

307:                                              ; preds = %209
  %308 = getelementptr inbounds nuw i8, ptr %211, i64 1
  store ptr %308, ptr %3, align 8
  %309 = call fastcc i32 @XSUM_readU32FromChar(ptr noundef %3)
  br label %323

310:                                              ; preds = %209
  %311 = getelementptr inbounds nuw i8, ptr %211, i64 1
  store ptr %311, ptr %3, align 8
  %312 = call fastcc i32 @XSUM_readU32FromChar(ptr noundef %3)
  %313 = zext i32 %312 to i64
  br label %323

314:                                              ; preds = %209
  %315 = getelementptr inbounds nuw i8, ptr %211, i64 1
  store ptr %315, ptr %3, align 8
  %316 = call fastcc i64 @XSUM_readU64FromChar(ptr noundef %3)
  br label %323

317:                                              ; preds = %209
  %318 = getelementptr inbounds nuw i8, ptr %211, i64 1
  store ptr %318, ptr %3, align 8
  %319 = load i32, ptr @XSUM_logLevel, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, ptr @XSUM_logLevel, align 4
  br label %323

321:                                              ; preds = %209
  %322 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.61) #28
  tail call fastcc void @XSUM_usage(ptr noundef %13)
  br label %334

323:                                              ; preds = %303, %223, %223, %226, %227, %228, %317, %314, %310, %307, %233, %231
  %324 = phi i32 [ %212, %317 ], [ %212, %314 ], [ %212, %310 ], [ %212, %307 ], [ %212, %233 ], [ %212, %231 ], [ %212, %228 ], [ %212, %227 ], [ %212, %226 ], [ %212, %223 ], [ %212, %223 ], [ 1, %303 ]
  %325 = phi i32 [ %213, %317 ], [ %213, %314 ], [ %213, %310 ], [ %213, %307 ], [ %213, %233 ], [ 1, %231 ], [ %213, %228 ], [ %213, %227 ], [ %213, %226 ], [ %213, %223 ], [ %213, %223 ], [ %213, %303 ]
  %326 = phi i32 [ %214, %317 ], [ %214, %314 ], [ %214, %310 ], [ %214, %307 ], [ 1, %233 ], [ %214, %231 ], [ %214, %228 ], [ %214, %227 ], [ %214, %226 ], [ %214, %223 ], [ %214, %223 ], [ %214, %303 ]
  %327 = phi i32 [ %215, %317 ], [ %215, %314 ], [ %215, %310 ], [ %215, %307 ], [ %215, %233 ], [ %215, %231 ], [ %215, %228 ], [ %215, %227 ], [ %215, %226 ], [ %215, %223 ], [ %215, %223 ], [ %304, %303 ]
  %328 = phi i64 [ %216, %317 ], [ %216, %314 ], [ %313, %310 ], [ %216, %307 ], [ %216, %233 ], [ %216, %231 ], [ %216, %228 ], [ %216, %227 ], [ %216, %226 ], [ %216, %223 ], [ %216, %223 ], [ %216, %303 ]
  %329 = phi i64 [ %217, %317 ], [ %316, %314 ], [ %217, %310 ], [ %217, %307 ], [ %217, %233 ], [ %217, %231 ], [ %217, %228 ], [ %217, %227 ], [ %217, %226 ], [ %217, %223 ], [ %217, %223 ], [ %217, %303 ]
  %330 = phi i32 [ %218, %317 ], [ %218, %314 ], [ %218, %310 ], [ %218, %307 ], [ %218, %233 ], [ %218, %231 ], [ 3, %228 ], [ 2, %227 ], [ 1, %226 ], [ 0, %223 ], [ 0, %223 ], [ %218, %303 ]
  %331 = phi i32 [ %219, %317 ], [ %219, %314 ], [ %219, %310 ], [ %309, %307 ], [ %219, %233 ], [ %219, %231 ], [ %219, %228 ], [ %219, %227 ], [ %219, %226 ], [ %219, %223 ], [ %219, %223 ], [ %219, %303 ]
  %332 = load ptr, ptr %3, align 8
  %333 = load i8, ptr %332, align 1
  br label %209, !llvm.loop !11

334:                                              ; preds = %321, %229, %222, %220, %191, %187
  %335 = phi i32 [ 0, %187 ], [ 0, %191 ], [ 0, %220 ], [ 0, %222 ], [ 1, %229 ], [ 1, %321 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  br label %511

336:                                              ; preds = %199
  %337 = sext i32 %200 to i64
  %338 = getelementptr inbounds ptr, ptr %1, i64 %337
  %339 = load ptr, ptr %338, align 8
  store ptr %339, ptr %4, align 8
  %340 = call fastcc i64 @XSUM_readU64FromChar(ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  br label %341

341:                                              ; preds = %209, %193, %181, %178, %175, %172, %169, %166, %157, %154, %151, %148, %145, %163, %140, %336
  %342 = phi i32 [ %43, %336 ], [ %43, %193 ], [ %43, %181 ], [ %43, %178 ], [ %43, %175 ], [ %43, %172 ], [ %43, %169 ], [ %43, %166 ], [ %43, %157 ], [ %43, %154 ], [ %43, %151 ], [ %43, %148 ], [ %43, %145 ], [ %43, %163 ], [ %43, %140 ], [ %219, %209 ]
  %343 = phi i32 [ %44, %336 ], [ 1, %193 ], [ %44, %181 ], [ %44, %178 ], [ %44, %175 ], [ %44, %172 ], [ %44, %169 ], [ %44, %166 ], [ %44, %157 ], [ %44, %154 ], [ %44, %151 ], [ %44, %148 ], [ %44, %145 ], [ %44, %163 ], [ %44, %140 ], [ %44, %209 ]
  %344 = phi i32 [ %45, %336 ], [ %45, %193 ], [ %45, %181 ], [ %45, %178 ], [ %45, %175 ], [ %45, %172 ], [ %45, %169 ], [ 1, %166 ], [ %45, %157 ], [ %45, %154 ], [ %45, %151 ], [ %45, %148 ], [ %45, %145 ], [ %45, %163 ], [ %45, %140 ], [ %45, %209 ]
  %345 = phi i32 [ %46, %336 ], [ %46, %193 ], [ %46, %181 ], [ %46, %178 ], [ %46, %175 ], [ %46, %172 ], [ %46, %169 ], [ %46, %166 ], [ %46, %157 ], [ %46, %154 ], [ %46, %151 ], [ %46, %148 ], [ %46, %145 ], [ %46, %163 ], [ %46, %140 ], [ %218, %209 ]
  %346 = phi i64 [ %340, %336 ], [ %47, %193 ], [ %47, %181 ], [ %47, %178 ], [ %47, %175 ], [ %47, %172 ], [ %47, %169 ], [ %47, %166 ], [ %47, %157 ], [ %47, %154 ], [ %47, %151 ], [ %47, %148 ], [ %47, %145 ], [ %47, %163 ], [ %47, %140 ], [ %217, %209 ]
  %347 = phi i64 [ %48, %336 ], [ %48, %193 ], [ %48, %181 ], [ %48, %178 ], [ %48, %175 ], [ %48, %172 ], [ %48, %169 ], [ %48, %166 ], [ %48, %157 ], [ %48, %154 ], [ %48, %151 ], [ %48, %148 ], [ %48, %145 ], [ %48, %163 ], [ %48, %140 ], [ %216, %209 ]
  %348 = phi i32 [ %49, %336 ], [ %49, %193 ], [ %49, %181 ], [ %49, %178 ], [ %49, %175 ], [ %49, %172 ], [ %49, %169 ], [ %49, %166 ], [ 99, %157 ], [ 99, %154 ], [ %49, %151 ], [ %49, %148 ], [ %49, %145 ], [ %49, %163 ], [ %49, %140 ], [ %215, %209 ]
  %349 = phi i32 [ %50, %336 ], [ %50, %193 ], [ %50, %181 ], [ %50, %178 ], [ %50, %175 ], [ %50, %172 ], [ %50, %169 ], [ %50, %166 ], [ %50, %157 ], [ %50, %154 ], [ %50, %151 ], [ %50, %148 ], [ %50, %145 ], [ %50, %163 ], [ %50, %140 ], [ %208, %209 ]
  %350 = phi i32 [ %51, %336 ], [ %51, %193 ], [ 1, %181 ], [ %51, %178 ], [ %51, %175 ], [ %51, %172 ], [ %51, %169 ], [ %51, %166 ], [ %51, %157 ], [ %51, %154 ], [ %51, %151 ], [ %51, %148 ], [ %51, %145 ], [ %51, %163 ], [ %51, %140 ], [ %51, %209 ]
  %351 = phi i32 [ %52, %336 ], [ %52, %193 ], [ %52, %181 ], [ %52, %178 ], [ 1, %175 ], [ %52, %172 ], [ %52, %169 ], [ %52, %166 ], [ %52, %157 ], [ %52, %154 ], [ %52, %151 ], [ %52, %148 ], [ %52, %145 ], [ %52, %163 ], [ %52, %140 ], [ %214, %209 ]
  %352 = phi i32 [ %53, %336 ], [ %53, %193 ], [ %53, %181 ], [ %53, %178 ], [ %53, %175 ], [ 1, %172 ], [ %53, %169 ], [ %53, %166 ], [ %53, %157 ], [ %53, %154 ], [ %53, %151 ], [ %53, %148 ], [ %53, %145 ], [ %53, %163 ], [ %53, %140 ], [ %53, %209 ]
  %353 = phi i32 [ %54, %336 ], [ %54, %193 ], [ %54, %181 ], [ %54, %178 ], [ %54, %175 ], [ %54, %172 ], [ 1, %169 ], [ %54, %166 ], [ %54, %157 ], [ %54, %154 ], [ %54, %151 ], [ %54, %148 ], [ %54, %145 ], [ %54, %163 ], [ %54, %140 ], [ %54, %209 ]
  %354 = phi i32 [ %55, %336 ], [ %55, %193 ], [ %55, %181 ], [ %55, %178 ], [ %55, %175 ], [ %55, %172 ], [ %55, %169 ], [ %55, %166 ], [ %55, %157 ], [ %55, %154 ], [ 1, %151 ], [ 1, %148 ], [ %55, %145 ], [ %55, %163 ], [ %55, %140 ], [ %55, %209 ]
  %355 = phi i32 [ %56, %336 ], [ %56, %193 ], [ %56, %181 ], [ %56, %178 ], [ %56, %175 ], [ %56, %172 ], [ %56, %169 ], [ %56, %166 ], [ %56, %157 ], [ %56, %154 ], [ %56, %151 ], [ %56, %148 ], [ 1, %145 ], [ %56, %163 ], [ %56, %140 ], [ %213, %209 ]
  %356 = phi i32 [ %57, %336 ], [ %57, %193 ], [ %57, %181 ], [ %57, %178 ], [ %57, %175 ], [ %57, %172 ], [ %57, %169 ], [ %57, %166 ], [ 1, %157 ], [ 1, %154 ], [ %57, %151 ], [ %57, %148 ], [ %57, %145 ], [ %57, %163 ], [ %57, %140 ], [ %212, %209 ]
  %357 = phi i32 [ %200, %336 ], [ %58, %193 ], [ %58, %181 ], [ %58, %178 ], [ %58, %175 ], [ %58, %172 ], [ %58, %169 ], [ %58, %166 ], [ %58, %157 ], [ %58, %154 ], [ %58, %151 ], [ %58, %148 ], [ %58, %145 ], [ %58, %163 ], [ %58, %140 ], [ %58, %209 ]
  %358 = phi i32 [ %59, %336 ], [ %59, %193 ], [ %59, %181 ], [ %59, %178 ], [ %59, %175 ], [ %59, %172 ], [ %59, %169 ], [ %59, %166 ], [ %59, %157 ], [ %59, %154 ], [ %59, %151 ], [ %59, %148 ], [ %59, %145 ], [ %59, %163 ], [ %141, %140 ], [ %59, %209 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  %359 = add nsw i32 %357, 1
  %360 = icmp slt i32 %359, %0
  br i1 %360, label %42, label %361, !llvm.loop !12

361:                                              ; preds = %341, %115
  %362 = phi i32 [ %57, %115 ], [ %356, %341 ]
  %363 = phi i32 [ %56, %115 ], [ %355, %341 ]
  %364 = phi i32 [ %55, %115 ], [ %354, %341 ]
  %365 = phi i32 [ %54, %115 ], [ %353, %341 ]
  %366 = phi i32 [ %53, %115 ], [ %352, %341 ]
  %367 = phi i32 [ %52, %115 ], [ %351, %341 ]
  %368 = phi i32 [ %51, %115 ], [ %350, %341 ]
  %369 = phi i32 [ %50, %115 ], [ %349, %341 ]
  %370 = phi i32 [ %49, %115 ], [ %348, %341 ]
  %371 = phi i64 [ %48, %115 ], [ %347, %341 ]
  %372 = phi i64 [ %47, %115 ], [ %346, %341 ]
  %373 = phi i32 [ %46, %115 ], [ %345, %341 ]
  %374 = phi i32 [ %45, %115 ], [ %344, %341 ]
  %375 = phi i32 [ %44, %115 ], [ %343, %341 ]
  %376 = phi i32 [ %43, %115 ], [ %342, %341 ]
  %377 = phi i32 [ %116, %115 ], [ %358, %341 ]
  %378 = icmp eq i32 %362, 0
  br i1 %378, label %394, label %379

379:                                              ; preds = %361
  %380 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull @author, i32 noundef 64, ptr noundef nonnull @.str.23, ptr noundef nonnull @g_lename, ptr noundef nonnull @.str.24) #28
  tail call void @XSUM_sanityCheck() #28
  store i32 %376, ptr @g_nbIterations, align 4
  switch i32 %370, label %387 [
    i32 0, label %381
    i32 99, label %384
  ]

381:                                              ; preds = %379
  %382 = load i32, ptr @g_nbTestFunctions, align 4
  %383 = sext i32 %382 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 @g_testIDs, ptr nonnull align 1 @k_testIDs_default, i64 %383, i1 false)
  br label %387

384:                                              ; preds = %379
  %385 = load i32, ptr @g_nbTestFunctions, align 4
  %386 = sext i32 %385 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 @g_testIDs, i8 1, i64 %386, i1 false)
  br label %387

387:                                              ; preds = %381, %379, %384
  %388 = icmp eq i32 %377, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %387
  %390 = tail call i32 @XSUM_benchInternal(i64 noundef %371) #28
  br label %511

391:                                              ; preds = %387
  %392 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %393 = tail call i32 @XSUM_benchFiles(ptr noundef nonnull %392, i32 noundef %377) #28
  br label %511

394:                                              ; preds = %361
  %395 = icmp eq i32 %377, 0
  br i1 %395, label %396, label %417

396:                                              ; preds = %36, %394
  %397 = phi i32 [ %363, %394 ], [ 0, %36 ]
  %398 = phi i32 [ %364, %394 ], [ 0, %36 ]
  %399 = phi i32 [ %365, %394 ], [ 0, %36 ]
  %400 = phi i32 [ %366, %394 ], [ 0, %36 ]
  %401 = phi i32 [ %367, %394 ], [ 0, %36 ]
  %402 = phi i32 [ %368, %394 ], [ 0, %36 ]
  %403 = phi i32 [ %369, %394 ], [ 0, %36 ]
  %404 = phi i64 [ %372, %394 ], [ 0, %36 ]
  %405 = phi i32 [ %373, %394 ], [ %38, %36 ]
  %406 = phi i32 [ %374, %394 ], [ 0, %36 ]
  %407 = phi i32 [ %375, %394 ], [ 0, %36 ]
  %408 = load ptr, ptr @stdin, align 8
  %409 = tail call i32 @XSUM_isConsole(ptr noundef %408) #28
  %410 = icmp eq i32 %409, 0
  %411 = icmp ne i32 %403, 0
  %412 = select i1 %410, i1 true, i1 %411
  br i1 %412, label %415, label %413

413:                                              ; preds = %396
  %414 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.27) #28
  br label %511

415:                                              ; preds = %396
  %416 = icmp eq i32 %397, 0
  br i1 %416, label %445, label %427

417:                                              ; preds = %394
  %418 = icmp eq i32 %363, 0
  br i1 %418, label %447, label %419

419:                                              ; preds = %417
  %420 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %421 = load i32, ptr @XSUM_logLevel, align 4
  %422 = icmp slt i32 %421, 2
  %423 = zext i1 %422 to i32
  %424 = icmp sgt i32 %377, 0
  br i1 %424, label %425, label %441

425:                                              ; preds = %419
  %426 = zext nneg i32 %377 to i64
  br label %432

427:                                              ; preds = %415
  %428 = load i32, ptr @XSUM_logLevel, align 4
  %429 = icmp slt i32 %428, 2
  %430 = zext i1 %429 to i32
  %431 = tail call fastcc i32 @XSUM_checkFile(ptr noundef nonnull @stdinName, i32 noundef range(i32 0, 2) %406, i64 noundef %404, i32 noundef range(i32 0, 2) %399, i32 noundef range(i32 0, 2) %400, i32 noundef range(i32 0, 2) %402, i32 noundef range(i32 0, 2) %401, i32 noundef range(i32 0, 2) %430, i32 noundef range(i32 1, 16) %37)
  br label %441

432:                                              ; preds = %432, %425
  %433 = phi i64 [ 0, %425 ], [ %439, %432 ]
  %434 = phi i32 [ 1, %425 ], [ %438, %432 ]
  %435 = getelementptr inbounds nuw ptr, ptr %420, i64 %433
  %436 = load ptr, ptr %435, align 8
  %437 = tail call fastcc i32 @XSUM_checkFile(ptr noundef %436, i32 noundef range(i32 0, 2) %374, i64 noundef %372, i32 noundef range(i32 0, 2) %365, i32 noundef range(i32 0, 2) %366, i32 noundef range(i32 0, 2) %368, i32 noundef range(i32 0, 2) %367, i32 noundef range(i32 0, 2) %423, i32 noundef range(i32 1, 16) %37)
  %438 = and i32 %437, %434
  %439 = add nuw nsw i64 %433, 1
  %440 = icmp eq i64 %439, %426
  br i1 %440, label %441, label %432, !llvm.loop !13

441:                                              ; preds = %432, %419, %427
  %442 = phi i32 [ %431, %427 ], [ 1, %419 ], [ %438, %432 ]
  %443 = icmp eq i32 %442, 0
  %444 = zext i1 %443 to i32
  br label %511

445:                                              ; preds = %415
  %446 = icmp eq i32 %398, 0
  br i1 %446, label %470, label %455

447:                                              ; preds = %417
  %448 = icmp eq i32 %364, 0
  %449 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %450 = icmp sgt i32 %377, 0
  br i1 %448, label %451, label %452

451:                                              ; preds = %447
  br i1 %450, label %484, label %511

452:                                              ; preds = %447
  br i1 %450, label %453, label %466

453:                                              ; preds = %452
  %454 = zext nneg i32 %377 to i64
  br label %457

455:                                              ; preds = %445
  %456 = tail call fastcc i32 @XSUM_generateFile(ptr noundef nonnull @stdinName, i32 noundef %405, i64 noundef %404, i32 noundef range(i32 0, 2) %406, i32 noundef range(i32 0, 2) %407, i32 noundef range(i32 0, 2) %400, i32 noundef range(i32 0, 2) %402, i32 noundef range(i32 0, 2) %401)
  br label %466

457:                                              ; preds = %457, %453
  %458 = phi i64 [ 0, %453 ], [ %464, %457 ]
  %459 = phi i32 [ 1, %453 ], [ %463, %457 ]
  %460 = getelementptr inbounds nuw ptr, ptr %449, i64 %458
  %461 = load ptr, ptr %460, align 8
  %462 = tail call fastcc i32 @XSUM_generateFile(ptr noundef %461, i32 noundef %373, i64 noundef %372, i32 noundef range(i32 0, 2) %374, i32 noundef range(i32 0, 2) %375, i32 noundef range(i32 0, 2) %366, i32 noundef range(i32 0, 2) %368, i32 noundef range(i32 0, 2) %367)
  %463 = and i32 %462, %459
  %464 = add nuw nsw i64 %458, 1
  %465 = icmp eq i64 %464, %454
  br i1 %465, label %466, label %457, !llvm.loop !14

466:                                              ; preds = %457, %452, %455
  %467 = phi i32 [ %456, %455 ], [ 1, %452 ], [ %463, %457 ]
  %468 = icmp eq i32 %467, 0
  %469 = zext i1 %468 to i32
  br label %511

470:                                              ; preds = %445
  %471 = tail call fastcc i32 @XSUM_hashFile(ptr noundef nonnull @stdinName, i32 noundef %405, i64 noundef %404, i32 noundef range(i32 0, 2) %406, i32 noundef range(i32 0, 2) %407)
  switch i32 %471, label %483 [
    i32 5, label %481
    i32 3, label %479
    i32 4, label %472
    i32 2, label %474
    i32 0, label %511
  ]

472:                                              ; preds = %470
  %473 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.121, ptr noundef nonnull @stdinName) #28
  br label %483

474:                                              ; preds = %470
  %475 = tail call ptr @__errno_location() #31
  %476 = load i32, ptr %475, align 4
  %477 = tail call ptr @strerror(i32 noundef %476) #28
  %478 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.122, ptr noundef nonnull @stdinName, ptr noundef %477) #28
  br label %483

479:                                              ; preds = %470
  %480 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.123, ptr noundef nonnull @stdinName) #28
  br label %483

481:                                              ; preds = %470
  %482 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.107) #28
  br label %483

483:                                              ; preds = %481, %479, %474, %472, %470
  br label %511

484:                                              ; preds = %451
  %485 = zext nneg i32 %377 to i64
  br label %486

486:                                              ; preds = %507, %484
  %487 = phi i64 [ 0, %484 ], [ %509, %507 ]
  %488 = phi i32 [ 0, %484 ], [ %508, %507 ]
  %489 = getelementptr inbounds nuw ptr, ptr %449, i64 %487
  %490 = load ptr, ptr %489, align 8
  %491 = tail call fastcc i32 @XSUM_hashFile(ptr noundef %490, i32 noundef %373, i64 noundef %372, i32 noundef range(i32 0, 2) %374, i32 noundef range(i32 0, 2) %375)
  switch i32 %491, label %506 [
    i32 5, label %504
    i32 3, label %501
    i32 4, label %492
    i32 2, label %495
    i32 0, label %507
  ]

492:                                              ; preds = %486
  %493 = load ptr, ptr %489, align 8
  %494 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.121, ptr noundef %493) #28
  br label %506

495:                                              ; preds = %486
  %496 = load ptr, ptr %489, align 8
  %497 = tail call ptr @__errno_location() #31
  %498 = load i32, ptr %497, align 4
  %499 = tail call ptr @strerror(i32 noundef %498) #28
  %500 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.122, ptr noundef %496, ptr noundef %499) #28
  br label %506

501:                                              ; preds = %486
  %502 = load ptr, ptr %489, align 8
  %503 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.123, ptr noundef %502) #28
  br label %506

504:                                              ; preds = %486
  %505 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.107) #28
  br label %506

506:                                              ; preds = %504, %501, %495, %492, %486
  br label %507

507:                                              ; preds = %506, %486
  %508 = phi i32 [ 1, %506 ], [ %488, %486 ]
  %509 = add nuw nsw i64 %487, 1
  %510 = icmp eq i64 %509, %485
  br i1 %510, label %511, label %486, !llvm.loop !15

511:                                              ; preds = %507, %451, %483, %470, %202, %334, %466, %441, %413, %391, %389
  %512 = phi i32 [ %390, %389 ], [ %393, %391 ], [ %444, %441 ], [ %469, %466 ], [ 1, %413 ], [ %335, %334 ], [ 1, %202 ], [ 0, %451 ], [ %471, %470 ], [ 1, %483 ], [ %508, %507 ]
  ret i32 %512
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @XSUM_usage_advanced(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @XSUM_usage(ptr noundef %0)
  %2 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.28) #28
  %3 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.29) #28
  %4 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.30) #28
  %5 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.31) #28
  %6 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.32) #28
  %7 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.33) #28
  %8 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.34) #28
  %9 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.35) #28
  %10 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.36, i32 noundef 3) #28
  %11 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.37, i64 noundef 102400) #28
  %12 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.38) #28
  %13 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.39) #28
  %14 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.40) #28
  %15 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.41) #28
  %16 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.42) #28
  %17 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.43) #28
  %18 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.44) #28
  %19 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.45) #28
  ret void
}

declare i32 @XSUM_log(ptr noundef, ...) local_unnamed_addr #4

declare void @XSUM_sanityCheck() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, -6) i64 @XSUM_readU64FromChar(ptr nocapture noundef nonnull %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 45
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.62) #28
  tail call void @exit(i32 noundef 1) #30
  unreachable

7:                                                ; preds = %1
  %8 = add i8 %3, -58
  %9 = icmp ult i8 %8, -10
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63) #28
  tail call void @exit(i32 noundef 1) #30
  unreachable

12:                                               ; preds = %7, %19
  %13 = phi i8 [ %25, %19 ], [ %3, %7 ]
  %14 = phi i64 [ %23, %19 ], [ 0, %7 ]
  %15 = phi ptr [ %24, %19 ], [ %2, %7 ]
  %16 = icmp ugt i64 %14, 1844674407370955160
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64) #28
  tail call void @exit(i32 noundef 1) #30
  unreachable

19:                                               ; preds = %12
  %20 = mul nuw i64 %14, 10
  %21 = zext nneg i8 %13 to i64
  %22 = add i64 %20, -48
  %23 = add i64 %22, %21
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 1
  store ptr %24, ptr %0, align 8
  %25 = load i8, ptr %24, align 1
  %26 = add i8 %25, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %12, label %28, !llvm.loop !16

28:                                               ; preds = %19
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -6) i32 @XSUM_readU32FromChar(ptr nocapture noundef nonnull %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, -48
  %5 = icmp ult i8 %4, 10
  br i1 %5, label %6, label %20

6:                                                ; preds = %1, %11
  %7 = phi i8 [ %17, %11 ], [ %3, %1 ]
  %8 = phi i32 [ %15, %11 ], [ 0, %1 ]
  %9 = phi ptr [ %16, %11 ], [ %2, %1 ]
  %10 = icmp ugt i32 %8, 429496728
  br i1 %10, label %48, label %11

11:                                               ; preds = %6
  %12 = mul nuw i32 %8, 10
  %13 = add nsw i8 %7, -48
  %14 = zext nneg i8 %13 to i32
  %15 = add nuw i32 %12, %14
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 1
  store ptr %16, ptr %0, align 8
  %17 = load i8, ptr %16, align 1
  %18 = add i8 %17, -48
  %19 = icmp ult i8 %18, 10
  br i1 %19, label %6, label %20, !llvm.loop !9

20:                                               ; preds = %11, %1
  %21 = phi i32 [ 0, %1 ], [ %15, %11 ]
  %22 = phi ptr [ %2, %1 ], [ %16, %11 ]
  %23 = phi i8 [ %3, %1 ], [ %17, %11 ]
  switch i8 %23, label %50 [
    i8 75, label %24
    i8 77, label %24
  ]

24:                                               ; preds = %20, %20
  %25 = icmp ugt i32 %21, 4194303
  br i1 %25, label %48, label %26

26:                                               ; preds = %24
  %27 = shl nuw i32 %21, 10
  %28 = icmp eq i8 %23, 77
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = icmp samesign ugt i32 %21, 4095
  br i1 %30, label %48, label %31

31:                                               ; preds = %29
  %32 = shl nuw i32 %21, 20
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ %27, %26 ]
  %35 = getelementptr inbounds nuw i8, ptr %22, i64 1
  store ptr %35, ptr %0, align 8
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 105
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds nuw i8, ptr %22, i64 2
  store ptr %39, ptr %0, align 8
  %40 = load i8, ptr %39, align 1
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i8 [ %40, %38 ], [ %36, %33 ]
  %43 = phi i64 [ 2, %38 ], [ 1, %33 ]
  %44 = icmp eq i8 %42, 66
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %22, i64 %43
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 1
  store ptr %47, ptr %0, align 8
  br label %50

48:                                               ; preds = %6, %29, %24
  %49 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64) #28
  tail call void @exit(i32 noundef 1) #30
  unreachable

50:                                               ; preds = %20, %41, %45
  %51 = phi i32 [ %34, %41 ], [ %34, %45 ], [ %21, %20 ]
  ret i32 %51
}

declare i32 @XSUM_logVerbose(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare i32 @XSUM_benchInternal(i64 noundef) local_unnamed_addr #4

declare i32 @XSUM_benchFiles(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @XSUM_isConsole(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @XSUM_usage(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.46, ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @author) #28
  %3 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.47) #28
  %4 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.48, ptr noundef %0) #28
  %5 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.49) #28
  %6 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.50) #28
  %7 = load i32, ptr @g_defaultAlgo, align 4
  %8 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.51, i32 noundef %7) #28
  %9 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.52) #28
  %10 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.53) #28
  %11 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.54) #28
  %12 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.55) #28
  %13 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.56) #28
  %14 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.57) #28
  %15 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.58) #28
  %16 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.59) #28
  %17 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.60) #28
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @XSUM_checkFile(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6, i32 noundef range(i32 0, 2) %7, i32 noundef range(i32 1, 16) %8) unnamed_addr #0 {
  %10 = alloca %struct.XXH_INLINE_XXH128_hash_t, align 8
  %11 = alloca %struct.XXH_INLINE_XXH128_hash_t, align 8
  %12 = alloca %struct.ParsedLine, align 8
  %13 = alloca %union.Multihash, align 8
  %14 = alloca %struct.ParseFileArg, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %14) #28
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 80
  %16 = icmp eq ptr %0, @stdinName
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load ptr, ptr @stdin, align 8
  br label %21

19:                                               ; preds = %9
  %20 = tail call ptr @XSUM_fopen(ptr noundef %0, ptr noundef nonnull @.str.66) #28
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  %23 = phi ptr [ @stdinFileName, %17 ], [ %0, %19 ]
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = tail call ptr @__errno_location() #31
  %27 = load i32, ptr %26, align 4
  %28 = tail call ptr @strerror(i32 noundef %27) #28
  %29 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.67, ptr noundef %23, ptr noundef %28) #28
  br label %288

30:                                               ; preds = %21
  store ptr %23, ptr %14, align 8
  %31 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %22, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 4115, ptr %32, align 8
  %33 = tail call noalias dereferenceable_or_null(4115) ptr @malloc(i64 noundef 4115) #32
  %34 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 65536, ptr %35, align 8
  %36 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #32
  %37 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i32 %3, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %14, i64 52
  store i32 %4, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %5, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 %6, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 %7, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 %8, ptr %43, align 4
  %44 = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i64 %2, ptr %44, align 8
  %45 = icmp eq ptr %33, null
  %46 = icmp eq ptr %36, null
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.68) #28
  tail call void @exit(i32 noundef 1) #30
  unreachable

50:                                               ; preds = %30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, i8 0, i64 64, i1 false)
  %51 = getelementptr inbounds nuw i8, ptr %14, i64 136
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %53 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %54 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %55 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %56 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %57 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %58 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %59 = getelementptr inbounds nuw i8, ptr %14, i64 112
  %60 = getelementptr inbounds nuw i8, ptr %14, i64 96
  %61 = getelementptr inbounds nuw i8, ptr %14, i64 104
  %62 = getelementptr inbounds nuw i8, ptr %14, i64 128
  br label %63

63:                                               ; preds = %223, %50
  %64 = phi i64 [ 0, %50 ], [ %65, %223 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %65 = add i64 %64, 1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.80, ptr noundef %23) #28
  br label %226

69:                                               ; preds = %63
  %70 = load ptr, ptr %31, align 8
  %71 = call fastcc i32 @XSUM_getLine(ptr noundef %34, ptr noundef %32, ptr noundef %70)
  switch i32 %71, label %72 [
    i32 1, label %223
    i32 0, label %77
    i32 2, label %227
    i32 4, label %75
    i32 3, label %73
  ]

72:                                               ; preds = %154, %69
  unreachable

73:                                               ; preds = %69
  %74 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.83, ptr noundef %23, i64 noundef %65) #28
  br label %226

75:                                               ; preds = %69
  %76 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.84, ptr noundef %23, i64 noundef %65) #28
  br label %226

77:                                               ; preds = %69
  %78 = load ptr, ptr %34, align 8
  %79 = load i32, ptr %43, align 4
  br label %80

80:                                               ; preds = %83, %77
  %81 = phi ptr [ %78, %77 ], [ %84, %83 ]
  %82 = load i8, ptr %81, align 1
  switch i8 %82, label %85 [
    i8 32, label %83
    i8 9, label %83
    i8 92, label %87
  ]

83:                                               ; preds = %80, %80
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 1
  br label %80, !llvm.loop !17

85:                                               ; preds = %80
  %86 = call fastcc i32 @XSUM_parseLine1(ptr noundef nonnull %12, ptr noundef %78, i32 noundef range(i32 0, 2) %1, i32 noundef 0, i32 noundef %79)
  br label %90

87:                                               ; preds = %80
  %88 = getelementptr inbounds nuw i8, ptr %78, i64 1
  %89 = call fastcc i32 @XSUM_parseLine1(ptr noundef nonnull %12, ptr noundef nonnull %88, i32 noundef range(i32 0, 2) %1, i32 noundef 1, i32 noundef %79)
  br label %90

90:                                               ; preds = %87, %85
  %91 = phi i32 [ %86, %85 ], [ %89, %87 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load i64, ptr %52, align 8
  %95 = add i64 %94, 1
  store i64 %95, ptr %52, align 8
  %96 = load i32, ptr %41, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %223, label %98, !llvm.loop !18

98:                                               ; preds = %93
  %99 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.85, ptr noundef %23, i64 noundef %65) #28
  br label %223, !llvm.loop !18

100:                                              ; preds = %90
  %101 = load i64, ptr %15, align 8
  %102 = add i64 %101, 1
  store i64 %102, ptr %15, align 8
  %103 = load ptr, ptr %53, align 8
  %104 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %103, ptr noundef nonnull dereferenceable(6) @stdinFileName) #27
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load ptr, ptr @stdin, align 8
  br label %112

108:                                              ; preds = %100
  %109 = tail call ptr @XSUM_fopen(ptr noundef %103, ptr noundef nonnull @.str.86) #28
  %110 = load ptr, ptr @stdin, align 8
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108, %106
  %113 = phi ptr [ %107, %106 ], [ %109, %108 ]
  %114 = phi ptr [ %107, %106 ], [ %110, %108 ]
  tail call void @XSUM_setBinaryMode(ptr noundef %114) #28
  br label %115

115:                                              ; preds = %112, %108
  %116 = phi ptr [ %113, %112 ], [ %109, %108 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %155, label %118

118:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #28
  %119 = load i32, ptr %54, align 8
  %120 = load i64, ptr %44, align 8
  %121 = load ptr, ptr %37, align 8
  %122 = load i64, ptr %35, align 8
  %123 = call fastcc i32 @XSUM_hashStream(ptr noundef nonnull %116, i32 noundef %119, i64 noundef %120, ptr noundef %121, i64 noundef %122, ptr noundef %13)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %118
  switch i32 %119, label %148 [
    i32 0, label %126
    i32 1, label %132
    i32 3, label %132
    i32 2, label %138
  ]

126:                                              ; preds = %125
  %127 = load i32, ptr %13, align 8
  %128 = load i32, ptr %12, align 8
  %129 = tail call noundef i32 @llvm.bswap.i32(i32 %128)
  %130 = icmp ne i32 %127, %129
  %131 = zext i1 %130 to i32
  br label %148

132:                                              ; preds = %125, %125
  %133 = load i64, ptr %13, align 8
  %134 = load i64, ptr %12, align 8
  %135 = tail call noundef i64 @llvm.bswap.i64(i64 %134)
  %136 = icmp ne i64 %133, %135
  %137 = zext i1 %136 to i32
  br label %148

138:                                              ; preds = %125
  %139 = load i64, ptr %12, align 8
  %140 = load i64, ptr %55, align 8
  %141 = tail call noundef i64 @llvm.bswap.i64(i64 %139)
  %142 = tail call noundef i64 @llvm.bswap.i64(i64 %140)
  %143 = load i64, ptr %13, align 8
  %144 = load i64, ptr %56, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11)
  store i64 %143, ptr %10, align 8
  store i64 %144, ptr %57, align 8
  store i64 %142, ptr %11, align 8
  store i64 %141, ptr %58, align 8
  %145 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %10, ptr noundef nonnull dereferenceable(16) %11, i64 16)
  %146 = icmp ne i32 %145, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11)
  %147 = zext i1 %146 to i32
  br label %148

148:                                              ; preds = %138, %132, %126, %125, %118
  %149 = phi i32 [ 1, %125 ], [ %123, %118 ], [ %131, %126 ], [ %137, %132 ], [ %147, %138 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #28
  %150 = load ptr, ptr @stdin, align 8
  %151 = icmp eq ptr %116, %150
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = tail call i32 @fclose(ptr noundef nonnull %116)
  br label %154

154:                                              ; preds = %152, %148
  switch i32 %149, label %72 [
    i32 1, label %178
    i32 0, label %178
    i32 2, label %155
    i32 3, label %171
  ]

155:                                              ; preds = %154, %115
  %156 = load i32, ptr %40, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i64, ptr %62, align 8
  %160 = add i64 %159, 1
  store i64 %160, ptr %62, align 8
  br label %223

161:                                              ; preds = %155
  %162 = load i64, ptr %59, align 8
  %163 = add i64 %162, 1
  store i64 %163, ptr %59, align 8
  %164 = load i32, ptr %39, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %223

166:                                              ; preds = %161
  %167 = tail call ptr @__errno_location() #31
  %168 = load i32, ptr %167, align 4
  %169 = tail call ptr @strerror(i32 noundef %168) #28
  %170 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.88, ptr noundef %23, i64 noundef %65, ptr noundef %103, ptr noundef %169) #28
  br label %223

171:                                              ; preds = %154
  %172 = load i64, ptr %59, align 8
  %173 = add i64 %172, 1
  store i64 %173, ptr %59, align 8
  %174 = load i32, ptr %39, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %223

176:                                              ; preds = %171
  %177 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.89, ptr noundef %23, i64 noundef %65, ptr noundef %103) #28
  br label %223

178:                                              ; preds = %154, %154
  %179 = icmp eq i32 %149, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %178
  %181 = load i64, ptr %61, align 8
  %182 = add i64 %181, 1
  store i64 %182, ptr %61, align 8
  %183 = load i32, ptr %42, align 8
  %184 = icmp eq i32 %183, 0
  %185 = load i32, ptr %39, align 4
  %186 = icmp eq i32 %185, 0
  %187 = select i1 %184, i1 %186, i1 false
  br i1 %187, label %193, label %223

188:                                              ; preds = %178
  %189 = load i64, ptr %60, align 8
  %190 = add i64 %189, 1
  store i64 %190, ptr %60, align 8
  %191 = load i32, ptr %39, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %223

193:                                              ; preds = %180, %188
  %194 = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %103, i32 noundef 92) #27
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %204

196:                                              ; preds = %193
  %197 = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %103, i32 noundef 10) #27
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %103, i32 noundef 13) #27
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.100, ptr noundef %103) #28
  br label %220

204:                                              ; preds = %199, %196, %193
  %205 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.90, i32 noundef 92) #28
  br label %206

206:                                              ; preds = %218, %204
  %207 = phi ptr [ %219, %218 ], [ %103, %204 ]
  %208 = load i8, ptr %207, align 1
  switch i8 %208, label %215 [
    i8 0, label %220
    i8 10, label %209
    i8 13, label %211
    i8 92, label %213
  ]

209:                                              ; preds = %206
  %210 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.101) #28
  br label %218

211:                                              ; preds = %206
  %212 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.102) #28
  br label %218

213:                                              ; preds = %206
  %214 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.103) #28
  br label %218

215:                                              ; preds = %206
  %216 = sext i8 %208 to i32
  %217 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.90, i32 noundef %216) #28
  br label %218

218:                                              ; preds = %215, %213, %211, %209
  %219 = getelementptr inbounds nuw i8, ptr %207, i64 1
  br label %206, !llvm.loop !19

220:                                              ; preds = %206, %202
  %221 = select i1 %179, ptr @.str.92, ptr @.str.93
  %222 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.91, ptr noundef nonnull %221) #28
  br label %223

223:                                              ; preds = %220, %188, %180, %176, %171, %166, %161, %158, %98, %93, %69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #28
  %224 = load i32, ptr %51, align 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %63, label %228

226:                                              ; preds = %75, %73, %67
  store i32 1, ptr %51, align 8
  br label %227

227:                                              ; preds = %69, %226
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #28
  br label %228

228:                                              ; preds = %223, %227
  %229 = load ptr, ptr %37, align 8
  tail call void @free(ptr noundef %229) #28
  %230 = load ptr, ptr %34, align 8
  tail call void @free(ptr noundef %230) #28
  %231 = load ptr, ptr @stdin, align 8
  %232 = icmp eq ptr %22, %231
  br i1 %232, label %235, label %233

233:                                              ; preds = %228
  %234 = tail call i32 @fclose(ptr noundef nonnull %22)
  br label %235

235:                                              ; preds = %233, %228
  %236 = load i64, ptr %15, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.69, ptr noundef %23) #28
  br label %263

240:                                              ; preds = %235
  %241 = icmp eq i32 %4, 0
  br i1 %241, label %242, label %263

242:                                              ; preds = %240
  %243 = load i64, ptr %52, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = icmp eq i64 %243, 1
  %247 = select i1 %246, ptr @.str.71, ptr @.str.72
  %248 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.70, i64 noundef %243, ptr noundef nonnull %247) #28
  br label %249

249:                                              ; preds = %245, %242
  %250 = load i64, ptr %59, align 8
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %249
  %253 = icmp eq i64 %250, 1
  %254 = select i1 %253, ptr @.str.74, ptr @.str.75
  %255 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.73, i64 noundef %250, ptr noundef nonnull %254) #28
  br label %256

256:                                              ; preds = %252, %249
  %257 = load i64, ptr %60, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %256
  %260 = icmp eq i64 %257, 1
  %261 = select i1 %260, ptr @.str.77, ptr @.str.78
  %262 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.76, i64 noundef %257, ptr noundef nonnull %261) #28
  br label %263

263:                                              ; preds = %240, %259, %256, %238
  %264 = icmp ne i64 %236, 0
  %265 = load i64, ptr %60, align 8
  %266 = icmp eq i64 %265, 0
  %267 = select i1 %264, i1 %266, i1 false
  %268 = load i64, ptr %59, align 8
  %269 = icmp eq i64 %268, 0
  %270 = select i1 %267, i1 %269, i1 false
  br i1 %270, label %271, label %280

271:                                              ; preds = %263
  %272 = icmp eq i32 %3, 0
  %273 = load i64, ptr %52, align 8
  %274 = icmp eq i64 %273, 0
  %275 = select i1 %272, i1 true, i1 %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load i32, ptr %51, align 8
  %278 = icmp eq i32 %277, 0
  %279 = zext i1 %278 to i32
  br label %280

280:                                              ; preds = %271, %276, %263
  %281 = phi i32 [ 0, %263 ], [ %279, %276 ], [ 0, %271 ]
  %282 = icmp ne i32 %5, 0
  %283 = load i64, ptr %61, align 8
  %284 = icmp eq i64 %283, 0
  %285 = select i1 %282, i1 %284, i1 false
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.79, ptr noundef %23) #28
  br label %288

288:                                              ; preds = %280, %286, %25
  %289 = phi i32 [ 0, %25 ], [ 0, %286 ], [ %281, %280 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %14) #28
  ret i32 %289
}

declare ptr @XSUM_fopen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #12

declare i32 @XSUM_output(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @XSUM_getLine(ptr nocapture noundef nonnull %0, ptr nocapture noundef nonnull %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %6, %3
  tail call void @free(ptr noundef %4) #28
  store i32 0, ptr %1, align 4
  %10 = tail call noalias dereferenceable_or_null(4115) ptr @malloc(i64 noundef 4115) #32
  store ptr %10, ptr %0, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %59, label %12

12:                                               ; preds = %9
  store i32 4115, ptr %1, align 4
  br label %13

13:                                               ; preds = %12, %6
  %14 = tail call i32 @fgetc(ptr noundef %2)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %45, label %18

16:                                               ; preds = %39
  %17 = icmp eq i64 %21, 0
  br i1 %17, label %45, label %49

18:                                               ; preds = %13, %39
  %19 = phi i32 [ %43, %39 ], [ %14, %13 ]
  %20 = phi i64 [ %21, %39 ], [ 0, %13 ]
  %21 = add i64 %20, 1
  %22 = load i32, ptr %1, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %18
  %26 = lshr i64 %23, 1
  %27 = add nsw i64 %23, 1
  %28 = add i64 %27, %26
  %29 = tail call i64 @llvm.umin.i64(i64 %28, i64 32768)
  %30 = icmp ult i64 %21, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = load ptr, ptr %0, align 8
  %33 = tail call ptr @realloc(ptr noundef %32, i64 noundef %29) #33
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %31
  store ptr %33, ptr %0, align 8
  %36 = trunc nuw nsw i64 %29 to i32
  store i32 %36, ptr %1, align 4
  br label %37

37:                                               ; preds = %35, %18
  %38 = icmp eq i32 %19, 10
  br i1 %38, label %49, label %39

39:                                               ; preds = %37
  %40 = trunc i32 %19 to i8
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 %20
  store i8 %40, ptr %42, align 1
  %43 = tail call i32 @fgetc(ptr noundef %2)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %16, label %18

45:                                               ; preds = %13, %16
  %46 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 %46
  store i8 0, ptr %48, align 1
  br label %59

49:                                               ; preds = %37, %16
  %50 = phi i64 [ %21, %16 ], [ %20, %37 ]
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 %50
  store i8 0, ptr %52, align 1
  %53 = icmp eq i64 %50, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %0, align 8
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 35
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %25, %31, %45, %54, %49, %9
  %60 = phi i32 [ 4, %9 ], [ 0, %49 ], [ %58, %54 ], [ 2, %45 ], [ 3, %25 ], [ 4, %31 ]
  ret i32 %60
}

declare void @XSUM_setBinaryMode(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @XSUM_hashStream(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nocapture noundef nonnull writeonly %5) unnamed_addr #0 {
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [8 x i64], align 8
  %10 = alloca %struct.XXH_INLINE_XXH32_state_s, align 4
  %11 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  %12 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %12, i8 0, i64 576, i1 false)
  %13 = trunc i64 %2 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %15 = add i32 %13, 606290984
  store i32 %15, ptr %14, align 4
  %16 = add i32 %13, -2048144777
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %13, ptr %18, align 4
  %19 = add i32 %13, 1640531535
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %19, ptr %20, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %11, i8 0, i64 88, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %22 = add i64 %2, 6983438078262162902
  store i64 %22, ptr %21, align 8
  %23 = add i64 %2, -4417276706812531889
  %24 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %2, ptr %25, align 8
  %26 = add i64 %2, 7046029288634856825
  %27 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %26, ptr %27, align 8
  %28 = icmp eq i64 %2, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %6
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %12, align 64
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 -7046029288634856825, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 -4417276706812531889, ptr %32, align 16
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 1609587929392839161, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 -8796714831421723037, ptr %34, align 32
  %35 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 2246822519, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 2870177450012600261, ptr %36, align 16
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i64 2654435761, ptr %37, align 8
  br label %97

38:                                               ; preds = %6
  %39 = getelementptr inbounds nuw i8, ptr %12, i64 552
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %41 = add i64 %2, -4734510112055689544
  %42 = sub i64 2066345149520216444, %2
  store i64 %41, ptr %40, align 64
  %43 = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i64 %42, ptr %43, align 8
  %44 = add i64 %2, -2623469361688619810
  %45 = sub i64 2262974939099578482, %2
  %46 = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i64 %44, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i64 %45, ptr %47, align 8
  %48 = add i64 %2, 8711581037947681227
  %49 = sub i64 2410270004345854594, %2
  %50 = getelementptr inbounds nuw i8, ptr %12, i64 96
  store i64 %48, ptr %50, align 32
  %51 = getelementptr inbounds nuw i8, ptr %12, i64 104
  store i64 %49, ptr %51, align 8
  %52 = add i64 %2, -8204357891075471176
  %53 = sub i64 5487137525590930912, %2
  %54 = getelementptr inbounds nuw i8, ptr %12, i64 112
  store i64 %52, ptr %54, align 16
  %55 = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i64 %53, ptr %55, align 8
  %56 = add i64 %2, -3818837453329782724
  %57 = sub i64 -6688317018830679928, %2
  %58 = getelementptr inbounds nuw i8, ptr %12, i64 128
  store i64 %56, ptr %58, align 64
  %59 = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i64 %57, ptr %59, align 8
  %60 = add i64 %2, 5690594596133299313
  %61 = sub i64 -2833645246901970632, %2
  %62 = getelementptr inbounds nuw i8, ptr %12, i64 144
  store i64 %60, ptr %62, align 16
  %63 = getelementptr inbounds nuw i8, ptr %12, i64 152
  store i64 %61, ptr %63, align 8
  %64 = add i64 %2, 4554437623014685352
  %65 = sub i64 2111919702937427193, %2
  %66 = getelementptr inbounds nuw i8, ptr %12, i64 160
  store i64 %64, ptr %66, align 32
  %67 = getelementptr inbounds nuw i8, ptr %12, i64 168
  store i64 %65, ptr %67, align 8
  %68 = add i64 %2, 3556072174620004746
  %69 = sub i64 7238261902898274248, %2
  %70 = getelementptr inbounds nuw i8, ptr %12, i64 176
  store i64 %68, ptr %70, align 16
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 184
  store i64 %69, ptr %71, align 8
  %72 = add i64 %2, -4329134394285701654
  %73 = sub i64 -1485321483350670907, %2
  %74 = getelementptr inbounds nuw i8, ptr %12, i64 192
  store i64 %72, ptr %74, align 64
  %75 = getelementptr inbounds nuw i8, ptr %12, i64 200
  store i64 %73, ptr %75, align 8
  %76 = add i64 %2, 5321830579834785047
  %77 = sub i64 -7032137544937171245, %2
  %78 = getelementptr inbounds nuw i8, ptr %12, i64 208
  store i64 %76, ptr %78, align 16
  %79 = getelementptr inbounds nuw i8, ptr %12, i64 216
  store i64 %77, ptr %79, align 8
  %80 = add i64 %2, -242834301215959509
  %81 = sub i64 -3588858202114426737, %2
  %82 = getelementptr inbounds nuw i8, ptr %12, i64 224
  store i64 %80, ptr %82, align 32
  %83 = getelementptr inbounds nuw i8, ptr %12, i64 232
  store i64 %81, ptr %83, align 8
  %84 = add i64 %2, 2883454493032893253
  %85 = sub i64 9097354517224871855, %2
  %86 = getelementptr inbounds nuw i8, ptr %12, i64 240
  store i64 %84, ptr %86, align 16
  %87 = getelementptr inbounds nuw i8, ptr %12, i64 248
  store i64 %85, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %12, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %88, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %12, align 64
  %89 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 -7046029288634856825, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 -4417276706812531889, ptr %90, align 16
  %91 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 1609587929392839161, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 -8796714831421723037, ptr %92, align 32
  %93 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 2246822519, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 2870177450012600261, ptr %94, align 16
  %95 = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i64 2654435761, ptr %95, align 8
  store i64 %2, ptr %39, align 8
  %96 = getelementptr inbounds nuw i8, ptr %12, i64 516
  store i32 1, ptr %96, align 4
  br label %97

97:                                               ; preds = %29, %38
  %98 = phi ptr [ null, %38 ], [ @XXH3_kSecret, %29 ]
  %99 = getelementptr inbounds nuw i8, ptr %12, i64 568
  store ptr %98, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %12, i64 544
  store i64 128, ptr %100, align 32
  %101 = getelementptr inbounds nuw i8, ptr %12, i64 536
  store i64 16, ptr %101, align 8
  %102 = tail call i64 @fread(ptr noundef %3, i64 noundef 1, i64 noundef %4, ptr noundef %0)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %377, label %104

104:                                              ; preds = %97
  %105 = icmp ne ptr %3, null
  %106 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %107 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %108 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %110 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %112 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %113 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %114 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %115 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %117 = icmp ult i32 %1, 4
  br i1 %117, label %118, label %356

118:                                              ; preds = %104, %357
  %119 = phi i32 [ %358, %357 ], [ 0, %104 ]
  %120 = phi i32 [ %359, %357 ], [ 0, %104 ]
  %121 = phi i32 [ %360, %357 ], [ 0, %104 ]
  %122 = phi i32 [ %361, %357 ], [ 0, %104 ]
  %123 = phi i64 [ %372, %357 ], [ %102, %104 ]
  %124 = phi i64 [ %371, %357 ], [ 0, %104 ]
  %125 = phi i64 [ %370, %357 ], [ %22, %104 ]
  %126 = phi i64 [ %369, %357 ], [ %23, %104 ]
  %127 = phi i64 [ %368, %357 ], [ %2, %104 ]
  %128 = phi i64 [ %367, %357 ], [ %26, %104 ]
  %129 = phi i32 [ %366, %357 ], [ 0, %104 ]
  %130 = phi i32 [ %365, %357 ], [ %15, %104 ]
  %131 = phi i32 [ %364, %357 ], [ %16, %104 ]
  %132 = phi i32 [ %363, %357 ], [ %13, %104 ]
  %133 = phi i32 [ %362, %357 ], [ %19, %104 ]
  switch i32 %1, label %355 [
    i32 0, label %134
    i32 1, label %251
    i32 2, label %354
  ]

134:                                              ; preds = %118
  tail call void @llvm.assume(i1 %105)
  %135 = trunc i64 %123 to i32
  %136 = add i32 %129, %135
  store i32 %136, ptr %10, align 4
  %137 = icmp ugt i64 %123, 15
  %138 = icmp ugt i32 %136, 15
  %139 = or i1 %137, %138
  %140 = zext i1 %139 to i32
  %141 = or i32 %122, %140
  store i32 %141, ptr %111, align 4
  %142 = zext nneg i32 %120 to i64
  %143 = icmp ult i32 %120, 16
  tail call void @llvm.assume(i1 %143)
  %144 = sub nuw nsw i64 16, %142
  %145 = icmp ult i64 %123, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %134
  %147 = getelementptr inbounds nuw i8, ptr %113, i64 %142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %147, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 range(i64 1, 0) %123, i1 false)
  %148 = load i32, ptr %112, align 4
  %149 = add i32 %148, %135
  br label %245

150:                                              ; preds = %134
  %151 = getelementptr inbounds nuw i8, ptr %3, i64 %123
  %152 = icmp eq i32 %120, 0
  br i1 %152, label %183, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds nuw i8, ptr %113, i64 %142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %154, ptr nonnull align 1 %3, i64 %144, i1 false)
  %155 = load i32, ptr %112, align 4
  %156 = zext i32 %155 to i64
  %157 = sub nsw i64 16, %156
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 %157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %159 = load i32, ptr %113, align 4, !noalias !20
  %160 = mul i32 %159, -2048144777
  %161 = add i32 %160, %130
  %162 = tail call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 13)
  %163 = mul i32 %162, -1640531535
  %164 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %163) #34, !srcloc !23
  store i32 %164, ptr %14, align 4, !alias.scope !20, !noalias !24
  %165 = load i32, ptr %114, align 4, !noalias !20
  %166 = mul i32 %165, -2048144777
  %167 = add i32 %166, %131
  %168 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 13)
  %169 = mul i32 %168, -1640531535
  %170 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %169) #34, !srcloc !23
  store i32 %170, ptr %17, align 4, !alias.scope !20, !noalias !24
  %171 = load i32, ptr %115, align 4, !noalias !20
  %172 = mul i32 %171, -2048144777
  %173 = add i32 %172, %132
  %174 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 13)
  %175 = mul i32 %174, -1640531535
  %176 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %175) #34, !srcloc !23
  store i32 %176, ptr %18, align 4, !alias.scope !20, !noalias !24
  %177 = load i32, ptr %116, align 4, !noalias !20
  %178 = mul i32 %177, -2048144777
  %179 = add i32 %178, %133
  %180 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 13)
  %181 = mul i32 %180, -1640531535
  %182 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %181) #34, !srcloc !23
  store i32 %182, ptr %20, align 4, !alias.scope !20, !noalias !24
  store i32 0, ptr %112, align 4
  br label %183

183:                                              ; preds = %153, %150
  %184 = phi i32 [ 0, %153 ], [ %119, %150 ]
  %185 = phi i32 [ %182, %153 ], [ %133, %150 ]
  %186 = phi i32 [ %176, %153 ], [ %132, %150 ]
  %187 = phi i32 [ %170, %153 ], [ %131, %150 ]
  %188 = phi i32 [ %164, %153 ], [ %130, %150 ]
  %189 = phi ptr [ %158, %153 ], [ %3, %150 ]
  %190 = icmp ule ptr %189, %151
  tail call void @llvm.assume(i1 %190)
  %191 = ptrtoint ptr %151 to i64
  %192 = ptrtoint ptr %189 to i64
  %193 = sub i64 %191, %192
  %194 = icmp ugt i64 %193, 15
  br i1 %194, label %195, label %234

195:                                              ; preds = %183
  %196 = getelementptr inbounds nuw i8, ptr %189, i64 %193
  %197 = getelementptr inbounds i8, ptr %196, i64 -15
  br label %198

198:                                              ; preds = %198, %195
  %199 = phi i32 [ %185, %195 ], [ %230, %198 ]
  %200 = phi i32 [ %186, %195 ], [ %223, %198 ]
  %201 = phi i32 [ %187, %195 ], [ %216, %198 ]
  %202 = phi i32 [ %188, %195 ], [ %209, %198 ]
  %203 = phi ptr [ %189, %195 ], [ %231, %198 ]
  %204 = load i32, ptr %203, align 1
  %205 = mul i32 %204, -2048144777
  %206 = add i32 %205, %202
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 13)
  %208 = mul i32 %207, -1640531535
  %209 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %208) #34, !srcloc !23
  %210 = getelementptr inbounds nuw i8, ptr %203, i64 4
  %211 = load i32, ptr %210, align 1
  %212 = mul i32 %211, -2048144777
  %213 = add i32 %212, %201
  %214 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 13)
  %215 = mul i32 %214, -1640531535
  %216 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %215) #34, !srcloc !23
  %217 = getelementptr inbounds nuw i8, ptr %203, i64 8
  %218 = load i32, ptr %217, align 1
  %219 = mul i32 %218, -2048144777
  %220 = add i32 %219, %200
  %221 = tail call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 13)
  %222 = mul i32 %221, -1640531535
  %223 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %222) #34, !srcloc !23
  %224 = getelementptr inbounds nuw i8, ptr %203, i64 12
  %225 = load i32, ptr %224, align 1
  %226 = mul i32 %225, -2048144777
  %227 = add i32 %226, %199
  %228 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 13)
  %229 = mul i32 %228, -1640531535
  %230 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %229) #34, !srcloc !23
  %231 = getelementptr inbounds nuw i8, ptr %203, i64 16
  %232 = icmp ult ptr %231, %197
  br i1 %232, label %198, label %233, !llvm.loop !26

233:                                              ; preds = %198
  store i32 %209, ptr %14, align 4
  store i32 %216, ptr %17, align 4
  store i32 %223, ptr %18, align 4
  store i32 %230, ptr %20, align 4
  br label %234

234:                                              ; preds = %233, %183
  %235 = phi i32 [ %185, %183 ], [ %230, %233 ]
  %236 = phi i32 [ %186, %183 ], [ %223, %233 ]
  %237 = phi i32 [ %187, %183 ], [ %216, %233 ]
  %238 = phi i32 [ %188, %183 ], [ %209, %233 ]
  %239 = phi ptr [ %189, %183 ], [ %231, %233 ]
  %240 = icmp ult ptr %239, %151
  br i1 %240, label %241, label %357

241:                                              ; preds = %234
  %242 = ptrtoint ptr %239 to i64
  %243 = sub i64 %191, %242
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %113, ptr align 1 %239, i64 %243, i1 false)
  %244 = trunc i64 %243 to i32
  br label %245

245:                                              ; preds = %241, %146
  %246 = phi i32 [ %235, %241 ], [ %133, %146 ]
  %247 = phi i32 [ %236, %241 ], [ %132, %146 ]
  %248 = phi i32 [ %237, %241 ], [ %131, %146 ]
  %249 = phi i32 [ %238, %241 ], [ %130, %146 ]
  %250 = phi i32 [ %244, %241 ], [ %149, %146 ]
  store i32 %250, ptr %112, align 4
  br label %357

251:                                              ; preds = %118
  tail call void @llvm.assume(i1 %105)
  %252 = add i64 %124, %123
  store i64 %252, ptr %11, align 8
  %253 = zext nneg i32 %121 to i64
  %254 = icmp ult i32 %121, 33
  tail call void @llvm.assume(i1 %254)
  %255 = sub nuw nsw i64 32, %253
  %256 = icmp ult i64 %123, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = getelementptr inbounds nuw i8, ptr %107, i64 %253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %258, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 range(i64 1, 0) %123, i1 false)
  %259 = trunc nuw nsw i64 %123 to i32
  %260 = load i32, ptr %106, align 8
  %261 = add i32 %260, %259
  br label %348

262:                                              ; preds = %251
  %263 = getelementptr inbounds nuw i8, ptr %3, i64 %123
  %264 = icmp eq i32 %121, 0
  br i1 %264, label %291, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds nuw i8, ptr %107, i64 %253
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %266, ptr nonnull align 1 %3, i64 %255, i1 false)
  %267 = load i32, ptr %106, align 8
  %268 = zext i32 %267 to i64
  %269 = sub nsw i64 32, %268
  %270 = getelementptr inbounds nuw i8, ptr %3, i64 %269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %271 = load i64, ptr %107, align 8, !noalias !27
  %272 = mul i64 %271, -4417276706812531889
  %273 = add i64 %272, %125
  %274 = tail call i64 @llvm.fshl.i64(i64 %273, i64 %273, i64 31)
  %275 = mul i64 %274, -7046029288634856825
  store i64 %275, ptr %21, align 8, !alias.scope !27, !noalias !30
  %276 = load i64, ptr %108, align 8, !noalias !27
  %277 = mul i64 %276, -4417276706812531889
  %278 = add i64 %277, %126
  %279 = tail call i64 @llvm.fshl.i64(i64 %278, i64 %278, i64 31)
  %280 = mul i64 %279, -7046029288634856825
  store i64 %280, ptr %24, align 8, !alias.scope !27, !noalias !30
  %281 = load i64, ptr %109, align 8, !noalias !27
  %282 = mul i64 %281, -4417276706812531889
  %283 = add i64 %282, %127
  %284 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 31)
  %285 = mul i64 %284, -7046029288634856825
  store i64 %285, ptr %25, align 8, !alias.scope !27, !noalias !30
  %286 = load i64, ptr %110, align 8, !noalias !27
  %287 = mul i64 %286, -4417276706812531889
  %288 = add i64 %287, %128
  %289 = tail call i64 @llvm.fshl.i64(i64 %288, i64 %288, i64 31)
  %290 = mul i64 %289, -7046029288634856825
  store i64 %290, ptr %27, align 8, !alias.scope !27, !noalias !30
  store i32 0, ptr %106, align 8
  br label %291

291:                                              ; preds = %265, %262
  %292 = phi i64 [ %290, %265 ], [ %128, %262 ]
  %293 = phi i64 [ %285, %265 ], [ %127, %262 ]
  %294 = phi i64 [ %280, %265 ], [ %126, %262 ]
  %295 = phi i64 [ %275, %265 ], [ %125, %262 ]
  %296 = phi ptr [ %270, %265 ], [ %3, %262 ]
  %297 = icmp ule ptr %296, %263
  tail call void @llvm.assume(i1 %297)
  %298 = ptrtoint ptr %263 to i64
  %299 = ptrtoint ptr %296 to i64
  %300 = sub i64 %298, %299
  %301 = icmp ugt i64 %300, 31
  br i1 %301, label %302, label %337

302:                                              ; preds = %291
  %303 = getelementptr inbounds nuw i8, ptr %296, i64 %300
  %304 = getelementptr inbounds i8, ptr %303, i64 -31
  br label %305

305:                                              ; preds = %305, %302
  %306 = phi i64 [ %292, %302 ], [ %333, %305 ]
  %307 = phi i64 [ %293, %302 ], [ %327, %305 ]
  %308 = phi i64 [ %294, %302 ], [ %321, %305 ]
  %309 = phi i64 [ %295, %302 ], [ %315, %305 ]
  %310 = phi ptr [ %296, %302 ], [ %334, %305 ]
  %311 = load i64, ptr %310, align 1
  %312 = mul i64 %311, -4417276706812531889
  %313 = add i64 %312, %309
  %314 = tail call i64 @llvm.fshl.i64(i64 %313, i64 %313, i64 31)
  %315 = mul i64 %314, -7046029288634856825
  %316 = getelementptr inbounds nuw i8, ptr %310, i64 8
  %317 = load i64, ptr %316, align 1
  %318 = mul i64 %317, -4417276706812531889
  %319 = add i64 %318, %308
  %320 = tail call i64 @llvm.fshl.i64(i64 %319, i64 %319, i64 31)
  %321 = mul i64 %320, -7046029288634856825
  %322 = getelementptr inbounds nuw i8, ptr %310, i64 16
  %323 = load i64, ptr %322, align 1
  %324 = mul i64 %323, -4417276706812531889
  %325 = add i64 %324, %307
  %326 = tail call i64 @llvm.fshl.i64(i64 %325, i64 %325, i64 31)
  %327 = mul i64 %326, -7046029288634856825
  %328 = getelementptr inbounds nuw i8, ptr %310, i64 24
  %329 = load i64, ptr %328, align 1
  %330 = mul i64 %329, -4417276706812531889
  %331 = add i64 %330, %306
  %332 = tail call i64 @llvm.fshl.i64(i64 %331, i64 %331, i64 31)
  %333 = mul i64 %332, -7046029288634856825
  %334 = getelementptr inbounds nuw i8, ptr %310, i64 32
  %335 = icmp ult ptr %334, %304
  br i1 %335, label %305, label %336, !llvm.loop !32

336:                                              ; preds = %305
  store i64 %315, ptr %21, align 8, !alias.scope !33, !noalias !36
  store i64 %321, ptr %24, align 8, !alias.scope !33, !noalias !36
  store i64 %327, ptr %25, align 8, !alias.scope !33, !noalias !36
  store i64 %333, ptr %27, align 8, !alias.scope !33, !noalias !36
  br label %337

337:                                              ; preds = %336, %291
  %338 = phi i64 [ %292, %291 ], [ %333, %336 ]
  %339 = phi i64 [ %293, %291 ], [ %327, %336 ]
  %340 = phi i64 [ %294, %291 ], [ %321, %336 ]
  %341 = phi i64 [ %295, %291 ], [ %315, %336 ]
  %342 = phi ptr [ %296, %291 ], [ %334, %336 ]
  %343 = icmp ult ptr %342, %263
  br i1 %343, label %344, label %357

344:                                              ; preds = %337
  %345 = ptrtoint ptr %342 to i64
  %346 = sub i64 %298, %345
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %107, ptr align 1 %342, i64 %346, i1 false)
  %347 = trunc i64 %346 to i32
  br label %348

348:                                              ; preds = %344, %257
  %349 = phi i64 [ %338, %344 ], [ %128, %257 ]
  %350 = phi i64 [ %339, %344 ], [ %127, %257 ]
  %351 = phi i64 [ %340, %344 ], [ %126, %257 ]
  %352 = phi i64 [ %341, %344 ], [ %125, %257 ]
  %353 = phi i32 [ %347, %344 ], [ %261, %257 ]
  store i32 %353, ptr %106, align 8
  br label %357

354:                                              ; preds = %118
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %12, ptr nocapture noundef %3, i64 noundef range(i64 1, 0) %123)
  br label %357

355:                                              ; preds = %118
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %12, ptr nocapture noundef %3, i64 noundef range(i64 1, 0) %123)
  br label %357

356:                                              ; preds = %104
  tail call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.5, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_hashStream) #29
  unreachable

357:                                              ; preds = %348, %337, %245, %234, %355, %354
  %358 = phi i32 [ %119, %348 ], [ %119, %337 ], [ %250, %245 ], [ %184, %234 ], [ %119, %355 ], [ %119, %354 ]
  %359 = phi i32 [ %120, %348 ], [ %120, %337 ], [ %250, %245 ], [ 0, %234 ], [ %120, %355 ], [ %120, %354 ]
  %360 = phi i32 [ %353, %348 ], [ 0, %337 ], [ %121, %245 ], [ %121, %234 ], [ %121, %355 ], [ %121, %354 ]
  %361 = phi i32 [ %122, %348 ], [ %122, %337 ], [ %141, %245 ], [ %141, %234 ], [ %122, %355 ], [ %122, %354 ]
  %362 = phi i32 [ %133, %348 ], [ %133, %337 ], [ %246, %245 ], [ %235, %234 ], [ %133, %355 ], [ %133, %354 ]
  %363 = phi i32 [ %132, %348 ], [ %132, %337 ], [ %247, %245 ], [ %236, %234 ], [ %132, %355 ], [ %132, %354 ]
  %364 = phi i32 [ %131, %348 ], [ %131, %337 ], [ %248, %245 ], [ %237, %234 ], [ %131, %355 ], [ %131, %354 ]
  %365 = phi i32 [ %130, %348 ], [ %130, %337 ], [ %249, %245 ], [ %238, %234 ], [ %130, %355 ], [ %130, %354 ]
  %366 = phi i32 [ %129, %348 ], [ %129, %337 ], [ %136, %245 ], [ %136, %234 ], [ %129, %355 ], [ %129, %354 ]
  %367 = phi i64 [ %349, %348 ], [ %338, %337 ], [ %128, %245 ], [ %128, %234 ], [ %128, %355 ], [ %128, %354 ]
  %368 = phi i64 [ %350, %348 ], [ %339, %337 ], [ %127, %245 ], [ %127, %234 ], [ %127, %355 ], [ %127, %354 ]
  %369 = phi i64 [ %351, %348 ], [ %340, %337 ], [ %126, %245 ], [ %126, %234 ], [ %126, %355 ], [ %126, %354 ]
  %370 = phi i64 [ %352, %348 ], [ %341, %337 ], [ %125, %245 ], [ %125, %234 ], [ %125, %355 ], [ %125, %354 ]
  %371 = phi i64 [ %252, %348 ], [ %252, %337 ], [ %124, %245 ], [ %124, %234 ], [ %124, %355 ], [ %124, %354 ]
  %372 = tail call i64 @fread(ptr noundef %3, i64 noundef 1, i64 noundef %4, ptr noundef %0)
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %118, !llvm.loop !38

374:                                              ; preds = %357
  %375 = icmp eq i32 %361, 0
  %376 = and i32 %358, 15
  br label %377

377:                                              ; preds = %374, %97
  %378 = phi i32 [ %376, %374 ], [ 0, %97 ]
  %379 = phi i32 [ %366, %374 ], [ 0, %97 ]
  %380 = phi i32 [ %362, %374 ], [ %19, %97 ]
  %381 = phi i32 [ %363, %374 ], [ %13, %97 ]
  %382 = phi i32 [ %364, %374 ], [ %16, %97 ]
  %383 = phi i32 [ %365, %374 ], [ %15, %97 ]
  %384 = phi i1 [ %375, %374 ], [ true, %97 ]
  %385 = phi i64 [ %367, %374 ], [ %26, %97 ]
  %386 = phi i64 [ %369, %374 ], [ %23, %97 ]
  %387 = phi i64 [ %370, %374 ], [ %22, %97 ]
  %388 = phi i64 [ %368, %374 ], [ %2, %97 ]
  %389 = phi i64 [ %371, %374 ], [ 0, %97 ]
  %390 = tail call i32 @ferror(ptr noundef %0) #28
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %2896

392:                                              ; preds = %377
  switch i32 %1, label %2895 [
    i32 0, label %393
    i32 1, label %594
    i32 2, label %826
    i32 3, label %2037
  ]

393:                                              ; preds = %392
  br i1 %384, label %402, label %394

394:                                              ; preds = %393
  %395 = tail call i32 @llvm.fshl.i32(i32 %383, i32 %383, i32 1)
  %396 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 7)
  %397 = add i32 %396, %395
  %398 = tail call i32 @llvm.fshl.i32(i32 %381, i32 %381, i32 12)
  %399 = add i32 %397, %398
  %400 = tail call i32 @llvm.fshl.i32(i32 %380, i32 %380, i32 18)
  %401 = add i32 %399, %400
  br label %404

402:                                              ; preds = %393
  %403 = add i32 %381, 374761393
  br label %404

404:                                              ; preds = %402, %394
  %405 = phi i32 [ %401, %394 ], [ %403, %402 ]
  %406 = add i32 %379, %405
  %407 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %408 = zext nneg i32 %378 to i64
  %409 = icmp samesign ugt i32 %378, 3
  br i1 %409, label %410, label %439

410:                                              ; preds = %404
  %411 = add nsw i64 %408, -4
  %412 = lshr i64 %411, 2
  %413 = add nuw nsw i64 %412, 1
  %414 = and i64 %413, 7
  %415 = and i64 %411, 28
  %416 = icmp eq i64 %415, 28
  br i1 %416, label %431, label %417

417:                                              ; preds = %410, %417
  %418 = phi i32 [ %427, %417 ], [ %406, %410 ]
  %419 = phi i64 [ %428, %417 ], [ %408, %410 ]
  %420 = phi ptr [ %425, %417 ], [ %407, %410 ]
  %421 = phi i64 [ %429, %417 ], [ 0, %410 ]
  %422 = load i32, ptr %420, align 4
  %423 = mul i32 %422, -1028477379
  %424 = add i32 %423, %418
  %425 = getelementptr inbounds nuw i8, ptr %420, i64 4
  %426 = tail call i32 @llvm.fshl.i32(i32 %424, i32 %424, i32 17)
  %427 = mul i32 %426, 668265263
  %428 = add nsw i64 %419, -4
  %429 = add i64 %421, 1
  %430 = icmp eq i64 %429, %414
  br i1 %430, label %431, label %417, !llvm.loop !39

431:                                              ; preds = %417, %410
  %432 = phi i32 [ %406, %410 ], [ %427, %417 ]
  %433 = phi i64 [ %408, %410 ], [ %428, %417 ]
  %434 = phi ptr [ %407, %410 ], [ %425, %417 ]
  %435 = phi ptr [ poison, %410 ], [ %425, %417 ]
  %436 = phi i32 [ poison, %410 ], [ %427, %417 ]
  %437 = phi i64 [ poison, %410 ], [ %428, %417 ]
  %438 = icmp ult i64 %411, 28
  br i1 %438, label %439, label %468

439:                                              ; preds = %431, %468, %404
  %440 = phi ptr [ %407, %404 ], [ %435, %431 ], [ %517, %468 ]
  %441 = phi i64 [ %408, %404 ], [ %437, %431 ], [ %520, %468 ]
  %442 = phi i32 [ %406, %404 ], [ %436, %431 ], [ %519, %468 ]
  %443 = icmp eq i64 %441, 0
  br i1 %443, label %584, label %444

444:                                              ; preds = %439
  %445 = and i64 %441, 7
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %462, label %447

447:                                              ; preds = %444, %447
  %448 = phi i32 [ %458, %447 ], [ %442, %444 ]
  %449 = phi i64 [ %459, %447 ], [ %441, %444 ]
  %450 = phi ptr [ %452, %447 ], [ %440, %444 ]
  %451 = phi i64 [ %460, %447 ], [ 0, %444 ]
  %452 = getelementptr inbounds nuw i8, ptr %450, i64 1
  %453 = load i8, ptr %450, align 1
  %454 = zext i8 %453 to i32
  %455 = mul i32 %454, 374761393
  %456 = add i32 %455, %448
  %457 = tail call i32 @llvm.fshl.i32(i32 %456, i32 %456, i32 11)
  %458 = mul i32 %457, -1640531535
  %459 = add nsw i64 %449, -1
  %460 = add i64 %451, 1
  %461 = icmp eq i64 %460, %445
  br i1 %461, label %462, label %447, !llvm.loop !40

462:                                              ; preds = %447, %444
  %463 = phi i32 [ poison, %444 ], [ %458, %447 ]
  %464 = phi i32 [ %442, %444 ], [ %458, %447 ]
  %465 = phi i64 [ %441, %444 ], [ %459, %447 ]
  %466 = phi ptr [ %440, %444 ], [ %452, %447 ]
  %467 = icmp ult i64 %441, 8
  br i1 %467, label %584, label %522

468:                                              ; preds = %431, %468
  %469 = phi i32 [ %519, %468 ], [ %432, %431 ]
  %470 = phi i64 [ %520, %468 ], [ %433, %431 ]
  %471 = phi ptr [ %517, %468 ], [ %434, %431 ]
  %472 = load i32, ptr %471, align 4
  %473 = mul i32 %472, -1028477379
  %474 = add i32 %473, %469
  %475 = getelementptr inbounds nuw i8, ptr %471, i64 4
  %476 = tail call i32 @llvm.fshl.i32(i32 %474, i32 %474, i32 17)
  %477 = mul i32 %476, 668265263
  %478 = load i32, ptr %475, align 4
  %479 = mul i32 %478, -1028477379
  %480 = add i32 %479, %477
  %481 = getelementptr inbounds nuw i8, ptr %471, i64 8
  %482 = tail call i32 @llvm.fshl.i32(i32 %480, i32 %480, i32 17)
  %483 = mul i32 %482, 668265263
  %484 = load i32, ptr %481, align 4
  %485 = mul i32 %484, -1028477379
  %486 = add i32 %485, %483
  %487 = getelementptr inbounds nuw i8, ptr %471, i64 12
  %488 = tail call i32 @llvm.fshl.i32(i32 %486, i32 %486, i32 17)
  %489 = mul i32 %488, 668265263
  %490 = load i32, ptr %487, align 4
  %491 = mul i32 %490, -1028477379
  %492 = add i32 %491, %489
  %493 = getelementptr inbounds nuw i8, ptr %471, i64 16
  %494 = tail call i32 @llvm.fshl.i32(i32 %492, i32 %492, i32 17)
  %495 = mul i32 %494, 668265263
  %496 = load i32, ptr %493, align 4
  %497 = mul i32 %496, -1028477379
  %498 = add i32 %497, %495
  %499 = getelementptr inbounds nuw i8, ptr %471, i64 20
  %500 = tail call i32 @llvm.fshl.i32(i32 %498, i32 %498, i32 17)
  %501 = mul i32 %500, 668265263
  %502 = load i32, ptr %499, align 4
  %503 = mul i32 %502, -1028477379
  %504 = add i32 %503, %501
  %505 = getelementptr inbounds nuw i8, ptr %471, i64 24
  %506 = tail call i32 @llvm.fshl.i32(i32 %504, i32 %504, i32 17)
  %507 = mul i32 %506, 668265263
  %508 = load i32, ptr %505, align 4
  %509 = mul i32 %508, -1028477379
  %510 = add i32 %509, %507
  %511 = getelementptr inbounds nuw i8, ptr %471, i64 28
  %512 = tail call i32 @llvm.fshl.i32(i32 %510, i32 %510, i32 17)
  %513 = mul i32 %512, 668265263
  %514 = load i32, ptr %511, align 4
  %515 = mul i32 %514, -1028477379
  %516 = add i32 %515, %513
  %517 = getelementptr inbounds nuw i8, ptr %471, i64 32
  %518 = tail call i32 @llvm.fshl.i32(i32 %516, i32 %516, i32 17)
  %519 = mul i32 %518, 668265263
  %520 = add nsw i64 %470, -32
  %521 = icmp ugt i64 %520, 3
  br i1 %521, label %468, label %439, !llvm.loop !41

522:                                              ; preds = %462, %522
  %523 = phi i32 [ %581, %522 ], [ %464, %462 ]
  %524 = phi i64 [ %582, %522 ], [ %465, %462 ]
  %525 = phi ptr [ %575, %522 ], [ %466, %462 ]
  %526 = getelementptr inbounds nuw i8, ptr %525, i64 1
  %527 = load i8, ptr %525, align 1
  %528 = zext i8 %527 to i32
  %529 = mul i32 %528, 374761393
  %530 = add i32 %529, %523
  %531 = tail call i32 @llvm.fshl.i32(i32 %530, i32 %530, i32 11)
  %532 = mul i32 %531, -1640531535
  %533 = getelementptr inbounds nuw i8, ptr %525, i64 2
  %534 = load i8, ptr %526, align 1
  %535 = zext i8 %534 to i32
  %536 = mul i32 %535, 374761393
  %537 = add i32 %536, %532
  %538 = tail call i32 @llvm.fshl.i32(i32 %537, i32 %537, i32 11)
  %539 = mul i32 %538, -1640531535
  %540 = getelementptr inbounds nuw i8, ptr %525, i64 3
  %541 = load i8, ptr %533, align 1
  %542 = zext i8 %541 to i32
  %543 = mul i32 %542, 374761393
  %544 = add i32 %543, %539
  %545 = tail call i32 @llvm.fshl.i32(i32 %544, i32 %544, i32 11)
  %546 = mul i32 %545, -1640531535
  %547 = getelementptr inbounds nuw i8, ptr %525, i64 4
  %548 = load i8, ptr %540, align 1
  %549 = zext i8 %548 to i32
  %550 = mul i32 %549, 374761393
  %551 = add i32 %550, %546
  %552 = tail call i32 @llvm.fshl.i32(i32 %551, i32 %551, i32 11)
  %553 = mul i32 %552, -1640531535
  %554 = getelementptr inbounds nuw i8, ptr %525, i64 5
  %555 = load i8, ptr %547, align 1
  %556 = zext i8 %555 to i32
  %557 = mul i32 %556, 374761393
  %558 = add i32 %557, %553
  %559 = tail call i32 @llvm.fshl.i32(i32 %558, i32 %558, i32 11)
  %560 = mul i32 %559, -1640531535
  %561 = getelementptr inbounds nuw i8, ptr %525, i64 6
  %562 = load i8, ptr %554, align 1
  %563 = zext i8 %562 to i32
  %564 = mul i32 %563, 374761393
  %565 = add i32 %564, %560
  %566 = tail call i32 @llvm.fshl.i32(i32 %565, i32 %565, i32 11)
  %567 = mul i32 %566, -1640531535
  %568 = getelementptr inbounds nuw i8, ptr %525, i64 7
  %569 = load i8, ptr %561, align 1
  %570 = zext i8 %569 to i32
  %571 = mul i32 %570, 374761393
  %572 = add i32 %571, %567
  %573 = tail call i32 @llvm.fshl.i32(i32 %572, i32 %572, i32 11)
  %574 = mul i32 %573, -1640531535
  %575 = getelementptr inbounds nuw i8, ptr %525, i64 8
  %576 = load i8, ptr %568, align 1
  %577 = zext i8 %576 to i32
  %578 = mul i32 %577, 374761393
  %579 = add i32 %578, %574
  %580 = tail call i32 @llvm.fshl.i32(i32 %579, i32 %579, i32 11)
  %581 = mul i32 %580, -1640531535
  %582 = add nsw i64 %524, -8
  %583 = icmp eq i64 %582, 0
  br i1 %583, label %584, label %522, !llvm.loop !42

584:                                              ; preds = %462, %522, %439
  %585 = phi i32 [ %442, %439 ], [ %463, %462 ], [ %581, %522 ]
  %586 = lshr i32 %585, 15
  %587 = xor i32 %586, %585
  %588 = mul i32 %587, -2048144777
  %589 = lshr i32 %588, 13
  %590 = xor i32 %589, %588
  %591 = mul i32 %590, -1028477379
  %592 = lshr i32 %591, 16
  %593 = xor i32 %592, %591
  store i32 %593, ptr %5, align 8
  br label %2896

594:                                              ; preds = %392
  %595 = icmp ugt i64 %389, 31
  br i1 %595, label %596, label %628

596:                                              ; preds = %594
  %597 = tail call i64 @llvm.fshl.i64(i64 %387, i64 %387, i64 1)
  %598 = tail call i64 @llvm.fshl.i64(i64 %386, i64 %386, i64 7)
  %599 = add i64 %598, %597
  %600 = tail call i64 @llvm.fshl.i64(i64 %388, i64 %388, i64 12)
  %601 = add i64 %599, %600
  %602 = tail call i64 @llvm.fshl.i64(i64 %385, i64 %385, i64 18)
  %603 = add i64 %601, %602
  %604 = mul i64 %387, -4417276706812531889
  %605 = tail call i64 @llvm.fshl.i64(i64 %604, i64 %604, i64 31)
  %606 = mul i64 %605, -7046029288634856825
  %607 = xor i64 %603, %606
  %608 = mul i64 %607, -7046029288634856825
  %609 = add i64 %608, -8796714831421723037
  %610 = mul i64 %386, -4417276706812531889
  %611 = tail call i64 @llvm.fshl.i64(i64 %610, i64 %610, i64 31)
  %612 = mul i64 %611, -7046029288634856825
  %613 = xor i64 %609, %612
  %614 = mul i64 %613, -7046029288634856825
  %615 = add i64 %614, -8796714831421723037
  %616 = mul i64 %388, -4417276706812531889
  %617 = tail call i64 @llvm.fshl.i64(i64 %616, i64 %616, i64 31)
  %618 = mul i64 %617, -7046029288634856825
  %619 = xor i64 %615, %618
  %620 = mul i64 %619, -7046029288634856825
  %621 = add i64 %620, -8796714831421723037
  %622 = mul i64 %385, -4417276706812531889
  %623 = tail call i64 @llvm.fshl.i64(i64 %622, i64 %622, i64 31)
  %624 = mul i64 %623, -7046029288634856825
  %625 = xor i64 %621, %624
  %626 = mul i64 %625, -7046029288634856825
  %627 = add i64 %626, -8796714831421723037
  br label %630

628:                                              ; preds = %594
  %629 = add i64 %388, 2870177450012600261
  br label %630

630:                                              ; preds = %628, %596
  %631 = phi i64 [ %627, %596 ], [ %629, %628 ]
  %632 = add i64 %631, %389
  %633 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %634 = and i64 %389, 31
  %635 = icmp samesign ugt i64 %634, 7
  br i1 %635, label %636, label %710

636:                                              ; preds = %630
  %637 = add nsw i64 %634, -8
  %638 = lshr i64 %637, 3
  %639 = add nuw nsw i64 %638, 1
  %640 = and i64 %639, 3
  %641 = and i64 %637, 24
  %642 = icmp eq i64 %641, 24
  br i1 %642, label %660, label %643

643:                                              ; preds = %636, %643
  %644 = phi i64 [ %656, %643 ], [ %632, %636 ]
  %645 = phi ptr [ %652, %643 ], [ %633, %636 ]
  %646 = phi i64 [ %657, %643 ], [ %634, %636 ]
  %647 = phi i64 [ %658, %643 ], [ 0, %636 ]
  %648 = load i64, ptr %645, align 8
  %649 = mul i64 %648, -4417276706812531889
  %650 = tail call i64 @llvm.fshl.i64(i64 %649, i64 %649, i64 31)
  %651 = mul i64 %650, -7046029288634856825
  %652 = getelementptr inbounds nuw i8, ptr %645, i64 8
  %653 = xor i64 %651, %644
  %654 = tail call i64 @llvm.fshl.i64(i64 %653, i64 %653, i64 27)
  %655 = mul i64 %654, -7046029288634856825
  %656 = add i64 %655, -8796714831421723037
  %657 = add nsw i64 %646, -8
  %658 = add i64 %647, 1
  %659 = icmp eq i64 %658, %640
  br i1 %659, label %660, label %643, !llvm.loop !43

660:                                              ; preds = %643, %636
  %661 = phi i64 [ %632, %636 ], [ %656, %643 ]
  %662 = phi ptr [ %633, %636 ], [ %652, %643 ]
  %663 = phi i64 [ %634, %636 ], [ %657, %643 ]
  %664 = phi ptr [ poison, %636 ], [ %652, %643 ]
  %665 = phi i64 [ poison, %636 ], [ %656, %643 ]
  %666 = phi i64 [ poison, %636 ], [ %657, %643 ]
  %667 = icmp ult i64 %637, 24
  br i1 %667, label %710, label %668

668:                                              ; preds = %660, %668
  %669 = phi i64 [ %707, %668 ], [ %661, %660 ]
  %670 = phi ptr [ %703, %668 ], [ %662, %660 ]
  %671 = phi i64 [ %708, %668 ], [ %663, %660 ]
  %672 = load i64, ptr %670, align 8
  %673 = mul i64 %672, -4417276706812531889
  %674 = tail call i64 @llvm.fshl.i64(i64 %673, i64 %673, i64 31)
  %675 = mul i64 %674, -7046029288634856825
  %676 = getelementptr inbounds nuw i8, ptr %670, i64 8
  %677 = xor i64 %675, %669
  %678 = tail call i64 @llvm.fshl.i64(i64 %677, i64 %677, i64 27)
  %679 = mul i64 %678, -7046029288634856825
  %680 = add i64 %679, -8796714831421723037
  %681 = load i64, ptr %676, align 8
  %682 = mul i64 %681, -4417276706812531889
  %683 = tail call i64 @llvm.fshl.i64(i64 %682, i64 %682, i64 31)
  %684 = mul i64 %683, -7046029288634856825
  %685 = getelementptr inbounds nuw i8, ptr %670, i64 16
  %686 = xor i64 %684, %680
  %687 = tail call i64 @llvm.fshl.i64(i64 %686, i64 %686, i64 27)
  %688 = mul i64 %687, -7046029288634856825
  %689 = add i64 %688, -8796714831421723037
  %690 = load i64, ptr %685, align 8
  %691 = mul i64 %690, -4417276706812531889
  %692 = tail call i64 @llvm.fshl.i64(i64 %691, i64 %691, i64 31)
  %693 = mul i64 %692, -7046029288634856825
  %694 = getelementptr inbounds nuw i8, ptr %670, i64 24
  %695 = xor i64 %693, %689
  %696 = tail call i64 @llvm.fshl.i64(i64 %695, i64 %695, i64 27)
  %697 = mul i64 %696, -7046029288634856825
  %698 = add i64 %697, -8796714831421723037
  %699 = load i64, ptr %694, align 8
  %700 = mul i64 %699, -4417276706812531889
  %701 = tail call i64 @llvm.fshl.i64(i64 %700, i64 %700, i64 31)
  %702 = mul i64 %701, -7046029288634856825
  %703 = getelementptr inbounds nuw i8, ptr %670, i64 32
  %704 = xor i64 %702, %698
  %705 = tail call i64 @llvm.fshl.i64(i64 %704, i64 %704, i64 27)
  %706 = mul i64 %705, -7046029288634856825
  %707 = add i64 %706, -8796714831421723037
  %708 = add nsw i64 %671, -32
  %709 = icmp ugt i64 %708, 7
  br i1 %709, label %668, label %710, !llvm.loop !44

710:                                              ; preds = %660, %668, %630
  %711 = phi i64 [ %634, %630 ], [ %666, %660 ], [ %708, %668 ]
  %712 = phi ptr [ %633, %630 ], [ %664, %660 ], [ %703, %668 ]
  %713 = phi i64 [ %632, %630 ], [ %665, %660 ], [ %707, %668 ]
  %714 = icmp samesign ugt i64 %711, 3
  br i1 %714, label %715, label %725

715:                                              ; preds = %710
  %716 = load i32, ptr %712, align 4
  %717 = zext i32 %716 to i64
  %718 = mul i64 %717, -7046029288634856825
  %719 = xor i64 %718, %713
  %720 = getelementptr inbounds nuw i8, ptr %712, i64 4
  %721 = tail call i64 @llvm.fshl.i64(i64 %719, i64 %719, i64 23)
  %722 = mul i64 %721, -4417276706812531889
  %723 = add i64 %722, 1609587929392839161
  %724 = add nsw i64 %711, -4
  br label %725

725:                                              ; preds = %715, %710
  %726 = phi i64 [ %724, %715 ], [ %711, %710 ]
  %727 = phi ptr [ %720, %715 ], [ %712, %710 ]
  %728 = phi i64 [ %723, %715 ], [ %713, %710 ]
  %729 = icmp eq i64 %726, 0
  br i1 %729, label %816, label %730

730:                                              ; preds = %725
  %731 = and i64 %726, 7
  %732 = icmp eq i64 %731, 0
  br i1 %732, label %748, label %733

733:                                              ; preds = %730, %733
  %734 = phi i64 [ %744, %733 ], [ %728, %730 ]
  %735 = phi ptr [ %738, %733 ], [ %727, %730 ]
  %736 = phi i64 [ %745, %733 ], [ %726, %730 ]
  %737 = phi i64 [ %746, %733 ], [ 0, %730 ]
  %738 = getelementptr inbounds nuw i8, ptr %735, i64 1
  %739 = load i8, ptr %735, align 1
  %740 = zext i8 %739 to i64
  %741 = mul i64 %740, 2870177450012600261
  %742 = xor i64 %741, %734
  %743 = tail call i64 @llvm.fshl.i64(i64 %742, i64 %742, i64 11)
  %744 = mul i64 %743, -7046029288634856825
  %745 = add nsw i64 %736, -1
  %746 = add i64 %737, 1
  %747 = icmp eq i64 %746, %731
  br i1 %747, label %748, label %733, !llvm.loop !45

748:                                              ; preds = %733, %730
  %749 = phi i64 [ poison, %730 ], [ %744, %733 ]
  %750 = phi i64 [ %728, %730 ], [ %744, %733 ]
  %751 = phi ptr [ %727, %730 ], [ %738, %733 ]
  %752 = phi i64 [ %726, %730 ], [ %745, %733 ]
  %753 = icmp ult i64 %726, 8
  br i1 %753, label %816, label %754

754:                                              ; preds = %748, %754
  %755 = phi i64 [ %813, %754 ], [ %750, %748 ]
  %756 = phi ptr [ %807, %754 ], [ %751, %748 ]
  %757 = phi i64 [ %814, %754 ], [ %752, %748 ]
  %758 = getelementptr inbounds nuw i8, ptr %756, i64 1
  %759 = load i8, ptr %756, align 1
  %760 = zext i8 %759 to i64
  %761 = mul i64 %760, 2870177450012600261
  %762 = xor i64 %761, %755
  %763 = tail call i64 @llvm.fshl.i64(i64 %762, i64 %762, i64 11)
  %764 = mul i64 %763, -7046029288634856825
  %765 = getelementptr inbounds nuw i8, ptr %756, i64 2
  %766 = load i8, ptr %758, align 1
  %767 = zext i8 %766 to i64
  %768 = mul i64 %767, 2870177450012600261
  %769 = xor i64 %768, %764
  %770 = tail call i64 @llvm.fshl.i64(i64 %769, i64 %769, i64 11)
  %771 = mul i64 %770, -7046029288634856825
  %772 = getelementptr inbounds nuw i8, ptr %756, i64 3
  %773 = load i8, ptr %765, align 1
  %774 = zext i8 %773 to i64
  %775 = mul i64 %774, 2870177450012600261
  %776 = xor i64 %775, %771
  %777 = tail call i64 @llvm.fshl.i64(i64 %776, i64 %776, i64 11)
  %778 = mul i64 %777, -7046029288634856825
  %779 = getelementptr inbounds nuw i8, ptr %756, i64 4
  %780 = load i8, ptr %772, align 1
  %781 = zext i8 %780 to i64
  %782 = mul i64 %781, 2870177450012600261
  %783 = xor i64 %782, %778
  %784 = tail call i64 @llvm.fshl.i64(i64 %783, i64 %783, i64 11)
  %785 = mul i64 %784, -7046029288634856825
  %786 = getelementptr inbounds nuw i8, ptr %756, i64 5
  %787 = load i8, ptr %779, align 1
  %788 = zext i8 %787 to i64
  %789 = mul i64 %788, 2870177450012600261
  %790 = xor i64 %789, %785
  %791 = tail call i64 @llvm.fshl.i64(i64 %790, i64 %790, i64 11)
  %792 = mul i64 %791, -7046029288634856825
  %793 = getelementptr inbounds nuw i8, ptr %756, i64 6
  %794 = load i8, ptr %786, align 1
  %795 = zext i8 %794 to i64
  %796 = mul i64 %795, 2870177450012600261
  %797 = xor i64 %796, %792
  %798 = tail call i64 @llvm.fshl.i64(i64 %797, i64 %797, i64 11)
  %799 = mul i64 %798, -7046029288634856825
  %800 = getelementptr inbounds nuw i8, ptr %756, i64 7
  %801 = load i8, ptr %793, align 1
  %802 = zext i8 %801 to i64
  %803 = mul i64 %802, 2870177450012600261
  %804 = xor i64 %803, %799
  %805 = tail call i64 @llvm.fshl.i64(i64 %804, i64 %804, i64 11)
  %806 = mul i64 %805, -7046029288634856825
  %807 = getelementptr inbounds nuw i8, ptr %756, i64 8
  %808 = load i8, ptr %800, align 1
  %809 = zext i8 %808 to i64
  %810 = mul i64 %809, 2870177450012600261
  %811 = xor i64 %810, %806
  %812 = tail call i64 @llvm.fshl.i64(i64 %811, i64 %811, i64 11)
  %813 = mul i64 %812, -7046029288634856825
  %814 = add nsw i64 %757, -8
  %815 = icmp eq i64 %814, 0
  br i1 %815, label %816, label %754, !llvm.loop !46

816:                                              ; preds = %748, %754, %725
  %817 = phi i64 [ %728, %725 ], [ %749, %748 ], [ %813, %754 ]
  %818 = lshr i64 %817, 33
  %819 = xor i64 %818, %817
  %820 = mul i64 %819, -4417276706812531889
  %821 = lshr i64 %820, 29
  %822 = xor i64 %821, %820
  %823 = mul i64 %822, 1609587929392839161
  %824 = lshr i64 %823, 32
  %825 = xor i64 %824, %823
  store i64 %825, ptr %5, align 8
  br label %2896

826:                                              ; preds = %392
  %827 = load ptr, ptr %99, align 8
  %828 = icmp eq ptr %827, null
  %829 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %830 = select i1 %828, ptr %829, ptr %827
  %831 = getelementptr inbounds nuw i8, ptr %12, i64 528
  %832 = load i64, ptr %831, align 16
  %833 = icmp ugt i64 %832, 240
  br i1 %833, label %834, label %1268

834:                                              ; preds = %826
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull readonly align 64 dereferenceable(64) %12, i64 64, i1 false)
  %835 = getelementptr inbounds nuw i8, ptr %12, i64 512
  %836 = load i32, ptr %835, align 64
  %837 = icmp ugt i32 %836, 63
  br i1 %837, label %838, label %1159

838:                                              ; preds = %834
  %839 = add i32 %836, -1
  %840 = lshr i32 %839, 6
  %841 = zext nneg i32 %840 to i64
  %842 = getelementptr inbounds nuw i8, ptr %12, i64 520
  %843 = load i64, ptr %842, align 8
  %844 = load i64, ptr %101, align 8
  %845 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %846 = shl i64 %843, 3
  %847 = getelementptr inbounds nuw i8, ptr %830, i64 %846
  %848 = sub i64 %844, %843
  %849 = icmp ugt i64 %848, %841
  br i1 %849, label %1039, label %850

850:                                              ; preds = %838
  %851 = load i64, ptr %100, align 32
  %852 = getelementptr inbounds nuw i8, ptr %830, i64 %851
  %853 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %854 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %855 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %856 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %857 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %858 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %859 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %860 = getelementptr inbounds nuw i8, ptr %852, i64 8
  %861 = getelementptr inbounds nuw i8, ptr %852, i64 16
  %862 = getelementptr inbounds nuw i8, ptr %852, i64 24
  %863 = getelementptr inbounds nuw i8, ptr %852, i64 32
  %864 = getelementptr inbounds nuw i8, ptr %852, i64 40
  %865 = getelementptr inbounds nuw i8, ptr %852, i64 48
  %866 = getelementptr inbounds nuw i8, ptr %852, i64 56
  br label %867

867:                                              ; preds = %986, %850
  %868 = phi i64 [ %1037, %986 ], [ %841, %850 ]
  %869 = phi ptr [ %1036, %986 ], [ %845, %850 ]
  %870 = phi ptr [ %830, %986 ], [ %847, %850 ]
  %871 = phi i64 [ %844, %986 ], [ %848, %850 ]
  %872 = icmp eq i64 %871, 0
  br i1 %872, label %873, label %882

873:                                              ; preds = %867
  %874 = load i64, ptr %9, align 8, !alias.scope !47, !noalias !50
  %875 = load i64, ptr %859, align 8, !alias.scope !47, !noalias !50
  %876 = load i64, ptr %854, align 8, !alias.scope !47, !noalias !50
  %877 = load i64, ptr %853, align 8, !alias.scope !47, !noalias !50
  %878 = load i64, ptr %856, align 8, !alias.scope !47, !noalias !50
  %879 = load i64, ptr %855, align 8, !alias.scope !47, !noalias !50
  %880 = load i64, ptr %858, align 8, !alias.scope !47, !noalias !50
  %881 = load i64, ptr %857, align 8, !alias.scope !47, !noalias !50
  br label %986

882:                                              ; preds = %867
  %883 = load i64, ptr %853, align 8, !alias.scope !54, !noalias !57
  %884 = load i64, ptr %854, align 8, !alias.scope !54, !noalias !57
  %885 = load i64, ptr %855, align 8, !alias.scope !54, !noalias !57
  %886 = load i64, ptr %856, align 8, !alias.scope !54, !noalias !57
  %887 = load i64, ptr %857, align 8, !alias.scope !54, !noalias !57
  %888 = load i64, ptr %858, align 8, !alias.scope !54, !noalias !57
  %889 = load i64, ptr %859, align 8, !alias.scope !54, !noalias !57
  %890 = load i64, ptr %9, align 8, !alias.scope !54, !noalias !57
  br label %891

891:                                              ; preds = %891, %882
  %892 = phi i64 [ %919, %891 ], [ %890, %882 ]
  %893 = phi i64 [ %923, %891 ], [ %889, %882 ]
  %894 = phi i64 [ %979, %891 ], [ %888, %882 ]
  %895 = phi i64 [ %983, %891 ], [ %887, %882 ]
  %896 = phi i64 [ %959, %891 ], [ %886, %882 ]
  %897 = phi i64 [ %963, %891 ], [ %885, %882 ]
  %898 = phi i64 [ %939, %891 ], [ %884, %882 ]
  %899 = phi i64 [ %943, %891 ], [ %883, %882 ]
  %900 = phi i64 [ %984, %891 ], [ 0, %882 ]
  %901 = shl i64 %900, 6
  %902 = getelementptr inbounds nuw i8, ptr %869, i64 %901
  %903 = getelementptr inbounds nuw i8, ptr %902, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %903, i32 0, i32 3, i32 1), !noalias !60
  %904 = shl i64 %900, 3
  %905 = getelementptr inbounds nuw i8, ptr %870, i64 %904
  %906 = load i64, ptr %902, align 1
  %907 = load i64, ptr %905, align 1
  %908 = xor i64 %907, %906
  %909 = add i64 %906, %893
  store i64 %909, ptr %859, align 8, !alias.scope !54, !noalias !57
  %910 = lshr i64 %908, 32
  %911 = and i64 %908, 4294967295
  %912 = mul nuw i64 %911, %910
  %913 = add i64 %912, %892
  store i64 %913, ptr %9, align 8, !alias.scope !54, !noalias !57
  %914 = getelementptr inbounds nuw i8, ptr %902, i64 8
  %915 = load i64, ptr %914, align 1
  %916 = getelementptr inbounds nuw i8, ptr %905, i64 8
  %917 = load i64, ptr %916, align 1
  %918 = xor i64 %917, %915
  %919 = add i64 %913, %915
  store i64 %919, ptr %9, align 8, !alias.scope !54, !noalias !57
  %920 = lshr i64 %918, 32
  %921 = and i64 %918, 4294967295
  %922 = mul nuw i64 %921, %920
  %923 = add i64 %922, %909
  store i64 %923, ptr %859, align 8, !alias.scope !54, !noalias !57
  %924 = getelementptr inbounds nuw i8, ptr %902, i64 16
  %925 = load i64, ptr %924, align 1
  %926 = getelementptr inbounds nuw i8, ptr %905, i64 16
  %927 = load i64, ptr %926, align 1
  %928 = xor i64 %927, %925
  %929 = add i64 %925, %899
  store i64 %929, ptr %853, align 8, !alias.scope !54, !noalias !57
  %930 = lshr i64 %928, 32
  %931 = and i64 %928, 4294967295
  %932 = mul nuw i64 %931, %930
  %933 = add i64 %932, %898
  store i64 %933, ptr %854, align 8, !alias.scope !54, !noalias !57
  %934 = getelementptr inbounds nuw i8, ptr %902, i64 24
  %935 = load i64, ptr %934, align 1
  %936 = getelementptr inbounds nuw i8, ptr %905, i64 24
  %937 = load i64, ptr %936, align 1
  %938 = xor i64 %937, %935
  %939 = add i64 %933, %935
  store i64 %939, ptr %854, align 8, !alias.scope !54, !noalias !57
  %940 = lshr i64 %938, 32
  %941 = and i64 %938, 4294967295
  %942 = mul nuw i64 %941, %940
  %943 = add i64 %942, %929
  store i64 %943, ptr %853, align 8, !alias.scope !54, !noalias !57
  %944 = getelementptr inbounds nuw i8, ptr %902, i64 32
  %945 = load i64, ptr %944, align 1
  %946 = getelementptr inbounds nuw i8, ptr %905, i64 32
  %947 = load i64, ptr %946, align 1
  %948 = xor i64 %947, %945
  %949 = add i64 %945, %897
  store i64 %949, ptr %855, align 8, !alias.scope !54, !noalias !57
  %950 = lshr i64 %948, 32
  %951 = and i64 %948, 4294967295
  %952 = mul nuw i64 %951, %950
  %953 = add i64 %952, %896
  store i64 %953, ptr %856, align 8, !alias.scope !54, !noalias !57
  %954 = getelementptr inbounds nuw i8, ptr %902, i64 40
  %955 = load i64, ptr %954, align 1
  %956 = getelementptr inbounds nuw i8, ptr %905, i64 40
  %957 = load i64, ptr %956, align 1
  %958 = xor i64 %957, %955
  %959 = add i64 %953, %955
  store i64 %959, ptr %856, align 8, !alias.scope !54, !noalias !57
  %960 = lshr i64 %958, 32
  %961 = and i64 %958, 4294967295
  %962 = mul nuw i64 %961, %960
  %963 = add i64 %962, %949
  store i64 %963, ptr %855, align 8, !alias.scope !54, !noalias !57
  %964 = getelementptr inbounds nuw i8, ptr %902, i64 48
  %965 = load i64, ptr %964, align 1
  %966 = getelementptr inbounds nuw i8, ptr %905, i64 48
  %967 = load i64, ptr %966, align 1
  %968 = xor i64 %967, %965
  %969 = add i64 %965, %895
  store i64 %969, ptr %857, align 8, !alias.scope !54, !noalias !57
  %970 = lshr i64 %968, 32
  %971 = and i64 %968, 4294967295
  %972 = mul nuw i64 %971, %970
  %973 = add i64 %972, %894
  store i64 %973, ptr %858, align 8, !alias.scope !54, !noalias !57
  %974 = getelementptr inbounds nuw i8, ptr %902, i64 56
  %975 = load i64, ptr %974, align 1
  %976 = getelementptr inbounds nuw i8, ptr %905, i64 56
  %977 = load i64, ptr %976, align 1
  %978 = xor i64 %977, %975
  %979 = add i64 %973, %975
  store i64 %979, ptr %858, align 8, !alias.scope !54, !noalias !57
  %980 = lshr i64 %978, 32
  %981 = and i64 %978, 4294967295
  %982 = mul nuw i64 %981, %980
  %983 = add i64 %982, %969
  store i64 %983, ptr %857, align 8, !alias.scope !54, !noalias !57
  %984 = add nuw i64 %900, 1
  %985 = icmp eq i64 %984, %871
  br i1 %985, label %986, label %891, !llvm.loop !61

986:                                              ; preds = %891, %873
  %987 = phi i64 [ %881, %873 ], [ %983, %891 ]
  %988 = phi i64 [ %880, %873 ], [ %979, %891 ]
  %989 = phi i64 [ %879, %873 ], [ %963, %891 ]
  %990 = phi i64 [ %878, %873 ], [ %959, %891 ]
  %991 = phi i64 [ %877, %873 ], [ %943, %891 ]
  %992 = phi i64 [ %876, %873 ], [ %939, %891 ]
  %993 = phi i64 [ %875, %873 ], [ %923, %891 ]
  %994 = phi i64 [ %874, %873 ], [ %919, %891 ]
  %995 = load i64, ptr %852, align 1
  %996 = lshr i64 %994, 47
  %997 = xor i64 %996, %995
  %998 = xor i64 %997, %994
  %999 = mul i64 %998, 2654435761
  store i64 %999, ptr %9, align 8, !alias.scope !47, !noalias !50
  %1000 = load i64, ptr %860, align 1
  %1001 = lshr i64 %993, 47
  %1002 = xor i64 %1001, %1000
  %1003 = xor i64 %1002, %993
  %1004 = mul i64 %1003, 2654435761
  store i64 %1004, ptr %859, align 8, !alias.scope !47, !noalias !50
  %1005 = load i64, ptr %861, align 1
  %1006 = lshr i64 %992, 47
  %1007 = xor i64 %1006, %1005
  %1008 = xor i64 %1007, %992
  %1009 = mul i64 %1008, 2654435761
  store i64 %1009, ptr %854, align 8, !alias.scope !47, !noalias !50
  %1010 = load i64, ptr %862, align 1
  %1011 = lshr i64 %991, 47
  %1012 = xor i64 %1011, %1010
  %1013 = xor i64 %1012, %991
  %1014 = mul i64 %1013, 2654435761
  store i64 %1014, ptr %853, align 8, !alias.scope !47, !noalias !50
  %1015 = load i64, ptr %863, align 1
  %1016 = lshr i64 %990, 47
  %1017 = xor i64 %1016, %1015
  %1018 = xor i64 %1017, %990
  %1019 = mul i64 %1018, 2654435761
  store i64 %1019, ptr %856, align 8, !alias.scope !47, !noalias !50
  %1020 = load i64, ptr %864, align 1
  %1021 = lshr i64 %989, 47
  %1022 = xor i64 %1021, %1020
  %1023 = xor i64 %1022, %989
  %1024 = mul i64 %1023, 2654435761
  store i64 %1024, ptr %855, align 8, !alias.scope !47, !noalias !50
  %1025 = load i64, ptr %865, align 1
  %1026 = lshr i64 %988, 47
  %1027 = xor i64 %1026, %1025
  %1028 = xor i64 %1027, %988
  %1029 = mul i64 %1028, 2654435761
  store i64 %1029, ptr %858, align 8, !alias.scope !47, !noalias !50
  %1030 = load i64, ptr %866, align 1
  %1031 = lshr i64 %987, 47
  %1032 = xor i64 %1031, %1030
  %1033 = xor i64 %1032, %987
  %1034 = mul i64 %1033, 2654435761
  store i64 %1034, ptr %857, align 8, !alias.scope !47, !noalias !50
  %1035 = shl i64 %871, 6
  %1036 = getelementptr inbounds nuw i8, ptr %869, i64 %1035
  %1037 = sub i64 %868, %871
  %1038 = icmp ult i64 %1037, %844
  br i1 %1038, label %1039, label %867, !llvm.loop !62

1039:                                             ; preds = %986, %838
  %1040 = phi i64 [ %841, %838 ], [ %1037, %986 ]
  %1041 = phi ptr [ %845, %838 ], [ %1036, %986 ]
  %1042 = phi ptr [ %847, %838 ], [ %830, %986 ]
  %1043 = icmp eq i64 %1040, 0
  br i1 %1043, label %1155, label %1044

1044:                                             ; preds = %1039
  %1045 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %1046 = load i64, ptr %1045, align 8, !alias.scope !63, !noalias !66
  %1047 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %1048 = load i64, ptr %1047, align 8, !alias.scope !63, !noalias !66
  %1049 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %1050 = load i64, ptr %1049, align 8, !alias.scope !63, !noalias !66
  %1051 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %1052 = load i64, ptr %1051, align 8, !alias.scope !63, !noalias !66
  %1053 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %1054 = load i64, ptr %1053, align 8, !alias.scope !63, !noalias !66
  %1055 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %1056 = load i64, ptr %1055, align 8, !alias.scope !63, !noalias !66
  %1057 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1058 = load i64, ptr %1057, align 8, !alias.scope !63, !noalias !66
  %1059 = load i64, ptr %9, align 8, !alias.scope !63, !noalias !66
  br label %1060

1060:                                             ; preds = %1060, %1044
  %1061 = phi i64 [ %1088, %1060 ], [ %1059, %1044 ]
  %1062 = phi i64 [ %1092, %1060 ], [ %1058, %1044 ]
  %1063 = phi i64 [ %1148, %1060 ], [ %1056, %1044 ]
  %1064 = phi i64 [ %1152, %1060 ], [ %1054, %1044 ]
  %1065 = phi i64 [ %1128, %1060 ], [ %1052, %1044 ]
  %1066 = phi i64 [ %1132, %1060 ], [ %1050, %1044 ]
  %1067 = phi i64 [ %1108, %1060 ], [ %1048, %1044 ]
  %1068 = phi i64 [ %1112, %1060 ], [ %1046, %1044 ]
  %1069 = phi i64 [ %1153, %1060 ], [ 0, %1044 ]
  %1070 = shl i64 %1069, 6
  %1071 = getelementptr inbounds nuw i8, ptr %1041, i64 %1070
  %1072 = getelementptr inbounds nuw i8, ptr %1071, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %1072, i32 0, i32 3, i32 1), !noalias !60
  %1073 = shl i64 %1069, 3
  %1074 = getelementptr inbounds nuw i8, ptr %1042, i64 %1073
  %1075 = load i64, ptr %1071, align 1
  %1076 = load i64, ptr %1074, align 1
  %1077 = xor i64 %1076, %1075
  %1078 = add i64 %1075, %1062
  store i64 %1078, ptr %1057, align 8, !alias.scope !63, !noalias !66
  %1079 = lshr i64 %1077, 32
  %1080 = and i64 %1077, 4294967295
  %1081 = mul nuw i64 %1080, %1079
  %1082 = add i64 %1081, %1061
  store i64 %1082, ptr %9, align 8, !alias.scope !63, !noalias !66
  %1083 = getelementptr inbounds nuw i8, ptr %1071, i64 8
  %1084 = load i64, ptr %1083, align 1
  %1085 = getelementptr inbounds nuw i8, ptr %1074, i64 8
  %1086 = load i64, ptr %1085, align 1
  %1087 = xor i64 %1086, %1084
  %1088 = add i64 %1082, %1084
  store i64 %1088, ptr %9, align 8, !alias.scope !63, !noalias !66
  %1089 = lshr i64 %1087, 32
  %1090 = and i64 %1087, 4294967295
  %1091 = mul nuw i64 %1090, %1089
  %1092 = add i64 %1091, %1078
  store i64 %1092, ptr %1057, align 8, !alias.scope !63, !noalias !66
  %1093 = getelementptr inbounds nuw i8, ptr %1071, i64 16
  %1094 = load i64, ptr %1093, align 1
  %1095 = getelementptr inbounds nuw i8, ptr %1074, i64 16
  %1096 = load i64, ptr %1095, align 1
  %1097 = xor i64 %1096, %1094
  %1098 = add i64 %1094, %1068
  store i64 %1098, ptr %1045, align 8, !alias.scope !63, !noalias !66
  %1099 = lshr i64 %1097, 32
  %1100 = and i64 %1097, 4294967295
  %1101 = mul nuw i64 %1100, %1099
  %1102 = add i64 %1101, %1067
  store i64 %1102, ptr %1047, align 8, !alias.scope !63, !noalias !66
  %1103 = getelementptr inbounds nuw i8, ptr %1071, i64 24
  %1104 = load i64, ptr %1103, align 1
  %1105 = getelementptr inbounds nuw i8, ptr %1074, i64 24
  %1106 = load i64, ptr %1105, align 1
  %1107 = xor i64 %1106, %1104
  %1108 = add i64 %1102, %1104
  store i64 %1108, ptr %1047, align 8, !alias.scope !63, !noalias !66
  %1109 = lshr i64 %1107, 32
  %1110 = and i64 %1107, 4294967295
  %1111 = mul nuw i64 %1110, %1109
  %1112 = add i64 %1111, %1098
  store i64 %1112, ptr %1045, align 8, !alias.scope !63, !noalias !66
  %1113 = getelementptr inbounds nuw i8, ptr %1071, i64 32
  %1114 = load i64, ptr %1113, align 1
  %1115 = getelementptr inbounds nuw i8, ptr %1074, i64 32
  %1116 = load i64, ptr %1115, align 1
  %1117 = xor i64 %1116, %1114
  %1118 = add i64 %1114, %1066
  store i64 %1118, ptr %1049, align 8, !alias.scope !63, !noalias !66
  %1119 = lshr i64 %1117, 32
  %1120 = and i64 %1117, 4294967295
  %1121 = mul nuw i64 %1120, %1119
  %1122 = add i64 %1121, %1065
  store i64 %1122, ptr %1051, align 8, !alias.scope !63, !noalias !66
  %1123 = getelementptr inbounds nuw i8, ptr %1071, i64 40
  %1124 = load i64, ptr %1123, align 1
  %1125 = getelementptr inbounds nuw i8, ptr %1074, i64 40
  %1126 = load i64, ptr %1125, align 1
  %1127 = xor i64 %1126, %1124
  %1128 = add i64 %1122, %1124
  store i64 %1128, ptr %1051, align 8, !alias.scope !63, !noalias !66
  %1129 = lshr i64 %1127, 32
  %1130 = and i64 %1127, 4294967295
  %1131 = mul nuw i64 %1130, %1129
  %1132 = add i64 %1131, %1118
  store i64 %1132, ptr %1049, align 8, !alias.scope !63, !noalias !66
  %1133 = getelementptr inbounds nuw i8, ptr %1071, i64 48
  %1134 = load i64, ptr %1133, align 1
  %1135 = getelementptr inbounds nuw i8, ptr %1074, i64 48
  %1136 = load i64, ptr %1135, align 1
  %1137 = xor i64 %1136, %1134
  %1138 = add i64 %1134, %1064
  store i64 %1138, ptr %1053, align 8, !alias.scope !63, !noalias !66
  %1139 = lshr i64 %1137, 32
  %1140 = and i64 %1137, 4294967295
  %1141 = mul nuw i64 %1140, %1139
  %1142 = add i64 %1141, %1063
  store i64 %1142, ptr %1055, align 8, !alias.scope !63, !noalias !66
  %1143 = getelementptr inbounds nuw i8, ptr %1071, i64 56
  %1144 = load i64, ptr %1143, align 1
  %1145 = getelementptr inbounds nuw i8, ptr %1074, i64 56
  %1146 = load i64, ptr %1145, align 1
  %1147 = xor i64 %1146, %1144
  %1148 = add i64 %1142, %1144
  store i64 %1148, ptr %1055, align 8, !alias.scope !63, !noalias !66
  %1149 = lshr i64 %1147, 32
  %1150 = and i64 %1147, 4294967295
  %1151 = mul nuw i64 %1150, %1149
  %1152 = add i64 %1151, %1138
  store i64 %1152, ptr %1053, align 8, !alias.scope !63, !noalias !66
  %1153 = add nuw i64 %1069, 1
  %1154 = icmp eq i64 %1153, %1040
  br i1 %1154, label %1155, label %1060, !llvm.loop !61

1155:                                             ; preds = %1060, %1039
  %1156 = zext i32 %836 to i64
  %1157 = getelementptr inbounds nuw i8, ptr %845, i64 %1156
  %1158 = getelementptr inbounds i8, ptr %1157, i64 -64
  br label %1168

1159:                                             ; preds = %834
  %1160 = sub nuw nsw i32 64, %836
  %1161 = zext nneg i32 %1160 to i64
  %1162 = icmp ne i32 %836, 0
  tail call void @llvm.assume(i1 %1162)
  %1163 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %1164 = sub nsw i64 0, %1161
  %1165 = getelementptr inbounds i8, ptr %835, i64 %1164
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %8, ptr nonnull readonly align 1 %1165, i64 %1161, i1 false)
  %1166 = getelementptr inbounds nuw i8, ptr %8, i64 %1161
  %1167 = zext nneg i32 %836 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1166, ptr nonnull readonly align 64 %1163, i64 %1167, i1 false)
  br label %1168

1168:                                             ; preds = %1159, %1155
  %1169 = phi ptr [ %1158, %1155 ], [ %8, %1159 ]
  %1170 = load i64, ptr %100, align 32
  %1171 = getelementptr inbounds nuw i8, ptr %830, i64 %1170
  %1172 = getelementptr inbounds i8, ptr %1171, i64 -7
  %1173 = load i64, ptr %1169, align 1
  %1174 = load i64, ptr %1172, align 1
  %1175 = xor i64 %1174, %1173
  %1176 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1177 = load i64, ptr %1176, align 8, !alias.scope !69, !noalias !72
  %1178 = add i64 %1177, %1173
  store i64 %1178, ptr %1176, align 8, !alias.scope !69, !noalias !72
  %1179 = lshr i64 %1175, 32
  %1180 = load i64, ptr %9, align 8, !alias.scope !69, !noalias !72
  %1181 = and i64 %1175, 4294967295
  %1182 = mul nuw i64 %1181, %1179
  %1183 = add i64 %1182, %1180
  store i64 %1183, ptr %9, align 8, !alias.scope !69, !noalias !72
  %1184 = getelementptr inbounds nuw i8, ptr %1169, i64 8
  %1185 = load i64, ptr %1184, align 1
  %1186 = getelementptr inbounds nuw i8, ptr %1171, i64 1
  %1187 = load i64, ptr %1186, align 1
  %1188 = xor i64 %1187, %1185
  %1189 = add i64 %1185, %1183
  store i64 %1189, ptr %9, align 8, !alias.scope !69, !noalias !72
  %1190 = lshr i64 %1188, 32
  %1191 = and i64 %1188, 4294967295
  %1192 = mul nuw i64 %1191, %1190
  %1193 = add i64 %1192, %1178
  store i64 %1193, ptr %1176, align 8, !alias.scope !69, !noalias !72
  %1194 = getelementptr inbounds nuw i8, ptr %1169, i64 16
  %1195 = load i64, ptr %1194, align 1
  %1196 = getelementptr inbounds nuw i8, ptr %1171, i64 9
  %1197 = load i64, ptr %1196, align 1
  %1198 = xor i64 %1197, %1195
  %1199 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %1200 = load i64, ptr %1199, align 8, !alias.scope !69, !noalias !72
  %1201 = add i64 %1200, %1195
  store i64 %1201, ptr %1199, align 8, !alias.scope !69, !noalias !72
  %1202 = lshr i64 %1198, 32
  %1203 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %1204 = load i64, ptr %1203, align 8, !alias.scope !69, !noalias !72
  %1205 = and i64 %1198, 4294967295
  %1206 = mul nuw i64 %1205, %1202
  %1207 = add i64 %1206, %1204
  store i64 %1207, ptr %1203, align 8, !alias.scope !69, !noalias !72
  %1208 = getelementptr inbounds nuw i8, ptr %1169, i64 24
  %1209 = load i64, ptr %1208, align 1
  %1210 = getelementptr inbounds nuw i8, ptr %1171, i64 17
  %1211 = load i64, ptr %1210, align 1
  %1212 = xor i64 %1211, %1209
  %1213 = add i64 %1209, %1207
  store i64 %1213, ptr %1203, align 8, !alias.scope !69, !noalias !72
  %1214 = lshr i64 %1212, 32
  %1215 = and i64 %1212, 4294967295
  %1216 = mul nuw i64 %1215, %1214
  %1217 = add i64 %1216, %1201
  store i64 %1217, ptr %1199, align 8, !alias.scope !69, !noalias !72
  %1218 = getelementptr inbounds nuw i8, ptr %1169, i64 32
  %1219 = load i64, ptr %1218, align 1
  %1220 = getelementptr inbounds nuw i8, ptr %1171, i64 25
  %1221 = load i64, ptr %1220, align 1
  %1222 = xor i64 %1221, %1219
  %1223 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %1224 = load i64, ptr %1223, align 8, !alias.scope !69, !noalias !72
  %1225 = add i64 %1224, %1219
  store i64 %1225, ptr %1223, align 8, !alias.scope !69, !noalias !72
  %1226 = lshr i64 %1222, 32
  %1227 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %1228 = load i64, ptr %1227, align 8, !alias.scope !69, !noalias !72
  %1229 = and i64 %1222, 4294967295
  %1230 = mul nuw i64 %1229, %1226
  %1231 = add i64 %1230, %1228
  store i64 %1231, ptr %1227, align 8, !alias.scope !69, !noalias !72
  %1232 = getelementptr inbounds nuw i8, ptr %1169, i64 40
  %1233 = load i64, ptr %1232, align 1
  %1234 = getelementptr inbounds nuw i8, ptr %1171, i64 33
  %1235 = load i64, ptr %1234, align 1
  %1236 = xor i64 %1235, %1233
  %1237 = add i64 %1233, %1231
  store i64 %1237, ptr %1227, align 8, !alias.scope !69, !noalias !72
  %1238 = lshr i64 %1236, 32
  %1239 = and i64 %1236, 4294967295
  %1240 = mul nuw i64 %1239, %1238
  %1241 = add i64 %1240, %1225
  store i64 %1241, ptr %1223, align 8, !alias.scope !69, !noalias !72
  %1242 = getelementptr inbounds nuw i8, ptr %1169, i64 48
  %1243 = load i64, ptr %1242, align 1
  %1244 = getelementptr inbounds nuw i8, ptr %1171, i64 41
  %1245 = load i64, ptr %1244, align 1
  %1246 = xor i64 %1245, %1243
  %1247 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %1248 = load i64, ptr %1247, align 8, !alias.scope !69, !noalias !72
  %1249 = add i64 %1248, %1243
  store i64 %1249, ptr %1247, align 8, !alias.scope !69, !noalias !72
  %1250 = lshr i64 %1246, 32
  %1251 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %1252 = load i64, ptr %1251, align 8, !alias.scope !69, !noalias !72
  %1253 = and i64 %1246, 4294967295
  %1254 = mul nuw i64 %1253, %1250
  %1255 = add i64 %1254, %1252
  store i64 %1255, ptr %1251, align 8, !alias.scope !69, !noalias !72
  %1256 = getelementptr inbounds nuw i8, ptr %1169, i64 56
  %1257 = load i64, ptr %1256, align 1
  %1258 = getelementptr inbounds nuw i8, ptr %1171, i64 49
  %1259 = load i64, ptr %1258, align 1
  %1260 = xor i64 %1259, %1257
  %1261 = add i64 %1257, %1255
  store i64 %1261, ptr %1251, align 8, !alias.scope !69, !noalias !72
  %1262 = lshr i64 %1260, 32
  %1263 = and i64 %1260, 4294967295
  %1264 = mul nuw i64 %1263, %1262
  %1265 = add i64 %1264, %1249
  store i64 %1265, ptr %1247, align 8, !alias.scope !69, !noalias !72
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #28
  %1266 = add nuw i64 %1170, 64
  %1267 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %9, ptr noundef nonnull %830, i64 noundef %1266, i64 noundef %832) #27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #28
  br label %2032

1268:                                             ; preds = %826
  %1269 = getelementptr inbounds nuw i8, ptr %12, i64 516
  %1270 = load i32, ptr %1269, align 4
  %1271 = icmp eq i32 %1270, 0
  %1272 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %1273 = icmp samesign ult i64 %832, 17
  br i1 %1271, label %1610, label %1274

1274:                                             ; preds = %1268
  %1275 = getelementptr inbounds nuw i8, ptr %12, i64 552
  %1276 = load i64, ptr %1275, align 8
  br i1 %1273, label %1277, label %1431

1277:                                             ; preds = %1274
  %1278 = icmp samesign ugt i64 %832, 8
  br i1 %1278, label %1279, label %1322

1279:                                             ; preds = %1277
  %1280 = sub i64 6455697860950631241, %1276
  %1281 = add i64 %1276, -4466874330221494952
  %1282 = load i64, ptr %1272, align 64
  %1283 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1284 = getelementptr inbounds i8, ptr %1283, i64 -8
  %1285 = load i64, ptr %1284, align 1
  %1286 = xor i64 %1282, %1280
  %1287 = xor i64 %1286, %1285
  %1288 = zext i64 %1287 to i128
  %1289 = mul nuw i128 %1288, 11400714785074694791
  %1290 = trunc i128 %1289 to i64
  %1291 = lshr i128 %1289, 64
  %1292 = trunc nuw i128 %1291 to i64
  %1293 = shl nuw nsw i64 %832, 54
  %1294 = add nsw i64 %1293, -18014398509481984
  %1295 = add i64 %1294, %1290
  %1296 = xor i64 %1285, %1281
  %1297 = and i64 %1296, 4294967295
  %1298 = mul nuw i64 %1297, 2246822518
  %1299 = add i64 %1298, %1296
  %1300 = add i64 %1299, %1292
  %1301 = tail call noundef i64 @llvm.bswap.i64(i64 %1300)
  %1302 = xor i64 %1301, %1295
  %1303 = zext i64 %1302 to i128
  %1304 = mul nuw i128 %1303, 14029467366897019727
  %1305 = trunc i128 %1304 to i64
  %1306 = lshr i128 %1304, 64
  %1307 = trunc nuw i128 %1306 to i64
  %1308 = mul i64 %1300, -4417276706812531889
  %1309 = add i64 %1308, %1307
  %1310 = lshr i64 %1305, 37
  %1311 = xor i64 %1310, %1305
  %1312 = mul i64 %1311, 1609587791953885689
  %1313 = lshr i64 %1312, 32
  %1314 = xor i64 %1313, %1312
  %1315 = lshr i64 %1309, 37
  %1316 = xor i64 %1315, %1309
  %1317 = mul i64 %1316, 1609587791953885689
  %1318 = lshr i64 %1317, 32
  %1319 = xor i64 %1318, %1317
  %1320 = insertvalue { i64, i64 } poison, i64 %1314, 0
  %1321 = insertvalue { i64, i64 } %1320, i64 %1319, 1
  br label %2032

1322:                                             ; preds = %1277
  %1323 = icmp samesign ugt i64 %832, 3
  br i1 %1323, label %1324, label %1364

1324:                                             ; preds = %1322
  %1325 = trunc i64 %1276 to i32
  %1326 = tail call noundef i32 @llvm.bswap.i32(i32 %1325)
  %1327 = zext i32 %1326 to i64
  %1328 = shl nuw i64 %1327, 32
  %1329 = xor i64 %1328, %1276
  %1330 = load i32, ptr %1272, align 64
  %1331 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1332 = getelementptr inbounds i8, ptr %1331, i64 -4
  %1333 = load i32, ptr %1332, align 1
  %1334 = zext i32 %1330 to i64
  %1335 = zext i32 %1333 to i64
  %1336 = shl nuw i64 %1335, 32
  %1337 = or disjoint i64 %1336, %1334
  %1338 = add i64 %1329, -4255862940314790740
  %1339 = xor i64 %1337, %1338
  %1340 = shl nuw nsw i64 %832, 2
  %1341 = add nuw nsw i64 %1340, -7046029288634856825
  %1342 = zext i64 %1339 to i128
  %1343 = zext i64 %1341 to i128
  %1344 = mul nuw i128 %1342, %1343
  %1345 = trunc i128 %1344 to i64
  %1346 = lshr i128 %1344, 64
  %1347 = trunc nuw i128 %1346 to i64
  %1348 = shl i64 %1345, 1
  %1349 = add i64 %1348, %1347
  %1350 = lshr i64 %1349, 3
  %1351 = xor i64 %1350, %1345
  %1352 = lshr i64 %1351, 35
  %1353 = xor i64 %1352, %1351
  %1354 = mul i64 %1353, -6939452855193903323
  %1355 = lshr i64 %1354, 28
  %1356 = xor i64 %1355, %1354
  %1357 = lshr i64 %1349, 37
  %1358 = xor i64 %1357, %1349
  %1359 = mul i64 %1358, 1609587791953885689
  %1360 = lshr i64 %1359, 32
  %1361 = xor i64 %1360, %1359
  %1362 = insertvalue { i64, i64 } poison, i64 %1356, 0
  %1363 = insertvalue { i64, i64 } %1362, i64 %1361, 1
  br label %2032

1364:                                             ; preds = %1322
  %1365 = icmp eq i64 %832, 0
  br i1 %1365, label %1410, label %1366

1366:                                             ; preds = %1364
  %1367 = load i8, ptr %1272, align 64
  %1368 = lshr i64 %832, 1
  %1369 = getelementptr inbounds nuw i8, ptr %1272, i64 %1368
  %1370 = load i8, ptr %1369, align 1
  %1371 = getelementptr i8, ptr %1272, i64 %832
  %1372 = getelementptr i8, ptr %1371, i64 -1
  %1373 = load i8, ptr %1372, align 1
  %1374 = zext i8 %1367 to i32
  %1375 = shl nuw nsw i32 %1374, 16
  %1376 = zext i8 %1370 to i32
  %1377 = shl nuw i32 %1376, 24
  %1378 = or disjoint i32 %1377, %1375
  %1379 = zext i8 %1373 to i32
  %1380 = or disjoint i32 %1378, %1379
  %1381 = trunc nuw nsw i64 %832 to i32
  %1382 = shl nuw nsw i32 %1381, 8
  %1383 = or disjoint i32 %1380, %1382
  %1384 = tail call noundef i32 @llvm.bswap.i32(i32 %1383)
  %1385 = tail call i32 @llvm.fshl.i32(i32 %1384, i32 %1384, i32 13)
  %1386 = add i64 %1276, 2267503259
  %1387 = sub i64 808198283, %1276
  %1388 = zext i32 %1383 to i64
  %1389 = zext nneg i32 %1385 to i64
  %1390 = lshr i64 %1386, 33
  %1391 = xor i64 %1390, %1388
  %1392 = xor i64 %1391, %1386
  %1393 = mul i64 %1392, -4417276706812531889
  %1394 = lshr i64 %1393, 29
  %1395 = xor i64 %1394, %1393
  %1396 = mul i64 %1395, 1609587929392839161
  %1397 = lshr i64 %1396, 32
  %1398 = xor i64 %1397, %1396
  %1399 = lshr i64 %1387, 33
  %1400 = xor i64 %1399, %1389
  %1401 = xor i64 %1400, %1387
  %1402 = mul i64 %1401, -4417276706812531889
  %1403 = lshr i64 %1402, 29
  %1404 = xor i64 %1403, %1402
  %1405 = mul i64 %1404, 1609587929392839161
  %1406 = lshr i64 %1405, 32
  %1407 = xor i64 %1406, %1405
  %1408 = insertvalue { i64, i64 } poison, i64 %1398, 0
  %1409 = insertvalue { i64, i64 } %1408, i64 %1407, 1
  br label %2032

1410:                                             ; preds = %1364
  %1411 = xor i64 %1276, 7507096552062056628
  %1412 = lshr i64 %1411, 33
  %1413 = xor i64 %1412, %1411
  %1414 = mul i64 %1413, -4417276706812531889
  %1415 = lshr i64 %1414, 29
  %1416 = xor i64 %1415, %1414
  %1417 = mul i64 %1416, 1609587929392839161
  %1418 = lshr i64 %1417, 32
  %1419 = xor i64 %1418, %1417
  %1420 = xor i64 %1276, -7613947547284439735
  %1421 = lshr i64 %1420, 33
  %1422 = xor i64 %1421, %1420
  %1423 = mul i64 %1422, -4417276706812531889
  %1424 = lshr i64 %1423, 29
  %1425 = xor i64 %1424, %1423
  %1426 = mul i64 %1425, 1609587929392839161
  %1427 = lshr i64 %1426, 32
  %1428 = xor i64 %1427, %1426
  %1429 = insertvalue { i64, i64 } poison, i64 %1419, 0
  %1430 = insertvalue { i64, i64 } %1429, i64 %1428, 1
  br label %2032

1431:                                             ; preds = %1274
  %1432 = icmp samesign ult i64 %832, 129
  br i1 %1432, label %1433, label %1608

1433:                                             ; preds = %1431
  %1434 = mul i64 %832, -7046029288634856825
  %1435 = icmp samesign ugt i64 %832, 32
  br i1 %1435, label %1436, label %1551

1436:                                             ; preds = %1433
  %1437 = icmp samesign ugt i64 %832, 64
  br i1 %1437, label %1438, label %1513

1438:                                             ; preds = %1436
  %1439 = icmp samesign ugt i64 %832, 96
  br i1 %1439, label %1440, label %1475

1440:                                             ; preds = %1438
  %1441 = getelementptr inbounds nuw i8, ptr %12, i64 304
  %1442 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1443 = getelementptr inbounds i8, ptr %1442, i64 -64
  %1444 = load i64, ptr %1441, align 16
  %1445 = getelementptr inbounds nuw i8, ptr %12, i64 312
  %1446 = load i64, ptr %1445, align 8
  %1447 = add i64 %1276, 4554437623014685352
  %1448 = xor i64 %1444, %1447
  %1449 = sub i64 2111919702937427193, %1276
  %1450 = xor i64 %1446, %1449
  %1451 = zext i64 %1448 to i128
  %1452 = zext i64 %1450 to i128
  %1453 = mul nuw i128 %1452, %1451
  %1454 = lshr i128 %1453, 64
  %1455 = xor i128 %1454, %1453
  %1456 = trunc i128 %1455 to i64
  %1457 = add i64 %1434, %1456
  %1458 = load i64, ptr %1443, align 1
  %1459 = getelementptr inbounds i8, ptr %1442, i64 -56
  %1460 = load i64, ptr %1459, align 1
  %1461 = add i64 %1460, %1458
  %1462 = xor i64 %1457, %1461
  %1463 = add i64 %1276, 3556072174620004746
  %1464 = xor i64 %1458, %1463
  %1465 = sub i64 7238261902898274248, %1276
  %1466 = xor i64 %1460, %1465
  %1467 = zext i64 %1464 to i128
  %1468 = zext i64 %1466 to i128
  %1469 = mul nuw i128 %1468, %1467
  %1470 = lshr i128 %1469, 64
  %1471 = xor i128 %1470, %1469
  %1472 = trunc i128 %1471 to i64
  %1473 = add i64 %1446, %1444
  %1474 = xor i64 %1473, %1472
  br label %1475

1475:                                             ; preds = %1440, %1438
  %1476 = phi i64 [ %1462, %1440 ], [ %1434, %1438 ]
  %1477 = phi i64 [ %1474, %1440 ], [ 0, %1438 ]
  %1478 = getelementptr inbounds nuw i8, ptr %12, i64 288
  %1479 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1480 = getelementptr inbounds i8, ptr %1479, i64 -48
  %1481 = load i64, ptr %1478, align 32
  %1482 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %1483 = load i64, ptr %1482, align 8
  %1484 = add i64 %1276, -3818837453329782724
  %1485 = xor i64 %1481, %1484
  %1486 = sub i64 -6688317018830679928, %1276
  %1487 = xor i64 %1483, %1486
  %1488 = zext i64 %1485 to i128
  %1489 = zext i64 %1487 to i128
  %1490 = mul nuw i128 %1489, %1488
  %1491 = lshr i128 %1490, 64
  %1492 = xor i128 %1491, %1490
  %1493 = trunc i128 %1492 to i64
  %1494 = add i64 %1476, %1493
  %1495 = load i64, ptr %1480, align 1
  %1496 = getelementptr inbounds i8, ptr %1479, i64 -40
  %1497 = load i64, ptr %1496, align 1
  %1498 = add i64 %1497, %1495
  %1499 = xor i64 %1494, %1498
  %1500 = add i64 %1276, 5690594596133299313
  %1501 = xor i64 %1495, %1500
  %1502 = sub i64 -2833645246901970632, %1276
  %1503 = xor i64 %1497, %1502
  %1504 = zext i64 %1501 to i128
  %1505 = zext i64 %1503 to i128
  %1506 = mul nuw i128 %1505, %1504
  %1507 = lshr i128 %1506, 64
  %1508 = xor i128 %1507, %1506
  %1509 = trunc i128 %1508 to i64
  %1510 = add i64 %1477, %1509
  %1511 = add i64 %1483, %1481
  %1512 = xor i64 %1510, %1511
  br label %1513

1513:                                             ; preds = %1475, %1436
  %1514 = phi i64 [ %1499, %1475 ], [ %1434, %1436 ]
  %1515 = phi i64 [ %1512, %1475 ], [ 0, %1436 ]
  %1516 = getelementptr inbounds nuw i8, ptr %12, i64 272
  %1517 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1518 = getelementptr inbounds i8, ptr %1517, i64 -32
  %1519 = load i64, ptr %1516, align 16
  %1520 = getelementptr inbounds nuw i8, ptr %12, i64 280
  %1521 = load i64, ptr %1520, align 8
  %1522 = add i64 %1276, 8711581037947681227
  %1523 = xor i64 %1519, %1522
  %1524 = sub i64 2410270004345854594, %1276
  %1525 = xor i64 %1521, %1524
  %1526 = zext i64 %1523 to i128
  %1527 = zext i64 %1525 to i128
  %1528 = mul nuw i128 %1527, %1526
  %1529 = lshr i128 %1528, 64
  %1530 = xor i128 %1529, %1528
  %1531 = trunc i128 %1530 to i64
  %1532 = add i64 %1514, %1531
  %1533 = load i64, ptr %1518, align 1
  %1534 = getelementptr inbounds i8, ptr %1517, i64 -24
  %1535 = load i64, ptr %1534, align 1
  %1536 = add i64 %1535, %1533
  %1537 = xor i64 %1532, %1536
  %1538 = add i64 %1276, -8204357891075471176
  %1539 = xor i64 %1533, %1538
  %1540 = sub i64 5487137525590930912, %1276
  %1541 = xor i64 %1535, %1540
  %1542 = zext i64 %1539 to i128
  %1543 = zext i64 %1541 to i128
  %1544 = mul nuw i128 %1543, %1542
  %1545 = lshr i128 %1544, 64
  %1546 = xor i128 %1545, %1544
  %1547 = trunc i128 %1546 to i64
  %1548 = add i64 %1515, %1547
  %1549 = add i64 %1521, %1519
  %1550 = xor i64 %1548, %1549
  br label %1551

1551:                                             ; preds = %1513, %1433
  %1552 = phi i64 [ %1537, %1513 ], [ %1434, %1433 ]
  %1553 = phi i64 [ %1550, %1513 ], [ 0, %1433 ]
  %1554 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1555 = getelementptr inbounds i8, ptr %1554, i64 -16
  %1556 = load i64, ptr %1272, align 64
  %1557 = getelementptr inbounds nuw i8, ptr %12, i64 264
  %1558 = load i64, ptr %1557, align 8
  %1559 = add i64 %1276, -4734510112055689544
  %1560 = xor i64 %1556, %1559
  %1561 = sub i64 2066345149520216444, %1276
  %1562 = xor i64 %1558, %1561
  %1563 = zext i64 %1560 to i128
  %1564 = zext i64 %1562 to i128
  %1565 = mul nuw i128 %1564, %1563
  %1566 = lshr i128 %1565, 64
  %1567 = xor i128 %1566, %1565
  %1568 = trunc i128 %1567 to i64
  %1569 = add i64 %1552, %1568
  %1570 = load i64, ptr %1555, align 1
  %1571 = getelementptr inbounds i8, ptr %1554, i64 -8
  %1572 = load i64, ptr %1571, align 1
  %1573 = add i64 %1572, %1570
  %1574 = xor i64 %1569, %1573
  %1575 = add i64 %1276, -2623469361688619810
  %1576 = xor i64 %1570, %1575
  %1577 = sub i64 2262974939099578482, %1276
  %1578 = xor i64 %1572, %1577
  %1579 = zext i64 %1576 to i128
  %1580 = zext i64 %1578 to i128
  %1581 = mul nuw i128 %1580, %1579
  %1582 = lshr i128 %1581, 64
  %1583 = xor i128 %1582, %1581
  %1584 = trunc i128 %1583 to i64
  %1585 = add i64 %1553, %1584
  %1586 = add i64 %1558, %1556
  %1587 = xor i64 %1585, %1586
  %1588 = add i64 %1587, %1574
  %1589 = mul i64 %1574, -7046029288634856825
  %1590 = mul i64 %1587, -8796714831421723037
  %1591 = sub i64 %832, %1276
  %1592 = mul i64 %1591, -4417276706812531889
  %1593 = add i64 %1589, %1592
  %1594 = add i64 %1593, %1590
  %1595 = lshr i64 %1588, 37
  %1596 = xor i64 %1595, %1588
  %1597 = mul i64 %1596, 1609587791953885689
  %1598 = lshr i64 %1597, 32
  %1599 = xor i64 %1598, %1597
  %1600 = lshr i64 %1594, 37
  %1601 = xor i64 %1600, %1594
  %1602 = mul i64 %1601, 1609587791953885689
  %1603 = lshr i64 %1602, 32
  %1604 = xor i64 %1603, %1602
  %1605 = sub i64 0, %1604
  %1606 = insertvalue { i64, i64 } poison, i64 %1599, 0
  %1607 = insertvalue { i64, i64 } %1606, i64 %1605, 1
  br label %2032

1608:                                             ; preds = %1431
  %1609 = call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef nonnull readonly %1272, i64 noundef range(i64 0, 241) %832, ptr noundef nonnull @XXH3_kSecret, i64 noundef %1276) #27
  br label %2032

1610:                                             ; preds = %1268
  br i1 %1273, label %1611, label %1809

1611:                                             ; preds = %1610
  %1612 = icmp samesign ugt i64 %832, 8
  br i1 %1612, label %1613, label %1672

1613:                                             ; preds = %1611
  %1614 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %1615 = getelementptr inbounds nuw i8, ptr %827, i64 32
  %1616 = select i1 %828, ptr %1614, ptr %1615
  %1617 = load i64, ptr %1616, align 1
  %1618 = getelementptr inbounds nuw i8, ptr %12, i64 104
  %1619 = getelementptr inbounds nuw i8, ptr %827, i64 40
  %1620 = select i1 %828, ptr %1618, ptr %1619
  %1621 = load i64, ptr %1620, align 1
  %1622 = xor i64 %1621, %1617
  %1623 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %1624 = getelementptr inbounds nuw i8, ptr %827, i64 48
  %1625 = select i1 %828, ptr %1623, ptr %1624
  %1626 = load i64, ptr %1625, align 1
  %1627 = getelementptr inbounds nuw i8, ptr %12, i64 120
  %1628 = getelementptr inbounds nuw i8, ptr %827, i64 56
  %1629 = select i1 %828, ptr %1627, ptr %1628
  %1630 = load i64, ptr %1629, align 1
  %1631 = xor i64 %1630, %1626
  %1632 = load i64, ptr %1272, align 64
  %1633 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1634 = getelementptr inbounds i8, ptr %1633, i64 -8
  %1635 = load i64, ptr %1634, align 1
  %1636 = xor i64 %1622, %1632
  %1637 = xor i64 %1636, %1635
  %1638 = zext i64 %1637 to i128
  %1639 = mul nuw i128 %1638, 11400714785074694791
  %1640 = trunc i128 %1639 to i64
  %1641 = lshr i128 %1639, 64
  %1642 = trunc nuw i128 %1641 to i64
  %1643 = shl nuw nsw i64 %832, 54
  %1644 = add nsw i64 %1643, -18014398509481984
  %1645 = add i64 %1644, %1640
  %1646 = xor i64 %1631, %1635
  %1647 = and i64 %1646, 4294967295
  %1648 = mul nuw i64 %1647, 2246822518
  %1649 = add i64 %1648, %1646
  %1650 = add i64 %1649, %1642
  %1651 = tail call noundef i64 @llvm.bswap.i64(i64 %1650)
  %1652 = xor i64 %1651, %1645
  %1653 = zext i64 %1652 to i128
  %1654 = mul nuw i128 %1653, 14029467366897019727
  %1655 = trunc i128 %1654 to i64
  %1656 = lshr i128 %1654, 64
  %1657 = trunc nuw i128 %1656 to i64
  %1658 = mul i64 %1650, -4417276706812531889
  %1659 = add i64 %1658, %1657
  %1660 = lshr i64 %1655, 37
  %1661 = xor i64 %1660, %1655
  %1662 = mul i64 %1661, 1609587791953885689
  %1663 = lshr i64 %1662, 32
  %1664 = xor i64 %1663, %1662
  %1665 = lshr i64 %1659, 37
  %1666 = xor i64 %1665, %1659
  %1667 = mul i64 %1666, 1609587791953885689
  %1668 = lshr i64 %1667, 32
  %1669 = xor i64 %1668, %1667
  %1670 = insertvalue { i64, i64 } poison, i64 %1664, 0
  %1671 = insertvalue { i64, i64 } %1670, i64 %1669, 1
  br label %2032

1672:                                             ; preds = %1611
  %1673 = icmp samesign ugt i64 %832, 3
  br i1 %1673, label %1674, label %1717

1674:                                             ; preds = %1672
  %1675 = load i32, ptr %1272, align 64
  %1676 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1677 = getelementptr inbounds i8, ptr %1676, i64 -4
  %1678 = load i32, ptr %1677, align 1
  %1679 = zext i32 %1675 to i64
  %1680 = zext i32 %1678 to i64
  %1681 = shl nuw i64 %1680, 32
  %1682 = or disjoint i64 %1681, %1679
  %1683 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %1684 = getelementptr inbounds nuw i8, ptr %827, i64 16
  %1685 = select i1 %828, ptr %1683, ptr %1684
  %1686 = load i64, ptr %1685, align 1
  %1687 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %1688 = getelementptr inbounds nuw i8, ptr %827, i64 24
  %1689 = select i1 %828, ptr %1687, ptr %1688
  %1690 = load i64, ptr %1689, align 1
  %1691 = xor i64 %1690, %1686
  %1692 = xor i64 %1691, %1682
  %1693 = shl nuw nsw i64 %832, 2
  %1694 = add nuw nsw i64 %1693, -7046029288634856825
  %1695 = zext i64 %1692 to i128
  %1696 = zext i64 %1694 to i128
  %1697 = mul nuw i128 %1695, %1696
  %1698 = trunc i128 %1697 to i64
  %1699 = lshr i128 %1697, 64
  %1700 = trunc nuw i128 %1699 to i64
  %1701 = shl i64 %1698, 1
  %1702 = add i64 %1701, %1700
  %1703 = lshr i64 %1702, 3
  %1704 = xor i64 %1703, %1698
  %1705 = lshr i64 %1704, 35
  %1706 = xor i64 %1705, %1704
  %1707 = mul i64 %1706, -6939452855193903323
  %1708 = lshr i64 %1707, 28
  %1709 = xor i64 %1708, %1707
  %1710 = lshr i64 %1702, 37
  %1711 = xor i64 %1710, %1702
  %1712 = mul i64 %1711, 1609587791953885689
  %1713 = lshr i64 %1712, 32
  %1714 = xor i64 %1713, %1712
  %1715 = insertvalue { i64, i64 } poison, i64 %1709, 0
  %1716 = insertvalue { i64, i64 } %1715, i64 %1714, 1
  br label %2032

1717:                                             ; preds = %1672
  %1718 = icmp eq i64 %832, 0
  br i1 %1718, label %1772, label %1719

1719:                                             ; preds = %1717
  %1720 = load i8, ptr %1272, align 64
  %1721 = lshr i64 %832, 1
  %1722 = getelementptr inbounds nuw i8, ptr %1272, i64 %1721
  %1723 = load i8, ptr %1722, align 1
  %1724 = getelementptr i8, ptr %1272, i64 %832
  %1725 = getelementptr i8, ptr %1724, i64 -1
  %1726 = load i8, ptr %1725, align 1
  %1727 = zext i8 %1720 to i32
  %1728 = shl nuw nsw i32 %1727, 16
  %1729 = zext i8 %1723 to i32
  %1730 = shl nuw i32 %1729, 24
  %1731 = or disjoint i32 %1730, %1728
  %1732 = zext i8 %1726 to i32
  %1733 = or disjoint i32 %1731, %1732
  %1734 = trunc nuw nsw i64 %832 to i32
  %1735 = shl nuw nsw i32 %1734, 8
  %1736 = or disjoint i32 %1733, %1735
  %1737 = tail call noundef i32 @llvm.bswap.i32(i32 %1736)
  %1738 = tail call i32 @llvm.fshl.i32(i32 %1737, i32 %1737, i32 13)
  %1739 = load i32, ptr %830, align 1
  %1740 = getelementptr inbounds nuw i8, ptr %12, i64 68
  %1741 = getelementptr inbounds nuw i8, ptr %827, i64 4
  %1742 = select i1 %828, ptr %1740, ptr %1741
  %1743 = load i32, ptr %1742, align 1
  %1744 = xor i32 %1743, %1739
  %1745 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %1746 = getelementptr inbounds nuw i8, ptr %827, i64 8
  %1747 = select i1 %828, ptr %1745, ptr %1746
  %1748 = load i32, ptr %1747, align 1
  %1749 = getelementptr inbounds nuw i8, ptr %12, i64 76
  %1750 = getelementptr inbounds nuw i8, ptr %827, i64 12
  %1751 = select i1 %828, ptr %1749, ptr %1750
  %1752 = load i32, ptr %1751, align 1
  %1753 = xor i32 %1752, %1748
  %1754 = xor i32 %1744, %1736
  %1755 = zext i32 %1754 to i64
  %1756 = xor i32 %1753, %1738
  %1757 = zext i32 %1756 to i64
  %1758 = mul i64 %1755, -4417276706812531889
  %1759 = lshr i64 %1758, 29
  %1760 = xor i64 %1759, %1758
  %1761 = mul i64 %1760, 1609587929392839161
  %1762 = lshr i64 %1761, 32
  %1763 = xor i64 %1762, %1761
  %1764 = mul i64 %1757, -4417276706812531889
  %1765 = lshr i64 %1764, 29
  %1766 = xor i64 %1765, %1764
  %1767 = mul i64 %1766, 1609587929392839161
  %1768 = lshr i64 %1767, 32
  %1769 = xor i64 %1768, %1767
  %1770 = insertvalue { i64, i64 } poison, i64 %1763, 0
  %1771 = insertvalue { i64, i64 } %1770, i64 %1769, 1
  br label %2032

1772:                                             ; preds = %1717
  %1773 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %1774 = getelementptr inbounds nuw i8, ptr %827, i64 64
  %1775 = select i1 %828, ptr %1773, ptr %1774
  %1776 = load i64, ptr %1775, align 1
  %1777 = getelementptr inbounds nuw i8, ptr %12, i64 136
  %1778 = getelementptr inbounds nuw i8, ptr %827, i64 72
  %1779 = select i1 %828, ptr %1777, ptr %1778
  %1780 = load i64, ptr %1779, align 1
  %1781 = xor i64 %1780, %1776
  %1782 = getelementptr inbounds nuw i8, ptr %12, i64 144
  %1783 = getelementptr inbounds nuw i8, ptr %827, i64 80
  %1784 = select i1 %828, ptr %1782, ptr %1783
  %1785 = load i64, ptr %1784, align 1
  %1786 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %1787 = getelementptr inbounds nuw i8, ptr %827, i64 88
  %1788 = select i1 %828, ptr %1786, ptr %1787
  %1789 = load i64, ptr %1788, align 1
  %1790 = xor i64 %1789, %1785
  %1791 = lshr i64 %1781, 33
  %1792 = xor i64 %1791, %1781
  %1793 = mul i64 %1792, -4417276706812531889
  %1794 = lshr i64 %1793, 29
  %1795 = xor i64 %1794, %1793
  %1796 = mul i64 %1795, 1609587929392839161
  %1797 = lshr i64 %1796, 32
  %1798 = xor i64 %1797, %1796
  %1799 = lshr i64 %1790, 33
  %1800 = xor i64 %1799, %1790
  %1801 = mul i64 %1800, -4417276706812531889
  %1802 = lshr i64 %1801, 29
  %1803 = xor i64 %1802, %1801
  %1804 = mul i64 %1803, 1609587929392839161
  %1805 = lshr i64 %1804, 32
  %1806 = xor i64 %1805, %1804
  %1807 = insertvalue { i64, i64 } poison, i64 %1798, 0
  %1808 = insertvalue { i64, i64 } %1807, i64 %1806, 1
  br label %2032

1809:                                             ; preds = %1610
  %1810 = icmp samesign ult i64 %832, 129
  br i1 %1810, label %1811, label %2030

1811:                                             ; preds = %1809
  %1812 = mul i64 %832, -7046029288634856825
  %1813 = icmp samesign ugt i64 %832, 32
  br i1 %1813, label %1814, label %1965

1814:                                             ; preds = %1811
  %1815 = icmp samesign ugt i64 %832, 64
  br i1 %1815, label %1816, label %1915

1816:                                             ; preds = %1814
  %1817 = icmp samesign ugt i64 %832, 96
  br i1 %1817, label %1818, label %1865

1818:                                             ; preds = %1816
  %1819 = getelementptr inbounds nuw i8, ptr %12, i64 304
  %1820 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1821 = getelementptr inbounds i8, ptr %1820, i64 -64
  %1822 = getelementptr inbounds nuw i8, ptr %12, i64 160
  %1823 = getelementptr inbounds nuw i8, ptr %827, i64 96
  %1824 = select i1 %828, ptr %1822, ptr %1823
  %1825 = load i64, ptr %1819, align 16
  %1826 = getelementptr inbounds nuw i8, ptr %12, i64 312
  %1827 = load i64, ptr %1826, align 8
  %1828 = load i64, ptr %1824, align 1
  %1829 = xor i64 %1828, %1825
  %1830 = getelementptr inbounds nuw i8, ptr %12, i64 168
  %1831 = getelementptr inbounds nuw i8, ptr %827, i64 104
  %1832 = select i1 %828, ptr %1830, ptr %1831
  %1833 = load i64, ptr %1832, align 1
  %1834 = xor i64 %1833, %1827
  %1835 = zext i64 %1829 to i128
  %1836 = zext i64 %1834 to i128
  %1837 = mul nuw i128 %1836, %1835
  %1838 = lshr i128 %1837, 64
  %1839 = xor i128 %1838, %1837
  %1840 = trunc i128 %1839 to i64
  %1841 = add i64 %1812, %1840
  %1842 = load i64, ptr %1821, align 1
  %1843 = getelementptr inbounds i8, ptr %1820, i64 -56
  %1844 = load i64, ptr %1843, align 1
  %1845 = add i64 %1844, %1842
  %1846 = xor i64 %1841, %1845
  %1847 = getelementptr inbounds nuw i8, ptr %12, i64 176
  %1848 = getelementptr inbounds nuw i8, ptr %827, i64 112
  %1849 = select i1 %828, ptr %1847, ptr %1848
  %1850 = load i64, ptr %1849, align 1
  %1851 = xor i64 %1850, %1842
  %1852 = getelementptr inbounds nuw i8, ptr %12, i64 184
  %1853 = getelementptr inbounds nuw i8, ptr %827, i64 120
  %1854 = select i1 %828, ptr %1852, ptr %1853
  %1855 = load i64, ptr %1854, align 1
  %1856 = xor i64 %1855, %1844
  %1857 = zext i64 %1851 to i128
  %1858 = zext i64 %1856 to i128
  %1859 = mul nuw i128 %1858, %1857
  %1860 = lshr i128 %1859, 64
  %1861 = xor i128 %1860, %1859
  %1862 = trunc i128 %1861 to i64
  %1863 = add i64 %1827, %1825
  %1864 = xor i64 %1863, %1862
  br label %1865

1865:                                             ; preds = %1818, %1816
  %1866 = phi i64 [ %1846, %1818 ], [ %1812, %1816 ]
  %1867 = phi i64 [ %1864, %1818 ], [ 0, %1816 ]
  %1868 = getelementptr inbounds nuw i8, ptr %12, i64 288
  %1869 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1870 = getelementptr inbounds i8, ptr %1869, i64 -48
  %1871 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %1872 = getelementptr inbounds nuw i8, ptr %827, i64 64
  %1873 = select i1 %828, ptr %1871, ptr %1872
  %1874 = load i64, ptr %1868, align 32
  %1875 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %1876 = load i64, ptr %1875, align 8
  %1877 = load i64, ptr %1873, align 1
  %1878 = xor i64 %1877, %1874
  %1879 = getelementptr inbounds nuw i8, ptr %12, i64 136
  %1880 = getelementptr inbounds nuw i8, ptr %827, i64 72
  %1881 = select i1 %828, ptr %1879, ptr %1880
  %1882 = load i64, ptr %1881, align 1
  %1883 = xor i64 %1882, %1876
  %1884 = zext i64 %1878 to i128
  %1885 = zext i64 %1883 to i128
  %1886 = mul nuw i128 %1885, %1884
  %1887 = lshr i128 %1886, 64
  %1888 = xor i128 %1887, %1886
  %1889 = trunc i128 %1888 to i64
  %1890 = add i64 %1866, %1889
  %1891 = load i64, ptr %1870, align 1
  %1892 = getelementptr inbounds i8, ptr %1869, i64 -40
  %1893 = load i64, ptr %1892, align 1
  %1894 = add i64 %1893, %1891
  %1895 = xor i64 %1890, %1894
  %1896 = getelementptr inbounds nuw i8, ptr %12, i64 144
  %1897 = getelementptr inbounds nuw i8, ptr %827, i64 80
  %1898 = select i1 %828, ptr %1896, ptr %1897
  %1899 = load i64, ptr %1898, align 1
  %1900 = xor i64 %1899, %1891
  %1901 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %1902 = getelementptr inbounds nuw i8, ptr %827, i64 88
  %1903 = select i1 %828, ptr %1901, ptr %1902
  %1904 = load i64, ptr %1903, align 1
  %1905 = xor i64 %1904, %1893
  %1906 = zext i64 %1900 to i128
  %1907 = zext i64 %1905 to i128
  %1908 = mul nuw i128 %1907, %1906
  %1909 = lshr i128 %1908, 64
  %1910 = xor i128 %1909, %1908
  %1911 = trunc i128 %1910 to i64
  %1912 = add i64 %1867, %1911
  %1913 = add i64 %1876, %1874
  %1914 = xor i64 %1912, %1913
  br label %1915

1915:                                             ; preds = %1865, %1814
  %1916 = phi i64 [ %1895, %1865 ], [ %1812, %1814 ]
  %1917 = phi i64 [ %1914, %1865 ], [ 0, %1814 ]
  %1918 = getelementptr inbounds nuw i8, ptr %12, i64 272
  %1919 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1920 = getelementptr inbounds i8, ptr %1919, i64 -32
  %1921 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %1922 = getelementptr inbounds nuw i8, ptr %827, i64 32
  %1923 = select i1 %828, ptr %1921, ptr %1922
  %1924 = load i64, ptr %1918, align 16
  %1925 = getelementptr inbounds nuw i8, ptr %12, i64 280
  %1926 = load i64, ptr %1925, align 8
  %1927 = load i64, ptr %1923, align 1
  %1928 = xor i64 %1927, %1924
  %1929 = getelementptr inbounds nuw i8, ptr %12, i64 104
  %1930 = getelementptr inbounds nuw i8, ptr %827, i64 40
  %1931 = select i1 %828, ptr %1929, ptr %1930
  %1932 = load i64, ptr %1931, align 1
  %1933 = xor i64 %1932, %1926
  %1934 = zext i64 %1928 to i128
  %1935 = zext i64 %1933 to i128
  %1936 = mul nuw i128 %1935, %1934
  %1937 = lshr i128 %1936, 64
  %1938 = xor i128 %1937, %1936
  %1939 = trunc i128 %1938 to i64
  %1940 = add i64 %1916, %1939
  %1941 = load i64, ptr %1920, align 1
  %1942 = getelementptr inbounds i8, ptr %1919, i64 -24
  %1943 = load i64, ptr %1942, align 1
  %1944 = add i64 %1943, %1941
  %1945 = xor i64 %1940, %1944
  %1946 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %1947 = getelementptr inbounds nuw i8, ptr %827, i64 48
  %1948 = select i1 %828, ptr %1946, ptr %1947
  %1949 = load i64, ptr %1948, align 1
  %1950 = xor i64 %1949, %1941
  %1951 = getelementptr inbounds nuw i8, ptr %12, i64 120
  %1952 = getelementptr inbounds nuw i8, ptr %827, i64 56
  %1953 = select i1 %828, ptr %1951, ptr %1952
  %1954 = load i64, ptr %1953, align 1
  %1955 = xor i64 %1954, %1943
  %1956 = zext i64 %1950 to i128
  %1957 = zext i64 %1955 to i128
  %1958 = mul nuw i128 %1957, %1956
  %1959 = lshr i128 %1958, 64
  %1960 = xor i128 %1959, %1958
  %1961 = trunc i128 %1960 to i64
  %1962 = add i64 %1917, %1961
  %1963 = add i64 %1926, %1924
  %1964 = xor i64 %1962, %1963
  br label %1965

1965:                                             ; preds = %1915, %1811
  %1966 = phi i64 [ %1945, %1915 ], [ %1812, %1811 ]
  %1967 = phi i64 [ %1964, %1915 ], [ 0, %1811 ]
  %1968 = getelementptr inbounds nuw i8, ptr %1272, i64 %832
  %1969 = getelementptr inbounds i8, ptr %1968, i64 -16
  %1970 = load i64, ptr %1272, align 64
  %1971 = getelementptr inbounds nuw i8, ptr %12, i64 264
  %1972 = load i64, ptr %1971, align 8
  %1973 = load i64, ptr %830, align 1
  %1974 = xor i64 %1973, %1970
  %1975 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %1976 = getelementptr inbounds nuw i8, ptr %827, i64 8
  %1977 = select i1 %828, ptr %1975, ptr %1976
  %1978 = load i64, ptr %1977, align 1
  %1979 = xor i64 %1978, %1972
  %1980 = zext i64 %1974 to i128
  %1981 = zext i64 %1979 to i128
  %1982 = mul nuw i128 %1981, %1980
  %1983 = lshr i128 %1982, 64
  %1984 = xor i128 %1983, %1982
  %1985 = trunc i128 %1984 to i64
  %1986 = add i64 %1966, %1985
  %1987 = load i64, ptr %1969, align 1
  %1988 = getelementptr inbounds i8, ptr %1968, i64 -8
  %1989 = load i64, ptr %1988, align 1
  %1990 = add i64 %1989, %1987
  %1991 = xor i64 %1986, %1990
  %1992 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %1993 = getelementptr inbounds nuw i8, ptr %827, i64 16
  %1994 = select i1 %828, ptr %1992, ptr %1993
  %1995 = load i64, ptr %1994, align 1
  %1996 = xor i64 %1995, %1987
  %1997 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %1998 = getelementptr inbounds nuw i8, ptr %827, i64 24
  %1999 = select i1 %828, ptr %1997, ptr %1998
  %2000 = load i64, ptr %1999, align 1
  %2001 = xor i64 %2000, %1989
  %2002 = zext i64 %1996 to i128
  %2003 = zext i64 %2001 to i128
  %2004 = mul nuw i128 %2003, %2002
  %2005 = lshr i128 %2004, 64
  %2006 = xor i128 %2005, %2004
  %2007 = trunc i128 %2006 to i64
  %2008 = add i64 %1967, %2007
  %2009 = add i64 %1972, %1970
  %2010 = xor i64 %2008, %2009
  %2011 = add i64 %2010, %1991
  %2012 = mul i64 %1991, -7046029288634856825
  %2013 = mul i64 %2010, -8796714831421723037
  %2014 = mul i64 %832, -4417276706812531889
  %2015 = add i64 %2012, %2014
  %2016 = add i64 %2015, %2013
  %2017 = lshr i64 %2011, 37
  %2018 = xor i64 %2017, %2011
  %2019 = mul i64 %2018, 1609587791953885689
  %2020 = lshr i64 %2019, 32
  %2021 = xor i64 %2020, %2019
  %2022 = lshr i64 %2016, 37
  %2023 = xor i64 %2022, %2016
  %2024 = mul i64 %2023, 1609587791953885689
  %2025 = lshr i64 %2024, 32
  %2026 = xor i64 %2025, %2024
  %2027 = sub i64 0, %2026
  %2028 = insertvalue { i64, i64 } poison, i64 %2021, 0
  %2029 = insertvalue { i64, i64 } %2028, i64 %2027, 1
  br label %2032

2030:                                             ; preds = %1809
  %2031 = call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef nonnull readonly %1272, i64 noundef range(i64 0, 241) %832, ptr noundef nonnull readonly %830, i64 noundef 0) #27
  br label %2032

2032:                                             ; preds = %1168, %1279, %1324, %1366, %1410, %1551, %1608, %1613, %1674, %1719, %1772, %1965, %2030
  %2033 = phi { i64, i64 } [ %1267, %1168 ], [ %1607, %1551 ], [ %1609, %1608 ], [ %1321, %1279 ], [ %1363, %1324 ], [ %1409, %1366 ], [ %1430, %1410 ], [ %2029, %1965 ], [ %2031, %2030 ], [ %1671, %1613 ], [ %1716, %1674 ], [ %1771, %1719 ], [ %1808, %1772 ]
  %2034 = extractvalue { i64, i64 } %2033, 0
  %2035 = extractvalue { i64, i64 } %2033, 1
  store i64 %2034, ptr %5, align 8
  %2036 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2035, ptr %2036, align 8
  br label %2896

2037:                                             ; preds = %392
  %2038 = load ptr, ptr %99, align 8
  %2039 = icmp eq ptr %2038, null
  %2040 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %2041 = select i1 %2039, ptr %2040, ptr %2038
  %2042 = getelementptr inbounds nuw i8, ptr %12, i64 528
  %2043 = load i64, ptr %2042, align 16
  %2044 = icmp ugt i64 %2043, 240
  br i1 %2044, label %2045, label %2542

2045:                                             ; preds = %2037
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #28
  %2046 = load i64, ptr %12, align 64
  %2047 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %2048 = load i64, ptr %2047, align 8
  %2049 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %2050 = load i64, ptr %2049, align 16
  %2051 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %2052 = load i64, ptr %2051, align 8
  %2053 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %2054 = load i64, ptr %2053, align 32
  %2055 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %2056 = load i64, ptr %2055, align 8
  %2057 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %2058 = load i64, ptr %2057, align 16
  %2059 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %2060 = load i64, ptr %2059, align 8
  %2061 = getelementptr inbounds nuw i8, ptr %12, i64 512
  %2062 = load i32, ptr %2061, align 64
  %2063 = icmp ugt i32 %2062, 63
  br i1 %2063, label %2064, label %2368

2064:                                             ; preds = %2045
  %2065 = add i32 %2062, -1
  %2066 = lshr i32 %2065, 6
  %2067 = zext nneg i32 %2066 to i64
  %2068 = getelementptr inbounds nuw i8, ptr %12, i64 520
  %2069 = load i64, ptr %2068, align 8
  %2070 = load i64, ptr %101, align 8
  %2071 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %2072 = shl i64 %2069, 3
  %2073 = getelementptr inbounds nuw i8, ptr %2041, i64 %2072
  %2074 = sub i64 %2070, %2069
  %2075 = icmp ugt i64 %2074, %2067
  br i1 %2075, label %2248, label %2076

2076:                                             ; preds = %2064
  %2077 = load i64, ptr %100, align 32
  %2078 = getelementptr inbounds nuw i8, ptr %2041, i64 %2077
  %2079 = load i64, ptr %2078, align 1
  %2080 = getelementptr inbounds nuw i8, ptr %2078, i64 8
  %2081 = load i64, ptr %2080, align 1
  %2082 = getelementptr inbounds nuw i8, ptr %2078, i64 16
  %2083 = load i64, ptr %2082, align 1
  %2084 = getelementptr inbounds nuw i8, ptr %2078, i64 24
  %2085 = load i64, ptr %2084, align 1
  %2086 = getelementptr inbounds nuw i8, ptr %2078, i64 32
  %2087 = load i64, ptr %2086, align 1
  %2088 = getelementptr inbounds nuw i8, ptr %2078, i64 40
  %2089 = load i64, ptr %2088, align 1
  %2090 = getelementptr inbounds nuw i8, ptr %2078, i64 48
  %2091 = load i64, ptr %2090, align 1
  %2092 = getelementptr inbounds nuw i8, ptr %2078, i64 56
  %2093 = load i64, ptr %2092, align 1
  br label %2094

2094:                                             ; preds = %2203, %2076
  %2095 = phi i64 [ %2060, %2076 ], [ %2243, %2203 ]
  %2096 = phi i64 [ %2058, %2076 ], [ %2239, %2203 ]
  %2097 = phi i64 [ %2056, %2076 ], [ %2235, %2203 ]
  %2098 = phi i64 [ %2054, %2076 ], [ %2231, %2203 ]
  %2099 = phi i64 [ %2052, %2076 ], [ %2227, %2203 ]
  %2100 = phi i64 [ %2050, %2076 ], [ %2223, %2203 ]
  %2101 = phi i64 [ %2048, %2076 ], [ %2219, %2203 ]
  %2102 = phi i64 [ %2046, %2076 ], [ %2215, %2203 ]
  %2103 = phi i64 [ %2067, %2076 ], [ %2246, %2203 ]
  %2104 = phi ptr [ %2071, %2076 ], [ %2245, %2203 ]
  %2105 = phi ptr [ %2073, %2076 ], [ %2041, %2203 ]
  %2106 = phi i64 [ %2074, %2076 ], [ %2070, %2203 ]
  %2107 = icmp eq i64 %2106, 0
  br i1 %2107, label %2203, label %2108

2108:                                             ; preds = %2094, %2108
  %2109 = phi i64 [ %2200, %2108 ], [ %2095, %2094 ]
  %2110 = phi i64 [ %2196, %2108 ], [ %2096, %2094 ]
  %2111 = phi i64 [ %2180, %2108 ], [ %2097, %2094 ]
  %2112 = phi i64 [ %2176, %2108 ], [ %2098, %2094 ]
  %2113 = phi i64 [ %2160, %2108 ], [ %2099, %2094 ]
  %2114 = phi i64 [ %2156, %2108 ], [ %2100, %2094 ]
  %2115 = phi i64 [ %2140, %2108 ], [ %2101, %2094 ]
  %2116 = phi i64 [ %2136, %2108 ], [ %2102, %2094 ]
  %2117 = phi i64 [ %2201, %2108 ], [ 0, %2094 ]
  %2118 = shl i64 %2117, 6
  %2119 = getelementptr inbounds nuw i8, ptr %2104, i64 %2118
  %2120 = getelementptr inbounds nuw i8, ptr %2119, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %2120, i32 0, i32 3, i32 1), !noalias !75
  %2121 = shl i64 %2117, 3
  %2122 = getelementptr inbounds nuw i8, ptr %2105, i64 %2121
  %2123 = load i64, ptr %2119, align 1
  %2124 = load i64, ptr %2122, align 1
  %2125 = xor i64 %2124, %2123
  %2126 = add i64 %2123, %2115
  %2127 = lshr i64 %2125, 32
  %2128 = and i64 %2125, 4294967295
  %2129 = mul nuw i64 %2128, %2127
  %2130 = getelementptr inbounds nuw i8, ptr %2119, i64 8
  %2131 = load i64, ptr %2130, align 1
  %2132 = getelementptr inbounds nuw i8, ptr %2122, i64 8
  %2133 = load i64, ptr %2132, align 1
  %2134 = xor i64 %2133, %2131
  %2135 = add i64 %2131, %2116
  %2136 = add i64 %2135, %2129
  %2137 = lshr i64 %2134, 32
  %2138 = and i64 %2134, 4294967295
  %2139 = mul nuw i64 %2138, %2137
  %2140 = add i64 %2126, %2139
  %2141 = getelementptr inbounds nuw i8, ptr %2119, i64 16
  %2142 = load i64, ptr %2141, align 1
  %2143 = getelementptr inbounds nuw i8, ptr %2122, i64 16
  %2144 = load i64, ptr %2143, align 1
  %2145 = xor i64 %2144, %2142
  %2146 = add i64 %2142, %2113
  %2147 = lshr i64 %2145, 32
  %2148 = and i64 %2145, 4294967295
  %2149 = mul nuw i64 %2148, %2147
  %2150 = getelementptr inbounds nuw i8, ptr %2119, i64 24
  %2151 = load i64, ptr %2150, align 1
  %2152 = getelementptr inbounds nuw i8, ptr %2122, i64 24
  %2153 = load i64, ptr %2152, align 1
  %2154 = xor i64 %2153, %2151
  %2155 = add i64 %2151, %2114
  %2156 = add i64 %2155, %2149
  %2157 = lshr i64 %2154, 32
  %2158 = and i64 %2154, 4294967295
  %2159 = mul nuw i64 %2158, %2157
  %2160 = add i64 %2146, %2159
  %2161 = getelementptr inbounds nuw i8, ptr %2119, i64 32
  %2162 = load i64, ptr %2161, align 1
  %2163 = getelementptr inbounds nuw i8, ptr %2122, i64 32
  %2164 = load i64, ptr %2163, align 1
  %2165 = xor i64 %2164, %2162
  %2166 = add i64 %2162, %2111
  %2167 = lshr i64 %2165, 32
  %2168 = and i64 %2165, 4294967295
  %2169 = mul nuw i64 %2168, %2167
  %2170 = getelementptr inbounds nuw i8, ptr %2119, i64 40
  %2171 = load i64, ptr %2170, align 1
  %2172 = getelementptr inbounds nuw i8, ptr %2122, i64 40
  %2173 = load i64, ptr %2172, align 1
  %2174 = xor i64 %2173, %2171
  %2175 = add i64 %2171, %2112
  %2176 = add i64 %2175, %2169
  %2177 = lshr i64 %2174, 32
  %2178 = and i64 %2174, 4294967295
  %2179 = mul nuw i64 %2178, %2177
  %2180 = add i64 %2166, %2179
  %2181 = getelementptr inbounds nuw i8, ptr %2119, i64 48
  %2182 = load i64, ptr %2181, align 1
  %2183 = getelementptr inbounds nuw i8, ptr %2122, i64 48
  %2184 = load i64, ptr %2183, align 1
  %2185 = xor i64 %2184, %2182
  %2186 = add i64 %2182, %2109
  %2187 = lshr i64 %2185, 32
  %2188 = and i64 %2185, 4294967295
  %2189 = mul nuw i64 %2188, %2187
  %2190 = getelementptr inbounds nuw i8, ptr %2119, i64 56
  %2191 = load i64, ptr %2190, align 1
  %2192 = getelementptr inbounds nuw i8, ptr %2122, i64 56
  %2193 = load i64, ptr %2192, align 1
  %2194 = xor i64 %2193, %2191
  %2195 = add i64 %2191, %2110
  %2196 = add i64 %2195, %2189
  %2197 = lshr i64 %2194, 32
  %2198 = and i64 %2194, 4294967295
  %2199 = mul nuw i64 %2198, %2197
  %2200 = add i64 %2186, %2199
  %2201 = add nuw i64 %2117, 1
  %2202 = icmp eq i64 %2201, %2106
  br i1 %2202, label %2203, label %2108, !llvm.loop !61

2203:                                             ; preds = %2108, %2094
  %2204 = phi i64 [ %2095, %2094 ], [ %2200, %2108 ]
  %2205 = phi i64 [ %2096, %2094 ], [ %2196, %2108 ]
  %2206 = phi i64 [ %2097, %2094 ], [ %2180, %2108 ]
  %2207 = phi i64 [ %2098, %2094 ], [ %2176, %2108 ]
  %2208 = phi i64 [ %2099, %2094 ], [ %2160, %2108 ]
  %2209 = phi i64 [ %2100, %2094 ], [ %2156, %2108 ]
  %2210 = phi i64 [ %2101, %2094 ], [ %2140, %2108 ]
  %2211 = phi i64 [ %2102, %2094 ], [ %2136, %2108 ]
  %2212 = lshr i64 %2211, 47
  %2213 = xor i64 %2079, %2212
  %2214 = xor i64 %2213, %2211
  %2215 = mul i64 %2214, 2654435761
  %2216 = lshr i64 %2210, 47
  %2217 = xor i64 %2081, %2216
  %2218 = xor i64 %2217, %2210
  %2219 = mul i64 %2218, 2654435761
  %2220 = lshr i64 %2209, 47
  %2221 = xor i64 %2083, %2220
  %2222 = xor i64 %2221, %2209
  %2223 = mul i64 %2222, 2654435761
  %2224 = lshr i64 %2208, 47
  %2225 = xor i64 %2085, %2224
  %2226 = xor i64 %2225, %2208
  %2227 = mul i64 %2226, 2654435761
  %2228 = lshr i64 %2207, 47
  %2229 = xor i64 %2087, %2228
  %2230 = xor i64 %2229, %2207
  %2231 = mul i64 %2230, 2654435761
  %2232 = lshr i64 %2206, 47
  %2233 = xor i64 %2089, %2232
  %2234 = xor i64 %2233, %2206
  %2235 = mul i64 %2234, 2654435761
  %2236 = lshr i64 %2205, 47
  %2237 = xor i64 %2091, %2236
  %2238 = xor i64 %2237, %2205
  %2239 = mul i64 %2238, 2654435761
  %2240 = lshr i64 %2204, 47
  %2241 = xor i64 %2093, %2240
  %2242 = xor i64 %2241, %2204
  %2243 = mul i64 %2242, 2654435761
  %2244 = shl i64 %2106, 6
  %2245 = getelementptr inbounds nuw i8, ptr %2104, i64 %2244
  %2246 = sub i64 %2103, %2106
  %2247 = icmp ult i64 %2246, %2070
  br i1 %2247, label %2248, label %2094, !llvm.loop !62

2248:                                             ; preds = %2203, %2064
  %2249 = phi i64 [ %2060, %2064 ], [ %2243, %2203 ]
  %2250 = phi i64 [ %2058, %2064 ], [ %2239, %2203 ]
  %2251 = phi i64 [ %2056, %2064 ], [ %2235, %2203 ]
  %2252 = phi i64 [ %2054, %2064 ], [ %2231, %2203 ]
  %2253 = phi i64 [ %2052, %2064 ], [ %2227, %2203 ]
  %2254 = phi i64 [ %2050, %2064 ], [ %2223, %2203 ]
  %2255 = phi i64 [ %2048, %2064 ], [ %2219, %2203 ]
  %2256 = phi i64 [ %2046, %2064 ], [ %2215, %2203 ]
  %2257 = phi i64 [ %2067, %2064 ], [ %2246, %2203 ]
  %2258 = phi ptr [ %2071, %2064 ], [ %2245, %2203 ]
  %2259 = phi ptr [ %2073, %2064 ], [ %2041, %2203 ]
  %2260 = icmp eq i64 %2257, 0
  br i1 %2260, label %2356, label %2261

2261:                                             ; preds = %2248, %2261
  %2262 = phi i64 [ %2353, %2261 ], [ %2249, %2248 ]
  %2263 = phi i64 [ %2349, %2261 ], [ %2250, %2248 ]
  %2264 = phi i64 [ %2333, %2261 ], [ %2251, %2248 ]
  %2265 = phi i64 [ %2329, %2261 ], [ %2252, %2248 ]
  %2266 = phi i64 [ %2313, %2261 ], [ %2253, %2248 ]
  %2267 = phi i64 [ %2309, %2261 ], [ %2254, %2248 ]
  %2268 = phi i64 [ %2293, %2261 ], [ %2255, %2248 ]
  %2269 = phi i64 [ %2289, %2261 ], [ %2256, %2248 ]
  %2270 = phi i64 [ %2354, %2261 ], [ 0, %2248 ]
  %2271 = shl i64 %2270, 6
  %2272 = getelementptr inbounds nuw i8, ptr %2258, i64 %2271
  %2273 = getelementptr inbounds nuw i8, ptr %2272, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %2273, i32 0, i32 3, i32 1), !noalias !75
  %2274 = shl i64 %2270, 3
  %2275 = getelementptr inbounds nuw i8, ptr %2259, i64 %2274
  %2276 = load i64, ptr %2272, align 1
  %2277 = load i64, ptr %2275, align 1
  %2278 = xor i64 %2277, %2276
  %2279 = add i64 %2276, %2268
  %2280 = lshr i64 %2278, 32
  %2281 = and i64 %2278, 4294967295
  %2282 = mul nuw i64 %2281, %2280
  %2283 = getelementptr inbounds nuw i8, ptr %2272, i64 8
  %2284 = load i64, ptr %2283, align 1
  %2285 = getelementptr inbounds nuw i8, ptr %2275, i64 8
  %2286 = load i64, ptr %2285, align 1
  %2287 = xor i64 %2286, %2284
  %2288 = add i64 %2284, %2269
  %2289 = add i64 %2288, %2282
  %2290 = lshr i64 %2287, 32
  %2291 = and i64 %2287, 4294967295
  %2292 = mul nuw i64 %2291, %2290
  %2293 = add i64 %2279, %2292
  %2294 = getelementptr inbounds nuw i8, ptr %2272, i64 16
  %2295 = load i64, ptr %2294, align 1
  %2296 = getelementptr inbounds nuw i8, ptr %2275, i64 16
  %2297 = load i64, ptr %2296, align 1
  %2298 = xor i64 %2297, %2295
  %2299 = add i64 %2295, %2266
  %2300 = lshr i64 %2298, 32
  %2301 = and i64 %2298, 4294967295
  %2302 = mul nuw i64 %2301, %2300
  %2303 = getelementptr inbounds nuw i8, ptr %2272, i64 24
  %2304 = load i64, ptr %2303, align 1
  %2305 = getelementptr inbounds nuw i8, ptr %2275, i64 24
  %2306 = load i64, ptr %2305, align 1
  %2307 = xor i64 %2306, %2304
  %2308 = add i64 %2304, %2267
  %2309 = add i64 %2308, %2302
  %2310 = lshr i64 %2307, 32
  %2311 = and i64 %2307, 4294967295
  %2312 = mul nuw i64 %2311, %2310
  %2313 = add i64 %2299, %2312
  %2314 = getelementptr inbounds nuw i8, ptr %2272, i64 32
  %2315 = load i64, ptr %2314, align 1
  %2316 = getelementptr inbounds nuw i8, ptr %2275, i64 32
  %2317 = load i64, ptr %2316, align 1
  %2318 = xor i64 %2317, %2315
  %2319 = add i64 %2315, %2264
  %2320 = lshr i64 %2318, 32
  %2321 = and i64 %2318, 4294967295
  %2322 = mul nuw i64 %2321, %2320
  %2323 = getelementptr inbounds nuw i8, ptr %2272, i64 40
  %2324 = load i64, ptr %2323, align 1
  %2325 = getelementptr inbounds nuw i8, ptr %2275, i64 40
  %2326 = load i64, ptr %2325, align 1
  %2327 = xor i64 %2326, %2324
  %2328 = add i64 %2324, %2265
  %2329 = add i64 %2328, %2322
  %2330 = lshr i64 %2327, 32
  %2331 = and i64 %2327, 4294967295
  %2332 = mul nuw i64 %2331, %2330
  %2333 = add i64 %2319, %2332
  %2334 = getelementptr inbounds nuw i8, ptr %2272, i64 48
  %2335 = load i64, ptr %2334, align 1
  %2336 = getelementptr inbounds nuw i8, ptr %2275, i64 48
  %2337 = load i64, ptr %2336, align 1
  %2338 = xor i64 %2337, %2335
  %2339 = add i64 %2335, %2262
  %2340 = lshr i64 %2338, 32
  %2341 = and i64 %2338, 4294967295
  %2342 = mul nuw i64 %2341, %2340
  %2343 = getelementptr inbounds nuw i8, ptr %2272, i64 56
  %2344 = load i64, ptr %2343, align 1
  %2345 = getelementptr inbounds nuw i8, ptr %2275, i64 56
  %2346 = load i64, ptr %2345, align 1
  %2347 = xor i64 %2346, %2344
  %2348 = add i64 %2344, %2263
  %2349 = add i64 %2348, %2342
  %2350 = lshr i64 %2347, 32
  %2351 = and i64 %2347, 4294967295
  %2352 = mul nuw i64 %2351, %2350
  %2353 = add i64 %2339, %2352
  %2354 = add nuw i64 %2270, 1
  %2355 = icmp eq i64 %2354, %2257
  br i1 %2355, label %2356, label %2261, !llvm.loop !61

2356:                                             ; preds = %2261, %2248
  %2357 = phi i64 [ %2249, %2248 ], [ %2353, %2261 ]
  %2358 = phi i64 [ %2250, %2248 ], [ %2349, %2261 ]
  %2359 = phi i64 [ %2251, %2248 ], [ %2333, %2261 ]
  %2360 = phi i64 [ %2252, %2248 ], [ %2329, %2261 ]
  %2361 = phi i64 [ %2253, %2248 ], [ %2313, %2261 ]
  %2362 = phi i64 [ %2254, %2248 ], [ %2309, %2261 ]
  %2363 = phi i64 [ %2255, %2248 ], [ %2293, %2261 ]
  %2364 = phi i64 [ %2256, %2248 ], [ %2289, %2261 ]
  %2365 = zext i32 %2062 to i64
  %2366 = getelementptr inbounds nuw i8, ptr %2071, i64 %2365
  %2367 = getelementptr inbounds i8, ptr %2366, i64 -64
  br label %2377

2368:                                             ; preds = %2045
  %2369 = sub nuw nsw i32 64, %2062
  %2370 = zext nneg i32 %2369 to i64
  %2371 = icmp ne i32 %2062, 0
  tail call void @llvm.assume(i1 %2371)
  %2372 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %2373 = sub nsw i64 0, %2370
  %2374 = getelementptr inbounds i8, ptr %2061, i64 %2373
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr nonnull align 1 %2374, i64 %2370, i1 false)
  %2375 = getelementptr inbounds nuw i8, ptr %7, i64 %2370
  %2376 = zext nneg i32 %2062 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2375, ptr nonnull align 64 %2372, i64 %2376, i1 false)
  br label %2377

2377:                                             ; preds = %2368, %2356
  %2378 = phi i64 [ %2357, %2356 ], [ %2060, %2368 ]
  %2379 = phi i64 [ %2358, %2356 ], [ %2058, %2368 ]
  %2380 = phi i64 [ %2359, %2356 ], [ %2056, %2368 ]
  %2381 = phi i64 [ %2360, %2356 ], [ %2054, %2368 ]
  %2382 = phi i64 [ %2361, %2356 ], [ %2052, %2368 ]
  %2383 = phi i64 [ %2362, %2356 ], [ %2050, %2368 ]
  %2384 = phi i64 [ %2363, %2356 ], [ %2048, %2368 ]
  %2385 = phi i64 [ %2364, %2356 ], [ %2046, %2368 ]
  %2386 = phi ptr [ %2367, %2356 ], [ %7, %2368 ]
  %2387 = load i64, ptr %100, align 32
  %2388 = getelementptr inbounds nuw i8, ptr %2041, i64 %2387
  %2389 = getelementptr inbounds i8, ptr %2388, i64 -7
  %2390 = load i64, ptr %2386, align 1
  %2391 = load i64, ptr %2389, align 1
  %2392 = xor i64 %2391, %2390
  %2393 = add i64 %2390, %2384
  %2394 = lshr i64 %2392, 32
  %2395 = and i64 %2392, 4294967295
  %2396 = mul nuw i64 %2395, %2394
  %2397 = getelementptr inbounds nuw i8, ptr %2386, i64 8
  %2398 = load i64, ptr %2397, align 1
  %2399 = getelementptr inbounds nuw i8, ptr %2388, i64 1
  %2400 = load i64, ptr %2399, align 1
  %2401 = xor i64 %2400, %2398
  %2402 = add i64 %2398, %2385
  %2403 = add i64 %2402, %2396
  %2404 = lshr i64 %2401, 32
  %2405 = and i64 %2401, 4294967295
  %2406 = mul nuw i64 %2405, %2404
  %2407 = add i64 %2393, %2406
  %2408 = getelementptr inbounds nuw i8, ptr %2386, i64 16
  %2409 = load i64, ptr %2408, align 1
  %2410 = getelementptr inbounds nuw i8, ptr %2388, i64 9
  %2411 = load i64, ptr %2410, align 1
  %2412 = xor i64 %2411, %2409
  %2413 = add i64 %2409, %2382
  %2414 = lshr i64 %2412, 32
  %2415 = and i64 %2412, 4294967295
  %2416 = mul nuw i64 %2415, %2414
  %2417 = getelementptr inbounds nuw i8, ptr %2386, i64 24
  %2418 = load i64, ptr %2417, align 1
  %2419 = getelementptr inbounds nuw i8, ptr %2388, i64 17
  %2420 = load i64, ptr %2419, align 1
  %2421 = xor i64 %2420, %2418
  %2422 = add i64 %2418, %2383
  %2423 = add i64 %2422, %2416
  %2424 = lshr i64 %2421, 32
  %2425 = and i64 %2421, 4294967295
  %2426 = mul nuw i64 %2425, %2424
  %2427 = add i64 %2413, %2426
  %2428 = getelementptr inbounds nuw i8, ptr %2386, i64 32
  %2429 = load i64, ptr %2428, align 1
  %2430 = getelementptr inbounds nuw i8, ptr %2388, i64 25
  %2431 = load i64, ptr %2430, align 1
  %2432 = xor i64 %2431, %2429
  %2433 = add i64 %2429, %2380
  %2434 = lshr i64 %2432, 32
  %2435 = and i64 %2432, 4294967295
  %2436 = mul nuw i64 %2435, %2434
  %2437 = getelementptr inbounds nuw i8, ptr %2386, i64 40
  %2438 = load i64, ptr %2437, align 1
  %2439 = getelementptr inbounds nuw i8, ptr %2388, i64 33
  %2440 = load i64, ptr %2439, align 1
  %2441 = xor i64 %2440, %2438
  %2442 = add i64 %2438, %2381
  %2443 = add i64 %2442, %2436
  %2444 = lshr i64 %2441, 32
  %2445 = and i64 %2441, 4294967295
  %2446 = mul nuw i64 %2445, %2444
  %2447 = add i64 %2433, %2446
  %2448 = getelementptr inbounds nuw i8, ptr %2386, i64 48
  %2449 = load i64, ptr %2448, align 1
  %2450 = getelementptr inbounds nuw i8, ptr %2388, i64 41
  %2451 = load i64, ptr %2450, align 1
  %2452 = xor i64 %2451, %2449
  %2453 = add i64 %2449, %2378
  %2454 = lshr i64 %2452, 32
  %2455 = and i64 %2452, 4294967295
  %2456 = mul nuw i64 %2455, %2454
  %2457 = getelementptr inbounds nuw i8, ptr %2386, i64 56
  %2458 = load i64, ptr %2457, align 1
  %2459 = getelementptr inbounds nuw i8, ptr %2388, i64 49
  %2460 = load i64, ptr %2459, align 1
  %2461 = xor i64 %2460, %2458
  %2462 = add i64 %2458, %2379
  %2463 = add i64 %2462, %2456
  %2464 = lshr i64 %2461, 32
  %2465 = and i64 %2461, 4294967295
  %2466 = mul nuw i64 %2465, %2464
  %2467 = add i64 %2453, %2466
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #28
  %2468 = getelementptr inbounds nuw i8, ptr %12, i64 75
  %2469 = getelementptr inbounds nuw i8, ptr %2038, i64 11
  %2470 = select i1 %2039, ptr %2468, ptr %2469
  %2471 = mul i64 %2043, -7046029288634856825
  %2472 = load i64, ptr %2470, align 1, !alias.scope !78, !noalias !83
  %2473 = xor i64 %2472, %2403
  %2474 = getelementptr inbounds nuw i8, ptr %12, i64 83
  %2475 = getelementptr inbounds nuw i8, ptr %2038, i64 19
  %2476 = select i1 %2039, ptr %2474, ptr %2475
  %2477 = load i64, ptr %2476, align 1, !alias.scope !78, !noalias !83
  %2478 = xor i64 %2477, %2407
  %2479 = zext i64 %2473 to i128
  %2480 = zext i64 %2478 to i128
  %2481 = mul nuw i128 %2480, %2479
  %2482 = lshr i128 %2481, 64
  %2483 = xor i128 %2482, %2481
  %2484 = trunc i128 %2483 to i64
  %2485 = add i64 %2471, %2484
  %2486 = getelementptr inbounds nuw i8, ptr %12, i64 91
  %2487 = getelementptr inbounds nuw i8, ptr %2038, i64 27
  %2488 = select i1 %2039, ptr %2486, ptr %2487
  %2489 = load i64, ptr %2488, align 1, !alias.scope !78, !noalias !83
  %2490 = xor i64 %2489, %2423
  %2491 = getelementptr inbounds nuw i8, ptr %12, i64 99
  %2492 = getelementptr inbounds nuw i8, ptr %2038, i64 35
  %2493 = select i1 %2039, ptr %2491, ptr %2492
  %2494 = load i64, ptr %2493, align 1, !alias.scope !78, !noalias !83
  %2495 = xor i64 %2494, %2427
  %2496 = zext i64 %2490 to i128
  %2497 = zext i64 %2495 to i128
  %2498 = mul nuw i128 %2497, %2496
  %2499 = lshr i128 %2498, 64
  %2500 = xor i128 %2499, %2498
  %2501 = trunc i128 %2500 to i64
  %2502 = add i64 %2485, %2501
  %2503 = getelementptr inbounds nuw i8, ptr %12, i64 107
  %2504 = getelementptr inbounds nuw i8, ptr %2038, i64 43
  %2505 = select i1 %2039, ptr %2503, ptr %2504
  %2506 = load i64, ptr %2505, align 1, !alias.scope !78, !noalias !83
  %2507 = xor i64 %2506, %2443
  %2508 = getelementptr inbounds nuw i8, ptr %12, i64 115
  %2509 = getelementptr inbounds nuw i8, ptr %2038, i64 51
  %2510 = select i1 %2039, ptr %2508, ptr %2509
  %2511 = load i64, ptr %2510, align 1, !alias.scope !78, !noalias !83
  %2512 = xor i64 %2511, %2447
  %2513 = zext i64 %2507 to i128
  %2514 = zext i64 %2512 to i128
  %2515 = mul nuw i128 %2514, %2513
  %2516 = lshr i128 %2515, 64
  %2517 = xor i128 %2516, %2515
  %2518 = trunc i128 %2517 to i64
  %2519 = add i64 %2502, %2518
  %2520 = getelementptr inbounds nuw i8, ptr %12, i64 123
  %2521 = getelementptr inbounds nuw i8, ptr %2038, i64 59
  %2522 = select i1 %2039, ptr %2520, ptr %2521
  %2523 = load i64, ptr %2522, align 1, !alias.scope !78, !noalias !83
  %2524 = xor i64 %2523, %2463
  %2525 = getelementptr inbounds nuw i8, ptr %12, i64 131
  %2526 = getelementptr inbounds nuw i8, ptr %2038, i64 67
  %2527 = select i1 %2039, ptr %2525, ptr %2526
  %2528 = load i64, ptr %2527, align 1, !alias.scope !78, !noalias !83
  %2529 = xor i64 %2528, %2467
  %2530 = zext i64 %2524 to i128
  %2531 = zext i64 %2529 to i128
  %2532 = mul nuw i128 %2531, %2530
  %2533 = lshr i128 %2532, 64
  %2534 = xor i128 %2533, %2532
  %2535 = trunc i128 %2534 to i64
  %2536 = add i64 %2519, %2535
  %2537 = lshr i64 %2536, 37
  %2538 = xor i64 %2537, %2536
  %2539 = mul i64 %2538, 1609587791953885689
  %2540 = lshr i64 %2539, 32
  %2541 = xor i64 %2540, %2539
  br label %2893

2542:                                             ; preds = %2037
  %2543 = getelementptr inbounds nuw i8, ptr %12, i64 516
  %2544 = load i32, ptr %2543, align 4
  %2545 = icmp eq i32 %2544, 0
  %2546 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %2547 = icmp samesign ult i64 %2043, 17
  br i1 %2545, label %2699, label %2548

2548:                                             ; preds = %2542
  %2549 = getelementptr inbounds nuw i8, ptr %12, i64 552
  %2550 = load i64, ptr %2549, align 8
  br i1 %2547, label %2551, label %2553

2551:                                             ; preds = %2548
  %2552 = call i64 @target_0to16(ptr noundef nonnull %2546, i64 noundef range(i64 0, 241) %2043, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2550) #28
  br label %2893

2553:                                             ; preds = %2548
  %2554 = icmp samesign ult i64 %2043, 129
  br i1 %2554, label %2555, label %2697

2555:                                             ; preds = %2553
  %2556 = mul i64 %2043, -7046029288634856825
  %2557 = icmp samesign ugt i64 %2043, 32
  br i1 %2557, label %2558, label %2660

2558:                                             ; preds = %2555
  %2559 = icmp samesign ugt i64 %2043, 64
  br i1 %2559, label %2560, label %2627

2560:                                             ; preds = %2558
  %2561 = icmp samesign ugt i64 %2043, 96
  br i1 %2561, label %2562, label %2594

2562:                                             ; preds = %2560
  %2563 = getelementptr inbounds nuw i8, ptr %12, i64 304
  %2564 = load i64, ptr %2563, align 16
  %2565 = getelementptr inbounds nuw i8, ptr %12, i64 312
  %2566 = load i64, ptr %2565, align 8
  %2567 = add i64 %2550, 4554437623014685352
  %2568 = xor i64 %2564, %2567
  %2569 = sub i64 2111919702937427193, %2550
  %2570 = xor i64 %2566, %2569
  %2571 = zext i64 %2568 to i128
  %2572 = zext i64 %2570 to i128
  %2573 = mul nuw i128 %2572, %2571
  %2574 = lshr i128 %2573, 64
  %2575 = xor i128 %2574, %2573
  %2576 = trunc i128 %2575 to i64
  %2577 = add i64 %2556, %2576
  %2578 = getelementptr inbounds nuw i8, ptr %2546, i64 %2043
  %2579 = getelementptr inbounds i8, ptr %2578, i64 -64
  %2580 = load i64, ptr %2579, align 1
  %2581 = getelementptr inbounds i8, ptr %2578, i64 -56
  %2582 = load i64, ptr %2581, align 1
  %2583 = add i64 %2550, 3556072174620004746
  %2584 = xor i64 %2580, %2583
  %2585 = sub i64 7238261902898274248, %2550
  %2586 = xor i64 %2582, %2585
  %2587 = zext i64 %2584 to i128
  %2588 = zext i64 %2586 to i128
  %2589 = mul nuw i128 %2588, %2587
  %2590 = lshr i128 %2589, 64
  %2591 = xor i128 %2590, %2589
  %2592 = trunc i128 %2591 to i64
  %2593 = add i64 %2577, %2592
  br label %2594

2594:                                             ; preds = %2562, %2560
  %2595 = phi i64 [ %2593, %2562 ], [ %2556, %2560 ]
  %2596 = getelementptr inbounds nuw i8, ptr %12, i64 288
  %2597 = load i64, ptr %2596, align 32
  %2598 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %2599 = load i64, ptr %2598, align 8
  %2600 = add i64 %2550, -3818837453329782724
  %2601 = xor i64 %2597, %2600
  %2602 = sub i64 -6688317018830679928, %2550
  %2603 = xor i64 %2599, %2602
  %2604 = zext i64 %2601 to i128
  %2605 = zext i64 %2603 to i128
  %2606 = mul nuw i128 %2605, %2604
  %2607 = lshr i128 %2606, 64
  %2608 = xor i128 %2607, %2606
  %2609 = trunc i128 %2608 to i64
  %2610 = add i64 %2595, %2609
  %2611 = getelementptr inbounds nuw i8, ptr %2546, i64 %2043
  %2612 = getelementptr inbounds i8, ptr %2611, i64 -48
  %2613 = load i64, ptr %2612, align 1
  %2614 = getelementptr inbounds i8, ptr %2611, i64 -40
  %2615 = load i64, ptr %2614, align 1
  %2616 = add i64 %2550, 5690594596133299313
  %2617 = xor i64 %2613, %2616
  %2618 = sub i64 -2833645246901970632, %2550
  %2619 = xor i64 %2615, %2618
  %2620 = zext i64 %2617 to i128
  %2621 = zext i64 %2619 to i128
  %2622 = mul nuw i128 %2621, %2620
  %2623 = lshr i128 %2622, 64
  %2624 = xor i128 %2623, %2622
  %2625 = trunc i128 %2624 to i64
  %2626 = add i64 %2610, %2625
  br label %2627

2627:                                             ; preds = %2594, %2558
  %2628 = phi i64 [ %2626, %2594 ], [ %2556, %2558 ]
  %2629 = getelementptr inbounds nuw i8, ptr %12, i64 272
  %2630 = load i64, ptr %2629, align 16
  %2631 = getelementptr inbounds nuw i8, ptr %12, i64 280
  %2632 = load i64, ptr %2631, align 8
  %2633 = add i64 %2550, 8711581037947681227
  %2634 = xor i64 %2630, %2633
  %2635 = sub i64 2410270004345854594, %2550
  %2636 = xor i64 %2632, %2635
  %2637 = zext i64 %2634 to i128
  %2638 = zext i64 %2636 to i128
  %2639 = mul nuw i128 %2638, %2637
  %2640 = lshr i128 %2639, 64
  %2641 = xor i128 %2640, %2639
  %2642 = trunc i128 %2641 to i64
  %2643 = add i64 %2628, %2642
  %2644 = getelementptr inbounds nuw i8, ptr %2546, i64 %2043
  %2645 = getelementptr inbounds i8, ptr %2644, i64 -32
  %2646 = load i64, ptr %2645, align 1
  %2647 = getelementptr inbounds i8, ptr %2644, i64 -24
  %2648 = load i64, ptr %2647, align 1
  %2649 = add i64 %2550, -8204357891075471176
  %2650 = xor i64 %2646, %2649
  %2651 = sub i64 5487137525590930912, %2550
  %2652 = xor i64 %2648, %2651
  %2653 = zext i64 %2650 to i128
  %2654 = zext i64 %2652 to i128
  %2655 = mul nuw i128 %2654, %2653
  %2656 = lshr i128 %2655, 64
  %2657 = xor i128 %2656, %2655
  %2658 = trunc i128 %2657 to i64
  %2659 = add i64 %2643, %2658
  br label %2660

2660:                                             ; preds = %2627, %2555
  %2661 = phi i64 [ %2659, %2627 ], [ %2556, %2555 ]
  %2662 = load i64, ptr %2546, align 64
  %2663 = getelementptr inbounds nuw i8, ptr %12, i64 264
  %2664 = load i64, ptr %2663, align 8
  %2665 = add i64 %2550, -4734510112055689544
  %2666 = xor i64 %2662, %2665
  %2667 = sub i64 2066345149520216444, %2550
  %2668 = xor i64 %2664, %2667
  %2669 = zext i64 %2666 to i128
  %2670 = zext i64 %2668 to i128
  %2671 = mul nuw i128 %2670, %2669
  %2672 = lshr i128 %2671, 64
  %2673 = xor i128 %2672, %2671
  %2674 = trunc i128 %2673 to i64
  %2675 = add i64 %2661, %2674
  %2676 = getelementptr inbounds nuw i8, ptr %2546, i64 %2043
  %2677 = getelementptr inbounds i8, ptr %2676, i64 -16
  %2678 = load i64, ptr %2677, align 1
  %2679 = getelementptr inbounds i8, ptr %2676, i64 -8
  %2680 = load i64, ptr %2679, align 1
  %2681 = add i64 %2550, -2623469361688619810
  %2682 = xor i64 %2678, %2681
  %2683 = sub i64 2262974939099578482, %2550
  %2684 = xor i64 %2680, %2683
  %2685 = zext i64 %2682 to i128
  %2686 = zext i64 %2684 to i128
  %2687 = mul nuw i128 %2686, %2685
  %2688 = lshr i128 %2687, 64
  %2689 = xor i128 %2688, %2687
  %2690 = trunc i128 %2689 to i64
  %2691 = add i64 %2675, %2690
  %2692 = lshr i64 %2691, 37
  %2693 = xor i64 %2692, %2691
  %2694 = mul i64 %2693, 1609587791953885689
  %2695 = lshr i64 %2694, 32
  %2696 = xor i64 %2695, %2694
  br label %2893

2697:                                             ; preds = %2553
  %2698 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull %2546, i64 noundef range(i64 0, 241) %2043, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2550) #27
  br label %2893

2699:                                             ; preds = %2542
  br i1 %2547, label %2700, label %2702

2700:                                             ; preds = %2699
  %2701 = call i64 @target_0to16(ptr noundef nonnull %2546, i64 noundef range(i64 0, 241) %2043, ptr noundef nonnull %2041, i64 noundef 0) #28
  br label %2893

2702:                                             ; preds = %2699
  %2703 = icmp samesign ult i64 %2043, 129
  br i1 %2703, label %2704, label %2891

2704:                                             ; preds = %2702
  %2705 = mul i64 %2043, -7046029288634856825
  %2706 = icmp samesign ugt i64 %2043, 32
  br i1 %2706, label %2707, label %2845

2707:                                             ; preds = %2704
  %2708 = icmp samesign ugt i64 %2043, 64
  br i1 %2708, label %2709, label %2800

2709:                                             ; preds = %2707
  %2710 = icmp samesign ugt i64 %2043, 96
  br i1 %2710, label %2711, label %2755

2711:                                             ; preds = %2709
  %2712 = getelementptr inbounds nuw i8, ptr %12, i64 304
  %2713 = getelementptr inbounds nuw i8, ptr %12, i64 160
  %2714 = getelementptr inbounds nuw i8, ptr %2038, i64 96
  %2715 = select i1 %2039, ptr %2713, ptr %2714
  %2716 = load i64, ptr %2712, align 16
  %2717 = getelementptr inbounds nuw i8, ptr %12, i64 312
  %2718 = load i64, ptr %2717, align 8
  %2719 = load i64, ptr %2715, align 1
  %2720 = xor i64 %2719, %2716
  %2721 = getelementptr inbounds nuw i8, ptr %12, i64 168
  %2722 = getelementptr inbounds nuw i8, ptr %2038, i64 104
  %2723 = select i1 %2039, ptr %2721, ptr %2722
  %2724 = load i64, ptr %2723, align 1
  %2725 = xor i64 %2724, %2718
  %2726 = zext i64 %2720 to i128
  %2727 = zext i64 %2725 to i128
  %2728 = mul nuw i128 %2727, %2726
  %2729 = lshr i128 %2728, 64
  %2730 = xor i128 %2729, %2728
  %2731 = trunc i128 %2730 to i64
  %2732 = add i64 %2705, %2731
  %2733 = getelementptr inbounds nuw i8, ptr %2546, i64 %2043
  %2734 = getelementptr inbounds i8, ptr %2733, i64 -64
  %2735 = getelementptr inbounds nuw i8, ptr %12, i64 176
  %2736 = getelementptr inbounds nuw i8, ptr %2038, i64 112
  %2737 = select i1 %2039, ptr %2735, ptr %2736
  %2738 = load i64, ptr %2734, align 1
  %2739 = getelementptr inbounds i8, ptr %2733, i64 -56
  %2740 = load i64, ptr %2739, align 1
  %2741 = load i64, ptr %2737, align 1
  %2742 = xor i64 %2741, %2738
  %2743 = getelementptr inbounds nuw i8, ptr %12, i64 184
  %2744 = getelementptr inbounds nuw i8, ptr %2038, i64 120
  %2745 = select i1 %2039, ptr %2743, ptr %2744
  %2746 = load i64, ptr %2745, align 1
  %2747 = xor i64 %2746, %2740
  %2748 = zext i64 %2742 to i128
  %2749 = zext i64 %2747 to i128
  %2750 = mul nuw i128 %2749, %2748
  %2751 = lshr i128 %2750, 64
  %2752 = xor i128 %2751, %2750
  %2753 = trunc i128 %2752 to i64
  %2754 = add i64 %2732, %2753
  br label %2755

2755:                                             ; preds = %2711, %2709
  %2756 = phi i64 [ %2754, %2711 ], [ %2705, %2709 ]
  %2757 = getelementptr inbounds nuw i8, ptr %12, i64 288
  %2758 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %2759 = getelementptr inbounds nuw i8, ptr %2038, i64 64
  %2760 = select i1 %2039, ptr %2758, ptr %2759
  %2761 = load i64, ptr %2757, align 32
  %2762 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %2763 = load i64, ptr %2762, align 8
  %2764 = load i64, ptr %2760, align 1
  %2765 = xor i64 %2764, %2761
  %2766 = getelementptr inbounds nuw i8, ptr %12, i64 136
  %2767 = getelementptr inbounds nuw i8, ptr %2038, i64 72
  %2768 = select i1 %2039, ptr %2766, ptr %2767
  %2769 = load i64, ptr %2768, align 1
  %2770 = xor i64 %2769, %2763
  %2771 = zext i64 %2765 to i128
  %2772 = zext i64 %2770 to i128
  %2773 = mul nuw i128 %2772, %2771
  %2774 = lshr i128 %2773, 64
  %2775 = xor i128 %2774, %2773
  %2776 = trunc i128 %2775 to i64
  %2777 = add i64 %2756, %2776
  %2778 = getelementptr inbounds nuw i8, ptr %2546, i64 %2043
  %2779 = getelementptr inbounds i8, ptr %2778, i64 -48
  %2780 = getelementptr inbounds nuw i8, ptr %12, i64 144
  %2781 = getelementptr inbounds nuw i8, ptr %2038, i64 80
  %2782 = select i1 %2039, ptr %2780, ptr %2781
  %2783 = load i64, ptr %2779, align 1
  %2784 = getelementptr inbounds i8, ptr %2778, i64 -40
  %2785 = load i64, ptr %2784, align 1
  %2786 = load i64, ptr %2782, align 1
  %2787 = xor i64 %2786, %2783
  %2788 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %2789 = getelementptr inbounds nuw i8, ptr %2038, i64 88
  %2790 = select i1 %2039, ptr %2788, ptr %2789
  %2791 = load i64, ptr %2790, align 1
  %2792 = xor i64 %2791, %2785
  %2793 = zext i64 %2787 to i128
  %2794 = zext i64 %2792 to i128
  %2795 = mul nuw i128 %2794, %2793
  %2796 = lshr i128 %2795, 64
  %2797 = xor i128 %2796, %2795
  %2798 = trunc i128 %2797 to i64
  %2799 = add i64 %2777, %2798
  br label %2800

2800:                                             ; preds = %2755, %2707
  %2801 = phi i64 [ %2799, %2755 ], [ %2705, %2707 ]
  %2802 = getelementptr inbounds nuw i8, ptr %12, i64 272
  %2803 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %2804 = getelementptr inbounds nuw i8, ptr %2038, i64 32
  %2805 = select i1 %2039, ptr %2803, ptr %2804
  %2806 = load i64, ptr %2802, align 16
  %2807 = getelementptr inbounds nuw i8, ptr %12, i64 280
  %2808 = load i64, ptr %2807, align 8
  %2809 = load i64, ptr %2805, align 1
  %2810 = xor i64 %2809, %2806
  %2811 = getelementptr inbounds nuw i8, ptr %12, i64 104
  %2812 = getelementptr inbounds nuw i8, ptr %2038, i64 40
  %2813 = select i1 %2039, ptr %2811, ptr %2812
  %2814 = load i64, ptr %2813, align 1
  %2815 = xor i64 %2814, %2808
  %2816 = zext i64 %2810 to i128
  %2817 = zext i64 %2815 to i128
  %2818 = mul nuw i128 %2817, %2816
  %2819 = lshr i128 %2818, 64
  %2820 = xor i128 %2819, %2818
  %2821 = trunc i128 %2820 to i64
  %2822 = add i64 %2801, %2821
  %2823 = getelementptr inbounds nuw i8, ptr %2546, i64 %2043
  %2824 = getelementptr inbounds i8, ptr %2823, i64 -32
  %2825 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %2826 = getelementptr inbounds nuw i8, ptr %2038, i64 48
  %2827 = select i1 %2039, ptr %2825, ptr %2826
  %2828 = load i64, ptr %2824, align 1
  %2829 = getelementptr inbounds i8, ptr %2823, i64 -24
  %2830 = load i64, ptr %2829, align 1
  %2831 = load i64, ptr %2827, align 1
  %2832 = xor i64 %2831, %2828
  %2833 = getelementptr inbounds nuw i8, ptr %12, i64 120
  %2834 = getelementptr inbounds nuw i8, ptr %2038, i64 56
  %2835 = select i1 %2039, ptr %2833, ptr %2834
  %2836 = load i64, ptr %2835, align 1
  %2837 = xor i64 %2836, %2830
  %2838 = zext i64 %2832 to i128
  %2839 = zext i64 %2837 to i128
  %2840 = mul nuw i128 %2839, %2838
  %2841 = lshr i128 %2840, 64
  %2842 = xor i128 %2841, %2840
  %2843 = trunc i128 %2842 to i64
  %2844 = add i64 %2822, %2843
  br label %2845

2845:                                             ; preds = %2800, %2704
  %2846 = phi i64 [ %2844, %2800 ], [ %2705, %2704 ]
  %2847 = load i64, ptr %2546, align 64
  %2848 = getelementptr inbounds nuw i8, ptr %12, i64 264
  %2849 = load i64, ptr %2848, align 8
  %2850 = load i64, ptr %2041, align 1
  %2851 = xor i64 %2850, %2847
  %2852 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %2853 = getelementptr inbounds nuw i8, ptr %2038, i64 8
  %2854 = select i1 %2039, ptr %2852, ptr %2853
  %2855 = load i64, ptr %2854, align 1
  %2856 = xor i64 %2855, %2849
  %2857 = zext i64 %2851 to i128
  %2858 = zext i64 %2856 to i128
  %2859 = mul nuw i128 %2858, %2857
  %2860 = lshr i128 %2859, 64
  %2861 = xor i128 %2860, %2859
  %2862 = trunc i128 %2861 to i64
  %2863 = add i64 %2846, %2862
  %2864 = getelementptr inbounds nuw i8, ptr %2546, i64 %2043
  %2865 = getelementptr inbounds i8, ptr %2864, i64 -16
  %2866 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %2867 = getelementptr inbounds nuw i8, ptr %2038, i64 16
  %2868 = select i1 %2039, ptr %2866, ptr %2867
  %2869 = load i64, ptr %2865, align 1
  %2870 = getelementptr inbounds i8, ptr %2864, i64 -8
  %2871 = load i64, ptr %2870, align 1
  %2872 = load i64, ptr %2868, align 1
  %2873 = xor i64 %2872, %2869
  %2874 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %2875 = getelementptr inbounds nuw i8, ptr %2038, i64 24
  %2876 = select i1 %2039, ptr %2874, ptr %2875
  %2877 = load i64, ptr %2876, align 1
  %2878 = xor i64 %2877, %2871
  %2879 = zext i64 %2873 to i128
  %2880 = zext i64 %2878 to i128
  %2881 = mul nuw i128 %2880, %2879
  %2882 = lshr i128 %2881, 64
  %2883 = xor i128 %2882, %2881
  %2884 = trunc i128 %2883 to i64
  %2885 = add i64 %2863, %2884
  %2886 = lshr i64 %2885, 37
  %2887 = xor i64 %2886, %2885
  %2888 = mul i64 %2887, 1609587791953885689
  %2889 = lshr i64 %2888, 32
  %2890 = xor i64 %2889, %2888
  br label %2893

2891:                                             ; preds = %2702
  %2892 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull %2546, i64 noundef range(i64 0, 241) %2043, ptr noundef nonnull %2041, i64 noundef 0) #27
  br label %2893

2893:                                             ; preds = %2377, %2551, %2660, %2697, %2700, %2845, %2891
  %2894 = phi i64 [ %2541, %2377 ], [ %2552, %2551 ], [ %2696, %2660 ], [ %2698, %2697 ], [ %2701, %2700 ], [ %2890, %2845 ], [ %2892, %2891 ]
  store i64 %2894, ptr %5, align 8
  br label %2896

2895:                                             ; preds = %392
  tail call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.5, i32 noundef 309, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_hashStream) #29
  unreachable

2896:                                             ; preds = %584, %816, %2032, %2893, %377
  %2897 = phi i32 [ 3, %377 ], [ 0, %2893 ], [ 0, %2032 ], [ 0, %816 ], [ 0, %584 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #28
  ret i32 %2897
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @XSUM_parseLine1(ptr nocapture noundef nonnull initializes((16, 28)) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #14 {
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 32) #27
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %8, align 8
  %9 = icmp eq ptr %6, null
  br i1 %9, label %101, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %12 = load i8, ptr %11, align 1
  switch i8 %12, label %54 [
    i8 0, label %101
    i8 40, label %13
  ]

13:                                               ; preds = %10
  %14 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 32) #27
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %6 to i64
  %17 = sub i64 %15, %16
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %101, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %14, i64 -1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 61
  br i1 %22, label %23, label %101

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %14, i64 -2
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 32
  br i1 %26, label %27, label %101

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %14, i64 -3
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 41
  br i1 %30, label %31, label %101

31:                                               ; preds = %27
  store i8 0, ptr %28, align 1
  store i8 0, ptr %6, align 1
  %32 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.94) #27
  %33 = icmp ne ptr %32, null
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 1
  %36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #27
  %37 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) @.str.95, i64 4)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 3, ptr %8, align 8
  br label %40

40:                                               ; preds = %39, %31
  %41 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1, ptr noundef nonnull dereferenceable(5) @.str.96, i64 5)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, ptr %8, align 8
  br label %44

44:                                               ; preds = %43, %40
  %45 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1, ptr noundef nonnull dereferenceable(5) @.str.97, i64 5)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, ptr %8, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) @.str.98, i64 6)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %8, align 8
  br label %61

53:                                               ; preds = %48
  store i32 2, ptr %8, align 8
  br label %61

54:                                               ; preds = %10
  %55 = ptrtoint ptr %6 to i64
  %56 = ptrtoint ptr %1 to i64
  %57 = sub i64 %55, %56
  switch i64 %57, label %61 [
    i64 8, label %58
    i64 32, label %60
    i64 21, label %59
  ]

58:                                               ; preds = %54
  store i32 0, ptr %8, align 8
  br label %61

59:                                               ; preds = %54
  store i32 3, ptr %8, align 8
  br label %61

60:                                               ; preds = %54
  store i32 2, ptr %8, align 8
  br label %61

61:                                               ; preds = %54, %51, %53, %59, %58, %60
  %62 = phi i32 [ 2, %53 ], [ 3, %59 ], [ 0, %58 ], [ 2, %60 ], [ %52, %51 ], [ 1, %54 ]
  %63 = phi i64 [ %36, %53 ], [ 21, %59 ], [ 8, %58 ], [ 32, %60 ], [ %36, %51 ], [ %57, %54 ]
  %64 = phi ptr [ %35, %53 ], [ %1, %59 ], [ %1, %58 ], [ %1, %60 ], [ %35, %51 ], [ %1, %54 ]
  %65 = phi i32 [ %34, %53 ], [ %2, %59 ], [ %2, %58 ], [ %2, %60 ], [ %34, %51 ], [ %2, %54 ]
  %66 = shl nuw i32 1, %62
  %67 = and i32 %66, %4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %101, label %69

69:                                               ; preds = %61
  switch i64 %63, label %101 [
    i64 8, label %70
    i64 16, label %75
    i64 21, label %79
    i64 32, label %88
  ]

70:                                               ; preds = %69
  %71 = icmp eq i32 %62, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %70
  %73 = tail call fastcc i32 @XSUM_canonicalFromString(ptr noundef %0, i64 noundef 4, ptr noundef %64, i32 noundef %65)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %93, label %101

75:                                               ; preds = %69
  switch i32 %62, label %101 [
    i32 1, label %76
    i32 3, label %76
  ]

76:                                               ; preds = %75, %75
  %77 = tail call fastcc i32 @XSUM_canonicalFromString(ptr noundef %0, i64 noundef 8, ptr noundef %64, i32 noundef %65)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %101

79:                                               ; preds = %69
  %80 = icmp eq i32 %62, 3
  br i1 %80, label %81, label %101

81:                                               ; preds = %79
  %82 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %64, ptr noundef nonnull dereferenceable(5) @.str.99, i64 5)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = getelementptr inbounds nuw i8, ptr %64, i64 5
  %86 = tail call fastcc i32 @XSUM_canonicalFromString(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %85, i32 noundef %65)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %101

88:                                               ; preds = %69
  %89 = icmp eq i32 %62, 2
  br i1 %89, label %90, label %101

90:                                               ; preds = %88
  %91 = tail call fastcc i32 @XSUM_canonicalFromString(ptr noundef %0, i64 noundef 16, ptr noundef %64, i32 noundef %65)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %72, %76, %84, %90
  %94 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %95 = icmp eq i32 %3, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %94) #27
  %98 = tail call fastcc ptr @XSUM_filenameUnescape(ptr noundef nonnull %94, i64 noundef %97)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %93, %96
  store ptr %94, ptr %7, align 8
  br label %101

101:                                              ; preds = %19, %23, %27, %13, %100, %96, %69, %88, %81, %79, %75, %70, %61, %10, %5, %72, %76, %84, %90
  %102 = phi i32 [ 1, %90 ], [ 1, %84 ], [ 1, %76 ], [ 1, %72 ], [ 1, %10 ], [ 1, %5 ], [ 1, %61 ], [ 1, %70 ], [ 1, %75 ], [ 1, %79 ], [ 1, %81 ], [ 1, %88 ], [ 1, %69 ], [ 0, %100 ], [ 1, %96 ], [ 1, %13 ], [ 1, %27 ], [ 1, %23 ], [ 1, %19 ]
  ret i32 %102
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @XSUM_canonicalFromString(ptr nocapture noundef nonnull writeonly %0, i64 noundef range(i64 4, 17) %1, ptr nocapture noundef readonly %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #15 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %56

6:                                                ; preds = %4, %49
  %7 = phi i64 [ %54, %49 ], [ 0, %4 ]
  %8 = shl nuw nsw i64 %7, 1
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = add i8 %10, -48
  %13 = icmp ult i8 %12, 10
  br i1 %13, label %23, label %14

14:                                               ; preds = %6
  %15 = add i8 %10, -65
  %16 = icmp ult i8 %15, 6
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = add i8 %10, -97
  %19 = icmp ult i8 %18, 6
  %20 = add nsw i32 %11, -87
  br i1 %19, label %25, label %108

21:                                               ; preds = %14
  %22 = add nsw i32 %11, -55
  br label %25

23:                                               ; preds = %6
  %24 = add nsw i32 %11, -48
  br label %25

25:                                               ; preds = %23, %21, %17
  %26 = phi i32 [ %24, %23 ], [ %22, %21 ], [ %20, %17 ]
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %108, label %28

28:                                               ; preds = %25
  %29 = or disjoint i64 %8, 1
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %29
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  %33 = add i8 %31, -48
  %34 = icmp ult i8 %33, 10
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = add i8 %31, -65
  %37 = icmp ult i8 %36, 6
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = add i8 %31, -97
  %40 = icmp ult i8 %39, 6
  %41 = add nsw i32 %32, -87
  br i1 %40, label %46, label %108

42:                                               ; preds = %35
  %43 = add nsw i32 %32, -55
  br label %46

44:                                               ; preds = %28
  %45 = add nsw i32 %32, -48
  br label %46

46:                                               ; preds = %44, %42, %38
  %47 = phi i32 [ %45, %44 ], [ %43, %42 ], [ %41, %38 ]
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %108, label %49

49:                                               ; preds = %46
  %50 = shl nuw nsw i32 %26, 4
  %51 = or i32 %47, %50
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  store i8 %52, ptr %53, align 1
  %54 = add nuw nsw i64 %7, 1
  %55 = icmp eq i64 %54, %1
  br i1 %55, label %108, label %6, !llvm.loop !86

56:                                               ; preds = %4, %101
  %57 = phi i64 [ %106, %101 ], [ 0, %4 ]
  %58 = xor i64 %57, -1
  %59 = add nsw i64 %1, %58
  %60 = shl nsw i64 %59, 1
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = add i8 %62, -48
  %65 = icmp ult i8 %64, 10
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = add nsw i32 %63, -48
  br label %77

68:                                               ; preds = %56
  %69 = add i8 %62, -65
  %70 = icmp ult i8 %69, 6
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = add nsw i32 %63, -55
  br label %77

73:                                               ; preds = %68
  %74 = add i8 %62, -97
  %75 = icmp ult i8 %74, 6
  %76 = add nsw i32 %63, -87
  br i1 %75, label %77, label %108

77:                                               ; preds = %73, %66, %71
  %78 = phi i32 [ %67, %66 ], [ %72, %71 ], [ %76, %73 ]
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %77
  %81 = or disjoint i64 %60, 1
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %83 = load i8, ptr %82, align 1
  %84 = sext i8 %83 to i32
  %85 = add i8 %83, -48
  %86 = icmp ult i8 %85, 10
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = add nsw i32 %84, -48
  br label %98

89:                                               ; preds = %80
  %90 = add i8 %83, -65
  %91 = icmp ult i8 %90, 6
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = add nsw i32 %84, -55
  br label %98

94:                                               ; preds = %89
  %95 = add i8 %83, -97
  %96 = icmp ult i8 %95, 6
  %97 = add nsw i32 %84, -87
  br i1 %96, label %98, label %108

98:                                               ; preds = %94, %87, %92
  %99 = phi i32 [ %88, %87 ], [ %93, %92 ], [ %97, %94 ]
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = shl nuw nsw i32 %78, 4
  %103 = or i32 %99, %102
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 %57
  store i8 %104, ptr %105, align 1
  %106 = add nuw nsw i64 %57, 1
  %107 = icmp eq i64 %106, %1
  br i1 %107, label %108, label %56, !llvm.loop !86

108:                                              ; preds = %98, %77, %101, %73, %94, %17, %25, %38, %46, %49
  %109 = phi i32 [ 1, %46 ], [ 1, %25 ], [ 0, %49 ], [ 1, %17 ], [ 1, %38 ], [ 1, %98 ], [ 1, %77 ], [ 0, %101 ], [ 1, %73 ], [ 1, %94 ]
  ret i32 %109
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @XSUM_filenameUnescape(ptr noundef %0, i64 noundef %1) unnamed_addr #15 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %2, %17
  %5 = phi i64 [ %21, %17 ], [ 0, %2 ]
  %6 = phi ptr [ %20, %17 ], [ %0, %2 ]
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %17 [
    i8 92, label %9
    i8 0, label %28
  ]

9:                                                ; preds = %4
  %10 = add nuw i64 %5, 1
  %11 = icmp eq i64 %10, %1
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %14 = load i8, ptr %13, align 1
  switch i8 %14, label %28 [
    i8 110, label %17
    i8 114, label %15
    i8 92, label %16
  ]

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %4, %12, %16, %15
  %18 = phi i8 [ 92, %16 ], [ 13, %15 ], [ 10, %12 ], [ %8, %4 ]
  %19 = phi i64 [ %10, %16 ], [ %10, %15 ], [ %10, %12 ], [ %5, %4 ]
  store i8 %18, ptr %6, align 1
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %21 = add i64 %19, 1
  %22 = icmp ult i64 %21, %1
  br i1 %22, label %4, label %23, !llvm.loop !87

23:                                               ; preds = %17, %2
  %24 = phi ptr [ %0, %2 ], [ %20, %17 ]
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8 0, ptr %24, align 1
  br label %28

28:                                               ; preds = %4, %12, %9, %23, %27
  %29 = phi ptr [ %0, %27 ], [ %0, %23 ], [ null, %9 ], [ null, %12 ], [ null, %4 ]
  ret ptr %29
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #18

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %0, ptr nocapture noundef %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %4 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %6 = load i64, ptr %5, align 16, !alias.scope !91, !noalias !88
  %7 = add i64 %6, %2
  store i64 %7, ptr %5, align 16, !alias.scope !91, !noalias !88
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %9 = load i32, ptr %8, align 64, !alias.scope !91, !noalias !88
  %10 = icmp ult i32 %9, 257
  tail call void @llvm.assume(i1 %10)
  %11 = sub nuw nsw i32 256, %9
  %12 = zext nneg i32 %11 to i64
  %13 = icmp ugt i64 %2, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %16 = zext nneg i32 %9 to i64
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 range(i64 1, 0) %2, i1 false), !alias.scope !93
  %18 = trunc nuw nsw i64 %2 to i32
  %19 = load i32, ptr %8, align 64, !alias.scope !91, !noalias !88
  %20 = add i32 %19, %18
  br label %752

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %24 = load ptr, ptr %23, align 8, !alias.scope !91, !noalias !88
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %27 = select i1 %25, ptr %26, ptr %24
  %28 = icmp eq i32 %9, 0
  br i1 %28, label %385, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %31 = zext nneg i32 %9 to i64
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull align 1 %1, i64 %12, i1 false), !alias.scope !93
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %12
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %36 = load i64, ptr %35, align 8, !alias.scope !91, !noalias !88
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %38 = load i64, ptr %37, align 32, !alias.scope !91, !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %39 = load i64, ptr %34, align 8, !alias.scope !94, !noalias !97
  %40 = shl i64 %39, 3
  %41 = getelementptr inbounds nuw i8, ptr %27, i64 %40
  %42 = sub i64 %36, %39
  %43 = icmp ugt i64 %42, 4
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %43, label %45, label %63

45:                                               ; preds = %29
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %47 = load i64, ptr %46, align 8, !alias.scope !101, !noalias !104
  %48 = load i64, ptr %44, align 8, !alias.scope !101, !noalias !104
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 8, !alias.scope !101, !noalias !104
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = load i64, ptr %51, align 8, !alias.scope !101, !noalias !104
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %54 = load i64, ptr %53, align 8, !alias.scope !101, !noalias !104
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %56 = load i64, ptr %55, align 8, !alias.scope !101, !noalias !104
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %58 = load i64, ptr %57, align 8, !alias.scope !101, !noalias !104
  %59 = load i64, ptr %0, align 8, !alias.scope !101, !noalias !104
  %60 = ptrtoint ptr %0 to i64
  %61 = and i64 %60, 7
  %62 = icmp eq i64 %61, 0
  br label %266

63:                                               ; preds = %29
  %64 = getelementptr inbounds nuw i8, ptr %27, i64 %38
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %80 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %82 = getelementptr inbounds nuw i8, ptr %64, i64 24
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %84 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %86 = getelementptr inbounds nuw i8, ptr %64, i64 40
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %88 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %92

92:                                               ; preds = %63, %211
  %93 = phi i64 [ %262, %211 ], [ 4, %63 ]
  %94 = phi ptr [ %261, %211 ], [ %30, %63 ]
  %95 = phi ptr [ %27, %211 ], [ %41, %63 ]
  %96 = phi i64 [ %36, %211 ], [ %42, %63 ]
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i64, ptr %0, align 8, !alias.scope !107, !noalias !110
  %100 = load i64, ptr %71, align 8, !alias.scope !107, !noalias !110
  %101 = load i64, ptr %72, align 8, !alias.scope !107, !noalias !110
  %102 = load i64, ptr %73, align 8, !alias.scope !107, !noalias !110
  %103 = load i64, ptr %74, align 8, !alias.scope !107, !noalias !110
  %104 = load i64, ptr %75, align 8, !alias.scope !107, !noalias !110
  %105 = load i64, ptr %76, align 8, !alias.scope !107, !noalias !110
  %106 = load i64, ptr %77, align 8, !alias.scope !107, !noalias !110
  br label %211

107:                                              ; preds = %92
  %108 = load i64, ptr %65, align 8, !alias.scope !112, !noalias !115
  %109 = load i64, ptr %44, align 8, !alias.scope !112, !noalias !115
  %110 = load i64, ptr %66, align 8, !alias.scope !112, !noalias !115
  %111 = load i64, ptr %67, align 8, !alias.scope !112, !noalias !115
  %112 = load i64, ptr %68, align 8, !alias.scope !112, !noalias !115
  %113 = load i64, ptr %69, align 8, !alias.scope !112, !noalias !115
  %114 = load i64, ptr %70, align 8, !alias.scope !112, !noalias !115
  %115 = load i64, ptr %0, align 8, !alias.scope !112, !noalias !115
  br label %116

116:                                              ; preds = %107, %116
  %117 = phi i64 [ %115, %107 ], [ %144, %116 ]
  %118 = phi i64 [ %114, %107 ], [ %148, %116 ]
  %119 = phi i64 [ %113, %107 ], [ %204, %116 ]
  %120 = phi i64 [ %112, %107 ], [ %208, %116 ]
  %121 = phi i64 [ %111, %107 ], [ %184, %116 ]
  %122 = phi i64 [ %110, %107 ], [ %188, %116 ]
  %123 = phi i64 [ %109, %107 ], [ %164, %116 ]
  %124 = phi i64 [ %108, %107 ], [ %168, %116 ]
  %125 = phi i64 [ 0, %107 ], [ %209, %116 ]
  %126 = shl i64 %125, 6
  %127 = getelementptr inbounds nuw i8, ptr %94, i64 %126
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %128, i32 0, i32 3, i32 1), !noalias !94
  %129 = shl i64 %125, 3
  %130 = getelementptr inbounds nuw i8, ptr %95, i64 %129
  %131 = load i64, ptr %127, align 1
  %132 = load i64, ptr %130, align 1
  %133 = xor i64 %132, %131
  %134 = add i64 %118, %131
  store i64 %134, ptr %70, align 8, !alias.scope !112, !noalias !115
  %135 = lshr i64 %133, 32
  %136 = and i64 %133, 4294967295
  %137 = mul nuw i64 %136, %135
  %138 = add i64 %137, %117
  store i64 %138, ptr %0, align 8, !alias.scope !112, !noalias !115
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 8
  %140 = load i64, ptr %139, align 1
  %141 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %142 = load i64, ptr %141, align 1
  %143 = xor i64 %142, %140
  %144 = add i64 %138, %140
  store i64 %144, ptr %0, align 8, !alias.scope !112, !noalias !115
  %145 = lshr i64 %143, 32
  %146 = and i64 %143, 4294967295
  %147 = mul nuw i64 %146, %145
  %148 = add i64 %147, %134
  store i64 %148, ptr %70, align 8, !alias.scope !112, !noalias !115
  %149 = getelementptr inbounds nuw i8, ptr %127, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = getelementptr inbounds nuw i8, ptr %130, i64 16
  %152 = load i64, ptr %151, align 1
  %153 = xor i64 %152, %150
  %154 = add i64 %124, %150
  store i64 %154, ptr %65, align 8, !alias.scope !112, !noalias !115
  %155 = lshr i64 %153, 32
  %156 = and i64 %153, 4294967295
  %157 = mul nuw i64 %156, %155
  %158 = add i64 %157, %123
  store i64 %158, ptr %44, align 8, !alias.scope !112, !noalias !115
  %159 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds nuw i8, ptr %130, i64 24
  %162 = load i64, ptr %161, align 1
  %163 = xor i64 %162, %160
  %164 = add i64 %158, %160
  store i64 %164, ptr %44, align 8, !alias.scope !112, !noalias !115
  %165 = lshr i64 %163, 32
  %166 = and i64 %163, 4294967295
  %167 = mul nuw i64 %166, %165
  %168 = add i64 %167, %154
  store i64 %168, ptr %65, align 8, !alias.scope !112, !noalias !115
  %169 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %170 = load i64, ptr %169, align 1
  %171 = getelementptr inbounds nuw i8, ptr %130, i64 32
  %172 = load i64, ptr %171, align 1
  %173 = xor i64 %172, %170
  %174 = add i64 %122, %170
  store i64 %174, ptr %66, align 8, !alias.scope !112, !noalias !115
  %175 = lshr i64 %173, 32
  %176 = and i64 %173, 4294967295
  %177 = mul nuw i64 %176, %175
  %178 = add i64 %177, %121
  store i64 %178, ptr %67, align 8, !alias.scope !112, !noalias !115
  %179 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %180 = load i64, ptr %179, align 1
  %181 = getelementptr inbounds nuw i8, ptr %130, i64 40
  %182 = load i64, ptr %181, align 1
  %183 = xor i64 %182, %180
  %184 = add i64 %178, %180
  store i64 %184, ptr %67, align 8, !alias.scope !112, !noalias !115
  %185 = lshr i64 %183, 32
  %186 = and i64 %183, 4294967295
  %187 = mul nuw i64 %186, %185
  %188 = add i64 %187, %174
  store i64 %188, ptr %66, align 8, !alias.scope !112, !noalias !115
  %189 = getelementptr inbounds nuw i8, ptr %127, i64 48
  %190 = load i64, ptr %189, align 1
  %191 = getelementptr inbounds nuw i8, ptr %130, i64 48
  %192 = load i64, ptr %191, align 1
  %193 = xor i64 %192, %190
  %194 = add i64 %120, %190
  store i64 %194, ptr %68, align 8, !alias.scope !112, !noalias !115
  %195 = lshr i64 %193, 32
  %196 = and i64 %193, 4294967295
  %197 = mul nuw i64 %196, %195
  %198 = add i64 %197, %119
  store i64 %198, ptr %69, align 8, !alias.scope !112, !noalias !115
  %199 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %200 = load i64, ptr %199, align 1
  %201 = getelementptr inbounds nuw i8, ptr %130, i64 56
  %202 = load i64, ptr %201, align 1
  %203 = xor i64 %202, %200
  %204 = add i64 %198, %200
  store i64 %204, ptr %69, align 8, !alias.scope !112, !noalias !115
  %205 = lshr i64 %203, 32
  %206 = and i64 %203, 4294967295
  %207 = mul nuw i64 %206, %205
  %208 = add i64 %207, %194
  store i64 %208, ptr %68, align 8, !alias.scope !112, !noalias !115
  %209 = add nuw i64 %125, 1
  %210 = icmp eq i64 %209, %96
  br i1 %210, label %211, label %116, !llvm.loop !61

211:                                              ; preds = %116, %98
  %212 = phi i64 [ %106, %98 ], [ %208, %116 ]
  %213 = phi i64 [ %105, %98 ], [ %204, %116 ]
  %214 = phi i64 [ %104, %98 ], [ %188, %116 ]
  %215 = phi i64 [ %103, %98 ], [ %184, %116 ]
  %216 = phi i64 [ %102, %98 ], [ %168, %116 ]
  %217 = phi i64 [ %101, %98 ], [ %164, %116 ]
  %218 = phi i64 [ %100, %98 ], [ %148, %116 ]
  %219 = phi i64 [ %99, %98 ], [ %144, %116 ]
  %220 = load i64, ptr %64, align 1
  %221 = lshr i64 %219, 47
  %222 = xor i64 %220, %221
  %223 = xor i64 %222, %219
  %224 = mul i64 %223, 2654435761
  store i64 %224, ptr %0, align 8, !alias.scope !107, !noalias !110
  %225 = load i64, ptr %78, align 1
  %226 = lshr i64 %218, 47
  %227 = xor i64 %225, %226
  %228 = xor i64 %227, %218
  %229 = mul i64 %228, 2654435761
  store i64 %229, ptr %79, align 8, !alias.scope !107, !noalias !110
  %230 = load i64, ptr %80, align 1
  %231 = lshr i64 %217, 47
  %232 = xor i64 %230, %231
  %233 = xor i64 %232, %217
  %234 = mul i64 %233, 2654435761
  store i64 %234, ptr %81, align 8, !alias.scope !107, !noalias !110
  %235 = load i64, ptr %82, align 1
  %236 = lshr i64 %216, 47
  %237 = xor i64 %235, %236
  %238 = xor i64 %237, %216
  %239 = mul i64 %238, 2654435761
  store i64 %239, ptr %83, align 8, !alias.scope !107, !noalias !110
  %240 = load i64, ptr %84, align 1
  %241 = lshr i64 %215, 47
  %242 = xor i64 %240, %241
  %243 = xor i64 %242, %215
  %244 = mul i64 %243, 2654435761
  store i64 %244, ptr %85, align 8, !alias.scope !107, !noalias !110
  %245 = load i64, ptr %86, align 1
  %246 = lshr i64 %214, 47
  %247 = xor i64 %245, %246
  %248 = xor i64 %247, %214
  %249 = mul i64 %248, 2654435761
  store i64 %249, ptr %87, align 8, !alias.scope !107, !noalias !110
  %250 = load i64, ptr %88, align 1
  %251 = lshr i64 %213, 47
  %252 = xor i64 %250, %251
  %253 = xor i64 %252, %213
  %254 = mul i64 %253, 2654435761
  store i64 %254, ptr %89, align 8, !alias.scope !107, !noalias !110
  %255 = load i64, ptr %90, align 1
  %256 = lshr i64 %212, 47
  %257 = xor i64 %255, %256
  %258 = xor i64 %257, %212
  %259 = mul i64 %258, 2654435761
  store i64 %259, ptr %91, align 8, !alias.scope !107, !noalias !110
  %260 = shl i64 %96, 6
  %261 = getelementptr inbounds nuw i8, ptr %94, i64 %260
  %262 = sub i64 %93, %96
  %263 = icmp ult i64 %262, %36
  br i1 %263, label %264, label %92, !llvm.loop !62

264:                                              ; preds = %211
  store i64 0, ptr %34, align 8, !alias.scope !94, !noalias !97
  %265 = icmp eq i64 %262, 0
  br i1 %265, label %384, label %266

266:                                              ; preds = %45, %264
  %267 = phi i1 [ %62, %45 ], [ true, %264 ]
  %268 = phi i64 [ %59, %45 ], [ %224, %264 ]
  %269 = phi i64 [ %58, %45 ], [ %229, %264 ]
  %270 = phi i64 [ %56, %45 ], [ %254, %264 ]
  %271 = phi i64 [ %54, %45 ], [ %259, %264 ]
  %272 = phi i64 [ %52, %45 ], [ %244, %264 ]
  %273 = phi i64 [ %50, %45 ], [ %249, %264 ]
  %274 = phi i64 [ %48, %45 ], [ %234, %264 ]
  %275 = phi i64 [ %47, %45 ], [ %239, %264 ]
  %276 = phi ptr [ %41, %45 ], [ %27, %264 ]
  %277 = phi ptr [ %30, %45 ], [ %261, %264 ]
  %278 = phi i64 [ 4, %45 ], [ %262, %264 ]
  tail call void @llvm.assume(i1 %267), !noalias !94
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %286

286:                                              ; preds = %266, %286
  %287 = phi i64 [ %268, %266 ], [ %314, %286 ]
  %288 = phi i64 [ %269, %266 ], [ %318, %286 ]
  %289 = phi i64 [ %270, %266 ], [ %374, %286 ]
  %290 = phi i64 [ %271, %266 ], [ %378, %286 ]
  %291 = phi i64 [ %272, %266 ], [ %354, %286 ]
  %292 = phi i64 [ %273, %266 ], [ %358, %286 ]
  %293 = phi i64 [ %274, %266 ], [ %334, %286 ]
  %294 = phi i64 [ %275, %266 ], [ %338, %286 ]
  %295 = phi i64 [ 0, %266 ], [ %379, %286 ]
  %296 = shl i64 %295, 6
  %297 = getelementptr inbounds nuw i8, ptr %277, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %298, i32 0, i32 3, i32 1), !noalias !94
  %299 = shl i64 %295, 3
  %300 = getelementptr inbounds nuw i8, ptr %276, i64 %299
  %301 = load i64, ptr %297, align 1
  %302 = load i64, ptr %300, align 1
  %303 = xor i64 %302, %301
  %304 = add i64 %288, %301
  store i64 %304, ptr %285, align 8, !alias.scope !101, !noalias !104
  %305 = lshr i64 %303, 32
  %306 = and i64 %303, 4294967295
  %307 = mul nuw i64 %306, %305
  %308 = add i64 %307, %287
  store i64 %308, ptr %0, align 8, !alias.scope !101, !noalias !104
  %309 = getelementptr inbounds nuw i8, ptr %297, i64 8
  %310 = load i64, ptr %309, align 1
  %311 = getelementptr inbounds nuw i8, ptr %300, i64 8
  %312 = load i64, ptr %311, align 1
  %313 = xor i64 %312, %310
  %314 = add i64 %308, %310
  store i64 %314, ptr %0, align 8, !alias.scope !101, !noalias !104
  %315 = lshr i64 %313, 32
  %316 = and i64 %313, 4294967295
  %317 = mul nuw i64 %316, %315
  %318 = add i64 %317, %304
  store i64 %318, ptr %285, align 8, !alias.scope !101, !noalias !104
  %319 = getelementptr inbounds nuw i8, ptr %297, i64 16
  %320 = load i64, ptr %319, align 1
  %321 = getelementptr inbounds nuw i8, ptr %300, i64 16
  %322 = load i64, ptr %321, align 1
  %323 = xor i64 %322, %320
  %324 = add i64 %294, %320
  store i64 %324, ptr %279, align 8, !alias.scope !101, !noalias !104
  %325 = lshr i64 %323, 32
  %326 = and i64 %323, 4294967295
  %327 = mul nuw i64 %326, %325
  %328 = add i64 %327, %293
  store i64 %328, ptr %280, align 8, !alias.scope !101, !noalias !104
  %329 = getelementptr inbounds nuw i8, ptr %297, i64 24
  %330 = load i64, ptr %329, align 1
  %331 = getelementptr inbounds nuw i8, ptr %300, i64 24
  %332 = load i64, ptr %331, align 1
  %333 = xor i64 %332, %330
  %334 = add i64 %328, %330
  store i64 %334, ptr %280, align 8, !alias.scope !101, !noalias !104
  %335 = lshr i64 %333, 32
  %336 = and i64 %333, 4294967295
  %337 = mul nuw i64 %336, %335
  %338 = add i64 %337, %324
  store i64 %338, ptr %279, align 8, !alias.scope !101, !noalias !104
  %339 = getelementptr inbounds nuw i8, ptr %297, i64 32
  %340 = load i64, ptr %339, align 1
  %341 = getelementptr inbounds nuw i8, ptr %300, i64 32
  %342 = load i64, ptr %341, align 1
  %343 = xor i64 %342, %340
  %344 = add i64 %292, %340
  store i64 %344, ptr %281, align 8, !alias.scope !101, !noalias !104
  %345 = lshr i64 %343, 32
  %346 = and i64 %343, 4294967295
  %347 = mul nuw i64 %346, %345
  %348 = add i64 %347, %291
  store i64 %348, ptr %282, align 8, !alias.scope !101, !noalias !104
  %349 = getelementptr inbounds nuw i8, ptr %297, i64 40
  %350 = load i64, ptr %349, align 1
  %351 = getelementptr inbounds nuw i8, ptr %300, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = xor i64 %352, %350
  %354 = add i64 %348, %350
  store i64 %354, ptr %282, align 8, !alias.scope !101, !noalias !104
  %355 = lshr i64 %353, 32
  %356 = and i64 %353, 4294967295
  %357 = mul nuw i64 %356, %355
  %358 = add i64 %357, %344
  store i64 %358, ptr %281, align 8, !alias.scope !101, !noalias !104
  %359 = getelementptr inbounds nuw i8, ptr %297, i64 48
  %360 = load i64, ptr %359, align 1
  %361 = getelementptr inbounds nuw i8, ptr %300, i64 48
  %362 = load i64, ptr %361, align 1
  %363 = xor i64 %362, %360
  %364 = add i64 %290, %360
  store i64 %364, ptr %283, align 8, !alias.scope !101, !noalias !104
  %365 = lshr i64 %363, 32
  %366 = and i64 %363, 4294967295
  %367 = mul nuw i64 %366, %365
  %368 = add i64 %367, %289
  store i64 %368, ptr %284, align 8, !alias.scope !101, !noalias !104
  %369 = getelementptr inbounds nuw i8, ptr %297, i64 56
  %370 = load i64, ptr %369, align 1
  %371 = getelementptr inbounds nuw i8, ptr %300, i64 56
  %372 = load i64, ptr %371, align 1
  %373 = xor i64 %372, %370
  %374 = add i64 %368, %370
  store i64 %374, ptr %284, align 8, !alias.scope !101, !noalias !104
  %375 = lshr i64 %373, 32
  %376 = and i64 %373, 4294967295
  %377 = mul nuw i64 %376, %375
  %378 = add i64 %377, %364
  store i64 %378, ptr %283, align 8, !alias.scope !101, !noalias !104
  %379 = add nuw i64 %295, 1
  %380 = icmp eq i64 %379, %278
  br i1 %380, label %381, label %286, !llvm.loop !61

381:                                              ; preds = %286
  %382 = load i64, ptr %34, align 8, !alias.scope !94, !noalias !97
  %383 = add i64 %382, %278
  store i64 %383, ptr %34, align 8, !alias.scope !94, !noalias !97
  br label %384

384:                                              ; preds = %264, %381
  store i32 0, ptr %8, align 64, !alias.scope !91, !noalias !88
  br label %385

385:                                              ; preds = %384, %21
  %386 = phi ptr [ %33, %384 ], [ %1, %21 ]
  %387 = icmp ult ptr %386, %22
  tail call void @llvm.assume(i1 %387)
  %388 = ptrtoint ptr %22 to i64
  %389 = ptrtoint ptr %386 to i64
  %390 = sub i64 %388, %389
  %391 = icmp sgt i64 %390, 256
  br i1 %391, label %392, label %744

392:                                              ; preds = %385
  %393 = getelementptr inbounds i8, ptr %22, i64 -1
  %394 = ptrtoint ptr %393 to i64
  %395 = sub i64 %394, %389
  %396 = lshr i64 %395, 6
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %399 = load i64, ptr %398, align 8, !alias.scope !91, !noalias !88
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %401 = load i64, ptr %400, align 32, !alias.scope !91, !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %402 = load i64, ptr %397, align 8, !alias.scope !118, !noalias !121
  %403 = shl i64 %402, 3
  %404 = getelementptr inbounds nuw i8, ptr %27, i64 %403
  %405 = sub i64 %399, %402
  %406 = icmp ult i64 %396, %405
  br i1 %406, label %612, label %407

407:                                              ; preds = %392
  %408 = getelementptr inbounds nuw i8, ptr %27, i64 %401
  %409 = ptrtoint ptr %0 to i64
  %410 = and i64 %409, 7
  %411 = icmp eq i64 %410, 0
  tail call void @llvm.assume(i1 %411), !noalias !118
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %426 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %428 = getelementptr inbounds nuw i8, ptr %408, i64 16
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %430 = getelementptr inbounds nuw i8, ptr %408, i64 24
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %432 = getelementptr inbounds nuw i8, ptr %408, i64 32
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %434 = getelementptr inbounds nuw i8, ptr %408, i64 40
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %436 = getelementptr inbounds nuw i8, ptr %408, i64 48
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %438 = getelementptr inbounds nuw i8, ptr %408, i64 56
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %440

440:                                              ; preds = %407, %558
  %441 = phi i64 [ %609, %558 ], [ %396, %407 ]
  %442 = phi ptr [ %608, %558 ], [ %386, %407 ]
  %443 = phi ptr [ %27, %558 ], [ %404, %407 ]
  %444 = phi i64 [ %399, %558 ], [ %405, %407 ]
  %445 = icmp eq i64 %444, 0
  %446 = load i64, ptr %0, align 8, !noalias !118
  br i1 %445, label %447, label %455

447:                                              ; preds = %440
  %448 = load i64, ptr %419, align 8, !alias.scope !125, !noalias !128
  %449 = load i64, ptr %420, align 8, !alias.scope !125, !noalias !128
  %450 = load i64, ptr %421, align 8, !alias.scope !125, !noalias !128
  %451 = load i64, ptr %422, align 8, !alias.scope !125, !noalias !128
  %452 = load i64, ptr %423, align 8, !alias.scope !125, !noalias !128
  %453 = load i64, ptr %424, align 8, !alias.scope !125, !noalias !128
  %454 = load i64, ptr %425, align 8, !alias.scope !125, !noalias !128
  br label %558

455:                                              ; preds = %440
  %456 = load i64, ptr %412, align 8, !alias.scope !130, !noalias !133
  %457 = load i64, ptr %413, align 8, !alias.scope !130, !noalias !133
  %458 = load i64, ptr %414, align 8, !alias.scope !130, !noalias !133
  %459 = load i64, ptr %415, align 8, !alias.scope !130, !noalias !133
  %460 = load i64, ptr %416, align 8, !alias.scope !130, !noalias !133
  %461 = load i64, ptr %417, align 8, !alias.scope !130, !noalias !133
  %462 = load i64, ptr %418, align 8, !alias.scope !130, !noalias !133
  br label %463

463:                                              ; preds = %455, %463
  %464 = phi i64 [ %446, %455 ], [ %491, %463 ]
  %465 = phi i64 [ %462, %455 ], [ %495, %463 ]
  %466 = phi i64 [ %461, %455 ], [ %551, %463 ]
  %467 = phi i64 [ %460, %455 ], [ %555, %463 ]
  %468 = phi i64 [ %459, %455 ], [ %531, %463 ]
  %469 = phi i64 [ %458, %455 ], [ %535, %463 ]
  %470 = phi i64 [ %457, %455 ], [ %511, %463 ]
  %471 = phi i64 [ %456, %455 ], [ %515, %463 ]
  %472 = phi i64 [ 0, %455 ], [ %556, %463 ]
  %473 = shl i64 %472, 6
  %474 = getelementptr inbounds nuw i8, ptr %442, i64 %473
  %475 = getelementptr inbounds nuw i8, ptr %474, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %475, i32 0, i32 3, i32 1), !noalias !118
  %476 = shl i64 %472, 3
  %477 = getelementptr inbounds nuw i8, ptr %443, i64 %476
  %478 = load i64, ptr %474, align 1
  %479 = load i64, ptr %477, align 1
  %480 = xor i64 %479, %478
  %481 = add i64 %465, %478
  store i64 %481, ptr %418, align 8, !alias.scope !130, !noalias !133
  %482 = lshr i64 %480, 32
  %483 = and i64 %480, 4294967295
  %484 = mul nuw i64 %483, %482
  %485 = add i64 %484, %464
  store i64 %485, ptr %0, align 8, !alias.scope !130, !noalias !133
  %486 = getelementptr inbounds nuw i8, ptr %474, i64 8
  %487 = load i64, ptr %486, align 1
  %488 = getelementptr inbounds nuw i8, ptr %477, i64 8
  %489 = load i64, ptr %488, align 1
  %490 = xor i64 %489, %487
  %491 = add i64 %485, %487
  store i64 %491, ptr %0, align 8, !alias.scope !130, !noalias !133
  %492 = lshr i64 %490, 32
  %493 = and i64 %490, 4294967295
  %494 = mul nuw i64 %493, %492
  %495 = add i64 %494, %481
  store i64 %495, ptr %418, align 8, !alias.scope !130, !noalias !133
  %496 = getelementptr inbounds nuw i8, ptr %474, i64 16
  %497 = load i64, ptr %496, align 1
  %498 = getelementptr inbounds nuw i8, ptr %477, i64 16
  %499 = load i64, ptr %498, align 1
  %500 = xor i64 %499, %497
  %501 = add i64 %471, %497
  store i64 %501, ptr %412, align 8, !alias.scope !130, !noalias !133
  %502 = lshr i64 %500, 32
  %503 = and i64 %500, 4294967295
  %504 = mul nuw i64 %503, %502
  %505 = add i64 %504, %470
  store i64 %505, ptr %413, align 8, !alias.scope !130, !noalias !133
  %506 = getelementptr inbounds nuw i8, ptr %474, i64 24
  %507 = load i64, ptr %506, align 1
  %508 = getelementptr inbounds nuw i8, ptr %477, i64 24
  %509 = load i64, ptr %508, align 1
  %510 = xor i64 %509, %507
  %511 = add i64 %505, %507
  store i64 %511, ptr %413, align 8, !alias.scope !130, !noalias !133
  %512 = lshr i64 %510, 32
  %513 = and i64 %510, 4294967295
  %514 = mul nuw i64 %513, %512
  %515 = add i64 %514, %501
  store i64 %515, ptr %412, align 8, !alias.scope !130, !noalias !133
  %516 = getelementptr inbounds nuw i8, ptr %474, i64 32
  %517 = load i64, ptr %516, align 1
  %518 = getelementptr inbounds nuw i8, ptr %477, i64 32
  %519 = load i64, ptr %518, align 1
  %520 = xor i64 %519, %517
  %521 = add i64 %469, %517
  store i64 %521, ptr %414, align 8, !alias.scope !130, !noalias !133
  %522 = lshr i64 %520, 32
  %523 = and i64 %520, 4294967295
  %524 = mul nuw i64 %523, %522
  %525 = add i64 %524, %468
  store i64 %525, ptr %415, align 8, !alias.scope !130, !noalias !133
  %526 = getelementptr inbounds nuw i8, ptr %474, i64 40
  %527 = load i64, ptr %526, align 1
  %528 = getelementptr inbounds nuw i8, ptr %477, i64 40
  %529 = load i64, ptr %528, align 1
  %530 = xor i64 %529, %527
  %531 = add i64 %525, %527
  store i64 %531, ptr %415, align 8, !alias.scope !130, !noalias !133
  %532 = lshr i64 %530, 32
  %533 = and i64 %530, 4294967295
  %534 = mul nuw i64 %533, %532
  %535 = add i64 %534, %521
  store i64 %535, ptr %414, align 8, !alias.scope !130, !noalias !133
  %536 = getelementptr inbounds nuw i8, ptr %474, i64 48
  %537 = load i64, ptr %536, align 1
  %538 = getelementptr inbounds nuw i8, ptr %477, i64 48
  %539 = load i64, ptr %538, align 1
  %540 = xor i64 %539, %537
  %541 = add i64 %467, %537
  store i64 %541, ptr %416, align 8, !alias.scope !130, !noalias !133
  %542 = lshr i64 %540, 32
  %543 = and i64 %540, 4294967295
  %544 = mul nuw i64 %543, %542
  %545 = add i64 %544, %466
  store i64 %545, ptr %417, align 8, !alias.scope !130, !noalias !133
  %546 = getelementptr inbounds nuw i8, ptr %474, i64 56
  %547 = load i64, ptr %546, align 1
  %548 = getelementptr inbounds nuw i8, ptr %477, i64 56
  %549 = load i64, ptr %548, align 1
  %550 = xor i64 %549, %547
  %551 = add i64 %545, %547
  store i64 %551, ptr %417, align 8, !alias.scope !130, !noalias !133
  %552 = lshr i64 %550, 32
  %553 = and i64 %550, 4294967295
  %554 = mul nuw i64 %553, %552
  %555 = add i64 %554, %541
  store i64 %555, ptr %416, align 8, !alias.scope !130, !noalias !133
  %556 = add nuw i64 %472, 1
  %557 = icmp eq i64 %556, %444
  br i1 %557, label %558, label %463, !llvm.loop !61

558:                                              ; preds = %463, %447
  %559 = phi i64 [ %446, %447 ], [ %491, %463 ]
  %560 = phi i64 [ %454, %447 ], [ %555, %463 ]
  %561 = phi i64 [ %453, %447 ], [ %551, %463 ]
  %562 = phi i64 [ %452, %447 ], [ %535, %463 ]
  %563 = phi i64 [ %451, %447 ], [ %531, %463 ]
  %564 = phi i64 [ %450, %447 ], [ %515, %463 ]
  %565 = phi i64 [ %449, %447 ], [ %511, %463 ]
  %566 = phi i64 [ %448, %447 ], [ %495, %463 ]
  %567 = load i64, ptr %408, align 1
  %568 = lshr i64 %559, 47
  %569 = xor i64 %567, %568
  %570 = xor i64 %569, %559
  %571 = mul i64 %570, 2654435761
  store i64 %571, ptr %0, align 8, !alias.scope !125, !noalias !128
  %572 = load i64, ptr %426, align 1
  %573 = lshr i64 %566, 47
  %574 = xor i64 %572, %573
  %575 = xor i64 %574, %566
  %576 = mul i64 %575, 2654435761
  store i64 %576, ptr %427, align 8, !alias.scope !125, !noalias !128
  %577 = load i64, ptr %428, align 1
  %578 = lshr i64 %565, 47
  %579 = xor i64 %577, %578
  %580 = xor i64 %579, %565
  %581 = mul i64 %580, 2654435761
  store i64 %581, ptr %429, align 8, !alias.scope !125, !noalias !128
  %582 = load i64, ptr %430, align 1
  %583 = lshr i64 %564, 47
  %584 = xor i64 %582, %583
  %585 = xor i64 %584, %564
  %586 = mul i64 %585, 2654435761
  store i64 %586, ptr %431, align 8, !alias.scope !125, !noalias !128
  %587 = load i64, ptr %432, align 1
  %588 = lshr i64 %563, 47
  %589 = xor i64 %587, %588
  %590 = xor i64 %589, %563
  %591 = mul i64 %590, 2654435761
  store i64 %591, ptr %433, align 8, !alias.scope !125, !noalias !128
  %592 = load i64, ptr %434, align 1
  %593 = lshr i64 %562, 47
  %594 = xor i64 %592, %593
  %595 = xor i64 %594, %562
  %596 = mul i64 %595, 2654435761
  store i64 %596, ptr %435, align 8, !alias.scope !125, !noalias !128
  %597 = load i64, ptr %436, align 1
  %598 = lshr i64 %561, 47
  %599 = xor i64 %597, %598
  %600 = xor i64 %599, %561
  %601 = mul i64 %600, 2654435761
  store i64 %601, ptr %437, align 8, !alias.scope !125, !noalias !128
  %602 = load i64, ptr %438, align 1
  %603 = lshr i64 %560, 47
  %604 = xor i64 %602, %603
  %605 = xor i64 %604, %560
  %606 = mul i64 %605, 2654435761
  store i64 %606, ptr %439, align 8, !alias.scope !125, !noalias !128
  %607 = shl i64 %444, 6
  %608 = getelementptr inbounds nuw i8, ptr %442, i64 %607
  %609 = sub i64 %441, %444
  %610 = icmp ult i64 %609, %399
  br i1 %610, label %611, label %440, !llvm.loop !62

611:                                              ; preds = %558
  store i64 0, ptr %397, align 8, !alias.scope !118, !noalias !121
  br label %612

612:                                              ; preds = %611, %392
  %613 = phi i64 [ %609, %611 ], [ %396, %392 ]
  %614 = phi ptr [ %608, %611 ], [ %386, %392 ]
  %615 = phi ptr [ %27, %611 ], [ %404, %392 ]
  %616 = icmp eq i64 %613, 0
  br i1 %616, label %736, label %617

617:                                              ; preds = %612
  %618 = ptrtoint ptr %0 to i64
  %619 = and i64 %618, 7
  %620 = icmp eq i64 %619, 0
  tail call void @llvm.assume(i1 %620), !noalias !118
  %621 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %622 = load i64, ptr %621, align 8, !alias.scope !136, !noalias !139
  %623 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %624 = load i64, ptr %623, align 8, !alias.scope !136, !noalias !139
  %625 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %626 = load i64, ptr %625, align 8, !alias.scope !136, !noalias !139
  %627 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %628 = load i64, ptr %627, align 8, !alias.scope !136, !noalias !139
  %629 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %630 = load i64, ptr %629, align 8, !alias.scope !136, !noalias !139
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %632 = load i64, ptr %631, align 8, !alias.scope !136, !noalias !139
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %634 = load i64, ptr %633, align 8, !alias.scope !136, !noalias !139
  %635 = load i64, ptr %0, align 8, !alias.scope !136, !noalias !139
  br label %636

636:                                              ; preds = %617, %636
  %637 = phi i64 [ %635, %617 ], [ %664, %636 ]
  %638 = phi i64 [ %634, %617 ], [ %668, %636 ]
  %639 = phi i64 [ %632, %617 ], [ %724, %636 ]
  %640 = phi i64 [ %630, %617 ], [ %728, %636 ]
  %641 = phi i64 [ %628, %617 ], [ %704, %636 ]
  %642 = phi i64 [ %626, %617 ], [ %708, %636 ]
  %643 = phi i64 [ %624, %617 ], [ %684, %636 ]
  %644 = phi i64 [ %622, %617 ], [ %688, %636 ]
  %645 = phi i64 [ 0, %617 ], [ %729, %636 ]
  %646 = shl i64 %645, 6
  %647 = getelementptr inbounds nuw i8, ptr %614, i64 %646
  %648 = getelementptr inbounds nuw i8, ptr %647, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %648, i32 0, i32 3, i32 1), !noalias !118
  %649 = shl i64 %645, 3
  %650 = getelementptr inbounds nuw i8, ptr %615, i64 %649
  %651 = load i64, ptr %647, align 1
  %652 = load i64, ptr %650, align 1
  %653 = xor i64 %652, %651
  %654 = add i64 %638, %651
  store i64 %654, ptr %633, align 8, !alias.scope !136, !noalias !139
  %655 = lshr i64 %653, 32
  %656 = and i64 %653, 4294967295
  %657 = mul nuw i64 %656, %655
  %658 = add i64 %657, %637
  store i64 %658, ptr %0, align 8, !alias.scope !136, !noalias !139
  %659 = getelementptr inbounds nuw i8, ptr %647, i64 8
  %660 = load i64, ptr %659, align 1
  %661 = getelementptr inbounds nuw i8, ptr %650, i64 8
  %662 = load i64, ptr %661, align 1
  %663 = xor i64 %662, %660
  %664 = add i64 %658, %660
  store i64 %664, ptr %0, align 8, !alias.scope !136, !noalias !139
  %665 = lshr i64 %663, 32
  %666 = and i64 %663, 4294967295
  %667 = mul nuw i64 %666, %665
  %668 = add i64 %667, %654
  store i64 %668, ptr %633, align 8, !alias.scope !136, !noalias !139
  %669 = getelementptr inbounds nuw i8, ptr %647, i64 16
  %670 = load i64, ptr %669, align 1
  %671 = getelementptr inbounds nuw i8, ptr %650, i64 16
  %672 = load i64, ptr %671, align 1
  %673 = xor i64 %672, %670
  %674 = add i64 %644, %670
  store i64 %674, ptr %621, align 8, !alias.scope !136, !noalias !139
  %675 = lshr i64 %673, 32
  %676 = and i64 %673, 4294967295
  %677 = mul nuw i64 %676, %675
  %678 = add i64 %677, %643
  store i64 %678, ptr %623, align 8, !alias.scope !136, !noalias !139
  %679 = getelementptr inbounds nuw i8, ptr %647, i64 24
  %680 = load i64, ptr %679, align 1
  %681 = getelementptr inbounds nuw i8, ptr %650, i64 24
  %682 = load i64, ptr %681, align 1
  %683 = xor i64 %682, %680
  %684 = add i64 %678, %680
  store i64 %684, ptr %623, align 8, !alias.scope !136, !noalias !139
  %685 = lshr i64 %683, 32
  %686 = and i64 %683, 4294967295
  %687 = mul nuw i64 %686, %685
  %688 = add i64 %687, %674
  store i64 %688, ptr %621, align 8, !alias.scope !136, !noalias !139
  %689 = getelementptr inbounds nuw i8, ptr %647, i64 32
  %690 = load i64, ptr %689, align 1
  %691 = getelementptr inbounds nuw i8, ptr %650, i64 32
  %692 = load i64, ptr %691, align 1
  %693 = xor i64 %692, %690
  %694 = add i64 %642, %690
  store i64 %694, ptr %625, align 8, !alias.scope !136, !noalias !139
  %695 = lshr i64 %693, 32
  %696 = and i64 %693, 4294967295
  %697 = mul nuw i64 %696, %695
  %698 = add i64 %697, %641
  store i64 %698, ptr %627, align 8, !alias.scope !136, !noalias !139
  %699 = getelementptr inbounds nuw i8, ptr %647, i64 40
  %700 = load i64, ptr %699, align 1
  %701 = getelementptr inbounds nuw i8, ptr %650, i64 40
  %702 = load i64, ptr %701, align 1
  %703 = xor i64 %702, %700
  %704 = add i64 %698, %700
  store i64 %704, ptr %627, align 8, !alias.scope !136, !noalias !139
  %705 = lshr i64 %703, 32
  %706 = and i64 %703, 4294967295
  %707 = mul nuw i64 %706, %705
  %708 = add i64 %707, %694
  store i64 %708, ptr %625, align 8, !alias.scope !136, !noalias !139
  %709 = getelementptr inbounds nuw i8, ptr %647, i64 48
  %710 = load i64, ptr %709, align 1
  %711 = getelementptr inbounds nuw i8, ptr %650, i64 48
  %712 = load i64, ptr %711, align 1
  %713 = xor i64 %712, %710
  %714 = add i64 %640, %710
  store i64 %714, ptr %629, align 8, !alias.scope !136, !noalias !139
  %715 = lshr i64 %713, 32
  %716 = and i64 %713, 4294967295
  %717 = mul nuw i64 %716, %715
  %718 = add i64 %717, %639
  store i64 %718, ptr %631, align 8, !alias.scope !136, !noalias !139
  %719 = getelementptr inbounds nuw i8, ptr %647, i64 56
  %720 = load i64, ptr %719, align 1
  %721 = getelementptr inbounds nuw i8, ptr %650, i64 56
  %722 = load i64, ptr %721, align 1
  %723 = xor i64 %722, %720
  %724 = add i64 %718, %720
  store i64 %724, ptr %631, align 8, !alias.scope !136, !noalias !139
  %725 = lshr i64 %723, 32
  %726 = and i64 %723, 4294967295
  %727 = mul nuw i64 %726, %725
  %728 = add i64 %727, %714
  store i64 %728, ptr %629, align 8, !alias.scope !136, !noalias !139
  %729 = add nuw i64 %645, 1
  %730 = icmp eq i64 %729, %613
  br i1 %730, label %731, label %636, !llvm.loop !61

731:                                              ; preds = %636
  %732 = shl i64 %613, 6
  %733 = getelementptr inbounds nuw i8, ptr %614, i64 %732
  %734 = load i64, ptr %397, align 8, !alias.scope !118, !noalias !121
  %735 = add i64 %734, %613
  store i64 %735, ptr %397, align 8, !alias.scope !118, !noalias !121
  br label %736

736:                                              ; preds = %612, %731
  %737 = phi ptr [ %733, %731 ], [ %614, %612 ]
  %738 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %739 = getelementptr inbounds i8, ptr %737, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %738, ptr noundef nonnull align 1 dereferenceable(64) %739, i64 64, i1 false)
  %740 = load i32, ptr %8, align 64, !alias.scope !91, !noalias !88
  %741 = ptrtoint ptr %737 to i64
  %742 = sub i64 %388, %741
  %743 = icmp eq i32 %740, 0
  br label %744

744:                                              ; preds = %736, %385
  %745 = phi i64 [ %742, %736 ], [ %390, %385 ]
  %746 = phi i1 [ %743, %736 ], [ true, %385 ]
  %747 = phi ptr [ %737, %736 ], [ %386, %385 ]
  %748 = icmp ult ptr %747, %22
  tail call void @llvm.assume(i1 %748)
  %749 = icmp slt i64 %745, 257
  tail call void @llvm.assume(i1 %749)
  tail call void @llvm.assume(i1 %746)
  %750 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %750, ptr align 1 %747, i64 %745, i1 false)
  %751 = trunc i64 %745 to i32
  br label %752

752:                                              ; preds = %14, %744
  %753 = phi i32 [ %751, %744 ], [ %20, %14 ]
  store i32 %753, ptr %8, align 64, !alias.scope !91, !noalias !88
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noalias nocapture noundef nonnull readonly %0, ptr noalias nocapture noundef readonly %1, i64 noundef range(i64 75, 0) %2, i64 noundef %3) unnamed_addr #21 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %6 = mul i64 %3, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %7 = load i64, ptr %0, align 8, !alias.scope !152, !noalias !155
  %8 = load i64, ptr %5, align 1, !alias.scope !157, !noalias !158
  %9 = xor i64 %8, %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 8, !alias.scope !152, !noalias !155
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %13 = load i64, ptr %12, align 1, !alias.scope !157, !noalias !158
  %14 = xor i64 %13, %11
  %15 = zext i64 %9 to i128
  %16 = zext i64 %14 to i128
  %17 = mul nuw i128 %16, %15
  %18 = lshr i128 %17, 64
  %19 = xor i128 %18, %17
  %20 = trunc i128 %19 to i64
  %21 = add i64 %6, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 27
  %24 = load i64, ptr %22, align 8, !alias.scope !152, !noalias !155
  %25 = load i64, ptr %23, align 1, !alias.scope !157, !noalias !158
  %26 = xor i64 %25, %24
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 8, !alias.scope !152, !noalias !155
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 35
  %30 = load i64, ptr %29, align 1, !alias.scope !157, !noalias !158
  %31 = xor i64 %30, %28
  %32 = zext i64 %26 to i128
  %33 = zext i64 %31 to i128
  %34 = mul nuw i128 %33, %32
  %35 = lshr i128 %34, 64
  %36 = xor i128 %35, %34
  %37 = trunc i128 %36 to i64
  %38 = add i64 %21, %37
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 43
  %41 = load i64, ptr %39, align 8, !alias.scope !152, !noalias !155
  %42 = load i64, ptr %40, align 1, !alias.scope !157, !noalias !158
  %43 = xor i64 %42, %41
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %45 = load i64, ptr %44, align 8, !alias.scope !152, !noalias !155
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 51
  %47 = load i64, ptr %46, align 1, !alias.scope !157, !noalias !158
  %48 = xor i64 %47, %45
  %49 = zext i64 %43 to i128
  %50 = zext i64 %48 to i128
  %51 = mul nuw i128 %50, %49
  %52 = lshr i128 %51, 64
  %53 = xor i128 %52, %51
  %54 = trunc i128 %53 to i64
  %55 = add i64 %38, %54
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 59
  %58 = load i64, ptr %56, align 8, !alias.scope !152, !noalias !155
  %59 = load i64, ptr %57, align 1, !alias.scope !157, !noalias !158
  %60 = xor i64 %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !152, !noalias !155
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 67
  %64 = load i64, ptr %63, align 1, !alias.scope !157, !noalias !158
  %65 = xor i64 %64, %62
  %66 = zext i64 %60 to i128
  %67 = zext i64 %65 to i128
  %68 = mul nuw i128 %67, %66
  %69 = lshr i128 %68, 64
  %70 = xor i128 %69, %68
  %71 = trunc i128 %70 to i64
  %72 = add i64 %55, %71
  %73 = lshr i64 %72, 37
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, 1609587791953885689
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %79 = getelementptr inbounds i8, ptr %78, i64 -75
  %80 = mul i64 %3, -4417276706812531889
  %81 = xor i64 %80, -1
  %82 = load i64, ptr %79, align 1, !alias.scope !159, !noalias !162
  %83 = xor i64 %82, %7
  %84 = getelementptr inbounds i8, ptr %78, i64 -67
  %85 = load i64, ptr %84, align 1, !alias.scope !159, !noalias !162
  %86 = xor i64 %85, %11
  %87 = zext i64 %83 to i128
  %88 = zext i64 %86 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %92, %81
  %94 = getelementptr inbounds i8, ptr %78, i64 -59
  %95 = load i64, ptr %94, align 1, !alias.scope !159, !noalias !162
  %96 = xor i64 %95, %24
  %97 = getelementptr inbounds i8, ptr %78, i64 -51
  %98 = load i64, ptr %97, align 1, !alias.scope !159, !noalias !162
  %99 = xor i64 %98, %28
  %100 = zext i64 %96 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %93, %105
  %107 = getelementptr inbounds i8, ptr %78, i64 -43
  %108 = load i64, ptr %107, align 1, !alias.scope !159, !noalias !162
  %109 = xor i64 %108, %41
  %110 = getelementptr inbounds i8, ptr %78, i64 -35
  %111 = load i64, ptr %110, align 1, !alias.scope !159, !noalias !162
  %112 = xor i64 %111, %45
  %113 = zext i64 %109 to i128
  %114 = zext i64 %112 to i128
  %115 = mul nuw i128 %114, %113
  %116 = lshr i128 %115, 64
  %117 = xor i128 %116, %115
  %118 = trunc i128 %117 to i64
  %119 = add i64 %106, %118
  %120 = getelementptr inbounds i8, ptr %78, i64 -27
  %121 = load i64, ptr %120, align 1, !alias.scope !159, !noalias !162
  %122 = xor i64 %121, %58
  %123 = getelementptr inbounds i8, ptr %78, i64 -19
  %124 = load i64, ptr %123, align 1, !alias.scope !159, !noalias !162
  %125 = xor i64 %124, %62
  %126 = zext i64 %122 to i128
  %127 = zext i64 %125 to i128
  %128 = mul nuw i128 %127, %126
  %129 = lshr i128 %128, 64
  %130 = xor i128 %129, %128
  %131 = trunc i128 %130 to i64
  %132 = add i64 %119, %131
  %133 = lshr i64 %132, 37
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, 1609587791953885689
  %136 = lshr i64 %135, 32
  %137 = xor i64 %136, %135
  %138 = insertvalue { i64, i64 } poison, i64 %77, 0
  %139 = insertvalue { i64, i64 } %138, i64 %137, 1
  ret { i64, i64 } %139
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noalias nocapture noundef nonnull readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #22 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = load i64, ptr %6, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i64, ptr %25, align 1
  %27 = add i64 %26, %24
  %28 = xor i64 %23, %27
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = add i64 %30, %3
  %32 = xor i64 %31, %24
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %34 = load i64, ptr %33, align 1
  %35 = sub i64 %34, %3
  %36 = xor i64 %35, %26
  %37 = zext i64 %32 to i128
  %38 = zext i64 %36 to i128
  %39 = mul nuw i128 %38, %37
  %40 = lshr i128 %39, 64
  %41 = xor i128 %40, %39
  %42 = trunc i128 %41 to i64
  %43 = add i64 %9, %7
  %44 = xor i64 %43, %42
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %48 = load i64, ptr %45, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 1
  %51 = load i64, ptr %47, align 1
  %52 = add i64 %51, %3
  %53 = xor i64 %52, %48
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %55 = load i64, ptr %54, align 1
  %56 = sub i64 %55, %3
  %57 = xor i64 %56, %50
  %58 = zext i64 %53 to i128
  %59 = zext i64 %57 to i128
  %60 = mul nuw i128 %59, %58
  %61 = lshr i128 %60, 64
  %62 = xor i128 %61, %60
  %63 = trunc i128 %62 to i64
  %64 = add i64 %28, %63
  %65 = load i64, ptr %46, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %67 = load i64, ptr %66, align 1
  %68 = add i64 %67, %65
  %69 = xor i64 %64, %68
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %71 = load i64, ptr %70, align 1
  %72 = add i64 %71, %3
  %73 = xor i64 %72, %65
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %75 = load i64, ptr %74, align 1
  %76 = sub i64 %75, %3
  %77 = xor i64 %76, %67
  %78 = zext i64 %73 to i128
  %79 = zext i64 %77 to i128
  %80 = mul nuw i128 %79, %78
  %81 = lshr i128 %80, 64
  %82 = xor i128 %81, %80
  %83 = trunc i128 %82 to i64
  %84 = add i64 %44, %83
  %85 = add i64 %50, %48
  %86 = xor i64 %84, %85
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %90 = load i64, ptr %87, align 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %92 = load i64, ptr %91, align 1
  %93 = load i64, ptr %89, align 1
  %94 = add i64 %93, %3
  %95 = xor i64 %94, %90
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %97 = load i64, ptr %96, align 1
  %98 = sub i64 %97, %3
  %99 = xor i64 %98, %92
  %100 = zext i64 %95 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %69, %105
  %107 = load i64, ptr %88, align 1
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = add i64 %109, %107
  %111 = xor i64 %106, %110
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %113 = load i64, ptr %112, align 1
  %114 = add i64 %113, %3
  %115 = xor i64 %114, %107
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %117 = load i64, ptr %116, align 1
  %118 = sub i64 %117, %3
  %119 = xor i64 %118, %109
  %120 = zext i64 %115 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %86, %125
  %127 = add i64 %92, %90
  %128 = xor i64 %126, %127
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %132 = load i64, ptr %129, align 1
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %134 = load i64, ptr %133, align 1
  %135 = load i64, ptr %131, align 1
  %136 = add i64 %135, %3
  %137 = xor i64 %136, %132
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %139 = load i64, ptr %138, align 1
  %140 = sub i64 %139, %3
  %141 = xor i64 %140, %134
  %142 = zext i64 %137 to i128
  %143 = zext i64 %141 to i128
  %144 = mul nuw i128 %143, %142
  %145 = lshr i128 %144, 64
  %146 = xor i128 %145, %144
  %147 = trunc i128 %146 to i64
  %148 = add i64 %111, %147
  %149 = load i64, ptr %130, align 1
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %151 = load i64, ptr %150, align 1
  %152 = add i64 %151, %149
  %153 = xor i64 %148, %152
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %155 = load i64, ptr %154, align 1
  %156 = add i64 %155, %3
  %157 = xor i64 %156, %149
  %158 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %159 = load i64, ptr %158, align 1
  %160 = sub i64 %159, %3
  %161 = xor i64 %160, %151
  %162 = zext i64 %157 to i128
  %163 = zext i64 %161 to i128
  %164 = mul nuw i128 %163, %162
  %165 = lshr i128 %164, 64
  %166 = xor i128 %165, %164
  %167 = trunc i128 %166 to i64
  %168 = add i64 %128, %167
  %169 = add i64 %134, %132
  %170 = xor i64 %168, %169
  %171 = lshr i64 %153, 37
  %172 = xor i64 %171, %153
  %173 = mul i64 %172, 1609587791953885689
  %174 = lshr i64 %173, 32
  %175 = xor i64 %174, %173
  %176 = lshr i64 %170, 37
  %177 = xor i64 %176, %170
  %178 = mul i64 %177, 1609587791953885689
  %179 = lshr i64 %178, 32
  %180 = xor i64 %179, %178
  %181 = icmp samesign ult i64 %1, 160
  br i1 %181, label %313, label %182

182:                                              ; preds = %4
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %186 = load i64, ptr %183, align 1
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %188 = load i64, ptr %187, align 1
  %189 = load i64, ptr %185, align 1
  %190 = add i64 %189, %3
  %191 = xor i64 %190, %186
  %192 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %193 = load i64, ptr %192, align 1
  %194 = sub i64 %193, %3
  %195 = xor i64 %194, %188
  %196 = zext i64 %191 to i128
  %197 = zext i64 %195 to i128
  %198 = mul nuw i128 %197, %196
  %199 = lshr i128 %198, 64
  %200 = xor i128 %199, %198
  %201 = trunc i128 %200 to i64
  %202 = add i64 %175, %201
  %203 = load i64, ptr %184, align 1
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %205 = load i64, ptr %204, align 1
  %206 = add i64 %205, %203
  %207 = xor i64 %202, %206
  %208 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %209 = load i64, ptr %208, align 1
  %210 = add i64 %209, %3
  %211 = xor i64 %210, %203
  %212 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %213 = load i64, ptr %212, align 1
  %214 = sub i64 %213, %3
  %215 = xor i64 %214, %205
  %216 = zext i64 %211 to i128
  %217 = zext i64 %215 to i128
  %218 = mul nuw i128 %217, %216
  %219 = lshr i128 %218, 64
  %220 = xor i128 %219, %218
  %221 = trunc i128 %220 to i64
  %222 = add i64 %180, %221
  %223 = add i64 %188, %186
  %224 = xor i64 %222, %223
  %225 = icmp samesign ult i64 %1, 192
  br i1 %225, label %313, label %226, !llvm.loop !164

226:                                              ; preds = %182
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %230 = load i64, ptr %227, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = add i64 %233, %3
  %235 = xor i64 %234, %230
  %236 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %237 = load i64, ptr %236, align 1
  %238 = sub i64 %237, %3
  %239 = xor i64 %238, %232
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %207, %245
  %247 = load i64, ptr %228, align 1
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %249 = load i64, ptr %248, align 1
  %250 = add i64 %249, %247
  %251 = xor i64 %246, %250
  %252 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %253 = load i64, ptr %252, align 1
  %254 = add i64 %253, %3
  %255 = xor i64 %254, %247
  %256 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %257 = load i64, ptr %256, align 1
  %258 = sub i64 %257, %3
  %259 = xor i64 %258, %249
  %260 = zext i64 %255 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %224, %265
  %267 = add i64 %232, %230
  %268 = xor i64 %266, %267
  %269 = icmp samesign ult i64 %1, 224
  br i1 %269, label %313, label %270, !llvm.loop !164

270:                                              ; preds = %226
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %273 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %274 = load i64, ptr %271, align 1
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %276 = load i64, ptr %275, align 1
  %277 = load i64, ptr %273, align 1
  %278 = add i64 %277, %3
  %279 = xor i64 %278, %274
  %280 = getelementptr inbounds nuw i8, ptr %2, i64 75
  %281 = load i64, ptr %280, align 1
  %282 = sub i64 %281, %3
  %283 = xor i64 %282, %276
  %284 = zext i64 %279 to i128
  %285 = zext i64 %283 to i128
  %286 = mul nuw i128 %285, %284
  %287 = lshr i128 %286, 64
  %288 = xor i128 %287, %286
  %289 = trunc i128 %288 to i64
  %290 = add i64 %251, %289
  %291 = load i64, ptr %272, align 1
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %293 = load i64, ptr %292, align 1
  %294 = add i64 %293, %291
  %295 = xor i64 %290, %294
  %296 = getelementptr inbounds nuw i8, ptr %2, i64 83
  %297 = load i64, ptr %296, align 1
  %298 = add i64 %297, %3
  %299 = xor i64 %298, %291
  %300 = getelementptr inbounds nuw i8, ptr %2, i64 91
  %301 = load i64, ptr %300, align 1
  %302 = sub i64 %301, %3
  %303 = xor i64 %302, %293
  %304 = zext i64 %299 to i128
  %305 = zext i64 %303 to i128
  %306 = mul nuw i128 %305, %304
  %307 = lshr i128 %306, 64
  %308 = xor i128 %307, %306
  %309 = trunc i128 %308 to i64
  %310 = add i64 %268, %309
  %311 = add i64 %276, %274
  %312 = xor i64 %310, %311
  br label %313

313:                                              ; preds = %182, %226, %270, %4
  %314 = phi i64 [ %175, %4 ], [ %207, %182 ], [ %251, %226 ], [ %295, %270 ]
  %315 = phi i64 [ %180, %4 ], [ %224, %182 ], [ %268, %226 ], [ %312, %270 ]
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %317 = getelementptr inbounds i8, ptr %316, i64 -16
  %318 = getelementptr inbounds i8, ptr %316, i64 -32
  %319 = getelementptr inbounds nuw i8, ptr %2, i64 103
  %320 = load i64, ptr %317, align 1
  %321 = getelementptr inbounds i8, ptr %316, i64 -8
  %322 = load i64, ptr %321, align 1
  %323 = load i64, ptr %319, align 1
  %324 = sub i64 %323, %3
  %325 = xor i64 %324, %320
  %326 = getelementptr inbounds nuw i8, ptr %2, i64 111
  %327 = load i64, ptr %326, align 1
  %328 = add i64 %327, %3
  %329 = xor i64 %328, %322
  %330 = zext i64 %325 to i128
  %331 = zext i64 %329 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %314, %335
  %337 = load i64, ptr %318, align 1
  %338 = getelementptr inbounds i8, ptr %316, i64 -24
  %339 = load i64, ptr %338, align 1
  %340 = add i64 %339, %337
  %341 = xor i64 %336, %340
  %342 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %343 = load i64, ptr %342, align 1
  %344 = sub i64 %343, %3
  %345 = xor i64 %344, %337
  %346 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %347 = load i64, ptr %346, align 1
  %348 = add i64 %347, %3
  %349 = xor i64 %348, %339
  %350 = zext i64 %345 to i128
  %351 = zext i64 %349 to i128
  %352 = mul nuw i128 %351, %350
  %353 = lshr i128 %352, 64
  %354 = xor i128 %353, %352
  %355 = trunc i128 %354 to i64
  %356 = add i64 %315, %355
  %357 = add i64 %322, %320
  %358 = xor i64 %356, %357
  %359 = add i64 %358, %341
  %360 = mul i64 %341, -7046029288634856825
  %361 = mul i64 %358, -8796714831421723037
  %362 = sub i64 %1, %3
  %363 = mul i64 %362, -4417276706812531889
  %364 = add i64 %360, %363
  %365 = add i64 %364, %361
  %366 = lshr i64 %359, 37
  %367 = xor i64 %366, %359
  %368 = mul i64 %367, 1609587791953885689
  %369 = lshr i64 %368, 32
  %370 = xor i64 %369, %368
  %371 = lshr i64 %365, 37
  %372 = xor i64 %371, %365
  %373 = mul i64 %372, 1609587791953885689
  %374 = lshr i64 %373, 32
  %375 = xor i64 %374, %373
  %376 = sub i64 0, %375
  %377 = insertvalue { i64, i64 } poison, i64 %370, 0
  %378 = insertvalue { i64, i64 } %377, i64 %376, 1
  ret { i64, i64 } %378
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nocapture noundef nonnull readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #23 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load i64, ptr %24, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = load i64, ptr %25, align 1
  %30 = add i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = sub i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %23, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %45 = load i64, ptr %43, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1
  %48 = load i64, ptr %44, align 1
  %49 = add i64 %48, %3
  %50 = xor i64 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = sub i64 %52, %3
  %54 = xor i64 %53, %47
  %55 = zext i64 %50 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %42, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %64 = load i64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1
  %67 = load i64, ptr %63, align 1
  %68 = add i64 %67, %3
  %69 = xor i64 %68, %64
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %71 = load i64, ptr %70, align 1
  %72 = sub i64 %71, %3
  %73 = xor i64 %72, %66
  %74 = zext i64 %69 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %61, %79
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %83 = load i64, ptr %81, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1
  %86 = load i64, ptr %82, align 1
  %87 = add i64 %86, %3
  %88 = xor i64 %87, %83
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %90 = load i64, ptr %89, align 1
  %91 = sub i64 %90, %3
  %92 = xor i64 %91, %85
  %93 = zext i64 %88 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %102 = load i64, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %101, align 1
  %106 = add i64 %105, %3
  %107 = xor i64 %106, %102
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = sub i64 %109, %3
  %111 = xor i64 %110, %104
  %112 = zext i64 %107 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %99, %117
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = add i64 %124, %3
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %128 = load i64, ptr %127, align 1
  %129 = sub i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %140 = load i64, ptr %138, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1
  %143 = load i64, ptr %139, align 1
  %144 = add i64 %143, %3
  %145 = xor i64 %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %147 = load i64, ptr %146, align 1
  %148 = sub i64 %147, %3
  %149 = xor i64 %148, %142
  %150 = zext i64 %145 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %137, %155
  %157 = lshr i32 %6, 4
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -16
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %161 = load i64, ptr %159, align 1
  %162 = getelementptr inbounds i8, ptr %158, i64 -8
  %163 = load i64, ptr %162, align 1
  %164 = load i64, ptr %160, align 1
  %165 = add i64 %164, %3
  %166 = xor i64 %165, %161
  %167 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %168 = load i64, ptr %167, align 1
  %169 = sub i64 %168, %3
  %170 = xor i64 %169, %163
  %171 = zext i64 %166 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = lshr i64 %156, 37
  %178 = xor i64 %177, %156
  %179 = mul i64 %178, 1609587791953885689
  %180 = lshr i64 %179, 32
  %181 = xor i64 %180, %179
  %182 = icmp eq i32 %157, 8
  br i1 %182, label %213, label %183

183:                                              ; preds = %4
  %184 = zext nneg i32 %157 to i64
  br label %185

185:                                              ; preds = %183, %185
  %186 = phi i64 [ 8, %183 ], [ %211, %185 ]
  %187 = phi i64 [ %181, %183 ], [ %189, %185 ]
  %188 = phi i64 [ %176, %183 ], [ %210, %185 ]
  %189 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %187) #34, !srcloc !165
  %190 = shl nuw nsw i64 %186, 4
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 %190
  %192 = getelementptr i8, ptr %2, i64 %190
  %193 = getelementptr i8, ptr %192, i64 -125
  %194 = load i64, ptr %191, align 1
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %196 = load i64, ptr %195, align 1
  %197 = load i64, ptr %193, align 1
  %198 = add i64 %197, %3
  %199 = xor i64 %198, %194
  %200 = getelementptr i8, ptr %192, i64 -117
  %201 = load i64, ptr %200, align 1
  %202 = sub i64 %201, %3
  %203 = xor i64 %202, %196
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %188, %209
  %211 = add nuw nsw i64 %186, 1
  %212 = icmp eq i64 %211, %184
  br i1 %212, label %213, label %185, !llvm.loop !166

213:                                              ; preds = %185, %4
  %214 = phi i64 [ %176, %4 ], [ %210, %185 ]
  %215 = phi i64 [ %181, %4 ], [ %189, %185 ]
  %216 = add i64 %215, %214
  %217 = lshr i64 %216, 37
  %218 = xor i64 %217, %216
  %219 = mul i64 %218, 1609587791953885689
  %220 = lshr i64 %219, 32
  %221 = xor i64 %220, %219
  ret i64 %221
}

declare i64 @target_0to16(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @XSUM_generateFile(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
  %9 = alloca %struct.ParseFileArg, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #28
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 80
  %11 = icmp eq ptr %0, @stdinName
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr @stdin, align 8
  br label %16

14:                                               ; preds = %8
  %15 = tail call ptr @XSUM_fopen(ptr noundef %0, ptr noundef nonnull @.str.66) #28
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %18 = phi ptr [ @stdinFileName, %12 ], [ %0, %14 ]
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = tail call ptr @__errno_location() #31
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @strerror(i32 noundef %22) #28
  %24 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.67, ptr noundef %18, ptr noundef %23) #28
  br label %175

25:                                               ; preds = %16
  store ptr %18, ptr %9, align 8
  %26 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %17, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 4115, ptr %27, align 8
  %28 = tail call noalias dereferenceable_or_null(4115) ptr @malloc(i64 noundef 4115) #32
  %29 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 65536, ptr %30, align 8
  %31 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #32
  %32 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i32 %5, ptr %33, align 4
  %34 = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 %6, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %9, i64 60
  store i32 %7, ptr %35, align 4
  %36 = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 %2, ptr %36, align 8
  %37 = icmp eq ptr %28, null
  %38 = icmp eq ptr %31, null
  %39 = or i1 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.68) #28
  tail call void @exit(i32 noundef 1) #30
  unreachable

42:                                               ; preds = %25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %44 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %45 = getelementptr inbounds nuw i8, ptr %9, i64 112
  %46 = getelementptr inbounds nuw i8, ptr %9, i64 128
  br label %47

47:                                               ; preds = %136, %42
  %48 = phi i64 [ 0, %42 ], [ %49, %136 ]
  %49 = add i64 %48, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.105, ptr noundef %18) #28
  br label %139

53:                                               ; preds = %47
  %54 = load ptr, ptr %26, align 8
  %55 = call fastcc i32 @XSUM_getLine(ptr noundef %29, ptr noundef %27, ptr noundef %54)
  switch i32 %55, label %56 [
    i32 1, label %136
    i32 0, label %61
    i32 2, label %140
    i32 4, label %59
    i32 3, label %57
  ]

56:                                               ; preds = %103, %53
  unreachable

57:                                               ; preds = %53
  %58 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.83, ptr noundef %18, i64 noundef %49) #28
  br label %139

59:                                               ; preds = %53
  %60 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.84, ptr noundef %18, i64 noundef %49) #28
  br label %139

61:                                               ; preds = %53
  %62 = load ptr, ptr %29, align 8
  br label %63

63:                                               ; preds = %66, %61
  %64 = phi ptr [ %62, %61 ], [ %67, %66 ]
  %65 = load i8, ptr %64, align 1
  switch i8 %65, label %103 [
    i8 32, label %66
    i8 9, label %66
    i8 92, label %68
  ]

66:                                               ; preds = %63, %63
  %67 = getelementptr inbounds nuw i8, ptr %64, i64 1
  br label %63, !llvm.loop !17

68:                                               ; preds = %63
  %69 = getelementptr inbounds nuw i8, ptr %62, i64 1
  %70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #27
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %68, %85
  %73 = phi i64 [ %89, %85 ], [ 0, %68 ]
  %74 = phi ptr [ %88, %85 ], [ %69, %68 ]
  %75 = getelementptr inbounds nuw i8, ptr %69, i64 %73
  %76 = load i8, ptr %75, align 1
  switch i8 %76, label %85 [
    i8 92, label %77
    i8 0, label %96
  ]

77:                                               ; preds = %72
  %78 = add nuw i64 %73, 1
  %79 = icmp eq i64 %78, %70
  br i1 %79, label %96, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds nuw i8, ptr %69, i64 %78
  %82 = load i8, ptr %81, align 1
  switch i8 %82, label %96 [
    i8 110, label %85
    i8 114, label %83
    i8 92, label %84
  ]

83:                                               ; preds = %80
  br label %85

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %83, %80, %72
  %86 = phi i8 [ 92, %84 ], [ 13, %83 ], [ 10, %80 ], [ %76, %72 ]
  %87 = phi i64 [ %78, %84 ], [ %78, %83 ], [ %78, %80 ], [ %73, %72 ]
  store i8 %86, ptr %74, align 1
  %88 = getelementptr inbounds nuw i8, ptr %74, i64 1
  %89 = add i64 %87, 1
  %90 = icmp ult i64 %89, %70
  br i1 %90, label %72, label %91, !llvm.loop !87

91:                                               ; preds = %85, %68
  %92 = phi ptr [ %69, %68 ], [ %88, %85 ]
  %93 = getelementptr inbounds nuw i8, ptr %69, i64 %70
  %94 = icmp ult ptr %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  store i8 0, ptr %92, align 1
  br label %103

96:                                               ; preds = %80, %77, %72
  %97 = load i64, ptr %44, align 8
  %98 = add i64 %97, 1
  store i64 %98, ptr %44, align 8
  %99 = load i32, ptr %35, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %136, label %101, !llvm.loop !167

101:                                              ; preds = %96
  %102 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.106, ptr noundef %18, i64 noundef %49) #28
  br label %136, !llvm.loop !167

103:                                              ; preds = %63, %95, %91
  %104 = phi ptr [ %69, %95 ], [ %69, %91 ], [ %62, %63 ]
  %105 = load i64, ptr %10, align 8
  %106 = add i64 %105, 1
  store i64 %106, ptr %10, align 8
  %107 = load i64, ptr %36, align 8
  %108 = tail call fastcc i32 @XSUM_hashFile(ptr noundef %104, i32 noundef %1, i64 noundef %107, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4)
  switch i32 %108, label %56 [
    i32 5, label %109
    i32 2, label %111
    i32 4, label %111
    i32 3, label %129
    i32 0, label %136
    i32 1, label %136
  ]

109:                                              ; preds = %103
  %110 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.107) #28
  br label %136

111:                                              ; preds = %103, %103
  %112 = load i32, ptr %34, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i64, ptr %46, align 8
  %116 = add i64 %115, 1
  store i64 %116, ptr %46, align 8
  br label %136

117:                                              ; preds = %111
  %118 = load i64, ptr %45, align 8
  %119 = add i64 %118, 1
  store i64 %119, ptr %45, align 8
  %120 = load i32, ptr %33, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = icmp eq i32 %108, 2
  %124 = select i1 %123, ptr @.str.88, ptr @.str.108
  %125 = tail call ptr @__errno_location() #31
  %126 = load i32, ptr %125, align 4
  %127 = tail call ptr @strerror(i32 noundef %126) #28
  %128 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull %124, ptr noundef %18, i64 noundef %49, ptr noundef %104, ptr noundef %127) #28
  br label %136

129:                                              ; preds = %103
  %130 = load i64, ptr %45, align 8
  %131 = add i64 %130, 1
  store i64 %131, ptr %45, align 8
  %132 = load i32, ptr %33, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.89, ptr noundef %18, i64 noundef %49, ptr noundef %104) #28
  br label %136

136:                                              ; preds = %134, %129, %122, %117, %114, %109, %103, %103, %101, %96, %53
  %137 = load i32, ptr %43, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %47, label %140

139:                                              ; preds = %59, %57, %51
  store i32 1, ptr %43, align 8
  br label %140

140:                                              ; preds = %53, %136, %139
  %141 = load ptr, ptr %32, align 8
  tail call void @free(ptr noundef %141) #28
  %142 = load ptr, ptr %29, align 8
  tail call void @free(ptr noundef %142) #28
  %143 = load ptr, ptr @stdin, align 8
  %144 = icmp eq ptr %17, %143
  br i1 %144, label %147, label %145

145:                                              ; preds = %140
  %146 = tail call i32 @fclose(ptr noundef nonnull %17)
  br label %147

147:                                              ; preds = %145, %140
  %148 = load i64, ptr %10, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.104, ptr noundef %18) #28
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i64, ptr %44, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = icmp eq i64 %153, 1
  %157 = select i1 %156, ptr @.str.71, ptr @.str.72
  %158 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.70, i64 noundef %153, ptr noundef nonnull %157) #28
  br label %159

159:                                              ; preds = %155, %152
  %160 = load i64, ptr %45, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = icmp eq i64 %160, 1
  %164 = select i1 %163, ptr @.str.74, ptr @.str.75
  %165 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.73, i64 noundef %160, ptr noundef nonnull %164) #28
  br label %166

166:                                              ; preds = %162, %159
  %167 = icmp ne i64 %148, 0
  %168 = or i64 %160, %153
  %169 = icmp eq i64 %168, 0
  %170 = and i1 %167, %169
  %171 = load i32, ptr %43, align 8
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %170, i1 %172, i1 false
  %174 = zext i1 %173 to i32
  br label %175

175:                                              ; preds = %166, %20
  %176 = phi i32 [ 0, %20 ], [ %174, %166 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #28
  ret i32 %176
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 6) i32 @XSUM_hashFile(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
  %6 = alloca %union.Multihash, align 8
  %7 = alloca %struct.XXH_INLINE_XXH32_canonical_t, align 4
  %8 = alloca %struct.XXH_INLINE_XXH64_canonical_t, align 8
  %9 = alloca %struct.XXH_INLINE_XXH128_canonical_t, align 8
  %10 = alloca %struct.XXH_INLINE_XXH64_canonical_t, align 8
  %11 = zext nneg i32 %4 to i64
  %12 = zext nneg i32 %3 to i64
  %13 = getelementptr inbounds nuw [2 x [2 x ptr]], ptr @XSUM_kDisplayLine_fTable, i64 0, i64 %11, i64 %12
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #28
  %15 = icmp eq ptr %0, @stdinName
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load ptr, ptr @stdin, align 8
  tail call void @XSUM_setBinaryMode(ptr noundef %17) #28
  br label %26

18:                                               ; preds = %5
  %19 = tail call i32 @XSUM_isDirectory(ptr noundef %0) #28
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = tail call ptr @XSUM_fopen(ptr noundef %0, ptr noundef nonnull @.str.86) #28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.111) #28
  br label %56

26:                                               ; preds = %21, %16
  %27 = phi ptr [ %17, %16 ], [ %22, %21 ]
  %28 = phi ptr [ @stdinFileName, %16 ], [ %0, %21 ]
  %29 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #32
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.107) #28
  %33 = tail call i32 @fclose(ptr noundef %27)
  br label %56

34:                                               ; preds = %26
  %35 = call fastcc i32 @XSUM_hashStream(ptr noundef %27, i32 noundef %1, i64 noundef %2, ptr noundef nonnull %29, i64 noundef 65536, ptr noundef %6)
  %36 = tail call i32 @fclose(ptr noundef %27)
  tail call void @free(ptr noundef nonnull %29) #28
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  switch i32 %1, label %55 [
    i32 0, label %39
    i32 1, label %42
    i32 2, label %45
    i32 3, label %52
  ]

39:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #28
  %40 = load i32, ptr %6, align 8
  %41 = tail call noundef i32 @llvm.bswap.i32(i32 %40)
  store i32 %41, ptr %7, align 4
  call void %14(ptr noundef %28, ptr noundef nonnull %7, i32 noundef 0) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #28
  br label %56

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #28
  %43 = load i64, ptr %6, align 8
  %44 = tail call noundef i64 @llvm.bswap.i64(i64 %43)
  store i64 %44, ptr %8, align 8
  call void %14(ptr noundef %28, ptr noundef nonnull %8, i32 noundef 1) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #28
  br label %56

45:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #28
  %46 = load i64, ptr %6, align 8
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %48 = load i64, ptr %47, align 8
  %49 = tail call noundef i64 @llvm.bswap.i64(i64 %48)
  %50 = tail call noundef i64 @llvm.bswap.i64(i64 %46)
  store i64 %49, ptr %9, align 8
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %50, ptr %51, align 8
  call void %14(ptr noundef %28, ptr noundef nonnull %9, i32 noundef 2) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #28
  br label %56

52:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #28
  %53 = load i64, ptr %6, align 8
  %54 = tail call noundef i64 @llvm.bswap.i64(i64 %53)
  store i64 %54, ptr %10, align 8
  call void %14(ptr noundef %28, ptr noundef nonnull %10, i32 noundef 3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #28
  br label %56

55:                                               ; preds = %38
  tail call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.5, i32 noundef 474, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_hashFile) #29
  unreachable

56:                                               ; preds = %31, %39, %42, %45, %52, %18, %34, %24
  %57 = phi i32 [ %35, %34 ], [ 2, %24 ], [ 4, %18 ], [ 0, %52 ], [ 0, %45 ], [ 0, %42 ], [ 0, %39 ], [ 5, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #28
  ret i32 %57
}

declare i32 @XSUM_isDirectory(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @XSUM_printLine_GNU(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @XSUM_printLine_GNU_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @XSUM_display_BigEndian)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @XSUM_printLine_GNU_LE(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @XSUM_printLine_GNU_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @XSUM_display_LittleEndian)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @XSUM_printLine_BSD(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @XSUM_printLine_BSD_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @XSUM_algoName, ptr noundef nonnull @XSUM_display_BigEndian)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @XSUM_printLine_BSD_LE(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @XSUM_printLine_BSD_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @XSUM_algoLE_name, ptr noundef nonnull @XSUM_display_LittleEndian)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @XSUM_printLine_GNU_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = icmp ult i32 %2, 5
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.5, i32 noundef 364, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_printLine_GNU_internal) #29
  unreachable

7:                                                ; preds = %4
  %8 = zext nneg i32 %2 to i64
  %9 = getelementptr inbounds nuw [4 x i64], ptr @XSUM_algoLength, i64 0, i64 %8
  %10 = load i64, ptr %9, align 8
  %11 = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 92) #27
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 10) #27
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 13) #27
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %7, %13, %16
  %20 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.90, i32 noundef 92) #28
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi i1 [ false, %19 ], [ true, %16 ]
  %23 = icmp eq i32 %2, 3
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.99) #28
  br label %26

26:                                               ; preds = %21, %24
  tail call void %3(ptr noundef %1, i64 noundef %10) #28, !callees !168
  %27 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.113) #28
  br i1 %22, label %28, label %30

28:                                               ; preds = %26
  %29 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.100, ptr noundef %0) #28
  br label %44

30:                                               ; preds = %26, %42
  %31 = phi ptr [ %43, %42 ], [ %0, %26 ]
  %32 = load i8, ptr %31, align 1
  switch i8 %32, label %39 [
    i8 0, label %44
    i8 10, label %33
    i8 13, label %35
    i8 92, label %37
  ]

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.101) #28
  br label %42

35:                                               ; preds = %30
  %36 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.102) #28
  br label %42

37:                                               ; preds = %30
  %38 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.103) #28
  br label %42

39:                                               ; preds = %30
  %40 = sext i8 %32 to i32
  %41 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.90, i32 noundef %40) #28
  br label %42

42:                                               ; preds = %39, %37, %35, %33
  %43 = getelementptr inbounds nuw i8, ptr %31, i64 1
  br label %30, !llvm.loop !19

44:                                               ; preds = %30, %28
  %45 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.39) #28
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @XSUM_display_BigEndian(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %10, %4 ], [ 0, %2 ]
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.114, i32 noundef %8) #28
  %10 = add nuw i64 %5, 1
  %11 = icmp eq i64 %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !169

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @XSUM_display_LittleEndian(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %12, %6 ], [ %5, %4 ]
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.114, i32 noundef %10) #28
  %12 = add i64 %7, -1
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %6, label %14, !llvm.loop !170

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @XSUM_printLine_BSD_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = icmp ult i32 %2, 5
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.5, i32 noundef 328, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_printLine_BSD_internal) #29
  unreachable

8:                                                ; preds = %5
  %9 = zext nneg i32 %2 to i64
  %10 = getelementptr inbounds nuw ptr, ptr %3, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw [4 x i64], ptr @XSUM_algoLength, i64 0, i64 %9
  %13 = load i64, ptr %12, align 8
  %14 = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 92) #27
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 10) #27
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 13) #27
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.115, ptr noundef %11) #28
  %24 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.100, ptr noundef %0) #28
  br label %42

25:                                               ; preds = %8, %16, %19
  %26 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.90, i32 noundef 92) #28
  %27 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.115, ptr noundef %11) #28
  br label %28

28:                                               ; preds = %40, %25
  %29 = phi ptr [ %41, %40 ], [ %0, %25 ]
  %30 = load i8, ptr %29, align 1
  switch i8 %30, label %37 [
    i8 0, label %42
    i8 10, label %31
    i8 13, label %33
    i8 92, label %35
  ]

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.101) #28
  br label %40

33:                                               ; preds = %28
  %34 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.102) #28
  br label %40

35:                                               ; preds = %28
  %36 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.103) #28
  br label %40

37:                                               ; preds = %28
  %38 = sext i8 %30 to i32
  %39 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.90, i32 noundef %38) #28
  br label %40

40:                                               ; preds = %37, %35, %33, %31
  %41 = getelementptr inbounds nuw i8, ptr %29, i64 1
  br label %28, !llvm.loop !19

42:                                               ; preds = %28, %22
  %43 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.116) #28
  tail call void %4(ptr noundef %1, i64 noundef %13) #28, !callees !168
  %44 = tail call i32 (ptr, ...) @XSUM_output(ptr noundef nonnull @.str.39) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #23 = { mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { cold noreturn nounwind }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind allocsize(1) }
attributes #34 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH32_consumeLong: argument 0"}
!22 = distinct !{!22, !"XXH32_consumeLong"}
!23 = !{i64 2148364681}
!24 = !{!25}
!25 = distinct !{!25, !22, !"XXH32_consumeLong: argument 1"}
!26 = distinct !{!26, !8}
!27 = !{!28}
!28 = distinct !{!28, !29, !"XXH64_consumeLong: argument 0"}
!29 = distinct !{!29, !"XXH64_consumeLong"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"XXH64_consumeLong: argument 1"}
!32 = distinct !{!32, !8}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH64_consumeLong: argument 0"}
!35 = distinct !{!35, !"XXH64_consumeLong"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"XXH64_consumeLong: argument 1"}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !8}
!47 = !{!48}
!48 = distinct !{!48, !49, !"XXH3_scalarScrambleRound: argument 0"}
!49 = distinct !{!49, !"XXH3_scalarScrambleRound"}
!50 = !{!51, !52}
!51 = distinct !{!51, !49, !"XXH3_scalarScrambleRound: argument 1"}
!52 = distinct !{!52, !53, !"XXH3_consumeStripes: argument 1"}
!53 = distinct !{!53, !"XXH3_consumeStripes"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_scalarRound: argument 0"}
!56 = distinct !{!56, !"XXH3_scalarRound"}
!57 = !{!58, !59, !52}
!58 = distinct !{!58, !56, !"XXH3_scalarRound: argument 1"}
!59 = distinct !{!59, !56, !"XXH3_scalarRound: argument 2"}
!60 = !{!52}
!61 = distinct !{!61, !8}
!62 = distinct !{!62, !8}
!63 = !{!64}
!64 = distinct !{!64, !65, !"XXH3_scalarRound: argument 0"}
!65 = distinct !{!65, !"XXH3_scalarRound"}
!66 = !{!67, !68, !52}
!67 = distinct !{!67, !65, !"XXH3_scalarRound: argument 1"}
!68 = distinct !{!68, !65, !"XXH3_scalarRound: argument 2"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"XXH3_scalarRound: argument 0"}
!71 = distinct !{!71, !"XXH3_scalarRound"}
!72 = !{!73, !74}
!73 = distinct !{!73, !71, !"XXH3_scalarRound: argument 1"}
!74 = distinct !{!74, !71, !"XXH3_scalarRound: argument 2"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"XXH3_consumeStripes: argument 1"}
!77 = distinct !{!77, !"XXH3_consumeStripes"}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"XXH3_mergeAccs: argument 1"}
!80 = distinct !{!80, !"XXH3_mergeAccs"}
!81 = distinct !{!81, !82, !"XXH3_finalizeLong_64b: argument 1"}
!82 = distinct !{!82, !"XXH3_finalizeLong_64b"}
!83 = !{!84, !85}
!84 = distinct !{!84, !80, !"XXH3_mergeAccs: argument 0"}
!85 = distinct !{!85, !82, !"XXH3_finalizeLong_64b: argument 0"}
!86 = distinct !{!86, !8}
!87 = distinct !{!87, !8}
!88 = !{!89}
!89 = distinct !{!89, !90, !"XXH3_update: argument 1"}
!90 = distinct !{!90, !"XXH3_update"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"XXH3_update: argument 0"}
!93 = !{!92, !89}
!94 = !{!95}
!95 = distinct !{!95, !96, !"XXH3_consumeStripes: argument 1"}
!96 = distinct !{!96, !"XXH3_consumeStripes"}
!97 = !{!98, !99, !100}
!98 = distinct !{!98, !96, !"XXH3_consumeStripes: argument 0"}
!99 = distinct !{!99, !96, !"XXH3_consumeStripes: argument 2"}
!100 = distinct !{!100, !96, !"XXH3_consumeStripes: argument 3"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"XXH3_scalarRound: argument 0"}
!103 = distinct !{!103, !"XXH3_scalarRound"}
!104 = !{!105, !106, !95}
!105 = distinct !{!105, !103, !"XXH3_scalarRound: argument 1"}
!106 = distinct !{!106, !103, !"XXH3_scalarRound: argument 2"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"XXH3_scalarScrambleRound: argument 0"}
!109 = distinct !{!109, !"XXH3_scalarScrambleRound"}
!110 = !{!111, !95}
!111 = distinct !{!111, !109, !"XXH3_scalarScrambleRound: argument 1"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"XXH3_scalarRound: argument 0"}
!114 = distinct !{!114, !"XXH3_scalarRound"}
!115 = !{!116, !117, !95}
!116 = distinct !{!116, !114, !"XXH3_scalarRound: argument 1"}
!117 = distinct !{!117, !114, !"XXH3_scalarRound: argument 2"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"XXH3_consumeStripes: argument 1"}
!120 = distinct !{!120, !"XXH3_consumeStripes"}
!121 = !{!122, !123, !124}
!122 = distinct !{!122, !120, !"XXH3_consumeStripes: argument 0"}
!123 = distinct !{!123, !120, !"XXH3_consumeStripes: argument 2"}
!124 = distinct !{!124, !120, !"XXH3_consumeStripes: argument 3"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"XXH3_scalarScrambleRound: argument 0"}
!127 = distinct !{!127, !"XXH3_scalarScrambleRound"}
!128 = !{!129, !119}
!129 = distinct !{!129, !127, !"XXH3_scalarScrambleRound: argument 1"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"XXH3_scalarRound: argument 0"}
!132 = distinct !{!132, !"XXH3_scalarRound"}
!133 = !{!134, !135, !119}
!134 = distinct !{!134, !132, !"XXH3_scalarRound: argument 1"}
!135 = distinct !{!135, !132, !"XXH3_scalarRound: argument 2"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"XXH3_scalarRound: argument 0"}
!138 = distinct !{!138, !"XXH3_scalarRound"}
!139 = !{!140, !141, !119}
!140 = distinct !{!140, !138, !"XXH3_scalarRound: argument 1"}
!141 = distinct !{!141, !138, !"XXH3_scalarRound: argument 2"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"XXH3_finalizeLong_64b: argument 0"}
!144 = distinct !{!144, !"XXH3_finalizeLong_64b"}
!145 = !{!146}
!146 = distinct !{!146, !144, !"XXH3_finalizeLong_64b: argument 1"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"XXH3_mergeAccs: argument 0"}
!149 = distinct !{!149, !"XXH3_mergeAccs"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"XXH3_mergeAccs: argument 1"}
!152 = !{!153, !148, !143}
!153 = distinct !{!153, !154, !"XXH3_mix2Accs: argument 0"}
!154 = distinct !{!154, !"XXH3_mix2Accs"}
!155 = !{!156, !151, !146}
!156 = distinct !{!156, !154, !"XXH3_mix2Accs: argument 1"}
!157 = !{!151, !146}
!158 = !{!148, !143}
!159 = !{!160}
!160 = distinct !{!160, !161, !"XXH3_mergeAccs: argument 1"}
!161 = distinct !{!161, !"XXH3_mergeAccs"}
!162 = !{!163}
!163 = distinct !{!163, !161, !"XXH3_mergeAccs: argument 0"}
!164 = distinct !{!164, !8}
!165 = !{i64 2152353862}
!166 = distinct !{!166, !8}
!167 = distinct !{!167, !8}
!168 = !{ptr @XSUM_display_BigEndian, ptr @XSUM_display_LittleEndian}
!169 = distinct !{!169, !8}
!170 = distinct !{!170, !8}
