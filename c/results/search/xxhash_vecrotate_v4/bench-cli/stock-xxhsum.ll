; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/repos/xxHash/cli/xxhsum.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/repos/xxHash/cli/xxhsum.c"
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
@.str.5 = private unnamed_addr constant [65 x i8] c"/srv/home/hantaolou/code/veriop/alive2/repos/xxHash/cli/xxhsum.c\00", align 1
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
@.str.23 = private unnamed_addr constant [16 x i8] c"x86_64 + AVX512\00", align 1
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
  br i1 %103, label %385, label %104

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
  br i1 %117, label %118, label %364

118:                                              ; preds = %104, %365
  %119 = phi i32 [ %366, %365 ], [ 0, %104 ]
  %120 = phi i32 [ %367, %365 ], [ 0, %104 ]
  %121 = phi i32 [ %368, %365 ], [ 0, %104 ]
  %122 = phi i32 [ %369, %365 ], [ 0, %104 ]
  %123 = phi i64 [ %380, %365 ], [ %102, %104 ]
  %124 = phi i64 [ %379, %365 ], [ 0, %104 ]
  %125 = phi i64 [ %378, %365 ], [ %22, %104 ]
  %126 = phi i64 [ %377, %365 ], [ %23, %104 ]
  %127 = phi i64 [ %376, %365 ], [ %2, %104 ]
  %128 = phi i64 [ %375, %365 ], [ %26, %104 ]
  %129 = phi i32 [ %374, %365 ], [ 0, %104 ]
  %130 = phi i32 [ %373, %365 ], [ %15, %104 ]
  %131 = phi i32 [ %372, %365 ], [ %16, %104 ]
  %132 = phi i32 [ %371, %365 ], [ %13, %104 ]
  %133 = phi i32 [ %370, %365 ], [ %19, %104 ]
  switch i32 %1, label %363 [
    i32 0, label %134
    i32 1, label %251
    i32 2, label %362
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
  br i1 %240, label %241, label %365

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
  br label %365

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
  br label %356

262:                                              ; preds = %251
  %263 = getelementptr inbounds nuw i8, ptr %3, i64 %123
  %264 = icmp eq i32 %121, 0
  br i1 %264, label %295, label %265

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
  %276 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %275) #34, !srcloc !30
  store i64 %276, ptr %21, align 8, !alias.scope !27, !noalias !31
  %277 = load i64, ptr %108, align 8, !noalias !27
  %278 = mul i64 %277, -4417276706812531889
  %279 = add i64 %278, %126
  %280 = tail call i64 @llvm.fshl.i64(i64 %279, i64 %279, i64 31)
  %281 = mul i64 %280, -7046029288634856825
  %282 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %281) #34, !srcloc !30
  store i64 %282, ptr %24, align 8, !alias.scope !27, !noalias !31
  %283 = load i64, ptr %109, align 8, !noalias !27
  %284 = mul i64 %283, -4417276706812531889
  %285 = add i64 %284, %127
  %286 = tail call i64 @llvm.fshl.i64(i64 %285, i64 %285, i64 31)
  %287 = mul i64 %286, -7046029288634856825
  %288 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %287) #34, !srcloc !30
  store i64 %288, ptr %25, align 8, !alias.scope !27, !noalias !31
  %289 = load i64, ptr %110, align 8, !noalias !27
  %290 = mul i64 %289, -4417276706812531889
  %291 = add i64 %290, %128
  %292 = tail call i64 @llvm.fshl.i64(i64 %291, i64 %291, i64 31)
  %293 = mul i64 %292, -7046029288634856825
  %294 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %293) #34, !srcloc !30
  store i64 %294, ptr %27, align 8, !alias.scope !27, !noalias !31
  store i32 0, ptr %106, align 8
  br label %295

295:                                              ; preds = %265, %262
  %296 = phi i64 [ %294, %265 ], [ %128, %262 ]
  %297 = phi i64 [ %288, %265 ], [ %127, %262 ]
  %298 = phi i64 [ %282, %265 ], [ %126, %262 ]
  %299 = phi i64 [ %276, %265 ], [ %125, %262 ]
  %300 = phi ptr [ %270, %265 ], [ %3, %262 ]
  %301 = icmp ule ptr %300, %263
  tail call void @llvm.assume(i1 %301)
  %302 = ptrtoint ptr %263 to i64
  %303 = ptrtoint ptr %300 to i64
  %304 = sub i64 %302, %303
  %305 = icmp ugt i64 %304, 31
  br i1 %305, label %306, label %345

306:                                              ; preds = %295
  %307 = getelementptr inbounds nuw i8, ptr %300, i64 %304
  %308 = getelementptr inbounds i8, ptr %307, i64 -31
  br label %309

309:                                              ; preds = %309, %306
  %310 = phi i64 [ %296, %306 ], [ %341, %309 ]
  %311 = phi i64 [ %297, %306 ], [ %334, %309 ]
  %312 = phi i64 [ %298, %306 ], [ %327, %309 ]
  %313 = phi i64 [ %299, %306 ], [ %320, %309 ]
  %314 = phi ptr [ %300, %306 ], [ %342, %309 ]
  %315 = load i64, ptr %314, align 1
  %316 = mul i64 %315, -4417276706812531889
  %317 = add i64 %316, %313
  %318 = tail call i64 @llvm.fshl.i64(i64 %317, i64 %317, i64 31)
  %319 = mul i64 %318, -7046029288634856825
  %320 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %319) #34, !srcloc !30
  %321 = getelementptr inbounds nuw i8, ptr %314, i64 8
  %322 = load i64, ptr %321, align 1
  %323 = mul i64 %322, -4417276706812531889
  %324 = add i64 %323, %312
  %325 = tail call i64 @llvm.fshl.i64(i64 %324, i64 %324, i64 31)
  %326 = mul i64 %325, -7046029288634856825
  %327 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %326) #34, !srcloc !30
  %328 = getelementptr inbounds nuw i8, ptr %314, i64 16
  %329 = load i64, ptr %328, align 1
  %330 = mul i64 %329, -4417276706812531889
  %331 = add i64 %330, %311
  %332 = tail call i64 @llvm.fshl.i64(i64 %331, i64 %331, i64 31)
  %333 = mul i64 %332, -7046029288634856825
  %334 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %333) #34, !srcloc !30
  %335 = getelementptr inbounds nuw i8, ptr %314, i64 24
  %336 = load i64, ptr %335, align 1
  %337 = mul i64 %336, -4417276706812531889
  %338 = add i64 %337, %310
  %339 = tail call i64 @llvm.fshl.i64(i64 %338, i64 %338, i64 31)
  %340 = mul i64 %339, -7046029288634856825
  %341 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %340) #34, !srcloc !30
  %342 = getelementptr inbounds nuw i8, ptr %314, i64 32
  %343 = icmp ult ptr %342, %308
  br i1 %343, label %309, label %344, !llvm.loop !33

344:                                              ; preds = %309
  store i64 %320, ptr %21, align 8
  store i64 %327, ptr %24, align 8
  store i64 %334, ptr %25, align 8
  store i64 %341, ptr %27, align 8
  br label %345

345:                                              ; preds = %344, %295
  %346 = phi i64 [ %296, %295 ], [ %341, %344 ]
  %347 = phi i64 [ %297, %295 ], [ %334, %344 ]
  %348 = phi i64 [ %298, %295 ], [ %327, %344 ]
  %349 = phi i64 [ %299, %295 ], [ %320, %344 ]
  %350 = phi ptr [ %300, %295 ], [ %342, %344 ]
  %351 = icmp ult ptr %350, %263
  br i1 %351, label %352, label %365

352:                                              ; preds = %345
  %353 = ptrtoint ptr %350 to i64
  %354 = sub i64 %302, %353
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %107, ptr align 1 %350, i64 %354, i1 false)
  %355 = trunc i64 %354 to i32
  br label %356

356:                                              ; preds = %352, %257
  %357 = phi i64 [ %346, %352 ], [ %128, %257 ]
  %358 = phi i64 [ %347, %352 ], [ %127, %257 ]
  %359 = phi i64 [ %348, %352 ], [ %126, %257 ]
  %360 = phi i64 [ %349, %352 ], [ %125, %257 ]
  %361 = phi i32 [ %355, %352 ], [ %261, %257 ]
  store i32 %361, ptr %106, align 8
  br label %365

362:                                              ; preds = %118
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %12, ptr nocapture noundef %3, i64 noundef range(i64 1, 0) %123)
  br label %365

363:                                              ; preds = %118
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %12, ptr nocapture noundef %3, i64 noundef range(i64 1, 0) %123)
  br label %365

364:                                              ; preds = %104
  tail call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.5, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_hashStream) #29
  unreachable

365:                                              ; preds = %356, %345, %245, %234, %363, %362
  %366 = phi i32 [ %119, %356 ], [ %119, %345 ], [ %250, %245 ], [ %184, %234 ], [ %119, %363 ], [ %119, %362 ]
  %367 = phi i32 [ %120, %356 ], [ %120, %345 ], [ %250, %245 ], [ 0, %234 ], [ %120, %363 ], [ %120, %362 ]
  %368 = phi i32 [ %361, %356 ], [ 0, %345 ], [ %121, %245 ], [ %121, %234 ], [ %121, %363 ], [ %121, %362 ]
  %369 = phi i32 [ %122, %356 ], [ %122, %345 ], [ %141, %245 ], [ %141, %234 ], [ %122, %363 ], [ %122, %362 ]
  %370 = phi i32 [ %133, %356 ], [ %133, %345 ], [ %246, %245 ], [ %235, %234 ], [ %133, %363 ], [ %133, %362 ]
  %371 = phi i32 [ %132, %356 ], [ %132, %345 ], [ %247, %245 ], [ %236, %234 ], [ %132, %363 ], [ %132, %362 ]
  %372 = phi i32 [ %131, %356 ], [ %131, %345 ], [ %248, %245 ], [ %237, %234 ], [ %131, %363 ], [ %131, %362 ]
  %373 = phi i32 [ %130, %356 ], [ %130, %345 ], [ %249, %245 ], [ %238, %234 ], [ %130, %363 ], [ %130, %362 ]
  %374 = phi i32 [ %129, %356 ], [ %129, %345 ], [ %136, %245 ], [ %136, %234 ], [ %129, %363 ], [ %129, %362 ]
  %375 = phi i64 [ %357, %356 ], [ %346, %345 ], [ %128, %245 ], [ %128, %234 ], [ %128, %363 ], [ %128, %362 ]
  %376 = phi i64 [ %358, %356 ], [ %347, %345 ], [ %127, %245 ], [ %127, %234 ], [ %127, %363 ], [ %127, %362 ]
  %377 = phi i64 [ %359, %356 ], [ %348, %345 ], [ %126, %245 ], [ %126, %234 ], [ %126, %363 ], [ %126, %362 ]
  %378 = phi i64 [ %360, %356 ], [ %349, %345 ], [ %125, %245 ], [ %125, %234 ], [ %125, %363 ], [ %125, %362 ]
  %379 = phi i64 [ %252, %356 ], [ %252, %345 ], [ %124, %245 ], [ %124, %234 ], [ %124, %363 ], [ %124, %362 ]
  %380 = tail call i64 @fread(ptr noundef %3, i64 noundef 1, i64 noundef %4, ptr noundef %0)
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %118, !llvm.loop !34

382:                                              ; preds = %365
  %383 = icmp eq i32 %369, 0
  %384 = and i32 %366, 15
  br label %385

385:                                              ; preds = %382, %97
  %386 = phi i32 [ %384, %382 ], [ 0, %97 ]
  %387 = phi i32 [ %374, %382 ], [ 0, %97 ]
  %388 = phi i32 [ %370, %382 ], [ %19, %97 ]
  %389 = phi i32 [ %371, %382 ], [ %13, %97 ]
  %390 = phi i32 [ %372, %382 ], [ %16, %97 ]
  %391 = phi i32 [ %373, %382 ], [ %15, %97 ]
  %392 = phi i1 [ %383, %382 ], [ true, %97 ]
  %393 = phi i64 [ %375, %382 ], [ %26, %97 ]
  %394 = phi i64 [ %377, %382 ], [ %23, %97 ]
  %395 = phi i64 [ %378, %382 ], [ %22, %97 ]
  %396 = phi i64 [ %376, %382 ], [ %2, %97 ]
  %397 = phi i64 [ %379, %382 ], [ 0, %97 ]
  %398 = tail call i32 @ferror(ptr noundef %0) #28
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %3065

400:                                              ; preds = %385
  switch i32 %1, label %3064 [
    i32 0, label %401
    i32 1, label %602
    i32 2, label %780
    i32 3, label %1991
  ]

401:                                              ; preds = %400
  br i1 %392, label %410, label %402

402:                                              ; preds = %401
  %403 = tail call i32 @llvm.fshl.i32(i32 %391, i32 %391, i32 1)
  %404 = tail call i32 @llvm.fshl.i32(i32 %390, i32 %390, i32 7)
  %405 = add i32 %404, %403
  %406 = tail call i32 @llvm.fshl.i32(i32 %389, i32 %389, i32 12)
  %407 = add i32 %405, %406
  %408 = tail call i32 @llvm.fshl.i32(i32 %388, i32 %388, i32 18)
  %409 = add i32 %407, %408
  br label %412

410:                                              ; preds = %401
  %411 = add i32 %389, 374761393
  br label %412

412:                                              ; preds = %410, %402
  %413 = phi i32 [ %409, %402 ], [ %411, %410 ]
  %414 = add i32 %387, %413
  %415 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %416 = zext nneg i32 %386 to i64
  %417 = icmp samesign ugt i32 %386, 3
  br i1 %417, label %418, label %447

418:                                              ; preds = %412
  %419 = add nsw i64 %416, -4
  %420 = lshr i64 %419, 2
  %421 = add nuw nsw i64 %420, 1
  %422 = and i64 %421, 7
  %423 = and i64 %419, 28
  %424 = icmp eq i64 %423, 28
  br i1 %424, label %439, label %425

425:                                              ; preds = %418, %425
  %426 = phi i32 [ %435, %425 ], [ %414, %418 ]
  %427 = phi i64 [ %436, %425 ], [ %416, %418 ]
  %428 = phi ptr [ %433, %425 ], [ %415, %418 ]
  %429 = phi i64 [ %437, %425 ], [ 0, %418 ]
  %430 = load i32, ptr %428, align 4
  %431 = mul i32 %430, -1028477379
  %432 = add i32 %431, %426
  %433 = getelementptr inbounds nuw i8, ptr %428, i64 4
  %434 = tail call i32 @llvm.fshl.i32(i32 %432, i32 %432, i32 17)
  %435 = mul i32 %434, 668265263
  %436 = add nsw i64 %427, -4
  %437 = add i64 %429, 1
  %438 = icmp eq i64 %437, %422
  br i1 %438, label %439, label %425, !llvm.loop !35

439:                                              ; preds = %425, %418
  %440 = phi i32 [ %414, %418 ], [ %435, %425 ]
  %441 = phi i64 [ %416, %418 ], [ %436, %425 ]
  %442 = phi ptr [ %415, %418 ], [ %433, %425 ]
  %443 = phi ptr [ poison, %418 ], [ %433, %425 ]
  %444 = phi i32 [ poison, %418 ], [ %435, %425 ]
  %445 = phi i64 [ poison, %418 ], [ %436, %425 ]
  %446 = icmp ult i64 %419, 28
  br i1 %446, label %447, label %476

447:                                              ; preds = %439, %476, %412
  %448 = phi ptr [ %415, %412 ], [ %443, %439 ], [ %525, %476 ]
  %449 = phi i64 [ %416, %412 ], [ %445, %439 ], [ %528, %476 ]
  %450 = phi i32 [ %414, %412 ], [ %444, %439 ], [ %527, %476 ]
  %451 = icmp eq i64 %449, 0
  br i1 %451, label %592, label %452

452:                                              ; preds = %447
  %453 = and i64 %449, 7
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %470, label %455

455:                                              ; preds = %452, %455
  %456 = phi i32 [ %466, %455 ], [ %450, %452 ]
  %457 = phi i64 [ %467, %455 ], [ %449, %452 ]
  %458 = phi ptr [ %460, %455 ], [ %448, %452 ]
  %459 = phi i64 [ %468, %455 ], [ 0, %452 ]
  %460 = getelementptr inbounds nuw i8, ptr %458, i64 1
  %461 = load i8, ptr %458, align 1
  %462 = zext i8 %461 to i32
  %463 = mul i32 %462, 374761393
  %464 = add i32 %463, %456
  %465 = tail call i32 @llvm.fshl.i32(i32 %464, i32 %464, i32 11)
  %466 = mul i32 %465, -1640531535
  %467 = add nsw i64 %457, -1
  %468 = add i64 %459, 1
  %469 = icmp eq i64 %468, %453
  br i1 %469, label %470, label %455, !llvm.loop !36

470:                                              ; preds = %455, %452
  %471 = phi i32 [ poison, %452 ], [ %466, %455 ]
  %472 = phi i32 [ %450, %452 ], [ %466, %455 ]
  %473 = phi i64 [ %449, %452 ], [ %467, %455 ]
  %474 = phi ptr [ %448, %452 ], [ %460, %455 ]
  %475 = icmp ult i64 %449, 8
  br i1 %475, label %592, label %530

476:                                              ; preds = %439, %476
  %477 = phi i32 [ %527, %476 ], [ %440, %439 ]
  %478 = phi i64 [ %528, %476 ], [ %441, %439 ]
  %479 = phi ptr [ %525, %476 ], [ %442, %439 ]
  %480 = load i32, ptr %479, align 4
  %481 = mul i32 %480, -1028477379
  %482 = add i32 %481, %477
  %483 = getelementptr inbounds nuw i8, ptr %479, i64 4
  %484 = tail call i32 @llvm.fshl.i32(i32 %482, i32 %482, i32 17)
  %485 = mul i32 %484, 668265263
  %486 = load i32, ptr %483, align 4
  %487 = mul i32 %486, -1028477379
  %488 = add i32 %487, %485
  %489 = getelementptr inbounds nuw i8, ptr %479, i64 8
  %490 = tail call i32 @llvm.fshl.i32(i32 %488, i32 %488, i32 17)
  %491 = mul i32 %490, 668265263
  %492 = load i32, ptr %489, align 4
  %493 = mul i32 %492, -1028477379
  %494 = add i32 %493, %491
  %495 = getelementptr inbounds nuw i8, ptr %479, i64 12
  %496 = tail call i32 @llvm.fshl.i32(i32 %494, i32 %494, i32 17)
  %497 = mul i32 %496, 668265263
  %498 = load i32, ptr %495, align 4
  %499 = mul i32 %498, -1028477379
  %500 = add i32 %499, %497
  %501 = getelementptr inbounds nuw i8, ptr %479, i64 16
  %502 = tail call i32 @llvm.fshl.i32(i32 %500, i32 %500, i32 17)
  %503 = mul i32 %502, 668265263
  %504 = load i32, ptr %501, align 4
  %505 = mul i32 %504, -1028477379
  %506 = add i32 %505, %503
  %507 = getelementptr inbounds nuw i8, ptr %479, i64 20
  %508 = tail call i32 @llvm.fshl.i32(i32 %506, i32 %506, i32 17)
  %509 = mul i32 %508, 668265263
  %510 = load i32, ptr %507, align 4
  %511 = mul i32 %510, -1028477379
  %512 = add i32 %511, %509
  %513 = getelementptr inbounds nuw i8, ptr %479, i64 24
  %514 = tail call i32 @llvm.fshl.i32(i32 %512, i32 %512, i32 17)
  %515 = mul i32 %514, 668265263
  %516 = load i32, ptr %513, align 4
  %517 = mul i32 %516, -1028477379
  %518 = add i32 %517, %515
  %519 = getelementptr inbounds nuw i8, ptr %479, i64 28
  %520 = tail call i32 @llvm.fshl.i32(i32 %518, i32 %518, i32 17)
  %521 = mul i32 %520, 668265263
  %522 = load i32, ptr %519, align 4
  %523 = mul i32 %522, -1028477379
  %524 = add i32 %523, %521
  %525 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %526 = tail call i32 @llvm.fshl.i32(i32 %524, i32 %524, i32 17)
  %527 = mul i32 %526, 668265263
  %528 = add nsw i64 %478, -32
  %529 = icmp ugt i64 %528, 3
  br i1 %529, label %476, label %447, !llvm.loop !37

530:                                              ; preds = %470, %530
  %531 = phi i32 [ %589, %530 ], [ %472, %470 ]
  %532 = phi i64 [ %590, %530 ], [ %473, %470 ]
  %533 = phi ptr [ %583, %530 ], [ %474, %470 ]
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 1
  %535 = load i8, ptr %533, align 1
  %536 = zext i8 %535 to i32
  %537 = mul i32 %536, 374761393
  %538 = add i32 %537, %531
  %539 = tail call i32 @llvm.fshl.i32(i32 %538, i32 %538, i32 11)
  %540 = mul i32 %539, -1640531535
  %541 = getelementptr inbounds nuw i8, ptr %533, i64 2
  %542 = load i8, ptr %534, align 1
  %543 = zext i8 %542 to i32
  %544 = mul i32 %543, 374761393
  %545 = add i32 %544, %540
  %546 = tail call i32 @llvm.fshl.i32(i32 %545, i32 %545, i32 11)
  %547 = mul i32 %546, -1640531535
  %548 = getelementptr inbounds nuw i8, ptr %533, i64 3
  %549 = load i8, ptr %541, align 1
  %550 = zext i8 %549 to i32
  %551 = mul i32 %550, 374761393
  %552 = add i32 %551, %547
  %553 = tail call i32 @llvm.fshl.i32(i32 %552, i32 %552, i32 11)
  %554 = mul i32 %553, -1640531535
  %555 = getelementptr inbounds nuw i8, ptr %533, i64 4
  %556 = load i8, ptr %548, align 1
  %557 = zext i8 %556 to i32
  %558 = mul i32 %557, 374761393
  %559 = add i32 %558, %554
  %560 = tail call i32 @llvm.fshl.i32(i32 %559, i32 %559, i32 11)
  %561 = mul i32 %560, -1640531535
  %562 = getelementptr inbounds nuw i8, ptr %533, i64 5
  %563 = load i8, ptr %555, align 1
  %564 = zext i8 %563 to i32
  %565 = mul i32 %564, 374761393
  %566 = add i32 %565, %561
  %567 = tail call i32 @llvm.fshl.i32(i32 %566, i32 %566, i32 11)
  %568 = mul i32 %567, -1640531535
  %569 = getelementptr inbounds nuw i8, ptr %533, i64 6
  %570 = load i8, ptr %562, align 1
  %571 = zext i8 %570 to i32
  %572 = mul i32 %571, 374761393
  %573 = add i32 %572, %568
  %574 = tail call i32 @llvm.fshl.i32(i32 %573, i32 %573, i32 11)
  %575 = mul i32 %574, -1640531535
  %576 = getelementptr inbounds nuw i8, ptr %533, i64 7
  %577 = load i8, ptr %569, align 1
  %578 = zext i8 %577 to i32
  %579 = mul i32 %578, 374761393
  %580 = add i32 %579, %575
  %581 = tail call i32 @llvm.fshl.i32(i32 %580, i32 %580, i32 11)
  %582 = mul i32 %581, -1640531535
  %583 = getelementptr inbounds nuw i8, ptr %533, i64 8
  %584 = load i8, ptr %576, align 1
  %585 = zext i8 %584 to i32
  %586 = mul i32 %585, 374761393
  %587 = add i32 %586, %582
  %588 = tail call i32 @llvm.fshl.i32(i32 %587, i32 %587, i32 11)
  %589 = mul i32 %588, -1640531535
  %590 = add nsw i64 %532, -8
  %591 = icmp eq i64 %590, 0
  br i1 %591, label %592, label %530, !llvm.loop !38

592:                                              ; preds = %470, %530, %447
  %593 = phi i32 [ %450, %447 ], [ %471, %470 ], [ %589, %530 ]
  %594 = lshr i32 %593, 15
  %595 = xor i32 %594, %593
  %596 = mul i32 %595, -2048144777
  %597 = lshr i32 %596, 13
  %598 = xor i32 %597, %596
  %599 = mul i32 %598, -1028477379
  %600 = lshr i32 %599, 16
  %601 = xor i32 %600, %599
  store i32 %601, ptr %5, align 8
  br label %3065

602:                                              ; preds = %400
  %603 = icmp ugt i64 %397, 31
  br i1 %603, label %604, label %640

604:                                              ; preds = %602
  %605 = tail call i64 @llvm.fshl.i64(i64 %395, i64 %395, i64 1)
  %606 = tail call i64 @llvm.fshl.i64(i64 %394, i64 %394, i64 7)
  %607 = add i64 %606, %605
  %608 = tail call i64 @llvm.fshl.i64(i64 %396, i64 %396, i64 12)
  %609 = add i64 %607, %608
  %610 = tail call i64 @llvm.fshl.i64(i64 %393, i64 %393, i64 18)
  %611 = add i64 %609, %610
  %612 = mul i64 %395, -4417276706812531889
  %613 = tail call i64 @llvm.fshl.i64(i64 %612, i64 %612, i64 31)
  %614 = mul i64 %613, -7046029288634856825
  %615 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %614) #34, !srcloc !30
  %616 = xor i64 %611, %615
  %617 = mul i64 %616, -7046029288634856825
  %618 = add i64 %617, -8796714831421723037
  %619 = mul i64 %394, -4417276706812531889
  %620 = tail call i64 @llvm.fshl.i64(i64 %619, i64 %619, i64 31)
  %621 = mul i64 %620, -7046029288634856825
  %622 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %621) #34, !srcloc !30
  %623 = xor i64 %618, %622
  %624 = mul i64 %623, -7046029288634856825
  %625 = add i64 %624, -8796714831421723037
  %626 = mul i64 %396, -4417276706812531889
  %627 = tail call i64 @llvm.fshl.i64(i64 %626, i64 %626, i64 31)
  %628 = mul i64 %627, -7046029288634856825
  %629 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %628) #34, !srcloc !30
  %630 = xor i64 %625, %629
  %631 = mul i64 %630, -7046029288634856825
  %632 = add i64 %631, -8796714831421723037
  %633 = mul i64 %393, -4417276706812531889
  %634 = tail call i64 @llvm.fshl.i64(i64 %633, i64 %633, i64 31)
  %635 = mul i64 %634, -7046029288634856825
  %636 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %635) #34, !srcloc !30
  %637 = xor i64 %632, %636
  %638 = mul i64 %637, -7046029288634856825
  %639 = add i64 %638, -8796714831421723037
  br label %642

640:                                              ; preds = %602
  %641 = add i64 %396, 2870177450012600261
  br label %642

642:                                              ; preds = %640, %604
  %643 = phi i64 [ %639, %604 ], [ %641, %640 ]
  %644 = add i64 %643, %397
  %645 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %646 = and i64 %397, 31
  %647 = icmp samesign ugt i64 %646, 7
  br i1 %647, label %648, label %664

648:                                              ; preds = %642, %648
  %649 = phi i64 [ %661, %648 ], [ %644, %642 ]
  %650 = phi ptr [ %657, %648 ], [ %645, %642 ]
  %651 = phi i64 [ %662, %648 ], [ %646, %642 ]
  %652 = load i64, ptr %650, align 8
  %653 = mul i64 %652, -4417276706812531889
  %654 = tail call i64 @llvm.fshl.i64(i64 %653, i64 %653, i64 31)
  %655 = mul i64 %654, -7046029288634856825
  %656 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %655) #34, !srcloc !30
  %657 = getelementptr inbounds nuw i8, ptr %650, i64 8
  %658 = xor i64 %656, %649
  %659 = tail call i64 @llvm.fshl.i64(i64 %658, i64 %658, i64 27)
  %660 = mul i64 %659, -7046029288634856825
  %661 = add i64 %660, -8796714831421723037
  %662 = add nsw i64 %651, -8
  %663 = icmp ugt i64 %662, 7
  br i1 %663, label %648, label %664, !llvm.loop !39

664:                                              ; preds = %648, %642
  %665 = phi i64 [ %646, %642 ], [ %662, %648 ]
  %666 = phi ptr [ %645, %642 ], [ %657, %648 ]
  %667 = phi i64 [ %644, %642 ], [ %661, %648 ]
  %668 = icmp samesign ugt i64 %665, 3
  br i1 %668, label %669, label %679

669:                                              ; preds = %664
  %670 = load i32, ptr %666, align 4
  %671 = zext i32 %670 to i64
  %672 = mul i64 %671, -7046029288634856825
  %673 = xor i64 %672, %667
  %674 = getelementptr inbounds nuw i8, ptr %666, i64 4
  %675 = tail call i64 @llvm.fshl.i64(i64 %673, i64 %673, i64 23)
  %676 = mul i64 %675, -4417276706812531889
  %677 = add i64 %676, 1609587929392839161
  %678 = add nsw i64 %665, -4
  br label %679

679:                                              ; preds = %669, %664
  %680 = phi i64 [ %678, %669 ], [ %665, %664 ]
  %681 = phi ptr [ %674, %669 ], [ %666, %664 ]
  %682 = phi i64 [ %677, %669 ], [ %667, %664 ]
  %683 = icmp eq i64 %680, 0
  br i1 %683, label %770, label %684

684:                                              ; preds = %679
  %685 = and i64 %680, 7
  %686 = icmp eq i64 %685, 0
  br i1 %686, label %702, label %687

687:                                              ; preds = %684, %687
  %688 = phi i64 [ %698, %687 ], [ %682, %684 ]
  %689 = phi ptr [ %692, %687 ], [ %681, %684 ]
  %690 = phi i64 [ %699, %687 ], [ %680, %684 ]
  %691 = phi i64 [ %700, %687 ], [ 0, %684 ]
  %692 = getelementptr inbounds nuw i8, ptr %689, i64 1
  %693 = load i8, ptr %689, align 1
  %694 = zext i8 %693 to i64
  %695 = mul i64 %694, 2870177450012600261
  %696 = xor i64 %695, %688
  %697 = tail call i64 @llvm.fshl.i64(i64 %696, i64 %696, i64 11)
  %698 = mul i64 %697, -7046029288634856825
  %699 = add nsw i64 %690, -1
  %700 = add i64 %691, 1
  %701 = icmp eq i64 %700, %685
  br i1 %701, label %702, label %687, !llvm.loop !40

702:                                              ; preds = %687, %684
  %703 = phi i64 [ poison, %684 ], [ %698, %687 ]
  %704 = phi i64 [ %682, %684 ], [ %698, %687 ]
  %705 = phi ptr [ %681, %684 ], [ %692, %687 ]
  %706 = phi i64 [ %680, %684 ], [ %699, %687 ]
  %707 = icmp ult i64 %680, 8
  br i1 %707, label %770, label %708

708:                                              ; preds = %702, %708
  %709 = phi i64 [ %767, %708 ], [ %704, %702 ]
  %710 = phi ptr [ %761, %708 ], [ %705, %702 ]
  %711 = phi i64 [ %768, %708 ], [ %706, %702 ]
  %712 = getelementptr inbounds nuw i8, ptr %710, i64 1
  %713 = load i8, ptr %710, align 1
  %714 = zext i8 %713 to i64
  %715 = mul i64 %714, 2870177450012600261
  %716 = xor i64 %715, %709
  %717 = tail call i64 @llvm.fshl.i64(i64 %716, i64 %716, i64 11)
  %718 = mul i64 %717, -7046029288634856825
  %719 = getelementptr inbounds nuw i8, ptr %710, i64 2
  %720 = load i8, ptr %712, align 1
  %721 = zext i8 %720 to i64
  %722 = mul i64 %721, 2870177450012600261
  %723 = xor i64 %722, %718
  %724 = tail call i64 @llvm.fshl.i64(i64 %723, i64 %723, i64 11)
  %725 = mul i64 %724, -7046029288634856825
  %726 = getelementptr inbounds nuw i8, ptr %710, i64 3
  %727 = load i8, ptr %719, align 1
  %728 = zext i8 %727 to i64
  %729 = mul i64 %728, 2870177450012600261
  %730 = xor i64 %729, %725
  %731 = tail call i64 @llvm.fshl.i64(i64 %730, i64 %730, i64 11)
  %732 = mul i64 %731, -7046029288634856825
  %733 = getelementptr inbounds nuw i8, ptr %710, i64 4
  %734 = load i8, ptr %726, align 1
  %735 = zext i8 %734 to i64
  %736 = mul i64 %735, 2870177450012600261
  %737 = xor i64 %736, %732
  %738 = tail call i64 @llvm.fshl.i64(i64 %737, i64 %737, i64 11)
  %739 = mul i64 %738, -7046029288634856825
  %740 = getelementptr inbounds nuw i8, ptr %710, i64 5
  %741 = load i8, ptr %733, align 1
  %742 = zext i8 %741 to i64
  %743 = mul i64 %742, 2870177450012600261
  %744 = xor i64 %743, %739
  %745 = tail call i64 @llvm.fshl.i64(i64 %744, i64 %744, i64 11)
  %746 = mul i64 %745, -7046029288634856825
  %747 = getelementptr inbounds nuw i8, ptr %710, i64 6
  %748 = load i8, ptr %740, align 1
  %749 = zext i8 %748 to i64
  %750 = mul i64 %749, 2870177450012600261
  %751 = xor i64 %750, %746
  %752 = tail call i64 @llvm.fshl.i64(i64 %751, i64 %751, i64 11)
  %753 = mul i64 %752, -7046029288634856825
  %754 = getelementptr inbounds nuw i8, ptr %710, i64 7
  %755 = load i8, ptr %747, align 1
  %756 = zext i8 %755 to i64
  %757 = mul i64 %756, 2870177450012600261
  %758 = xor i64 %757, %753
  %759 = tail call i64 @llvm.fshl.i64(i64 %758, i64 %758, i64 11)
  %760 = mul i64 %759, -7046029288634856825
  %761 = getelementptr inbounds nuw i8, ptr %710, i64 8
  %762 = load i8, ptr %754, align 1
  %763 = zext i8 %762 to i64
  %764 = mul i64 %763, 2870177450012600261
  %765 = xor i64 %764, %760
  %766 = tail call i64 @llvm.fshl.i64(i64 %765, i64 %765, i64 11)
  %767 = mul i64 %766, -7046029288634856825
  %768 = add nsw i64 %711, -8
  %769 = icmp eq i64 %768, 0
  br i1 %769, label %770, label %708, !llvm.loop !41

770:                                              ; preds = %702, %708, %679
  %771 = phi i64 [ %682, %679 ], [ %703, %702 ], [ %767, %708 ]
  %772 = lshr i64 %771, 33
  %773 = xor i64 %772, %771
  %774 = mul i64 %773, -4417276706812531889
  %775 = lshr i64 %774, 29
  %776 = xor i64 %775, %774
  %777 = mul i64 %776, 1609587929392839161
  %778 = lshr i64 %777, 32
  %779 = xor i64 %778, %777
  store i64 %779, ptr %5, align 8
  br label %3065

780:                                              ; preds = %400
  %781 = load ptr, ptr %99, align 8
  %782 = icmp eq ptr %781, null
  %783 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %784 = select i1 %782, ptr %783, ptr %781
  %785 = getelementptr inbounds nuw i8, ptr %12, i64 528
  %786 = load i64, ptr %785, align 16
  %787 = icmp ugt i64 %786, 240
  br i1 %787, label %788, label %1222

788:                                              ; preds = %780
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull readonly align 64 dereferenceable(64) %12, i64 64, i1 false)
  %789 = getelementptr inbounds nuw i8, ptr %12, i64 512
  %790 = load i32, ptr %789, align 64
  %791 = icmp ugt i32 %790, 63
  br i1 %791, label %792, label %1113

792:                                              ; preds = %788
  %793 = add i32 %790, -1
  %794 = lshr i32 %793, 6
  %795 = zext nneg i32 %794 to i64
  %796 = getelementptr inbounds nuw i8, ptr %12, i64 520
  %797 = load i64, ptr %796, align 8
  %798 = load i64, ptr %101, align 8
  %799 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %800 = shl i64 %797, 3
  %801 = getelementptr inbounds nuw i8, ptr %784, i64 %800
  %802 = sub i64 %798, %797
  %803 = icmp ugt i64 %802, %795
  br i1 %803, label %993, label %804

804:                                              ; preds = %792
  %805 = load i64, ptr %100, align 32
  %806 = getelementptr inbounds nuw i8, ptr %784, i64 %805
  %807 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %808 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %809 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %810 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %811 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %812 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %813 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %814 = getelementptr inbounds nuw i8, ptr %806, i64 8
  %815 = getelementptr inbounds nuw i8, ptr %806, i64 16
  %816 = getelementptr inbounds nuw i8, ptr %806, i64 24
  %817 = getelementptr inbounds nuw i8, ptr %806, i64 32
  %818 = getelementptr inbounds nuw i8, ptr %806, i64 40
  %819 = getelementptr inbounds nuw i8, ptr %806, i64 48
  %820 = getelementptr inbounds nuw i8, ptr %806, i64 56
  br label %821

821:                                              ; preds = %940, %804
  %822 = phi i64 [ %991, %940 ], [ %795, %804 ]
  %823 = phi ptr [ %990, %940 ], [ %799, %804 ]
  %824 = phi ptr [ %784, %940 ], [ %801, %804 ]
  %825 = phi i64 [ %798, %940 ], [ %802, %804 ]
  %826 = icmp eq i64 %825, 0
  br i1 %826, label %827, label %836

827:                                              ; preds = %821
  %828 = load i64, ptr %9, align 8, !alias.scope !42, !noalias !45
  %829 = load i64, ptr %813, align 8, !alias.scope !42, !noalias !45
  %830 = load i64, ptr %808, align 8, !alias.scope !42, !noalias !45
  %831 = load i64, ptr %807, align 8, !alias.scope !42, !noalias !45
  %832 = load i64, ptr %810, align 8, !alias.scope !42, !noalias !45
  %833 = load i64, ptr %809, align 8, !alias.scope !42, !noalias !45
  %834 = load i64, ptr %812, align 8, !alias.scope !42, !noalias !45
  %835 = load i64, ptr %811, align 8, !alias.scope !42, !noalias !45
  br label %940

836:                                              ; preds = %821
  %837 = load i64, ptr %807, align 8, !alias.scope !49, !noalias !52
  %838 = load i64, ptr %808, align 8, !alias.scope !49, !noalias !52
  %839 = load i64, ptr %809, align 8, !alias.scope !49, !noalias !52
  %840 = load i64, ptr %810, align 8, !alias.scope !49, !noalias !52
  %841 = load i64, ptr %811, align 8, !alias.scope !49, !noalias !52
  %842 = load i64, ptr %812, align 8, !alias.scope !49, !noalias !52
  %843 = load i64, ptr %813, align 8, !alias.scope !49, !noalias !52
  %844 = load i64, ptr %9, align 8, !alias.scope !49, !noalias !52
  br label %845

845:                                              ; preds = %845, %836
  %846 = phi i64 [ %873, %845 ], [ %844, %836 ]
  %847 = phi i64 [ %877, %845 ], [ %843, %836 ]
  %848 = phi i64 [ %933, %845 ], [ %842, %836 ]
  %849 = phi i64 [ %937, %845 ], [ %841, %836 ]
  %850 = phi i64 [ %913, %845 ], [ %840, %836 ]
  %851 = phi i64 [ %917, %845 ], [ %839, %836 ]
  %852 = phi i64 [ %893, %845 ], [ %838, %836 ]
  %853 = phi i64 [ %897, %845 ], [ %837, %836 ]
  %854 = phi i64 [ %938, %845 ], [ 0, %836 ]
  %855 = shl i64 %854, 6
  %856 = getelementptr inbounds nuw i8, ptr %823, i64 %855
  %857 = getelementptr inbounds nuw i8, ptr %856, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %857, i32 0, i32 3, i32 1), !noalias !55
  %858 = shl i64 %854, 3
  %859 = getelementptr inbounds nuw i8, ptr %824, i64 %858
  %860 = load i64, ptr %856, align 1
  %861 = load i64, ptr %859, align 1
  %862 = xor i64 %861, %860
  %863 = add i64 %860, %847
  store i64 %863, ptr %813, align 8, !alias.scope !49, !noalias !52
  %864 = lshr i64 %862, 32
  %865 = and i64 %862, 4294967295
  %866 = mul nuw i64 %865, %864
  %867 = add i64 %866, %846
  store i64 %867, ptr %9, align 8, !alias.scope !49, !noalias !52
  %868 = getelementptr inbounds nuw i8, ptr %856, i64 8
  %869 = load i64, ptr %868, align 1
  %870 = getelementptr inbounds nuw i8, ptr %859, i64 8
  %871 = load i64, ptr %870, align 1
  %872 = xor i64 %871, %869
  %873 = add i64 %867, %869
  store i64 %873, ptr %9, align 8, !alias.scope !49, !noalias !52
  %874 = lshr i64 %872, 32
  %875 = and i64 %872, 4294967295
  %876 = mul nuw i64 %875, %874
  %877 = add i64 %876, %863
  store i64 %877, ptr %813, align 8, !alias.scope !49, !noalias !52
  %878 = getelementptr inbounds nuw i8, ptr %856, i64 16
  %879 = load i64, ptr %878, align 1
  %880 = getelementptr inbounds nuw i8, ptr %859, i64 16
  %881 = load i64, ptr %880, align 1
  %882 = xor i64 %881, %879
  %883 = add i64 %879, %853
  store i64 %883, ptr %807, align 8, !alias.scope !49, !noalias !52
  %884 = lshr i64 %882, 32
  %885 = and i64 %882, 4294967295
  %886 = mul nuw i64 %885, %884
  %887 = add i64 %886, %852
  store i64 %887, ptr %808, align 8, !alias.scope !49, !noalias !52
  %888 = getelementptr inbounds nuw i8, ptr %856, i64 24
  %889 = load i64, ptr %888, align 1
  %890 = getelementptr inbounds nuw i8, ptr %859, i64 24
  %891 = load i64, ptr %890, align 1
  %892 = xor i64 %891, %889
  %893 = add i64 %887, %889
  store i64 %893, ptr %808, align 8, !alias.scope !49, !noalias !52
  %894 = lshr i64 %892, 32
  %895 = and i64 %892, 4294967295
  %896 = mul nuw i64 %895, %894
  %897 = add i64 %896, %883
  store i64 %897, ptr %807, align 8, !alias.scope !49, !noalias !52
  %898 = getelementptr inbounds nuw i8, ptr %856, i64 32
  %899 = load i64, ptr %898, align 1
  %900 = getelementptr inbounds nuw i8, ptr %859, i64 32
  %901 = load i64, ptr %900, align 1
  %902 = xor i64 %901, %899
  %903 = add i64 %899, %851
  store i64 %903, ptr %809, align 8, !alias.scope !49, !noalias !52
  %904 = lshr i64 %902, 32
  %905 = and i64 %902, 4294967295
  %906 = mul nuw i64 %905, %904
  %907 = add i64 %906, %850
  store i64 %907, ptr %810, align 8, !alias.scope !49, !noalias !52
  %908 = getelementptr inbounds nuw i8, ptr %856, i64 40
  %909 = load i64, ptr %908, align 1
  %910 = getelementptr inbounds nuw i8, ptr %859, i64 40
  %911 = load i64, ptr %910, align 1
  %912 = xor i64 %911, %909
  %913 = add i64 %907, %909
  store i64 %913, ptr %810, align 8, !alias.scope !49, !noalias !52
  %914 = lshr i64 %912, 32
  %915 = and i64 %912, 4294967295
  %916 = mul nuw i64 %915, %914
  %917 = add i64 %916, %903
  store i64 %917, ptr %809, align 8, !alias.scope !49, !noalias !52
  %918 = getelementptr inbounds nuw i8, ptr %856, i64 48
  %919 = load i64, ptr %918, align 1
  %920 = getelementptr inbounds nuw i8, ptr %859, i64 48
  %921 = load i64, ptr %920, align 1
  %922 = xor i64 %921, %919
  %923 = add i64 %919, %849
  store i64 %923, ptr %811, align 8, !alias.scope !49, !noalias !52
  %924 = lshr i64 %922, 32
  %925 = and i64 %922, 4294967295
  %926 = mul nuw i64 %925, %924
  %927 = add i64 %926, %848
  store i64 %927, ptr %812, align 8, !alias.scope !49, !noalias !52
  %928 = getelementptr inbounds nuw i8, ptr %856, i64 56
  %929 = load i64, ptr %928, align 1
  %930 = getelementptr inbounds nuw i8, ptr %859, i64 56
  %931 = load i64, ptr %930, align 1
  %932 = xor i64 %931, %929
  %933 = add i64 %927, %929
  store i64 %933, ptr %812, align 8, !alias.scope !49, !noalias !52
  %934 = lshr i64 %932, 32
  %935 = and i64 %932, 4294967295
  %936 = mul nuw i64 %935, %934
  %937 = add i64 %936, %923
  store i64 %937, ptr %811, align 8, !alias.scope !49, !noalias !52
  %938 = add nuw i64 %854, 1
  %939 = icmp eq i64 %938, %825
  br i1 %939, label %940, label %845, !llvm.loop !56

940:                                              ; preds = %845, %827
  %941 = phi i64 [ %835, %827 ], [ %937, %845 ]
  %942 = phi i64 [ %834, %827 ], [ %933, %845 ]
  %943 = phi i64 [ %833, %827 ], [ %917, %845 ]
  %944 = phi i64 [ %832, %827 ], [ %913, %845 ]
  %945 = phi i64 [ %831, %827 ], [ %897, %845 ]
  %946 = phi i64 [ %830, %827 ], [ %893, %845 ]
  %947 = phi i64 [ %829, %827 ], [ %877, %845 ]
  %948 = phi i64 [ %828, %827 ], [ %873, %845 ]
  %949 = load i64, ptr %806, align 1
  %950 = lshr i64 %948, 47
  %951 = xor i64 %950, %949
  %952 = xor i64 %951, %948
  %953 = mul i64 %952, 2654435761
  store i64 %953, ptr %9, align 8, !alias.scope !42, !noalias !45
  %954 = load i64, ptr %814, align 1
  %955 = lshr i64 %947, 47
  %956 = xor i64 %955, %954
  %957 = xor i64 %956, %947
  %958 = mul i64 %957, 2654435761
  store i64 %958, ptr %813, align 8, !alias.scope !42, !noalias !45
  %959 = load i64, ptr %815, align 1
  %960 = lshr i64 %946, 47
  %961 = xor i64 %960, %959
  %962 = xor i64 %961, %946
  %963 = mul i64 %962, 2654435761
  store i64 %963, ptr %808, align 8, !alias.scope !42, !noalias !45
  %964 = load i64, ptr %816, align 1
  %965 = lshr i64 %945, 47
  %966 = xor i64 %965, %964
  %967 = xor i64 %966, %945
  %968 = mul i64 %967, 2654435761
  store i64 %968, ptr %807, align 8, !alias.scope !42, !noalias !45
  %969 = load i64, ptr %817, align 1
  %970 = lshr i64 %944, 47
  %971 = xor i64 %970, %969
  %972 = xor i64 %971, %944
  %973 = mul i64 %972, 2654435761
  store i64 %973, ptr %810, align 8, !alias.scope !42, !noalias !45
  %974 = load i64, ptr %818, align 1
  %975 = lshr i64 %943, 47
  %976 = xor i64 %975, %974
  %977 = xor i64 %976, %943
  %978 = mul i64 %977, 2654435761
  store i64 %978, ptr %809, align 8, !alias.scope !42, !noalias !45
  %979 = load i64, ptr %819, align 1
  %980 = lshr i64 %942, 47
  %981 = xor i64 %980, %979
  %982 = xor i64 %981, %942
  %983 = mul i64 %982, 2654435761
  store i64 %983, ptr %812, align 8, !alias.scope !42, !noalias !45
  %984 = load i64, ptr %820, align 1
  %985 = lshr i64 %941, 47
  %986 = xor i64 %985, %984
  %987 = xor i64 %986, %941
  %988 = mul i64 %987, 2654435761
  store i64 %988, ptr %811, align 8, !alias.scope !42, !noalias !45
  %989 = shl i64 %825, 6
  %990 = getelementptr inbounds nuw i8, ptr %823, i64 %989
  %991 = sub i64 %822, %825
  %992 = icmp ult i64 %991, %798
  br i1 %992, label %993, label %821, !llvm.loop !57

993:                                              ; preds = %940, %792
  %994 = phi i64 [ %795, %792 ], [ %991, %940 ]
  %995 = phi ptr [ %799, %792 ], [ %990, %940 ]
  %996 = phi ptr [ %801, %792 ], [ %784, %940 ]
  %997 = icmp eq i64 %994, 0
  br i1 %997, label %1109, label %998

998:                                              ; preds = %993
  %999 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %1000 = load i64, ptr %999, align 8, !alias.scope !58, !noalias !61
  %1001 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %1002 = load i64, ptr %1001, align 8, !alias.scope !58, !noalias !61
  %1003 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %1004 = load i64, ptr %1003, align 8, !alias.scope !58, !noalias !61
  %1005 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %1006 = load i64, ptr %1005, align 8, !alias.scope !58, !noalias !61
  %1007 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %1008 = load i64, ptr %1007, align 8, !alias.scope !58, !noalias !61
  %1009 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %1010 = load i64, ptr %1009, align 8, !alias.scope !58, !noalias !61
  %1011 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1012 = load i64, ptr %1011, align 8, !alias.scope !58, !noalias !61
  %1013 = load i64, ptr %9, align 8, !alias.scope !58, !noalias !61
  br label %1014

1014:                                             ; preds = %1014, %998
  %1015 = phi i64 [ %1042, %1014 ], [ %1013, %998 ]
  %1016 = phi i64 [ %1046, %1014 ], [ %1012, %998 ]
  %1017 = phi i64 [ %1102, %1014 ], [ %1010, %998 ]
  %1018 = phi i64 [ %1106, %1014 ], [ %1008, %998 ]
  %1019 = phi i64 [ %1082, %1014 ], [ %1006, %998 ]
  %1020 = phi i64 [ %1086, %1014 ], [ %1004, %998 ]
  %1021 = phi i64 [ %1062, %1014 ], [ %1002, %998 ]
  %1022 = phi i64 [ %1066, %1014 ], [ %1000, %998 ]
  %1023 = phi i64 [ %1107, %1014 ], [ 0, %998 ]
  %1024 = shl i64 %1023, 6
  %1025 = getelementptr inbounds nuw i8, ptr %995, i64 %1024
  %1026 = getelementptr inbounds nuw i8, ptr %1025, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %1026, i32 0, i32 3, i32 1), !noalias !55
  %1027 = shl i64 %1023, 3
  %1028 = getelementptr inbounds nuw i8, ptr %996, i64 %1027
  %1029 = load i64, ptr %1025, align 1
  %1030 = load i64, ptr %1028, align 1
  %1031 = xor i64 %1030, %1029
  %1032 = add i64 %1029, %1016
  store i64 %1032, ptr %1011, align 8, !alias.scope !58, !noalias !61
  %1033 = lshr i64 %1031, 32
  %1034 = and i64 %1031, 4294967295
  %1035 = mul nuw i64 %1034, %1033
  %1036 = add i64 %1035, %1015
  store i64 %1036, ptr %9, align 8, !alias.scope !58, !noalias !61
  %1037 = getelementptr inbounds nuw i8, ptr %1025, i64 8
  %1038 = load i64, ptr %1037, align 1
  %1039 = getelementptr inbounds nuw i8, ptr %1028, i64 8
  %1040 = load i64, ptr %1039, align 1
  %1041 = xor i64 %1040, %1038
  %1042 = add i64 %1036, %1038
  store i64 %1042, ptr %9, align 8, !alias.scope !58, !noalias !61
  %1043 = lshr i64 %1041, 32
  %1044 = and i64 %1041, 4294967295
  %1045 = mul nuw i64 %1044, %1043
  %1046 = add i64 %1045, %1032
  store i64 %1046, ptr %1011, align 8, !alias.scope !58, !noalias !61
  %1047 = getelementptr inbounds nuw i8, ptr %1025, i64 16
  %1048 = load i64, ptr %1047, align 1
  %1049 = getelementptr inbounds nuw i8, ptr %1028, i64 16
  %1050 = load i64, ptr %1049, align 1
  %1051 = xor i64 %1050, %1048
  %1052 = add i64 %1048, %1022
  store i64 %1052, ptr %999, align 8, !alias.scope !58, !noalias !61
  %1053 = lshr i64 %1051, 32
  %1054 = and i64 %1051, 4294967295
  %1055 = mul nuw i64 %1054, %1053
  %1056 = add i64 %1055, %1021
  store i64 %1056, ptr %1001, align 8, !alias.scope !58, !noalias !61
  %1057 = getelementptr inbounds nuw i8, ptr %1025, i64 24
  %1058 = load i64, ptr %1057, align 1
  %1059 = getelementptr inbounds nuw i8, ptr %1028, i64 24
  %1060 = load i64, ptr %1059, align 1
  %1061 = xor i64 %1060, %1058
  %1062 = add i64 %1056, %1058
  store i64 %1062, ptr %1001, align 8, !alias.scope !58, !noalias !61
  %1063 = lshr i64 %1061, 32
  %1064 = and i64 %1061, 4294967295
  %1065 = mul nuw i64 %1064, %1063
  %1066 = add i64 %1065, %1052
  store i64 %1066, ptr %999, align 8, !alias.scope !58, !noalias !61
  %1067 = getelementptr inbounds nuw i8, ptr %1025, i64 32
  %1068 = load i64, ptr %1067, align 1
  %1069 = getelementptr inbounds nuw i8, ptr %1028, i64 32
  %1070 = load i64, ptr %1069, align 1
  %1071 = xor i64 %1070, %1068
  %1072 = add i64 %1068, %1020
  store i64 %1072, ptr %1003, align 8, !alias.scope !58, !noalias !61
  %1073 = lshr i64 %1071, 32
  %1074 = and i64 %1071, 4294967295
  %1075 = mul nuw i64 %1074, %1073
  %1076 = add i64 %1075, %1019
  store i64 %1076, ptr %1005, align 8, !alias.scope !58, !noalias !61
  %1077 = getelementptr inbounds nuw i8, ptr %1025, i64 40
  %1078 = load i64, ptr %1077, align 1
  %1079 = getelementptr inbounds nuw i8, ptr %1028, i64 40
  %1080 = load i64, ptr %1079, align 1
  %1081 = xor i64 %1080, %1078
  %1082 = add i64 %1076, %1078
  store i64 %1082, ptr %1005, align 8, !alias.scope !58, !noalias !61
  %1083 = lshr i64 %1081, 32
  %1084 = and i64 %1081, 4294967295
  %1085 = mul nuw i64 %1084, %1083
  %1086 = add i64 %1085, %1072
  store i64 %1086, ptr %1003, align 8, !alias.scope !58, !noalias !61
  %1087 = getelementptr inbounds nuw i8, ptr %1025, i64 48
  %1088 = load i64, ptr %1087, align 1
  %1089 = getelementptr inbounds nuw i8, ptr %1028, i64 48
  %1090 = load i64, ptr %1089, align 1
  %1091 = xor i64 %1090, %1088
  %1092 = add i64 %1088, %1018
  store i64 %1092, ptr %1007, align 8, !alias.scope !58, !noalias !61
  %1093 = lshr i64 %1091, 32
  %1094 = and i64 %1091, 4294967295
  %1095 = mul nuw i64 %1094, %1093
  %1096 = add i64 %1095, %1017
  store i64 %1096, ptr %1009, align 8, !alias.scope !58, !noalias !61
  %1097 = getelementptr inbounds nuw i8, ptr %1025, i64 56
  %1098 = load i64, ptr %1097, align 1
  %1099 = getelementptr inbounds nuw i8, ptr %1028, i64 56
  %1100 = load i64, ptr %1099, align 1
  %1101 = xor i64 %1100, %1098
  %1102 = add i64 %1096, %1098
  store i64 %1102, ptr %1009, align 8, !alias.scope !58, !noalias !61
  %1103 = lshr i64 %1101, 32
  %1104 = and i64 %1101, 4294967295
  %1105 = mul nuw i64 %1104, %1103
  %1106 = add i64 %1105, %1092
  store i64 %1106, ptr %1007, align 8, !alias.scope !58, !noalias !61
  %1107 = add nuw i64 %1023, 1
  %1108 = icmp eq i64 %1107, %994
  br i1 %1108, label %1109, label %1014, !llvm.loop !56

1109:                                             ; preds = %1014, %993
  %1110 = zext i32 %790 to i64
  %1111 = getelementptr inbounds nuw i8, ptr %799, i64 %1110
  %1112 = getelementptr inbounds i8, ptr %1111, i64 -64
  br label %1122

1113:                                             ; preds = %788
  %1114 = sub nuw nsw i32 64, %790
  %1115 = zext nneg i32 %1114 to i64
  %1116 = icmp ne i32 %790, 0
  tail call void @llvm.assume(i1 %1116)
  %1117 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %1118 = sub nsw i64 0, %1115
  %1119 = getelementptr inbounds i8, ptr %789, i64 %1118
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %8, ptr nonnull readonly align 1 %1119, i64 %1115, i1 false)
  %1120 = getelementptr inbounds nuw i8, ptr %8, i64 %1115
  %1121 = zext nneg i32 %790 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1120, ptr nonnull readonly align 64 %1117, i64 %1121, i1 false)
  br label %1122

1122:                                             ; preds = %1113, %1109
  %1123 = phi ptr [ %1112, %1109 ], [ %8, %1113 ]
  %1124 = load i64, ptr %100, align 32
  %1125 = getelementptr inbounds nuw i8, ptr %784, i64 %1124
  %1126 = getelementptr inbounds i8, ptr %1125, i64 -7
  %1127 = load i64, ptr %1123, align 1
  %1128 = load i64, ptr %1126, align 1
  %1129 = xor i64 %1128, %1127
  %1130 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1131 = load i64, ptr %1130, align 8, !alias.scope !64, !noalias !67
  %1132 = add i64 %1131, %1127
  store i64 %1132, ptr %1130, align 8, !alias.scope !64, !noalias !67
  %1133 = lshr i64 %1129, 32
  %1134 = load i64, ptr %9, align 8, !alias.scope !64, !noalias !67
  %1135 = and i64 %1129, 4294967295
  %1136 = mul nuw i64 %1135, %1133
  %1137 = add i64 %1136, %1134
  store i64 %1137, ptr %9, align 8, !alias.scope !64, !noalias !67
  %1138 = getelementptr inbounds nuw i8, ptr %1123, i64 8
  %1139 = load i64, ptr %1138, align 1
  %1140 = getelementptr inbounds nuw i8, ptr %1125, i64 1
  %1141 = load i64, ptr %1140, align 1
  %1142 = xor i64 %1141, %1139
  %1143 = add i64 %1139, %1137
  store i64 %1143, ptr %9, align 8, !alias.scope !64, !noalias !67
  %1144 = lshr i64 %1142, 32
  %1145 = and i64 %1142, 4294967295
  %1146 = mul nuw i64 %1145, %1144
  %1147 = add i64 %1146, %1132
  store i64 %1147, ptr %1130, align 8, !alias.scope !64, !noalias !67
  %1148 = getelementptr inbounds nuw i8, ptr %1123, i64 16
  %1149 = load i64, ptr %1148, align 1
  %1150 = getelementptr inbounds nuw i8, ptr %1125, i64 9
  %1151 = load i64, ptr %1150, align 1
  %1152 = xor i64 %1151, %1149
  %1153 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %1154 = load i64, ptr %1153, align 8, !alias.scope !64, !noalias !67
  %1155 = add i64 %1154, %1149
  store i64 %1155, ptr %1153, align 8, !alias.scope !64, !noalias !67
  %1156 = lshr i64 %1152, 32
  %1157 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %1158 = load i64, ptr %1157, align 8, !alias.scope !64, !noalias !67
  %1159 = and i64 %1152, 4294967295
  %1160 = mul nuw i64 %1159, %1156
  %1161 = add i64 %1160, %1158
  store i64 %1161, ptr %1157, align 8, !alias.scope !64, !noalias !67
  %1162 = getelementptr inbounds nuw i8, ptr %1123, i64 24
  %1163 = load i64, ptr %1162, align 1
  %1164 = getelementptr inbounds nuw i8, ptr %1125, i64 17
  %1165 = load i64, ptr %1164, align 1
  %1166 = xor i64 %1165, %1163
  %1167 = add i64 %1163, %1161
  store i64 %1167, ptr %1157, align 8, !alias.scope !64, !noalias !67
  %1168 = lshr i64 %1166, 32
  %1169 = and i64 %1166, 4294967295
  %1170 = mul nuw i64 %1169, %1168
  %1171 = add i64 %1170, %1155
  store i64 %1171, ptr %1153, align 8, !alias.scope !64, !noalias !67
  %1172 = getelementptr inbounds nuw i8, ptr %1123, i64 32
  %1173 = load i64, ptr %1172, align 1
  %1174 = getelementptr inbounds nuw i8, ptr %1125, i64 25
  %1175 = load i64, ptr %1174, align 1
  %1176 = xor i64 %1175, %1173
  %1177 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %1178 = load i64, ptr %1177, align 8, !alias.scope !64, !noalias !67
  %1179 = add i64 %1178, %1173
  store i64 %1179, ptr %1177, align 8, !alias.scope !64, !noalias !67
  %1180 = lshr i64 %1176, 32
  %1181 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %1182 = load i64, ptr %1181, align 8, !alias.scope !64, !noalias !67
  %1183 = and i64 %1176, 4294967295
  %1184 = mul nuw i64 %1183, %1180
  %1185 = add i64 %1184, %1182
  store i64 %1185, ptr %1181, align 8, !alias.scope !64, !noalias !67
  %1186 = getelementptr inbounds nuw i8, ptr %1123, i64 40
  %1187 = load i64, ptr %1186, align 1
  %1188 = getelementptr inbounds nuw i8, ptr %1125, i64 33
  %1189 = load i64, ptr %1188, align 1
  %1190 = xor i64 %1189, %1187
  %1191 = add i64 %1187, %1185
  store i64 %1191, ptr %1181, align 8, !alias.scope !64, !noalias !67
  %1192 = lshr i64 %1190, 32
  %1193 = and i64 %1190, 4294967295
  %1194 = mul nuw i64 %1193, %1192
  %1195 = add i64 %1194, %1179
  store i64 %1195, ptr %1177, align 8, !alias.scope !64, !noalias !67
  %1196 = getelementptr inbounds nuw i8, ptr %1123, i64 48
  %1197 = load i64, ptr %1196, align 1
  %1198 = getelementptr inbounds nuw i8, ptr %1125, i64 41
  %1199 = load i64, ptr %1198, align 1
  %1200 = xor i64 %1199, %1197
  %1201 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %1202 = load i64, ptr %1201, align 8, !alias.scope !64, !noalias !67
  %1203 = add i64 %1202, %1197
  store i64 %1203, ptr %1201, align 8, !alias.scope !64, !noalias !67
  %1204 = lshr i64 %1200, 32
  %1205 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %1206 = load i64, ptr %1205, align 8, !alias.scope !64, !noalias !67
  %1207 = and i64 %1200, 4294967295
  %1208 = mul nuw i64 %1207, %1204
  %1209 = add i64 %1208, %1206
  store i64 %1209, ptr %1205, align 8, !alias.scope !64, !noalias !67
  %1210 = getelementptr inbounds nuw i8, ptr %1123, i64 56
  %1211 = load i64, ptr %1210, align 1
  %1212 = getelementptr inbounds nuw i8, ptr %1125, i64 49
  %1213 = load i64, ptr %1212, align 1
  %1214 = xor i64 %1213, %1211
  %1215 = add i64 %1211, %1209
  store i64 %1215, ptr %1205, align 8, !alias.scope !64, !noalias !67
  %1216 = lshr i64 %1214, 32
  %1217 = and i64 %1214, 4294967295
  %1218 = mul nuw i64 %1217, %1216
  %1219 = add i64 %1218, %1203
  store i64 %1219, ptr %1201, align 8, !alias.scope !64, !noalias !67
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #28
  %1220 = add nuw i64 %1124, 64
  %1221 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %9, ptr noundef nonnull %784, i64 noundef %1220, i64 noundef %786) #27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #28
  br label %1986

1222:                                             ; preds = %780
  %1223 = getelementptr inbounds nuw i8, ptr %12, i64 516
  %1224 = load i32, ptr %1223, align 4
  %1225 = icmp eq i32 %1224, 0
  %1226 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %1227 = icmp samesign ult i64 %786, 17
  br i1 %1225, label %1564, label %1228

1228:                                             ; preds = %1222
  %1229 = getelementptr inbounds nuw i8, ptr %12, i64 552
  %1230 = load i64, ptr %1229, align 8
  br i1 %1227, label %1231, label %1385

1231:                                             ; preds = %1228
  %1232 = icmp samesign ugt i64 %786, 8
  br i1 %1232, label %1233, label %1276

1233:                                             ; preds = %1231
  %1234 = sub i64 6455697860950631241, %1230
  %1235 = add i64 %1230, -4466874330221494952
  %1236 = load i64, ptr %1226, align 64
  %1237 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1238 = getelementptr inbounds i8, ptr %1237, i64 -8
  %1239 = load i64, ptr %1238, align 1
  %1240 = xor i64 %1236, %1234
  %1241 = xor i64 %1240, %1239
  %1242 = zext i64 %1241 to i128
  %1243 = mul nuw i128 %1242, 11400714785074694791
  %1244 = trunc i128 %1243 to i64
  %1245 = lshr i128 %1243, 64
  %1246 = trunc nuw i128 %1245 to i64
  %1247 = shl nuw nsw i64 %786, 54
  %1248 = add nsw i64 %1247, -18014398509481984
  %1249 = add i64 %1248, %1244
  %1250 = xor i64 %1239, %1235
  %1251 = and i64 %1250, 4294967295
  %1252 = mul nuw i64 %1251, 2246822518
  %1253 = add i64 %1252, %1250
  %1254 = add i64 %1253, %1246
  %1255 = tail call noundef i64 @llvm.bswap.i64(i64 %1254)
  %1256 = xor i64 %1255, %1249
  %1257 = zext i64 %1256 to i128
  %1258 = mul nuw i128 %1257, 14029467366897019727
  %1259 = trunc i128 %1258 to i64
  %1260 = lshr i128 %1258, 64
  %1261 = trunc nuw i128 %1260 to i64
  %1262 = mul i64 %1254, -4417276706812531889
  %1263 = add i64 %1262, %1261
  %1264 = lshr i64 %1259, 37
  %1265 = xor i64 %1264, %1259
  %1266 = mul i64 %1265, 1609587791953885689
  %1267 = lshr i64 %1266, 32
  %1268 = xor i64 %1267, %1266
  %1269 = lshr i64 %1263, 37
  %1270 = xor i64 %1269, %1263
  %1271 = mul i64 %1270, 1609587791953885689
  %1272 = lshr i64 %1271, 32
  %1273 = xor i64 %1272, %1271
  %1274 = insertvalue { i64, i64 } poison, i64 %1268, 0
  %1275 = insertvalue { i64, i64 } %1274, i64 %1273, 1
  br label %1986

1276:                                             ; preds = %1231
  %1277 = icmp samesign ugt i64 %786, 3
  br i1 %1277, label %1278, label %1318

1278:                                             ; preds = %1276
  %1279 = trunc i64 %1230 to i32
  %1280 = tail call noundef i32 @llvm.bswap.i32(i32 %1279)
  %1281 = zext i32 %1280 to i64
  %1282 = shl nuw i64 %1281, 32
  %1283 = xor i64 %1282, %1230
  %1284 = load i32, ptr %1226, align 64
  %1285 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1286 = getelementptr inbounds i8, ptr %1285, i64 -4
  %1287 = load i32, ptr %1286, align 1
  %1288 = zext i32 %1284 to i64
  %1289 = zext i32 %1287 to i64
  %1290 = shl nuw i64 %1289, 32
  %1291 = or disjoint i64 %1290, %1288
  %1292 = add i64 %1283, -4255862940314790740
  %1293 = xor i64 %1291, %1292
  %1294 = shl nuw nsw i64 %786, 2
  %1295 = add nuw nsw i64 %1294, -7046029288634856825
  %1296 = zext i64 %1293 to i128
  %1297 = zext i64 %1295 to i128
  %1298 = mul nuw i128 %1296, %1297
  %1299 = trunc i128 %1298 to i64
  %1300 = lshr i128 %1298, 64
  %1301 = trunc nuw i128 %1300 to i64
  %1302 = shl i64 %1299, 1
  %1303 = add i64 %1302, %1301
  %1304 = lshr i64 %1303, 3
  %1305 = xor i64 %1304, %1299
  %1306 = lshr i64 %1305, 35
  %1307 = xor i64 %1306, %1305
  %1308 = mul i64 %1307, -6939452855193903323
  %1309 = lshr i64 %1308, 28
  %1310 = xor i64 %1309, %1308
  %1311 = lshr i64 %1303, 37
  %1312 = xor i64 %1311, %1303
  %1313 = mul i64 %1312, 1609587791953885689
  %1314 = lshr i64 %1313, 32
  %1315 = xor i64 %1314, %1313
  %1316 = insertvalue { i64, i64 } poison, i64 %1310, 0
  %1317 = insertvalue { i64, i64 } %1316, i64 %1315, 1
  br label %1986

1318:                                             ; preds = %1276
  %1319 = icmp eq i64 %786, 0
  br i1 %1319, label %1364, label %1320

1320:                                             ; preds = %1318
  %1321 = load i8, ptr %1226, align 64
  %1322 = lshr i64 %786, 1
  %1323 = getelementptr inbounds nuw i8, ptr %1226, i64 %1322
  %1324 = load i8, ptr %1323, align 1
  %1325 = getelementptr i8, ptr %1226, i64 %786
  %1326 = getelementptr i8, ptr %1325, i64 -1
  %1327 = load i8, ptr %1326, align 1
  %1328 = zext i8 %1321 to i32
  %1329 = shl nuw nsw i32 %1328, 16
  %1330 = zext i8 %1324 to i32
  %1331 = shl nuw i32 %1330, 24
  %1332 = or disjoint i32 %1331, %1329
  %1333 = zext i8 %1327 to i32
  %1334 = or disjoint i32 %1332, %1333
  %1335 = trunc nuw nsw i64 %786 to i32
  %1336 = shl nuw nsw i32 %1335, 8
  %1337 = or disjoint i32 %1334, %1336
  %1338 = tail call noundef i32 @llvm.bswap.i32(i32 %1337)
  %1339 = tail call i32 @llvm.fshl.i32(i32 %1338, i32 %1338, i32 13)
  %1340 = add i64 %1230, 2267503259
  %1341 = sub i64 808198283, %1230
  %1342 = zext i32 %1337 to i64
  %1343 = zext nneg i32 %1339 to i64
  %1344 = lshr i64 %1340, 33
  %1345 = xor i64 %1344, %1342
  %1346 = xor i64 %1345, %1340
  %1347 = mul i64 %1346, -4417276706812531889
  %1348 = lshr i64 %1347, 29
  %1349 = xor i64 %1348, %1347
  %1350 = mul i64 %1349, 1609587929392839161
  %1351 = lshr i64 %1350, 32
  %1352 = xor i64 %1351, %1350
  %1353 = lshr i64 %1341, 33
  %1354 = xor i64 %1353, %1343
  %1355 = xor i64 %1354, %1341
  %1356 = mul i64 %1355, -4417276706812531889
  %1357 = lshr i64 %1356, 29
  %1358 = xor i64 %1357, %1356
  %1359 = mul i64 %1358, 1609587929392839161
  %1360 = lshr i64 %1359, 32
  %1361 = xor i64 %1360, %1359
  %1362 = insertvalue { i64, i64 } poison, i64 %1352, 0
  %1363 = insertvalue { i64, i64 } %1362, i64 %1361, 1
  br label %1986

1364:                                             ; preds = %1318
  %1365 = xor i64 %1230, 7507096552062056628
  %1366 = lshr i64 %1365, 33
  %1367 = xor i64 %1366, %1365
  %1368 = mul i64 %1367, -4417276706812531889
  %1369 = lshr i64 %1368, 29
  %1370 = xor i64 %1369, %1368
  %1371 = mul i64 %1370, 1609587929392839161
  %1372 = lshr i64 %1371, 32
  %1373 = xor i64 %1372, %1371
  %1374 = xor i64 %1230, -7613947547284439735
  %1375 = lshr i64 %1374, 33
  %1376 = xor i64 %1375, %1374
  %1377 = mul i64 %1376, -4417276706812531889
  %1378 = lshr i64 %1377, 29
  %1379 = xor i64 %1378, %1377
  %1380 = mul i64 %1379, 1609587929392839161
  %1381 = lshr i64 %1380, 32
  %1382 = xor i64 %1381, %1380
  %1383 = insertvalue { i64, i64 } poison, i64 %1373, 0
  %1384 = insertvalue { i64, i64 } %1383, i64 %1382, 1
  br label %1986

1385:                                             ; preds = %1228
  %1386 = icmp samesign ult i64 %786, 129
  br i1 %1386, label %1387, label %1562

1387:                                             ; preds = %1385
  %1388 = mul i64 %786, -7046029288634856825
  %1389 = icmp samesign ugt i64 %786, 32
  br i1 %1389, label %1390, label %1505

1390:                                             ; preds = %1387
  %1391 = icmp samesign ugt i64 %786, 64
  br i1 %1391, label %1392, label %1467

1392:                                             ; preds = %1390
  %1393 = icmp samesign ugt i64 %786, 96
  br i1 %1393, label %1394, label %1429

1394:                                             ; preds = %1392
  %1395 = getelementptr inbounds nuw i8, ptr %12, i64 304
  %1396 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1397 = getelementptr inbounds i8, ptr %1396, i64 -64
  %1398 = load i64, ptr %1395, align 16
  %1399 = getelementptr inbounds nuw i8, ptr %12, i64 312
  %1400 = load i64, ptr %1399, align 8
  %1401 = add i64 %1230, 4554437623014685352
  %1402 = xor i64 %1398, %1401
  %1403 = sub i64 2111919702937427193, %1230
  %1404 = xor i64 %1400, %1403
  %1405 = zext i64 %1402 to i128
  %1406 = zext i64 %1404 to i128
  %1407 = mul nuw i128 %1406, %1405
  %1408 = lshr i128 %1407, 64
  %1409 = xor i128 %1408, %1407
  %1410 = trunc i128 %1409 to i64
  %1411 = add i64 %1388, %1410
  %1412 = load i64, ptr %1397, align 1
  %1413 = getelementptr inbounds i8, ptr %1396, i64 -56
  %1414 = load i64, ptr %1413, align 1
  %1415 = add i64 %1414, %1412
  %1416 = xor i64 %1411, %1415
  %1417 = add i64 %1230, 3556072174620004746
  %1418 = xor i64 %1412, %1417
  %1419 = sub i64 7238261902898274248, %1230
  %1420 = xor i64 %1414, %1419
  %1421 = zext i64 %1418 to i128
  %1422 = zext i64 %1420 to i128
  %1423 = mul nuw i128 %1422, %1421
  %1424 = lshr i128 %1423, 64
  %1425 = xor i128 %1424, %1423
  %1426 = trunc i128 %1425 to i64
  %1427 = add i64 %1400, %1398
  %1428 = xor i64 %1427, %1426
  br label %1429

1429:                                             ; preds = %1394, %1392
  %1430 = phi i64 [ %1416, %1394 ], [ %1388, %1392 ]
  %1431 = phi i64 [ %1428, %1394 ], [ 0, %1392 ]
  %1432 = getelementptr inbounds nuw i8, ptr %12, i64 288
  %1433 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1434 = getelementptr inbounds i8, ptr %1433, i64 -48
  %1435 = load i64, ptr %1432, align 32
  %1436 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %1437 = load i64, ptr %1436, align 8
  %1438 = add i64 %1230, -3818837453329782724
  %1439 = xor i64 %1435, %1438
  %1440 = sub i64 -6688317018830679928, %1230
  %1441 = xor i64 %1437, %1440
  %1442 = zext i64 %1439 to i128
  %1443 = zext i64 %1441 to i128
  %1444 = mul nuw i128 %1443, %1442
  %1445 = lshr i128 %1444, 64
  %1446 = xor i128 %1445, %1444
  %1447 = trunc i128 %1446 to i64
  %1448 = add i64 %1430, %1447
  %1449 = load i64, ptr %1434, align 1
  %1450 = getelementptr inbounds i8, ptr %1433, i64 -40
  %1451 = load i64, ptr %1450, align 1
  %1452 = add i64 %1451, %1449
  %1453 = xor i64 %1448, %1452
  %1454 = add i64 %1230, 5690594596133299313
  %1455 = xor i64 %1449, %1454
  %1456 = sub i64 -2833645246901970632, %1230
  %1457 = xor i64 %1451, %1456
  %1458 = zext i64 %1455 to i128
  %1459 = zext i64 %1457 to i128
  %1460 = mul nuw i128 %1459, %1458
  %1461 = lshr i128 %1460, 64
  %1462 = xor i128 %1461, %1460
  %1463 = trunc i128 %1462 to i64
  %1464 = add i64 %1431, %1463
  %1465 = add i64 %1437, %1435
  %1466 = xor i64 %1464, %1465
  br label %1467

1467:                                             ; preds = %1429, %1390
  %1468 = phi i64 [ %1453, %1429 ], [ %1388, %1390 ]
  %1469 = phi i64 [ %1466, %1429 ], [ 0, %1390 ]
  %1470 = getelementptr inbounds nuw i8, ptr %12, i64 272
  %1471 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1472 = getelementptr inbounds i8, ptr %1471, i64 -32
  %1473 = load i64, ptr %1470, align 16
  %1474 = getelementptr inbounds nuw i8, ptr %12, i64 280
  %1475 = load i64, ptr %1474, align 8
  %1476 = add i64 %1230, 8711581037947681227
  %1477 = xor i64 %1473, %1476
  %1478 = sub i64 2410270004345854594, %1230
  %1479 = xor i64 %1475, %1478
  %1480 = zext i64 %1477 to i128
  %1481 = zext i64 %1479 to i128
  %1482 = mul nuw i128 %1481, %1480
  %1483 = lshr i128 %1482, 64
  %1484 = xor i128 %1483, %1482
  %1485 = trunc i128 %1484 to i64
  %1486 = add i64 %1468, %1485
  %1487 = load i64, ptr %1472, align 1
  %1488 = getelementptr inbounds i8, ptr %1471, i64 -24
  %1489 = load i64, ptr %1488, align 1
  %1490 = add i64 %1489, %1487
  %1491 = xor i64 %1486, %1490
  %1492 = add i64 %1230, -8204357891075471176
  %1493 = xor i64 %1487, %1492
  %1494 = sub i64 5487137525590930912, %1230
  %1495 = xor i64 %1489, %1494
  %1496 = zext i64 %1493 to i128
  %1497 = zext i64 %1495 to i128
  %1498 = mul nuw i128 %1497, %1496
  %1499 = lshr i128 %1498, 64
  %1500 = xor i128 %1499, %1498
  %1501 = trunc i128 %1500 to i64
  %1502 = add i64 %1469, %1501
  %1503 = add i64 %1475, %1473
  %1504 = xor i64 %1502, %1503
  br label %1505

1505:                                             ; preds = %1467, %1387
  %1506 = phi i64 [ %1491, %1467 ], [ %1388, %1387 ]
  %1507 = phi i64 [ %1504, %1467 ], [ 0, %1387 ]
  %1508 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1509 = getelementptr inbounds i8, ptr %1508, i64 -16
  %1510 = load i64, ptr %1226, align 64
  %1511 = getelementptr inbounds nuw i8, ptr %12, i64 264
  %1512 = load i64, ptr %1511, align 8
  %1513 = add i64 %1230, -4734510112055689544
  %1514 = xor i64 %1510, %1513
  %1515 = sub i64 2066345149520216444, %1230
  %1516 = xor i64 %1512, %1515
  %1517 = zext i64 %1514 to i128
  %1518 = zext i64 %1516 to i128
  %1519 = mul nuw i128 %1518, %1517
  %1520 = lshr i128 %1519, 64
  %1521 = xor i128 %1520, %1519
  %1522 = trunc i128 %1521 to i64
  %1523 = add i64 %1506, %1522
  %1524 = load i64, ptr %1509, align 1
  %1525 = getelementptr inbounds i8, ptr %1508, i64 -8
  %1526 = load i64, ptr %1525, align 1
  %1527 = add i64 %1526, %1524
  %1528 = xor i64 %1523, %1527
  %1529 = add i64 %1230, -2623469361688619810
  %1530 = xor i64 %1524, %1529
  %1531 = sub i64 2262974939099578482, %1230
  %1532 = xor i64 %1526, %1531
  %1533 = zext i64 %1530 to i128
  %1534 = zext i64 %1532 to i128
  %1535 = mul nuw i128 %1534, %1533
  %1536 = lshr i128 %1535, 64
  %1537 = xor i128 %1536, %1535
  %1538 = trunc i128 %1537 to i64
  %1539 = add i64 %1507, %1538
  %1540 = add i64 %1512, %1510
  %1541 = xor i64 %1539, %1540
  %1542 = add i64 %1541, %1528
  %1543 = mul i64 %1528, -7046029288634856825
  %1544 = mul i64 %1541, -8796714831421723037
  %1545 = sub i64 %786, %1230
  %1546 = mul i64 %1545, -4417276706812531889
  %1547 = add i64 %1543, %1546
  %1548 = add i64 %1547, %1544
  %1549 = lshr i64 %1542, 37
  %1550 = xor i64 %1549, %1542
  %1551 = mul i64 %1550, 1609587791953885689
  %1552 = lshr i64 %1551, 32
  %1553 = xor i64 %1552, %1551
  %1554 = lshr i64 %1548, 37
  %1555 = xor i64 %1554, %1548
  %1556 = mul i64 %1555, 1609587791953885689
  %1557 = lshr i64 %1556, 32
  %1558 = xor i64 %1557, %1556
  %1559 = sub i64 0, %1558
  %1560 = insertvalue { i64, i64 } poison, i64 %1553, 0
  %1561 = insertvalue { i64, i64 } %1560, i64 %1559, 1
  br label %1986

1562:                                             ; preds = %1385
  %1563 = call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef nonnull readonly %1226, i64 noundef range(i64 0, 241) %786, ptr noundef nonnull @XXH3_kSecret, i64 noundef %1230) #27
  br label %1986

1564:                                             ; preds = %1222
  br i1 %1227, label %1565, label %1763

1565:                                             ; preds = %1564
  %1566 = icmp samesign ugt i64 %786, 8
  br i1 %1566, label %1567, label %1626

1567:                                             ; preds = %1565
  %1568 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %1569 = getelementptr inbounds nuw i8, ptr %781, i64 32
  %1570 = select i1 %782, ptr %1568, ptr %1569
  %1571 = load i64, ptr %1570, align 1
  %1572 = getelementptr inbounds nuw i8, ptr %12, i64 104
  %1573 = getelementptr inbounds nuw i8, ptr %781, i64 40
  %1574 = select i1 %782, ptr %1572, ptr %1573
  %1575 = load i64, ptr %1574, align 1
  %1576 = xor i64 %1575, %1571
  %1577 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %1578 = getelementptr inbounds nuw i8, ptr %781, i64 48
  %1579 = select i1 %782, ptr %1577, ptr %1578
  %1580 = load i64, ptr %1579, align 1
  %1581 = getelementptr inbounds nuw i8, ptr %12, i64 120
  %1582 = getelementptr inbounds nuw i8, ptr %781, i64 56
  %1583 = select i1 %782, ptr %1581, ptr %1582
  %1584 = load i64, ptr %1583, align 1
  %1585 = xor i64 %1584, %1580
  %1586 = load i64, ptr %1226, align 64
  %1587 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1588 = getelementptr inbounds i8, ptr %1587, i64 -8
  %1589 = load i64, ptr %1588, align 1
  %1590 = xor i64 %1576, %1586
  %1591 = xor i64 %1590, %1589
  %1592 = zext i64 %1591 to i128
  %1593 = mul nuw i128 %1592, 11400714785074694791
  %1594 = trunc i128 %1593 to i64
  %1595 = lshr i128 %1593, 64
  %1596 = trunc nuw i128 %1595 to i64
  %1597 = shl nuw nsw i64 %786, 54
  %1598 = add nsw i64 %1597, -18014398509481984
  %1599 = add i64 %1598, %1594
  %1600 = xor i64 %1585, %1589
  %1601 = and i64 %1600, 4294967295
  %1602 = mul nuw i64 %1601, 2246822518
  %1603 = add i64 %1602, %1600
  %1604 = add i64 %1603, %1596
  %1605 = tail call noundef i64 @llvm.bswap.i64(i64 %1604)
  %1606 = xor i64 %1605, %1599
  %1607 = zext i64 %1606 to i128
  %1608 = mul nuw i128 %1607, 14029467366897019727
  %1609 = trunc i128 %1608 to i64
  %1610 = lshr i128 %1608, 64
  %1611 = trunc nuw i128 %1610 to i64
  %1612 = mul i64 %1604, -4417276706812531889
  %1613 = add i64 %1612, %1611
  %1614 = lshr i64 %1609, 37
  %1615 = xor i64 %1614, %1609
  %1616 = mul i64 %1615, 1609587791953885689
  %1617 = lshr i64 %1616, 32
  %1618 = xor i64 %1617, %1616
  %1619 = lshr i64 %1613, 37
  %1620 = xor i64 %1619, %1613
  %1621 = mul i64 %1620, 1609587791953885689
  %1622 = lshr i64 %1621, 32
  %1623 = xor i64 %1622, %1621
  %1624 = insertvalue { i64, i64 } poison, i64 %1618, 0
  %1625 = insertvalue { i64, i64 } %1624, i64 %1623, 1
  br label %1986

1626:                                             ; preds = %1565
  %1627 = icmp samesign ugt i64 %786, 3
  br i1 %1627, label %1628, label %1671

1628:                                             ; preds = %1626
  %1629 = load i32, ptr %1226, align 64
  %1630 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1631 = getelementptr inbounds i8, ptr %1630, i64 -4
  %1632 = load i32, ptr %1631, align 1
  %1633 = zext i32 %1629 to i64
  %1634 = zext i32 %1632 to i64
  %1635 = shl nuw i64 %1634, 32
  %1636 = or disjoint i64 %1635, %1633
  %1637 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %1638 = getelementptr inbounds nuw i8, ptr %781, i64 16
  %1639 = select i1 %782, ptr %1637, ptr %1638
  %1640 = load i64, ptr %1639, align 1
  %1641 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %1642 = getelementptr inbounds nuw i8, ptr %781, i64 24
  %1643 = select i1 %782, ptr %1641, ptr %1642
  %1644 = load i64, ptr %1643, align 1
  %1645 = xor i64 %1644, %1640
  %1646 = xor i64 %1645, %1636
  %1647 = shl nuw nsw i64 %786, 2
  %1648 = add nuw nsw i64 %1647, -7046029288634856825
  %1649 = zext i64 %1646 to i128
  %1650 = zext i64 %1648 to i128
  %1651 = mul nuw i128 %1649, %1650
  %1652 = trunc i128 %1651 to i64
  %1653 = lshr i128 %1651, 64
  %1654 = trunc nuw i128 %1653 to i64
  %1655 = shl i64 %1652, 1
  %1656 = add i64 %1655, %1654
  %1657 = lshr i64 %1656, 3
  %1658 = xor i64 %1657, %1652
  %1659 = lshr i64 %1658, 35
  %1660 = xor i64 %1659, %1658
  %1661 = mul i64 %1660, -6939452855193903323
  %1662 = lshr i64 %1661, 28
  %1663 = xor i64 %1662, %1661
  %1664 = lshr i64 %1656, 37
  %1665 = xor i64 %1664, %1656
  %1666 = mul i64 %1665, 1609587791953885689
  %1667 = lshr i64 %1666, 32
  %1668 = xor i64 %1667, %1666
  %1669 = insertvalue { i64, i64 } poison, i64 %1663, 0
  %1670 = insertvalue { i64, i64 } %1669, i64 %1668, 1
  br label %1986

1671:                                             ; preds = %1626
  %1672 = icmp eq i64 %786, 0
  br i1 %1672, label %1726, label %1673

1673:                                             ; preds = %1671
  %1674 = load i8, ptr %1226, align 64
  %1675 = lshr i64 %786, 1
  %1676 = getelementptr inbounds nuw i8, ptr %1226, i64 %1675
  %1677 = load i8, ptr %1676, align 1
  %1678 = getelementptr i8, ptr %1226, i64 %786
  %1679 = getelementptr i8, ptr %1678, i64 -1
  %1680 = load i8, ptr %1679, align 1
  %1681 = zext i8 %1674 to i32
  %1682 = shl nuw nsw i32 %1681, 16
  %1683 = zext i8 %1677 to i32
  %1684 = shl nuw i32 %1683, 24
  %1685 = or disjoint i32 %1684, %1682
  %1686 = zext i8 %1680 to i32
  %1687 = or disjoint i32 %1685, %1686
  %1688 = trunc nuw nsw i64 %786 to i32
  %1689 = shl nuw nsw i32 %1688, 8
  %1690 = or disjoint i32 %1687, %1689
  %1691 = tail call noundef i32 @llvm.bswap.i32(i32 %1690)
  %1692 = tail call i32 @llvm.fshl.i32(i32 %1691, i32 %1691, i32 13)
  %1693 = load i32, ptr %784, align 1
  %1694 = getelementptr inbounds nuw i8, ptr %12, i64 68
  %1695 = getelementptr inbounds nuw i8, ptr %781, i64 4
  %1696 = select i1 %782, ptr %1694, ptr %1695
  %1697 = load i32, ptr %1696, align 1
  %1698 = xor i32 %1697, %1693
  %1699 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %1700 = getelementptr inbounds nuw i8, ptr %781, i64 8
  %1701 = select i1 %782, ptr %1699, ptr %1700
  %1702 = load i32, ptr %1701, align 1
  %1703 = getelementptr inbounds nuw i8, ptr %12, i64 76
  %1704 = getelementptr inbounds nuw i8, ptr %781, i64 12
  %1705 = select i1 %782, ptr %1703, ptr %1704
  %1706 = load i32, ptr %1705, align 1
  %1707 = xor i32 %1706, %1702
  %1708 = xor i32 %1698, %1690
  %1709 = zext i32 %1708 to i64
  %1710 = xor i32 %1707, %1692
  %1711 = zext i32 %1710 to i64
  %1712 = mul i64 %1709, -4417276706812531889
  %1713 = lshr i64 %1712, 29
  %1714 = xor i64 %1713, %1712
  %1715 = mul i64 %1714, 1609587929392839161
  %1716 = lshr i64 %1715, 32
  %1717 = xor i64 %1716, %1715
  %1718 = mul i64 %1711, -4417276706812531889
  %1719 = lshr i64 %1718, 29
  %1720 = xor i64 %1719, %1718
  %1721 = mul i64 %1720, 1609587929392839161
  %1722 = lshr i64 %1721, 32
  %1723 = xor i64 %1722, %1721
  %1724 = insertvalue { i64, i64 } poison, i64 %1717, 0
  %1725 = insertvalue { i64, i64 } %1724, i64 %1723, 1
  br label %1986

1726:                                             ; preds = %1671
  %1727 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %1728 = getelementptr inbounds nuw i8, ptr %781, i64 64
  %1729 = select i1 %782, ptr %1727, ptr %1728
  %1730 = load i64, ptr %1729, align 1
  %1731 = getelementptr inbounds nuw i8, ptr %12, i64 136
  %1732 = getelementptr inbounds nuw i8, ptr %781, i64 72
  %1733 = select i1 %782, ptr %1731, ptr %1732
  %1734 = load i64, ptr %1733, align 1
  %1735 = xor i64 %1734, %1730
  %1736 = getelementptr inbounds nuw i8, ptr %12, i64 144
  %1737 = getelementptr inbounds nuw i8, ptr %781, i64 80
  %1738 = select i1 %782, ptr %1736, ptr %1737
  %1739 = load i64, ptr %1738, align 1
  %1740 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %1741 = getelementptr inbounds nuw i8, ptr %781, i64 88
  %1742 = select i1 %782, ptr %1740, ptr %1741
  %1743 = load i64, ptr %1742, align 1
  %1744 = xor i64 %1743, %1739
  %1745 = lshr i64 %1735, 33
  %1746 = xor i64 %1745, %1735
  %1747 = mul i64 %1746, -4417276706812531889
  %1748 = lshr i64 %1747, 29
  %1749 = xor i64 %1748, %1747
  %1750 = mul i64 %1749, 1609587929392839161
  %1751 = lshr i64 %1750, 32
  %1752 = xor i64 %1751, %1750
  %1753 = lshr i64 %1744, 33
  %1754 = xor i64 %1753, %1744
  %1755 = mul i64 %1754, -4417276706812531889
  %1756 = lshr i64 %1755, 29
  %1757 = xor i64 %1756, %1755
  %1758 = mul i64 %1757, 1609587929392839161
  %1759 = lshr i64 %1758, 32
  %1760 = xor i64 %1759, %1758
  %1761 = insertvalue { i64, i64 } poison, i64 %1752, 0
  %1762 = insertvalue { i64, i64 } %1761, i64 %1760, 1
  br label %1986

1763:                                             ; preds = %1564
  %1764 = icmp samesign ult i64 %786, 129
  br i1 %1764, label %1765, label %1984

1765:                                             ; preds = %1763
  %1766 = mul i64 %786, -7046029288634856825
  %1767 = icmp samesign ugt i64 %786, 32
  br i1 %1767, label %1768, label %1919

1768:                                             ; preds = %1765
  %1769 = icmp samesign ugt i64 %786, 64
  br i1 %1769, label %1770, label %1869

1770:                                             ; preds = %1768
  %1771 = icmp samesign ugt i64 %786, 96
  br i1 %1771, label %1772, label %1819

1772:                                             ; preds = %1770
  %1773 = getelementptr inbounds nuw i8, ptr %12, i64 304
  %1774 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1775 = getelementptr inbounds i8, ptr %1774, i64 -64
  %1776 = getelementptr inbounds nuw i8, ptr %12, i64 160
  %1777 = getelementptr inbounds nuw i8, ptr %781, i64 96
  %1778 = select i1 %782, ptr %1776, ptr %1777
  %1779 = load i64, ptr %1773, align 16
  %1780 = getelementptr inbounds nuw i8, ptr %12, i64 312
  %1781 = load i64, ptr %1780, align 8
  %1782 = load i64, ptr %1778, align 1
  %1783 = xor i64 %1782, %1779
  %1784 = getelementptr inbounds nuw i8, ptr %12, i64 168
  %1785 = getelementptr inbounds nuw i8, ptr %781, i64 104
  %1786 = select i1 %782, ptr %1784, ptr %1785
  %1787 = load i64, ptr %1786, align 1
  %1788 = xor i64 %1787, %1781
  %1789 = zext i64 %1783 to i128
  %1790 = zext i64 %1788 to i128
  %1791 = mul nuw i128 %1790, %1789
  %1792 = lshr i128 %1791, 64
  %1793 = xor i128 %1792, %1791
  %1794 = trunc i128 %1793 to i64
  %1795 = add i64 %1766, %1794
  %1796 = load i64, ptr %1775, align 1
  %1797 = getelementptr inbounds i8, ptr %1774, i64 -56
  %1798 = load i64, ptr %1797, align 1
  %1799 = add i64 %1798, %1796
  %1800 = xor i64 %1795, %1799
  %1801 = getelementptr inbounds nuw i8, ptr %12, i64 176
  %1802 = getelementptr inbounds nuw i8, ptr %781, i64 112
  %1803 = select i1 %782, ptr %1801, ptr %1802
  %1804 = load i64, ptr %1803, align 1
  %1805 = xor i64 %1804, %1796
  %1806 = getelementptr inbounds nuw i8, ptr %12, i64 184
  %1807 = getelementptr inbounds nuw i8, ptr %781, i64 120
  %1808 = select i1 %782, ptr %1806, ptr %1807
  %1809 = load i64, ptr %1808, align 1
  %1810 = xor i64 %1809, %1798
  %1811 = zext i64 %1805 to i128
  %1812 = zext i64 %1810 to i128
  %1813 = mul nuw i128 %1812, %1811
  %1814 = lshr i128 %1813, 64
  %1815 = xor i128 %1814, %1813
  %1816 = trunc i128 %1815 to i64
  %1817 = add i64 %1781, %1779
  %1818 = xor i64 %1817, %1816
  br label %1819

1819:                                             ; preds = %1772, %1770
  %1820 = phi i64 [ %1800, %1772 ], [ %1766, %1770 ]
  %1821 = phi i64 [ %1818, %1772 ], [ 0, %1770 ]
  %1822 = getelementptr inbounds nuw i8, ptr %12, i64 288
  %1823 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1824 = getelementptr inbounds i8, ptr %1823, i64 -48
  %1825 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %1826 = getelementptr inbounds nuw i8, ptr %781, i64 64
  %1827 = select i1 %782, ptr %1825, ptr %1826
  %1828 = load i64, ptr %1822, align 32
  %1829 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %1830 = load i64, ptr %1829, align 8
  %1831 = load i64, ptr %1827, align 1
  %1832 = xor i64 %1831, %1828
  %1833 = getelementptr inbounds nuw i8, ptr %12, i64 136
  %1834 = getelementptr inbounds nuw i8, ptr %781, i64 72
  %1835 = select i1 %782, ptr %1833, ptr %1834
  %1836 = load i64, ptr %1835, align 1
  %1837 = xor i64 %1836, %1830
  %1838 = zext i64 %1832 to i128
  %1839 = zext i64 %1837 to i128
  %1840 = mul nuw i128 %1839, %1838
  %1841 = lshr i128 %1840, 64
  %1842 = xor i128 %1841, %1840
  %1843 = trunc i128 %1842 to i64
  %1844 = add i64 %1820, %1843
  %1845 = load i64, ptr %1824, align 1
  %1846 = getelementptr inbounds i8, ptr %1823, i64 -40
  %1847 = load i64, ptr %1846, align 1
  %1848 = add i64 %1847, %1845
  %1849 = xor i64 %1844, %1848
  %1850 = getelementptr inbounds nuw i8, ptr %12, i64 144
  %1851 = getelementptr inbounds nuw i8, ptr %781, i64 80
  %1852 = select i1 %782, ptr %1850, ptr %1851
  %1853 = load i64, ptr %1852, align 1
  %1854 = xor i64 %1853, %1845
  %1855 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %1856 = getelementptr inbounds nuw i8, ptr %781, i64 88
  %1857 = select i1 %782, ptr %1855, ptr %1856
  %1858 = load i64, ptr %1857, align 1
  %1859 = xor i64 %1858, %1847
  %1860 = zext i64 %1854 to i128
  %1861 = zext i64 %1859 to i128
  %1862 = mul nuw i128 %1861, %1860
  %1863 = lshr i128 %1862, 64
  %1864 = xor i128 %1863, %1862
  %1865 = trunc i128 %1864 to i64
  %1866 = add i64 %1821, %1865
  %1867 = add i64 %1830, %1828
  %1868 = xor i64 %1866, %1867
  br label %1869

1869:                                             ; preds = %1819, %1768
  %1870 = phi i64 [ %1849, %1819 ], [ %1766, %1768 ]
  %1871 = phi i64 [ %1868, %1819 ], [ 0, %1768 ]
  %1872 = getelementptr inbounds nuw i8, ptr %12, i64 272
  %1873 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1874 = getelementptr inbounds i8, ptr %1873, i64 -32
  %1875 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %1876 = getelementptr inbounds nuw i8, ptr %781, i64 32
  %1877 = select i1 %782, ptr %1875, ptr %1876
  %1878 = load i64, ptr %1872, align 16
  %1879 = getelementptr inbounds nuw i8, ptr %12, i64 280
  %1880 = load i64, ptr %1879, align 8
  %1881 = load i64, ptr %1877, align 1
  %1882 = xor i64 %1881, %1878
  %1883 = getelementptr inbounds nuw i8, ptr %12, i64 104
  %1884 = getelementptr inbounds nuw i8, ptr %781, i64 40
  %1885 = select i1 %782, ptr %1883, ptr %1884
  %1886 = load i64, ptr %1885, align 1
  %1887 = xor i64 %1886, %1880
  %1888 = zext i64 %1882 to i128
  %1889 = zext i64 %1887 to i128
  %1890 = mul nuw i128 %1889, %1888
  %1891 = lshr i128 %1890, 64
  %1892 = xor i128 %1891, %1890
  %1893 = trunc i128 %1892 to i64
  %1894 = add i64 %1870, %1893
  %1895 = load i64, ptr %1874, align 1
  %1896 = getelementptr inbounds i8, ptr %1873, i64 -24
  %1897 = load i64, ptr %1896, align 1
  %1898 = add i64 %1897, %1895
  %1899 = xor i64 %1894, %1898
  %1900 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %1901 = getelementptr inbounds nuw i8, ptr %781, i64 48
  %1902 = select i1 %782, ptr %1900, ptr %1901
  %1903 = load i64, ptr %1902, align 1
  %1904 = xor i64 %1903, %1895
  %1905 = getelementptr inbounds nuw i8, ptr %12, i64 120
  %1906 = getelementptr inbounds nuw i8, ptr %781, i64 56
  %1907 = select i1 %782, ptr %1905, ptr %1906
  %1908 = load i64, ptr %1907, align 1
  %1909 = xor i64 %1908, %1897
  %1910 = zext i64 %1904 to i128
  %1911 = zext i64 %1909 to i128
  %1912 = mul nuw i128 %1911, %1910
  %1913 = lshr i128 %1912, 64
  %1914 = xor i128 %1913, %1912
  %1915 = trunc i128 %1914 to i64
  %1916 = add i64 %1871, %1915
  %1917 = add i64 %1880, %1878
  %1918 = xor i64 %1916, %1917
  br label %1919

1919:                                             ; preds = %1869, %1765
  %1920 = phi i64 [ %1899, %1869 ], [ %1766, %1765 ]
  %1921 = phi i64 [ %1918, %1869 ], [ 0, %1765 ]
  %1922 = getelementptr inbounds nuw i8, ptr %1226, i64 %786
  %1923 = getelementptr inbounds i8, ptr %1922, i64 -16
  %1924 = load i64, ptr %1226, align 64
  %1925 = getelementptr inbounds nuw i8, ptr %12, i64 264
  %1926 = load i64, ptr %1925, align 8
  %1927 = load i64, ptr %784, align 1
  %1928 = xor i64 %1927, %1924
  %1929 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %1930 = getelementptr inbounds nuw i8, ptr %781, i64 8
  %1931 = select i1 %782, ptr %1929, ptr %1930
  %1932 = load i64, ptr %1931, align 1
  %1933 = xor i64 %1932, %1926
  %1934 = zext i64 %1928 to i128
  %1935 = zext i64 %1933 to i128
  %1936 = mul nuw i128 %1935, %1934
  %1937 = lshr i128 %1936, 64
  %1938 = xor i128 %1937, %1936
  %1939 = trunc i128 %1938 to i64
  %1940 = add i64 %1920, %1939
  %1941 = load i64, ptr %1923, align 1
  %1942 = getelementptr inbounds i8, ptr %1922, i64 -8
  %1943 = load i64, ptr %1942, align 1
  %1944 = add i64 %1943, %1941
  %1945 = xor i64 %1940, %1944
  %1946 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %1947 = getelementptr inbounds nuw i8, ptr %781, i64 16
  %1948 = select i1 %782, ptr %1946, ptr %1947
  %1949 = load i64, ptr %1948, align 1
  %1950 = xor i64 %1949, %1941
  %1951 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %1952 = getelementptr inbounds nuw i8, ptr %781, i64 24
  %1953 = select i1 %782, ptr %1951, ptr %1952
  %1954 = load i64, ptr %1953, align 1
  %1955 = xor i64 %1954, %1943
  %1956 = zext i64 %1950 to i128
  %1957 = zext i64 %1955 to i128
  %1958 = mul nuw i128 %1957, %1956
  %1959 = lshr i128 %1958, 64
  %1960 = xor i128 %1959, %1958
  %1961 = trunc i128 %1960 to i64
  %1962 = add i64 %1921, %1961
  %1963 = add i64 %1926, %1924
  %1964 = xor i64 %1962, %1963
  %1965 = add i64 %1964, %1945
  %1966 = mul i64 %1945, -7046029288634856825
  %1967 = mul i64 %1964, -8796714831421723037
  %1968 = mul i64 %786, -4417276706812531889
  %1969 = add i64 %1966, %1968
  %1970 = add i64 %1969, %1967
  %1971 = lshr i64 %1965, 37
  %1972 = xor i64 %1971, %1965
  %1973 = mul i64 %1972, 1609587791953885689
  %1974 = lshr i64 %1973, 32
  %1975 = xor i64 %1974, %1973
  %1976 = lshr i64 %1970, 37
  %1977 = xor i64 %1976, %1970
  %1978 = mul i64 %1977, 1609587791953885689
  %1979 = lshr i64 %1978, 32
  %1980 = xor i64 %1979, %1978
  %1981 = sub i64 0, %1980
  %1982 = insertvalue { i64, i64 } poison, i64 %1975, 0
  %1983 = insertvalue { i64, i64 } %1982, i64 %1981, 1
  br label %1986

1984:                                             ; preds = %1763
  %1985 = call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef nonnull readonly %1226, i64 noundef range(i64 0, 241) %786, ptr noundef nonnull readonly %784, i64 noundef 0) #27
  br label %1986

1986:                                             ; preds = %1122, %1233, %1278, %1320, %1364, %1505, %1562, %1567, %1628, %1673, %1726, %1919, %1984
  %1987 = phi { i64, i64 } [ %1221, %1122 ], [ %1561, %1505 ], [ %1563, %1562 ], [ %1275, %1233 ], [ %1317, %1278 ], [ %1363, %1320 ], [ %1384, %1364 ], [ %1983, %1919 ], [ %1985, %1984 ], [ %1625, %1567 ], [ %1670, %1628 ], [ %1725, %1673 ], [ %1762, %1726 ]
  %1988 = extractvalue { i64, i64 } %1987, 0
  %1989 = extractvalue { i64, i64 } %1987, 1
  store i64 %1988, ptr %5, align 8
  %1990 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1989, ptr %1990, align 8
  br label %3065

1991:                                             ; preds = %400
  %1992 = load ptr, ptr %99, align 8
  %1993 = icmp eq ptr %1992, null
  %1994 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %1995 = select i1 %1993, ptr %1994, ptr %1992
  %1996 = getelementptr inbounds nuw i8, ptr %12, i64 528
  %1997 = load i64, ptr %1996, align 16
  %1998 = icmp ugt i64 %1997, 240
  br i1 %1998, label %1999, label %2496

1999:                                             ; preds = %1991
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #28
  %2000 = load i64, ptr %12, align 64
  %2001 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %2002 = load i64, ptr %2001, align 8
  %2003 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %2004 = load i64, ptr %2003, align 16
  %2005 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %2006 = load i64, ptr %2005, align 8
  %2007 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %2008 = load i64, ptr %2007, align 32
  %2009 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %2010 = load i64, ptr %2009, align 8
  %2011 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %2012 = load i64, ptr %2011, align 16
  %2013 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %2014 = load i64, ptr %2013, align 8
  %2015 = getelementptr inbounds nuw i8, ptr %12, i64 512
  %2016 = load i32, ptr %2015, align 64
  %2017 = icmp ugt i32 %2016, 63
  br i1 %2017, label %2018, label %2322

2018:                                             ; preds = %1999
  %2019 = add i32 %2016, -1
  %2020 = lshr i32 %2019, 6
  %2021 = zext nneg i32 %2020 to i64
  %2022 = getelementptr inbounds nuw i8, ptr %12, i64 520
  %2023 = load i64, ptr %2022, align 8
  %2024 = load i64, ptr %101, align 8
  %2025 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %2026 = shl i64 %2023, 3
  %2027 = getelementptr inbounds nuw i8, ptr %1995, i64 %2026
  %2028 = sub i64 %2024, %2023
  %2029 = icmp ugt i64 %2028, %2021
  br i1 %2029, label %2202, label %2030

2030:                                             ; preds = %2018
  %2031 = load i64, ptr %100, align 32
  %2032 = getelementptr inbounds nuw i8, ptr %1995, i64 %2031
  %2033 = load i64, ptr %2032, align 1
  %2034 = getelementptr inbounds nuw i8, ptr %2032, i64 8
  %2035 = load i64, ptr %2034, align 1
  %2036 = getelementptr inbounds nuw i8, ptr %2032, i64 16
  %2037 = load i64, ptr %2036, align 1
  %2038 = getelementptr inbounds nuw i8, ptr %2032, i64 24
  %2039 = load i64, ptr %2038, align 1
  %2040 = getelementptr inbounds nuw i8, ptr %2032, i64 32
  %2041 = load i64, ptr %2040, align 1
  %2042 = getelementptr inbounds nuw i8, ptr %2032, i64 40
  %2043 = load i64, ptr %2042, align 1
  %2044 = getelementptr inbounds nuw i8, ptr %2032, i64 48
  %2045 = load i64, ptr %2044, align 1
  %2046 = getelementptr inbounds nuw i8, ptr %2032, i64 56
  %2047 = load i64, ptr %2046, align 1
  br label %2048

2048:                                             ; preds = %2157, %2030
  %2049 = phi i64 [ %2014, %2030 ], [ %2197, %2157 ]
  %2050 = phi i64 [ %2012, %2030 ], [ %2193, %2157 ]
  %2051 = phi i64 [ %2010, %2030 ], [ %2189, %2157 ]
  %2052 = phi i64 [ %2008, %2030 ], [ %2185, %2157 ]
  %2053 = phi i64 [ %2006, %2030 ], [ %2181, %2157 ]
  %2054 = phi i64 [ %2004, %2030 ], [ %2177, %2157 ]
  %2055 = phi i64 [ %2002, %2030 ], [ %2173, %2157 ]
  %2056 = phi i64 [ %2000, %2030 ], [ %2169, %2157 ]
  %2057 = phi i64 [ %2021, %2030 ], [ %2200, %2157 ]
  %2058 = phi ptr [ %2025, %2030 ], [ %2199, %2157 ]
  %2059 = phi ptr [ %2027, %2030 ], [ %1995, %2157 ]
  %2060 = phi i64 [ %2028, %2030 ], [ %2024, %2157 ]
  %2061 = icmp eq i64 %2060, 0
  br i1 %2061, label %2157, label %2062

2062:                                             ; preds = %2048, %2062
  %2063 = phi i64 [ %2154, %2062 ], [ %2049, %2048 ]
  %2064 = phi i64 [ %2150, %2062 ], [ %2050, %2048 ]
  %2065 = phi i64 [ %2134, %2062 ], [ %2051, %2048 ]
  %2066 = phi i64 [ %2130, %2062 ], [ %2052, %2048 ]
  %2067 = phi i64 [ %2114, %2062 ], [ %2053, %2048 ]
  %2068 = phi i64 [ %2110, %2062 ], [ %2054, %2048 ]
  %2069 = phi i64 [ %2094, %2062 ], [ %2055, %2048 ]
  %2070 = phi i64 [ %2090, %2062 ], [ %2056, %2048 ]
  %2071 = phi i64 [ %2155, %2062 ], [ 0, %2048 ]
  %2072 = shl i64 %2071, 6
  %2073 = getelementptr inbounds nuw i8, ptr %2058, i64 %2072
  %2074 = getelementptr inbounds nuw i8, ptr %2073, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %2074, i32 0, i32 3, i32 1), !noalias !70
  %2075 = shl i64 %2071, 3
  %2076 = getelementptr inbounds nuw i8, ptr %2059, i64 %2075
  %2077 = load i64, ptr %2073, align 1
  %2078 = load i64, ptr %2076, align 1
  %2079 = xor i64 %2078, %2077
  %2080 = add i64 %2077, %2069
  %2081 = lshr i64 %2079, 32
  %2082 = and i64 %2079, 4294967295
  %2083 = mul nuw i64 %2082, %2081
  %2084 = getelementptr inbounds nuw i8, ptr %2073, i64 8
  %2085 = load i64, ptr %2084, align 1
  %2086 = getelementptr inbounds nuw i8, ptr %2076, i64 8
  %2087 = load i64, ptr %2086, align 1
  %2088 = xor i64 %2087, %2085
  %2089 = add i64 %2085, %2070
  %2090 = add i64 %2089, %2083
  %2091 = lshr i64 %2088, 32
  %2092 = and i64 %2088, 4294967295
  %2093 = mul nuw i64 %2092, %2091
  %2094 = add i64 %2080, %2093
  %2095 = getelementptr inbounds nuw i8, ptr %2073, i64 16
  %2096 = load i64, ptr %2095, align 1
  %2097 = getelementptr inbounds nuw i8, ptr %2076, i64 16
  %2098 = load i64, ptr %2097, align 1
  %2099 = xor i64 %2098, %2096
  %2100 = add i64 %2096, %2067
  %2101 = lshr i64 %2099, 32
  %2102 = and i64 %2099, 4294967295
  %2103 = mul nuw i64 %2102, %2101
  %2104 = getelementptr inbounds nuw i8, ptr %2073, i64 24
  %2105 = load i64, ptr %2104, align 1
  %2106 = getelementptr inbounds nuw i8, ptr %2076, i64 24
  %2107 = load i64, ptr %2106, align 1
  %2108 = xor i64 %2107, %2105
  %2109 = add i64 %2105, %2068
  %2110 = add i64 %2109, %2103
  %2111 = lshr i64 %2108, 32
  %2112 = and i64 %2108, 4294967295
  %2113 = mul nuw i64 %2112, %2111
  %2114 = add i64 %2100, %2113
  %2115 = getelementptr inbounds nuw i8, ptr %2073, i64 32
  %2116 = load i64, ptr %2115, align 1
  %2117 = getelementptr inbounds nuw i8, ptr %2076, i64 32
  %2118 = load i64, ptr %2117, align 1
  %2119 = xor i64 %2118, %2116
  %2120 = add i64 %2116, %2065
  %2121 = lshr i64 %2119, 32
  %2122 = and i64 %2119, 4294967295
  %2123 = mul nuw i64 %2122, %2121
  %2124 = getelementptr inbounds nuw i8, ptr %2073, i64 40
  %2125 = load i64, ptr %2124, align 1
  %2126 = getelementptr inbounds nuw i8, ptr %2076, i64 40
  %2127 = load i64, ptr %2126, align 1
  %2128 = xor i64 %2127, %2125
  %2129 = add i64 %2125, %2066
  %2130 = add i64 %2129, %2123
  %2131 = lshr i64 %2128, 32
  %2132 = and i64 %2128, 4294967295
  %2133 = mul nuw i64 %2132, %2131
  %2134 = add i64 %2120, %2133
  %2135 = getelementptr inbounds nuw i8, ptr %2073, i64 48
  %2136 = load i64, ptr %2135, align 1
  %2137 = getelementptr inbounds nuw i8, ptr %2076, i64 48
  %2138 = load i64, ptr %2137, align 1
  %2139 = xor i64 %2138, %2136
  %2140 = add i64 %2136, %2063
  %2141 = lshr i64 %2139, 32
  %2142 = and i64 %2139, 4294967295
  %2143 = mul nuw i64 %2142, %2141
  %2144 = getelementptr inbounds nuw i8, ptr %2073, i64 56
  %2145 = load i64, ptr %2144, align 1
  %2146 = getelementptr inbounds nuw i8, ptr %2076, i64 56
  %2147 = load i64, ptr %2146, align 1
  %2148 = xor i64 %2147, %2145
  %2149 = add i64 %2145, %2064
  %2150 = add i64 %2149, %2143
  %2151 = lshr i64 %2148, 32
  %2152 = and i64 %2148, 4294967295
  %2153 = mul nuw i64 %2152, %2151
  %2154 = add i64 %2140, %2153
  %2155 = add nuw i64 %2071, 1
  %2156 = icmp eq i64 %2155, %2060
  br i1 %2156, label %2157, label %2062, !llvm.loop !56

2157:                                             ; preds = %2062, %2048
  %2158 = phi i64 [ %2049, %2048 ], [ %2154, %2062 ]
  %2159 = phi i64 [ %2050, %2048 ], [ %2150, %2062 ]
  %2160 = phi i64 [ %2051, %2048 ], [ %2134, %2062 ]
  %2161 = phi i64 [ %2052, %2048 ], [ %2130, %2062 ]
  %2162 = phi i64 [ %2053, %2048 ], [ %2114, %2062 ]
  %2163 = phi i64 [ %2054, %2048 ], [ %2110, %2062 ]
  %2164 = phi i64 [ %2055, %2048 ], [ %2094, %2062 ]
  %2165 = phi i64 [ %2056, %2048 ], [ %2090, %2062 ]
  %2166 = lshr i64 %2165, 47
  %2167 = xor i64 %2033, %2166
  %2168 = xor i64 %2167, %2165
  %2169 = mul i64 %2168, 2654435761
  %2170 = lshr i64 %2164, 47
  %2171 = xor i64 %2035, %2170
  %2172 = xor i64 %2171, %2164
  %2173 = mul i64 %2172, 2654435761
  %2174 = lshr i64 %2163, 47
  %2175 = xor i64 %2037, %2174
  %2176 = xor i64 %2175, %2163
  %2177 = mul i64 %2176, 2654435761
  %2178 = lshr i64 %2162, 47
  %2179 = xor i64 %2039, %2178
  %2180 = xor i64 %2179, %2162
  %2181 = mul i64 %2180, 2654435761
  %2182 = lshr i64 %2161, 47
  %2183 = xor i64 %2041, %2182
  %2184 = xor i64 %2183, %2161
  %2185 = mul i64 %2184, 2654435761
  %2186 = lshr i64 %2160, 47
  %2187 = xor i64 %2043, %2186
  %2188 = xor i64 %2187, %2160
  %2189 = mul i64 %2188, 2654435761
  %2190 = lshr i64 %2159, 47
  %2191 = xor i64 %2045, %2190
  %2192 = xor i64 %2191, %2159
  %2193 = mul i64 %2192, 2654435761
  %2194 = lshr i64 %2158, 47
  %2195 = xor i64 %2047, %2194
  %2196 = xor i64 %2195, %2158
  %2197 = mul i64 %2196, 2654435761
  %2198 = shl i64 %2060, 6
  %2199 = getelementptr inbounds nuw i8, ptr %2058, i64 %2198
  %2200 = sub i64 %2057, %2060
  %2201 = icmp ult i64 %2200, %2024
  br i1 %2201, label %2202, label %2048, !llvm.loop !57

2202:                                             ; preds = %2157, %2018
  %2203 = phi i64 [ %2014, %2018 ], [ %2197, %2157 ]
  %2204 = phi i64 [ %2012, %2018 ], [ %2193, %2157 ]
  %2205 = phi i64 [ %2010, %2018 ], [ %2189, %2157 ]
  %2206 = phi i64 [ %2008, %2018 ], [ %2185, %2157 ]
  %2207 = phi i64 [ %2006, %2018 ], [ %2181, %2157 ]
  %2208 = phi i64 [ %2004, %2018 ], [ %2177, %2157 ]
  %2209 = phi i64 [ %2002, %2018 ], [ %2173, %2157 ]
  %2210 = phi i64 [ %2000, %2018 ], [ %2169, %2157 ]
  %2211 = phi i64 [ %2021, %2018 ], [ %2200, %2157 ]
  %2212 = phi ptr [ %2025, %2018 ], [ %2199, %2157 ]
  %2213 = phi ptr [ %2027, %2018 ], [ %1995, %2157 ]
  %2214 = icmp eq i64 %2211, 0
  br i1 %2214, label %2310, label %2215

2215:                                             ; preds = %2202, %2215
  %2216 = phi i64 [ %2307, %2215 ], [ %2203, %2202 ]
  %2217 = phi i64 [ %2303, %2215 ], [ %2204, %2202 ]
  %2218 = phi i64 [ %2287, %2215 ], [ %2205, %2202 ]
  %2219 = phi i64 [ %2283, %2215 ], [ %2206, %2202 ]
  %2220 = phi i64 [ %2267, %2215 ], [ %2207, %2202 ]
  %2221 = phi i64 [ %2263, %2215 ], [ %2208, %2202 ]
  %2222 = phi i64 [ %2247, %2215 ], [ %2209, %2202 ]
  %2223 = phi i64 [ %2243, %2215 ], [ %2210, %2202 ]
  %2224 = phi i64 [ %2308, %2215 ], [ 0, %2202 ]
  %2225 = shl i64 %2224, 6
  %2226 = getelementptr inbounds nuw i8, ptr %2212, i64 %2225
  %2227 = getelementptr inbounds nuw i8, ptr %2226, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %2227, i32 0, i32 3, i32 1), !noalias !70
  %2228 = shl i64 %2224, 3
  %2229 = getelementptr inbounds nuw i8, ptr %2213, i64 %2228
  %2230 = load i64, ptr %2226, align 1
  %2231 = load i64, ptr %2229, align 1
  %2232 = xor i64 %2231, %2230
  %2233 = add i64 %2230, %2222
  %2234 = lshr i64 %2232, 32
  %2235 = and i64 %2232, 4294967295
  %2236 = mul nuw i64 %2235, %2234
  %2237 = getelementptr inbounds nuw i8, ptr %2226, i64 8
  %2238 = load i64, ptr %2237, align 1
  %2239 = getelementptr inbounds nuw i8, ptr %2229, i64 8
  %2240 = load i64, ptr %2239, align 1
  %2241 = xor i64 %2240, %2238
  %2242 = add i64 %2238, %2223
  %2243 = add i64 %2242, %2236
  %2244 = lshr i64 %2241, 32
  %2245 = and i64 %2241, 4294967295
  %2246 = mul nuw i64 %2245, %2244
  %2247 = add i64 %2233, %2246
  %2248 = getelementptr inbounds nuw i8, ptr %2226, i64 16
  %2249 = load i64, ptr %2248, align 1
  %2250 = getelementptr inbounds nuw i8, ptr %2229, i64 16
  %2251 = load i64, ptr %2250, align 1
  %2252 = xor i64 %2251, %2249
  %2253 = add i64 %2249, %2220
  %2254 = lshr i64 %2252, 32
  %2255 = and i64 %2252, 4294967295
  %2256 = mul nuw i64 %2255, %2254
  %2257 = getelementptr inbounds nuw i8, ptr %2226, i64 24
  %2258 = load i64, ptr %2257, align 1
  %2259 = getelementptr inbounds nuw i8, ptr %2229, i64 24
  %2260 = load i64, ptr %2259, align 1
  %2261 = xor i64 %2260, %2258
  %2262 = add i64 %2258, %2221
  %2263 = add i64 %2262, %2256
  %2264 = lshr i64 %2261, 32
  %2265 = and i64 %2261, 4294967295
  %2266 = mul nuw i64 %2265, %2264
  %2267 = add i64 %2253, %2266
  %2268 = getelementptr inbounds nuw i8, ptr %2226, i64 32
  %2269 = load i64, ptr %2268, align 1
  %2270 = getelementptr inbounds nuw i8, ptr %2229, i64 32
  %2271 = load i64, ptr %2270, align 1
  %2272 = xor i64 %2271, %2269
  %2273 = add i64 %2269, %2218
  %2274 = lshr i64 %2272, 32
  %2275 = and i64 %2272, 4294967295
  %2276 = mul nuw i64 %2275, %2274
  %2277 = getelementptr inbounds nuw i8, ptr %2226, i64 40
  %2278 = load i64, ptr %2277, align 1
  %2279 = getelementptr inbounds nuw i8, ptr %2229, i64 40
  %2280 = load i64, ptr %2279, align 1
  %2281 = xor i64 %2280, %2278
  %2282 = add i64 %2278, %2219
  %2283 = add i64 %2282, %2276
  %2284 = lshr i64 %2281, 32
  %2285 = and i64 %2281, 4294967295
  %2286 = mul nuw i64 %2285, %2284
  %2287 = add i64 %2273, %2286
  %2288 = getelementptr inbounds nuw i8, ptr %2226, i64 48
  %2289 = load i64, ptr %2288, align 1
  %2290 = getelementptr inbounds nuw i8, ptr %2229, i64 48
  %2291 = load i64, ptr %2290, align 1
  %2292 = xor i64 %2291, %2289
  %2293 = add i64 %2289, %2216
  %2294 = lshr i64 %2292, 32
  %2295 = and i64 %2292, 4294967295
  %2296 = mul nuw i64 %2295, %2294
  %2297 = getelementptr inbounds nuw i8, ptr %2226, i64 56
  %2298 = load i64, ptr %2297, align 1
  %2299 = getelementptr inbounds nuw i8, ptr %2229, i64 56
  %2300 = load i64, ptr %2299, align 1
  %2301 = xor i64 %2300, %2298
  %2302 = add i64 %2298, %2217
  %2303 = add i64 %2302, %2296
  %2304 = lshr i64 %2301, 32
  %2305 = and i64 %2301, 4294967295
  %2306 = mul nuw i64 %2305, %2304
  %2307 = add i64 %2293, %2306
  %2308 = add nuw i64 %2224, 1
  %2309 = icmp eq i64 %2308, %2211
  br i1 %2309, label %2310, label %2215, !llvm.loop !56

2310:                                             ; preds = %2215, %2202
  %2311 = phi i64 [ %2203, %2202 ], [ %2307, %2215 ]
  %2312 = phi i64 [ %2204, %2202 ], [ %2303, %2215 ]
  %2313 = phi i64 [ %2205, %2202 ], [ %2287, %2215 ]
  %2314 = phi i64 [ %2206, %2202 ], [ %2283, %2215 ]
  %2315 = phi i64 [ %2207, %2202 ], [ %2267, %2215 ]
  %2316 = phi i64 [ %2208, %2202 ], [ %2263, %2215 ]
  %2317 = phi i64 [ %2209, %2202 ], [ %2247, %2215 ]
  %2318 = phi i64 [ %2210, %2202 ], [ %2243, %2215 ]
  %2319 = zext i32 %2016 to i64
  %2320 = getelementptr inbounds nuw i8, ptr %2025, i64 %2319
  %2321 = getelementptr inbounds i8, ptr %2320, i64 -64
  br label %2331

2322:                                             ; preds = %1999
  %2323 = sub nuw nsw i32 64, %2016
  %2324 = zext nneg i32 %2323 to i64
  %2325 = icmp ne i32 %2016, 0
  tail call void @llvm.assume(i1 %2325)
  %2326 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %2327 = sub nsw i64 0, %2324
  %2328 = getelementptr inbounds i8, ptr %2015, i64 %2327
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr nonnull readonly align 1 %2328, i64 %2324, i1 false)
  %2329 = getelementptr inbounds nuw i8, ptr %7, i64 %2324
  %2330 = zext nneg i32 %2016 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2329, ptr nonnull readonly align 64 %2326, i64 %2330, i1 false)
  br label %2331

2331:                                             ; preds = %2322, %2310
  %2332 = phi i64 [ %2311, %2310 ], [ %2014, %2322 ]
  %2333 = phi i64 [ %2312, %2310 ], [ %2012, %2322 ]
  %2334 = phi i64 [ %2313, %2310 ], [ %2010, %2322 ]
  %2335 = phi i64 [ %2314, %2310 ], [ %2008, %2322 ]
  %2336 = phi i64 [ %2315, %2310 ], [ %2006, %2322 ]
  %2337 = phi i64 [ %2316, %2310 ], [ %2004, %2322 ]
  %2338 = phi i64 [ %2317, %2310 ], [ %2002, %2322 ]
  %2339 = phi i64 [ %2318, %2310 ], [ %2000, %2322 ]
  %2340 = phi ptr [ %2321, %2310 ], [ %7, %2322 ]
  %2341 = load i64, ptr %100, align 32
  %2342 = getelementptr inbounds nuw i8, ptr %1995, i64 %2341
  %2343 = getelementptr inbounds i8, ptr %2342, i64 -7
  %2344 = load i64, ptr %2340, align 1
  %2345 = load i64, ptr %2343, align 1
  %2346 = xor i64 %2345, %2344
  %2347 = add i64 %2344, %2338
  %2348 = lshr i64 %2346, 32
  %2349 = and i64 %2346, 4294967295
  %2350 = mul nuw i64 %2349, %2348
  %2351 = getelementptr inbounds nuw i8, ptr %2340, i64 8
  %2352 = load i64, ptr %2351, align 1
  %2353 = getelementptr inbounds nuw i8, ptr %2342, i64 1
  %2354 = load i64, ptr %2353, align 1
  %2355 = xor i64 %2354, %2352
  %2356 = add i64 %2352, %2339
  %2357 = add i64 %2356, %2350
  %2358 = lshr i64 %2355, 32
  %2359 = and i64 %2355, 4294967295
  %2360 = mul nuw i64 %2359, %2358
  %2361 = add i64 %2347, %2360
  %2362 = getelementptr inbounds nuw i8, ptr %2340, i64 16
  %2363 = load i64, ptr %2362, align 1
  %2364 = getelementptr inbounds nuw i8, ptr %2342, i64 9
  %2365 = load i64, ptr %2364, align 1
  %2366 = xor i64 %2365, %2363
  %2367 = add i64 %2363, %2336
  %2368 = lshr i64 %2366, 32
  %2369 = and i64 %2366, 4294967295
  %2370 = mul nuw i64 %2369, %2368
  %2371 = getelementptr inbounds nuw i8, ptr %2340, i64 24
  %2372 = load i64, ptr %2371, align 1
  %2373 = getelementptr inbounds nuw i8, ptr %2342, i64 17
  %2374 = load i64, ptr %2373, align 1
  %2375 = xor i64 %2374, %2372
  %2376 = add i64 %2372, %2337
  %2377 = add i64 %2376, %2370
  %2378 = lshr i64 %2375, 32
  %2379 = and i64 %2375, 4294967295
  %2380 = mul nuw i64 %2379, %2378
  %2381 = add i64 %2367, %2380
  %2382 = getelementptr inbounds nuw i8, ptr %2340, i64 32
  %2383 = load i64, ptr %2382, align 1
  %2384 = getelementptr inbounds nuw i8, ptr %2342, i64 25
  %2385 = load i64, ptr %2384, align 1
  %2386 = xor i64 %2385, %2383
  %2387 = add i64 %2383, %2334
  %2388 = lshr i64 %2386, 32
  %2389 = and i64 %2386, 4294967295
  %2390 = mul nuw i64 %2389, %2388
  %2391 = getelementptr inbounds nuw i8, ptr %2340, i64 40
  %2392 = load i64, ptr %2391, align 1
  %2393 = getelementptr inbounds nuw i8, ptr %2342, i64 33
  %2394 = load i64, ptr %2393, align 1
  %2395 = xor i64 %2394, %2392
  %2396 = add i64 %2392, %2335
  %2397 = add i64 %2396, %2390
  %2398 = lshr i64 %2395, 32
  %2399 = and i64 %2395, 4294967295
  %2400 = mul nuw i64 %2399, %2398
  %2401 = add i64 %2387, %2400
  %2402 = getelementptr inbounds nuw i8, ptr %2340, i64 48
  %2403 = load i64, ptr %2402, align 1
  %2404 = getelementptr inbounds nuw i8, ptr %2342, i64 41
  %2405 = load i64, ptr %2404, align 1
  %2406 = xor i64 %2405, %2403
  %2407 = add i64 %2403, %2332
  %2408 = lshr i64 %2406, 32
  %2409 = and i64 %2406, 4294967295
  %2410 = mul nuw i64 %2409, %2408
  %2411 = getelementptr inbounds nuw i8, ptr %2340, i64 56
  %2412 = load i64, ptr %2411, align 1
  %2413 = getelementptr inbounds nuw i8, ptr %2342, i64 49
  %2414 = load i64, ptr %2413, align 1
  %2415 = xor i64 %2414, %2412
  %2416 = add i64 %2412, %2333
  %2417 = add i64 %2416, %2410
  %2418 = lshr i64 %2415, 32
  %2419 = and i64 %2415, 4294967295
  %2420 = mul nuw i64 %2419, %2418
  %2421 = add i64 %2407, %2420
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #28
  %2422 = getelementptr inbounds nuw i8, ptr %12, i64 75
  %2423 = getelementptr inbounds nuw i8, ptr %1992, i64 11
  %2424 = select i1 %1993, ptr %2422, ptr %2423
  %2425 = mul i64 %1997, -7046029288634856825
  %2426 = load i64, ptr %2424, align 1, !alias.scope !73, !noalias !78
  %2427 = xor i64 %2426, %2357
  %2428 = getelementptr inbounds nuw i8, ptr %12, i64 83
  %2429 = getelementptr inbounds nuw i8, ptr %1992, i64 19
  %2430 = select i1 %1993, ptr %2428, ptr %2429
  %2431 = load i64, ptr %2430, align 1, !alias.scope !73, !noalias !78
  %2432 = xor i64 %2431, %2361
  %2433 = zext i64 %2427 to i128
  %2434 = zext i64 %2432 to i128
  %2435 = mul nuw i128 %2434, %2433
  %2436 = lshr i128 %2435, 64
  %2437 = xor i128 %2436, %2435
  %2438 = trunc i128 %2437 to i64
  %2439 = add i64 %2425, %2438
  %2440 = getelementptr inbounds nuw i8, ptr %12, i64 91
  %2441 = getelementptr inbounds nuw i8, ptr %1992, i64 27
  %2442 = select i1 %1993, ptr %2440, ptr %2441
  %2443 = load i64, ptr %2442, align 1, !alias.scope !73, !noalias !78
  %2444 = xor i64 %2443, %2377
  %2445 = getelementptr inbounds nuw i8, ptr %12, i64 99
  %2446 = getelementptr inbounds nuw i8, ptr %1992, i64 35
  %2447 = select i1 %1993, ptr %2445, ptr %2446
  %2448 = load i64, ptr %2447, align 1, !alias.scope !73, !noalias !78
  %2449 = xor i64 %2448, %2381
  %2450 = zext i64 %2444 to i128
  %2451 = zext i64 %2449 to i128
  %2452 = mul nuw i128 %2451, %2450
  %2453 = lshr i128 %2452, 64
  %2454 = xor i128 %2453, %2452
  %2455 = trunc i128 %2454 to i64
  %2456 = add i64 %2439, %2455
  %2457 = getelementptr inbounds nuw i8, ptr %12, i64 107
  %2458 = getelementptr inbounds nuw i8, ptr %1992, i64 43
  %2459 = select i1 %1993, ptr %2457, ptr %2458
  %2460 = load i64, ptr %2459, align 1, !alias.scope !73, !noalias !78
  %2461 = xor i64 %2460, %2397
  %2462 = getelementptr inbounds nuw i8, ptr %12, i64 115
  %2463 = getelementptr inbounds nuw i8, ptr %1992, i64 51
  %2464 = select i1 %1993, ptr %2462, ptr %2463
  %2465 = load i64, ptr %2464, align 1, !alias.scope !73, !noalias !78
  %2466 = xor i64 %2465, %2401
  %2467 = zext i64 %2461 to i128
  %2468 = zext i64 %2466 to i128
  %2469 = mul nuw i128 %2468, %2467
  %2470 = lshr i128 %2469, 64
  %2471 = xor i128 %2470, %2469
  %2472 = trunc i128 %2471 to i64
  %2473 = add i64 %2456, %2472
  %2474 = getelementptr inbounds nuw i8, ptr %12, i64 123
  %2475 = getelementptr inbounds nuw i8, ptr %1992, i64 59
  %2476 = select i1 %1993, ptr %2474, ptr %2475
  %2477 = load i64, ptr %2476, align 1, !alias.scope !73, !noalias !78
  %2478 = xor i64 %2477, %2417
  %2479 = getelementptr inbounds nuw i8, ptr %12, i64 131
  %2480 = getelementptr inbounds nuw i8, ptr %1992, i64 67
  %2481 = select i1 %1993, ptr %2479, ptr %2480
  %2482 = load i64, ptr %2481, align 1, !alias.scope !73, !noalias !78
  %2483 = xor i64 %2482, %2421
  %2484 = zext i64 %2478 to i128
  %2485 = zext i64 %2483 to i128
  %2486 = mul nuw i128 %2485, %2484
  %2487 = lshr i128 %2486, 64
  %2488 = xor i128 %2487, %2486
  %2489 = trunc i128 %2488 to i64
  %2490 = add i64 %2473, %2489
  %2491 = lshr i64 %2490, 37
  %2492 = xor i64 %2491, %2490
  %2493 = mul i64 %2492, 1609587791953885689
  %2494 = lshr i64 %2493, 32
  %2495 = xor i64 %2494, %2493
  br label %3062

2496:                                             ; preds = %1991
  %2497 = getelementptr inbounds nuw i8, ptr %12, i64 516
  %2498 = load i32, ptr %2497, align 4
  %2499 = icmp eq i32 %2498, 0
  %2500 = getelementptr inbounds nuw i8, ptr %12, i64 256
  %2501 = icmp samesign ult i64 %1997, 17
  br i1 %2499, label %2745, label %2502

2502:                                             ; preds = %2496
  %2503 = getelementptr inbounds nuw i8, ptr %12, i64 552
  %2504 = load i64, ptr %2503, align 8
  br i1 %2501, label %2505, label %2599

2505:                                             ; preds = %2502
  %2506 = icmp samesign ugt i64 %1997, 8
  br i1 %2506, label %2507, label %2531, !prof !81

2507:                                             ; preds = %2505
  %2508 = add i64 %2504, 7458650908927343033
  %2509 = sub i64 -5812251307325107654, %2504
  %2510 = load i64, ptr %2500, align 64
  %2511 = xor i64 %2510, %2508
  %2512 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2513 = getelementptr inbounds i8, ptr %2512, i64 -8
  %2514 = load i64, ptr %2513, align 1
  %2515 = xor i64 %2514, %2509
  %2516 = tail call noundef i64 @llvm.bswap.i64(i64 %2511)
  %2517 = add i64 %2516, %1997
  %2518 = add i64 %2517, %2515
  %2519 = zext i64 %2511 to i128
  %2520 = zext i64 %2515 to i128
  %2521 = mul nuw i128 %2520, %2519
  %2522 = lshr i128 %2521, 64
  %2523 = xor i128 %2522, %2521
  %2524 = trunc i128 %2523 to i64
  %2525 = add i64 %2518, %2524
  %2526 = lshr i64 %2525, 37
  %2527 = xor i64 %2526, %2525
  %2528 = mul i64 %2527, 1609587791953885689
  %2529 = lshr i64 %2528, 32
  %2530 = xor i64 %2529, %2528
  br label %3062

2531:                                             ; preds = %2505
  %2532 = icmp samesign ugt i64 %1997, 3
  br i1 %2532, label %2533, label %2560, !prof !81

2533:                                             ; preds = %2531
  %2534 = trunc i64 %2504 to i32
  %2535 = tail call noundef i32 @llvm.bswap.i32(i32 %2534)
  %2536 = zext i32 %2535 to i64
  %2537 = shl nuw i64 %2536, 32
  %2538 = xor i64 %2537, %2504
  %2539 = load i32, ptr %2500, align 64
  %2540 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2541 = getelementptr inbounds i8, ptr %2540, i64 -4
  %2542 = load i32, ptr %2541, align 1
  %2543 = sub i64 -4090762196417718878, %2538
  %2544 = zext i32 %2542 to i64
  %2545 = zext i32 %2539 to i64
  %2546 = shl nuw i64 %2545, 32
  %2547 = or disjoint i64 %2546, %2544
  %2548 = xor i64 %2547, %2543
  %2549 = tail call i64 @llvm.fshl.i64(i64 %2548, i64 %2548, i64 49)
  %2550 = tail call i64 @llvm.fshl.i64(i64 %2548, i64 %2548, i64 24)
  %2551 = xor i64 %2549, %2550
  %2552 = xor i64 %2551, %2548
  %2553 = mul i64 %2552, -6939452855193903323
  %2554 = lshr i64 %2553, 35
  %2555 = add nuw nsw i64 %2554, %1997
  %2556 = xor i64 %2555, %2553
  %2557 = mul i64 %2556, -6939452855193903323
  %2558 = lshr i64 %2557, 28
  %2559 = xor i64 %2558, %2557
  br label %3062

2560:                                             ; preds = %2531
  %2561 = icmp eq i64 %1997, 0
  br i1 %2561, label %2589, label %2562

2562:                                             ; preds = %2560
  %2563 = load i8, ptr %2500, align 64
  %2564 = lshr i64 %1997, 1
  %2565 = getelementptr inbounds nuw i8, ptr %2500, i64 %2564
  %2566 = load i8, ptr %2565, align 1
  %2567 = getelementptr i8, ptr %2500, i64 %1997
  %2568 = getelementptr i8, ptr %2567, i64 -1
  %2569 = load i8, ptr %2568, align 1
  %2570 = zext i8 %2563 to i64
  %2571 = shl nuw nsw i64 %2570, 16
  %2572 = zext i8 %2566 to i64
  %2573 = shl nuw nsw i64 %2572, 24
  %2574 = zext i8 %2569 to i64
  %2575 = shl nuw nsw i64 %1997, 8
  %2576 = or disjoint i64 %2571, %2575
  %2577 = or disjoint i64 %2576, %2573
  %2578 = or disjoint i64 %2577, %2574
  %2579 = add i64 %2504, 2267503259
  %2580 = xor i64 %2578, %2579
  %2581 = lshr i64 %2580, 33
  %2582 = xor i64 %2581, %2580
  %2583 = mul i64 %2582, -4417276706812531889
  %2584 = lshr i64 %2583, 29
  %2585 = xor i64 %2584, %2583
  %2586 = mul i64 %2585, 1609587929392839161
  %2587 = lshr i64 %2586, 32
  %2588 = xor i64 %2587, %2586
  br label %3062

2589:                                             ; preds = %2560
  %2590 = xor i64 %2504, -8707998980786479652
  %2591 = lshr i64 %2590, 33
  %2592 = xor i64 %2591, %2590
  %2593 = mul i64 %2592, -4417276706812531889
  %2594 = lshr i64 %2593, 29
  %2595 = xor i64 %2594, %2593
  %2596 = mul i64 %2595, 1609587929392839161
  %2597 = lshr i64 %2596, 32
  %2598 = xor i64 %2597, %2596
  br label %3062

2599:                                             ; preds = %2502
  %2600 = icmp samesign ult i64 %1997, 129
  br i1 %2600, label %2601, label %2743

2601:                                             ; preds = %2599
  %2602 = mul i64 %1997, -7046029288634856825
  %2603 = icmp samesign ugt i64 %1997, 32
  br i1 %2603, label %2604, label %2706

2604:                                             ; preds = %2601
  %2605 = icmp samesign ugt i64 %1997, 64
  br i1 %2605, label %2606, label %2673

2606:                                             ; preds = %2604
  %2607 = icmp samesign ugt i64 %1997, 96
  br i1 %2607, label %2608, label %2640

2608:                                             ; preds = %2606
  %2609 = getelementptr inbounds nuw i8, ptr %12, i64 304
  %2610 = load i64, ptr %2609, align 16
  %2611 = getelementptr inbounds nuw i8, ptr %12, i64 312
  %2612 = load i64, ptr %2611, align 8
  %2613 = add i64 %2504, 4554437623014685352
  %2614 = xor i64 %2610, %2613
  %2615 = sub i64 2111919702937427193, %2504
  %2616 = xor i64 %2612, %2615
  %2617 = zext i64 %2614 to i128
  %2618 = zext i64 %2616 to i128
  %2619 = mul nuw i128 %2618, %2617
  %2620 = lshr i128 %2619, 64
  %2621 = xor i128 %2620, %2619
  %2622 = trunc i128 %2621 to i64
  %2623 = add i64 %2602, %2622
  %2624 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2625 = getelementptr inbounds i8, ptr %2624, i64 -64
  %2626 = load i64, ptr %2625, align 1
  %2627 = getelementptr inbounds i8, ptr %2624, i64 -56
  %2628 = load i64, ptr %2627, align 1
  %2629 = add i64 %2504, 3556072174620004746
  %2630 = xor i64 %2626, %2629
  %2631 = sub i64 7238261902898274248, %2504
  %2632 = xor i64 %2628, %2631
  %2633 = zext i64 %2630 to i128
  %2634 = zext i64 %2632 to i128
  %2635 = mul nuw i128 %2634, %2633
  %2636 = lshr i128 %2635, 64
  %2637 = xor i128 %2636, %2635
  %2638 = trunc i128 %2637 to i64
  %2639 = add i64 %2623, %2638
  br label %2640

2640:                                             ; preds = %2608, %2606
  %2641 = phi i64 [ %2639, %2608 ], [ %2602, %2606 ]
  %2642 = getelementptr inbounds nuw i8, ptr %12, i64 288
  %2643 = load i64, ptr %2642, align 32
  %2644 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %2645 = load i64, ptr %2644, align 8
  %2646 = add i64 %2504, -3818837453329782724
  %2647 = xor i64 %2643, %2646
  %2648 = sub i64 -6688317018830679928, %2504
  %2649 = xor i64 %2645, %2648
  %2650 = zext i64 %2647 to i128
  %2651 = zext i64 %2649 to i128
  %2652 = mul nuw i128 %2651, %2650
  %2653 = lshr i128 %2652, 64
  %2654 = xor i128 %2653, %2652
  %2655 = trunc i128 %2654 to i64
  %2656 = add i64 %2641, %2655
  %2657 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2658 = getelementptr inbounds i8, ptr %2657, i64 -48
  %2659 = load i64, ptr %2658, align 1
  %2660 = getelementptr inbounds i8, ptr %2657, i64 -40
  %2661 = load i64, ptr %2660, align 1
  %2662 = add i64 %2504, 5690594596133299313
  %2663 = xor i64 %2659, %2662
  %2664 = sub i64 -2833645246901970632, %2504
  %2665 = xor i64 %2661, %2664
  %2666 = zext i64 %2663 to i128
  %2667 = zext i64 %2665 to i128
  %2668 = mul nuw i128 %2667, %2666
  %2669 = lshr i128 %2668, 64
  %2670 = xor i128 %2669, %2668
  %2671 = trunc i128 %2670 to i64
  %2672 = add i64 %2656, %2671
  br label %2673

2673:                                             ; preds = %2640, %2604
  %2674 = phi i64 [ %2672, %2640 ], [ %2602, %2604 ]
  %2675 = getelementptr inbounds nuw i8, ptr %12, i64 272
  %2676 = load i64, ptr %2675, align 16
  %2677 = getelementptr inbounds nuw i8, ptr %12, i64 280
  %2678 = load i64, ptr %2677, align 8
  %2679 = add i64 %2504, 8711581037947681227
  %2680 = xor i64 %2676, %2679
  %2681 = sub i64 2410270004345854594, %2504
  %2682 = xor i64 %2678, %2681
  %2683 = zext i64 %2680 to i128
  %2684 = zext i64 %2682 to i128
  %2685 = mul nuw i128 %2684, %2683
  %2686 = lshr i128 %2685, 64
  %2687 = xor i128 %2686, %2685
  %2688 = trunc i128 %2687 to i64
  %2689 = add i64 %2674, %2688
  %2690 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2691 = getelementptr inbounds i8, ptr %2690, i64 -32
  %2692 = load i64, ptr %2691, align 1
  %2693 = getelementptr inbounds i8, ptr %2690, i64 -24
  %2694 = load i64, ptr %2693, align 1
  %2695 = add i64 %2504, -8204357891075471176
  %2696 = xor i64 %2692, %2695
  %2697 = sub i64 5487137525590930912, %2504
  %2698 = xor i64 %2694, %2697
  %2699 = zext i64 %2696 to i128
  %2700 = zext i64 %2698 to i128
  %2701 = mul nuw i128 %2700, %2699
  %2702 = lshr i128 %2701, 64
  %2703 = xor i128 %2702, %2701
  %2704 = trunc i128 %2703 to i64
  %2705 = add i64 %2689, %2704
  br label %2706

2706:                                             ; preds = %2673, %2601
  %2707 = phi i64 [ %2705, %2673 ], [ %2602, %2601 ]
  %2708 = load i64, ptr %2500, align 64
  %2709 = getelementptr inbounds nuw i8, ptr %12, i64 264
  %2710 = load i64, ptr %2709, align 8
  %2711 = add i64 %2504, -4734510112055689544
  %2712 = xor i64 %2708, %2711
  %2713 = sub i64 2066345149520216444, %2504
  %2714 = xor i64 %2710, %2713
  %2715 = zext i64 %2712 to i128
  %2716 = zext i64 %2714 to i128
  %2717 = mul nuw i128 %2716, %2715
  %2718 = lshr i128 %2717, 64
  %2719 = xor i128 %2718, %2717
  %2720 = trunc i128 %2719 to i64
  %2721 = add i64 %2707, %2720
  %2722 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2723 = getelementptr inbounds i8, ptr %2722, i64 -16
  %2724 = load i64, ptr %2723, align 1
  %2725 = getelementptr inbounds i8, ptr %2722, i64 -8
  %2726 = load i64, ptr %2725, align 1
  %2727 = add i64 %2504, -2623469361688619810
  %2728 = xor i64 %2724, %2727
  %2729 = sub i64 2262974939099578482, %2504
  %2730 = xor i64 %2726, %2729
  %2731 = zext i64 %2728 to i128
  %2732 = zext i64 %2730 to i128
  %2733 = mul nuw i128 %2732, %2731
  %2734 = lshr i128 %2733, 64
  %2735 = xor i128 %2734, %2733
  %2736 = trunc i128 %2735 to i64
  %2737 = add i64 %2721, %2736
  %2738 = lshr i64 %2737, 37
  %2739 = xor i64 %2738, %2737
  %2740 = mul i64 %2739, 1609587791953885689
  %2741 = lshr i64 %2740, 32
  %2742 = xor i64 %2741, %2740
  br label %3062

2743:                                             ; preds = %2599
  %2744 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %2500, i64 noundef range(i64 0, 241) %1997, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2504) #27
  br label %3062

2745:                                             ; preds = %2496
  br i1 %2501, label %2746, label %2871

2746:                                             ; preds = %2745
  %2747 = icmp samesign ugt i64 %1997, 8
  br i1 %2747, label %2748, label %2788, !prof !81

2748:                                             ; preds = %2746
  %2749 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %2750 = getelementptr inbounds nuw i8, ptr %1992, i64 24
  %2751 = select i1 %1993, ptr %2749, ptr %2750
  %2752 = load i64, ptr %2751, align 1
  %2753 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %2754 = getelementptr inbounds nuw i8, ptr %1992, i64 32
  %2755 = select i1 %1993, ptr %2753, ptr %2754
  %2756 = load i64, ptr %2755, align 1
  %2757 = xor i64 %2756, %2752
  %2758 = getelementptr inbounds nuw i8, ptr %12, i64 104
  %2759 = getelementptr inbounds nuw i8, ptr %1992, i64 40
  %2760 = select i1 %1993, ptr %2758, ptr %2759
  %2761 = load i64, ptr %2760, align 1
  %2762 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %2763 = getelementptr inbounds nuw i8, ptr %1992, i64 48
  %2764 = select i1 %1993, ptr %2762, ptr %2763
  %2765 = load i64, ptr %2764, align 1
  %2766 = xor i64 %2765, %2761
  %2767 = load i64, ptr %2500, align 64
  %2768 = xor i64 %2757, %2767
  %2769 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2770 = getelementptr inbounds i8, ptr %2769, i64 -8
  %2771 = load i64, ptr %2770, align 1
  %2772 = xor i64 %2766, %2771
  %2773 = tail call noundef i64 @llvm.bswap.i64(i64 %2768)
  %2774 = add i64 %2773, %1997
  %2775 = add i64 %2774, %2772
  %2776 = zext i64 %2768 to i128
  %2777 = zext i64 %2772 to i128
  %2778 = mul nuw i128 %2777, %2776
  %2779 = lshr i128 %2778, 64
  %2780 = xor i128 %2779, %2778
  %2781 = trunc i128 %2780 to i64
  %2782 = add i64 %2775, %2781
  %2783 = lshr i64 %2782, 37
  %2784 = xor i64 %2783, %2782
  %2785 = mul i64 %2784, 1609587791953885689
  %2786 = lshr i64 %2785, 32
  %2787 = xor i64 %2786, %2785
  br label %3062

2788:                                             ; preds = %2746
  %2789 = icmp samesign ugt i64 %1997, 3
  br i1 %2789, label %2790, label %2820, !prof !81

2790:                                             ; preds = %2788
  %2791 = load i32, ptr %2500, align 64
  %2792 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2793 = getelementptr inbounds i8, ptr %2792, i64 -4
  %2794 = load i32, ptr %2793, align 1
  %2795 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %2796 = getelementptr inbounds nuw i8, ptr %1992, i64 8
  %2797 = select i1 %1993, ptr %2795, ptr %2796
  %2798 = load i64, ptr %2797, align 1
  %2799 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %2800 = getelementptr inbounds nuw i8, ptr %1992, i64 16
  %2801 = select i1 %1993, ptr %2799, ptr %2800
  %2802 = load i64, ptr %2801, align 1
  %2803 = xor i64 %2802, %2798
  %2804 = zext i32 %2794 to i64
  %2805 = zext i32 %2791 to i64
  %2806 = shl nuw i64 %2805, 32
  %2807 = or disjoint i64 %2806, %2804
  %2808 = xor i64 %2803, %2807
  %2809 = tail call i64 @llvm.fshl.i64(i64 %2808, i64 %2808, i64 49)
  %2810 = tail call i64 @llvm.fshl.i64(i64 %2808, i64 %2808, i64 24)
  %2811 = xor i64 %2809, %2810
  %2812 = xor i64 %2811, %2808
  %2813 = mul i64 %2812, -6939452855193903323
  %2814 = lshr i64 %2813, 35
  %2815 = add nuw nsw i64 %2814, %1997
  %2816 = xor i64 %2815, %2813
  %2817 = mul i64 %2816, -6939452855193903323
  %2818 = lshr i64 %2817, 28
  %2819 = xor i64 %2818, %2817
  br label %3062

2820:                                             ; preds = %2788
  %2821 = icmp eq i64 %1997, 0
  br i1 %2821, label %2853, label %2822

2822:                                             ; preds = %2820
  %2823 = load i8, ptr %2500, align 64
  %2824 = lshr i64 %1997, 1
  %2825 = getelementptr inbounds nuw i8, ptr %2500, i64 %2824
  %2826 = load i8, ptr %2825, align 1
  %2827 = getelementptr i8, ptr %2500, i64 %1997
  %2828 = getelementptr i8, ptr %2827, i64 -1
  %2829 = load i8, ptr %2828, align 1
  %2830 = zext i8 %2823 to i64
  %2831 = shl nuw nsw i64 %2830, 16
  %2832 = zext i8 %2826 to i64
  %2833 = shl nuw nsw i64 %2832, 24
  %2834 = zext i8 %2829 to i64
  %2835 = shl nuw nsw i64 %1997, 8
  %2836 = or disjoint i64 %2831, %2835
  %2837 = or disjoint i64 %2836, %2833
  %2838 = or disjoint i64 %2837, %2834
  %2839 = load i32, ptr %1995, align 1
  %2840 = getelementptr inbounds nuw i8, ptr %12, i64 68
  %2841 = getelementptr inbounds nuw i8, ptr %1992, i64 4
  %2842 = select i1 %1993, ptr %2840, ptr %2841
  %2843 = load i32, ptr %2842, align 1
  %2844 = xor i32 %2843, %2839
  %2845 = zext i32 %2844 to i64
  %2846 = xor i64 %2838, %2845
  %2847 = mul i64 %2846, -4417276706812531889
  %2848 = lshr i64 %2847, 29
  %2849 = xor i64 %2848, %2847
  %2850 = mul i64 %2849, 1609587929392839161
  %2851 = lshr i64 %2850, 32
  %2852 = xor i64 %2851, %2850
  br label %3062

2853:                                             ; preds = %2820
  %2854 = getelementptr inbounds nuw i8, ptr %12, i64 120
  %2855 = getelementptr inbounds nuw i8, ptr %1992, i64 56
  %2856 = select i1 %1993, ptr %2854, ptr %2855
  %2857 = load i64, ptr %2856, align 1
  %2858 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %2859 = getelementptr inbounds nuw i8, ptr %1992, i64 64
  %2860 = select i1 %1993, ptr %2858, ptr %2859
  %2861 = load i64, ptr %2860, align 1
  %2862 = xor i64 %2861, %2857
  %2863 = lshr i64 %2862, 33
  %2864 = xor i64 %2863, %2862
  %2865 = mul i64 %2864, -4417276706812531889
  %2866 = lshr i64 %2865, 29
  %2867 = xor i64 %2866, %2865
  %2868 = mul i64 %2867, 1609587929392839161
  %2869 = lshr i64 %2868, 32
  %2870 = xor i64 %2869, %2868
  br label %3062

2871:                                             ; preds = %2745
  %2872 = icmp samesign ult i64 %1997, 129
  br i1 %2872, label %2873, label %3060

2873:                                             ; preds = %2871
  %2874 = mul i64 %1997, -7046029288634856825
  %2875 = icmp samesign ugt i64 %1997, 32
  br i1 %2875, label %2876, label %3014

2876:                                             ; preds = %2873
  %2877 = icmp samesign ugt i64 %1997, 64
  br i1 %2877, label %2878, label %2969

2878:                                             ; preds = %2876
  %2879 = icmp samesign ugt i64 %1997, 96
  br i1 %2879, label %2880, label %2924

2880:                                             ; preds = %2878
  %2881 = getelementptr inbounds nuw i8, ptr %12, i64 304
  %2882 = getelementptr inbounds nuw i8, ptr %12, i64 160
  %2883 = getelementptr inbounds nuw i8, ptr %1992, i64 96
  %2884 = select i1 %1993, ptr %2882, ptr %2883
  %2885 = load i64, ptr %2881, align 16
  %2886 = getelementptr inbounds nuw i8, ptr %12, i64 312
  %2887 = load i64, ptr %2886, align 8
  %2888 = load i64, ptr %2884, align 1
  %2889 = xor i64 %2888, %2885
  %2890 = getelementptr inbounds nuw i8, ptr %12, i64 168
  %2891 = getelementptr inbounds nuw i8, ptr %1992, i64 104
  %2892 = select i1 %1993, ptr %2890, ptr %2891
  %2893 = load i64, ptr %2892, align 1
  %2894 = xor i64 %2893, %2887
  %2895 = zext i64 %2889 to i128
  %2896 = zext i64 %2894 to i128
  %2897 = mul nuw i128 %2896, %2895
  %2898 = lshr i128 %2897, 64
  %2899 = xor i128 %2898, %2897
  %2900 = trunc i128 %2899 to i64
  %2901 = add i64 %2874, %2900
  %2902 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2903 = getelementptr inbounds i8, ptr %2902, i64 -64
  %2904 = getelementptr inbounds nuw i8, ptr %12, i64 176
  %2905 = getelementptr inbounds nuw i8, ptr %1992, i64 112
  %2906 = select i1 %1993, ptr %2904, ptr %2905
  %2907 = load i64, ptr %2903, align 1
  %2908 = getelementptr inbounds i8, ptr %2902, i64 -56
  %2909 = load i64, ptr %2908, align 1
  %2910 = load i64, ptr %2906, align 1
  %2911 = xor i64 %2910, %2907
  %2912 = getelementptr inbounds nuw i8, ptr %12, i64 184
  %2913 = getelementptr inbounds nuw i8, ptr %1992, i64 120
  %2914 = select i1 %1993, ptr %2912, ptr %2913
  %2915 = load i64, ptr %2914, align 1
  %2916 = xor i64 %2915, %2909
  %2917 = zext i64 %2911 to i128
  %2918 = zext i64 %2916 to i128
  %2919 = mul nuw i128 %2918, %2917
  %2920 = lshr i128 %2919, 64
  %2921 = xor i128 %2920, %2919
  %2922 = trunc i128 %2921 to i64
  %2923 = add i64 %2901, %2922
  br label %2924

2924:                                             ; preds = %2880, %2878
  %2925 = phi i64 [ %2923, %2880 ], [ %2874, %2878 ]
  %2926 = getelementptr inbounds nuw i8, ptr %12, i64 288
  %2927 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %2928 = getelementptr inbounds nuw i8, ptr %1992, i64 64
  %2929 = select i1 %1993, ptr %2927, ptr %2928
  %2930 = load i64, ptr %2926, align 32
  %2931 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %2932 = load i64, ptr %2931, align 8
  %2933 = load i64, ptr %2929, align 1
  %2934 = xor i64 %2933, %2930
  %2935 = getelementptr inbounds nuw i8, ptr %12, i64 136
  %2936 = getelementptr inbounds nuw i8, ptr %1992, i64 72
  %2937 = select i1 %1993, ptr %2935, ptr %2936
  %2938 = load i64, ptr %2937, align 1
  %2939 = xor i64 %2938, %2932
  %2940 = zext i64 %2934 to i128
  %2941 = zext i64 %2939 to i128
  %2942 = mul nuw i128 %2941, %2940
  %2943 = lshr i128 %2942, 64
  %2944 = xor i128 %2943, %2942
  %2945 = trunc i128 %2944 to i64
  %2946 = add i64 %2925, %2945
  %2947 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2948 = getelementptr inbounds i8, ptr %2947, i64 -48
  %2949 = getelementptr inbounds nuw i8, ptr %12, i64 144
  %2950 = getelementptr inbounds nuw i8, ptr %1992, i64 80
  %2951 = select i1 %1993, ptr %2949, ptr %2950
  %2952 = load i64, ptr %2948, align 1
  %2953 = getelementptr inbounds i8, ptr %2947, i64 -40
  %2954 = load i64, ptr %2953, align 1
  %2955 = load i64, ptr %2951, align 1
  %2956 = xor i64 %2955, %2952
  %2957 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %2958 = getelementptr inbounds nuw i8, ptr %1992, i64 88
  %2959 = select i1 %1993, ptr %2957, ptr %2958
  %2960 = load i64, ptr %2959, align 1
  %2961 = xor i64 %2960, %2954
  %2962 = zext i64 %2956 to i128
  %2963 = zext i64 %2961 to i128
  %2964 = mul nuw i128 %2963, %2962
  %2965 = lshr i128 %2964, 64
  %2966 = xor i128 %2965, %2964
  %2967 = trunc i128 %2966 to i64
  %2968 = add i64 %2946, %2967
  br label %2969

2969:                                             ; preds = %2924, %2876
  %2970 = phi i64 [ %2968, %2924 ], [ %2874, %2876 ]
  %2971 = getelementptr inbounds nuw i8, ptr %12, i64 272
  %2972 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %2973 = getelementptr inbounds nuw i8, ptr %1992, i64 32
  %2974 = select i1 %1993, ptr %2972, ptr %2973
  %2975 = load i64, ptr %2971, align 16
  %2976 = getelementptr inbounds nuw i8, ptr %12, i64 280
  %2977 = load i64, ptr %2976, align 8
  %2978 = load i64, ptr %2974, align 1
  %2979 = xor i64 %2978, %2975
  %2980 = getelementptr inbounds nuw i8, ptr %12, i64 104
  %2981 = getelementptr inbounds nuw i8, ptr %1992, i64 40
  %2982 = select i1 %1993, ptr %2980, ptr %2981
  %2983 = load i64, ptr %2982, align 1
  %2984 = xor i64 %2983, %2977
  %2985 = zext i64 %2979 to i128
  %2986 = zext i64 %2984 to i128
  %2987 = mul nuw i128 %2986, %2985
  %2988 = lshr i128 %2987, 64
  %2989 = xor i128 %2988, %2987
  %2990 = trunc i128 %2989 to i64
  %2991 = add i64 %2970, %2990
  %2992 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %2993 = getelementptr inbounds i8, ptr %2992, i64 -32
  %2994 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %2995 = getelementptr inbounds nuw i8, ptr %1992, i64 48
  %2996 = select i1 %1993, ptr %2994, ptr %2995
  %2997 = load i64, ptr %2993, align 1
  %2998 = getelementptr inbounds i8, ptr %2992, i64 -24
  %2999 = load i64, ptr %2998, align 1
  %3000 = load i64, ptr %2996, align 1
  %3001 = xor i64 %3000, %2997
  %3002 = getelementptr inbounds nuw i8, ptr %12, i64 120
  %3003 = getelementptr inbounds nuw i8, ptr %1992, i64 56
  %3004 = select i1 %1993, ptr %3002, ptr %3003
  %3005 = load i64, ptr %3004, align 1
  %3006 = xor i64 %3005, %2999
  %3007 = zext i64 %3001 to i128
  %3008 = zext i64 %3006 to i128
  %3009 = mul nuw i128 %3008, %3007
  %3010 = lshr i128 %3009, 64
  %3011 = xor i128 %3010, %3009
  %3012 = trunc i128 %3011 to i64
  %3013 = add i64 %2991, %3012
  br label %3014

3014:                                             ; preds = %2969, %2873
  %3015 = phi i64 [ %3013, %2969 ], [ %2874, %2873 ]
  %3016 = load i64, ptr %2500, align 64
  %3017 = getelementptr inbounds nuw i8, ptr %12, i64 264
  %3018 = load i64, ptr %3017, align 8
  %3019 = load i64, ptr %1995, align 1
  %3020 = xor i64 %3019, %3016
  %3021 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %3022 = getelementptr inbounds nuw i8, ptr %1992, i64 8
  %3023 = select i1 %1993, ptr %3021, ptr %3022
  %3024 = load i64, ptr %3023, align 1
  %3025 = xor i64 %3024, %3018
  %3026 = zext i64 %3020 to i128
  %3027 = zext i64 %3025 to i128
  %3028 = mul nuw i128 %3027, %3026
  %3029 = lshr i128 %3028, 64
  %3030 = xor i128 %3029, %3028
  %3031 = trunc i128 %3030 to i64
  %3032 = add i64 %3015, %3031
  %3033 = getelementptr inbounds nuw i8, ptr %2500, i64 %1997
  %3034 = getelementptr inbounds i8, ptr %3033, i64 -16
  %3035 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %3036 = getelementptr inbounds nuw i8, ptr %1992, i64 16
  %3037 = select i1 %1993, ptr %3035, ptr %3036
  %3038 = load i64, ptr %3034, align 1
  %3039 = getelementptr inbounds i8, ptr %3033, i64 -8
  %3040 = load i64, ptr %3039, align 1
  %3041 = load i64, ptr %3037, align 1
  %3042 = xor i64 %3041, %3038
  %3043 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %3044 = getelementptr inbounds nuw i8, ptr %1992, i64 24
  %3045 = select i1 %1993, ptr %3043, ptr %3044
  %3046 = load i64, ptr %3045, align 1
  %3047 = xor i64 %3046, %3040
  %3048 = zext i64 %3042 to i128
  %3049 = zext i64 %3047 to i128
  %3050 = mul nuw i128 %3049, %3048
  %3051 = lshr i128 %3050, 64
  %3052 = xor i128 %3051, %3050
  %3053 = trunc i128 %3052 to i64
  %3054 = add i64 %3032, %3053
  %3055 = lshr i64 %3054, 37
  %3056 = xor i64 %3055, %3054
  %3057 = mul i64 %3056, 1609587791953885689
  %3058 = lshr i64 %3057, 32
  %3059 = xor i64 %3058, %3057
  br label %3062

3060:                                             ; preds = %2871
  %3061 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %2500, i64 noundef range(i64 0, 241) %1997, ptr noundef nonnull readonly %1995, i64 noundef 0) #27
  br label %3062

3062:                                             ; preds = %2331, %2507, %2533, %2562, %2589, %2706, %2743, %2748, %2790, %2822, %2853, %3014, %3060
  %3063 = phi i64 [ %2495, %2331 ], [ %2742, %2706 ], [ %2744, %2743 ], [ %2530, %2507 ], [ %2559, %2533 ], [ %2588, %2562 ], [ %2598, %2589 ], [ %3059, %3014 ], [ %3061, %3060 ], [ %2787, %2748 ], [ %2819, %2790 ], [ %2852, %2822 ], [ %2870, %2853 ]
  store i64 %3063, ptr %5, align 8
  br label %3065

3064:                                             ; preds = %400
  tail call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.5, i32 noundef 309, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_hashStream) #29
  unreachable

3065:                                             ; preds = %592, %770, %1986, %3062, %385
  %3066 = phi i32 [ 3, %385 ], [ 0, %3062 ], [ 0, %1986 ], [ 0, %770 ], [ 0, %592 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #28
  ret i32 %3066
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
  br i1 %55, label %108, label %6, !llvm.loop !82

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
  br i1 %107, label %108, label %56, !llvm.loop !82

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
  br i1 %22, label %4, label %23, !llvm.loop !83

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %4 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %6 = load i64, ptr %5, align 16, !alias.scope !87, !noalias !84
  %7 = add i64 %6, %2
  store i64 %7, ptr %5, align 16, !alias.scope !87, !noalias !84
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %9 = load i32, ptr %8, align 64, !alias.scope !87, !noalias !84
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 range(i64 1, 0) %2, i1 false), !alias.scope !89
  %18 = trunc nuw nsw i64 %2 to i32
  %19 = load i32, ptr %8, align 64, !alias.scope !87, !noalias !84
  %20 = add i32 %19, %18
  br label %752

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %24 = load ptr, ptr %23, align 8, !alias.scope !87, !noalias !84
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %27 = select i1 %25, ptr %26, ptr %24
  %28 = icmp eq i32 %9, 0
  br i1 %28, label %385, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %31 = zext nneg i32 %9 to i64
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull align 1 %1, i64 %12, i1 false), !alias.scope !89
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %12
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %36 = load i64, ptr %35, align 8, !alias.scope !87, !noalias !84
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %38 = load i64, ptr %37, align 32, !alias.scope !87, !noalias !84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %39 = load i64, ptr %34, align 8, !alias.scope !90, !noalias !93
  %40 = shl i64 %39, 3
  %41 = getelementptr inbounds nuw i8, ptr %27, i64 %40
  %42 = sub i64 %36, %39
  %43 = icmp ugt i64 %42, 4
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %43, label %45, label %63

45:                                               ; preds = %29
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %47 = load i64, ptr %46, align 8, !alias.scope !97, !noalias !100
  %48 = load i64, ptr %44, align 8, !alias.scope !97, !noalias !100
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 8, !alias.scope !97, !noalias !100
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = load i64, ptr %51, align 8, !alias.scope !97, !noalias !100
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %54 = load i64, ptr %53, align 8, !alias.scope !97, !noalias !100
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %56 = load i64, ptr %55, align 8, !alias.scope !97, !noalias !100
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %58 = load i64, ptr %57, align 8, !alias.scope !97, !noalias !100
  %59 = load i64, ptr %0, align 8, !alias.scope !97, !noalias !100
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
  %99 = load i64, ptr %0, align 8, !alias.scope !103, !noalias !106
  %100 = load i64, ptr %71, align 8, !alias.scope !103, !noalias !106
  %101 = load i64, ptr %72, align 8, !alias.scope !103, !noalias !106
  %102 = load i64, ptr %73, align 8, !alias.scope !103, !noalias !106
  %103 = load i64, ptr %74, align 8, !alias.scope !103, !noalias !106
  %104 = load i64, ptr %75, align 8, !alias.scope !103, !noalias !106
  %105 = load i64, ptr %76, align 8, !alias.scope !103, !noalias !106
  %106 = load i64, ptr %77, align 8, !alias.scope !103, !noalias !106
  br label %211

107:                                              ; preds = %92
  %108 = load i64, ptr %65, align 8, !alias.scope !108, !noalias !111
  %109 = load i64, ptr %44, align 8, !alias.scope !108, !noalias !111
  %110 = load i64, ptr %66, align 8, !alias.scope !108, !noalias !111
  %111 = load i64, ptr %67, align 8, !alias.scope !108, !noalias !111
  %112 = load i64, ptr %68, align 8, !alias.scope !108, !noalias !111
  %113 = load i64, ptr %69, align 8, !alias.scope !108, !noalias !111
  %114 = load i64, ptr %70, align 8, !alias.scope !108, !noalias !111
  %115 = load i64, ptr %0, align 8, !alias.scope !108, !noalias !111
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
  tail call void @llvm.prefetch.p0(ptr nonnull %128, i32 0, i32 3, i32 1), !noalias !90
  %129 = shl i64 %125, 3
  %130 = getelementptr inbounds nuw i8, ptr %95, i64 %129
  %131 = load i64, ptr %127, align 1
  %132 = load i64, ptr %130, align 1
  %133 = xor i64 %132, %131
  %134 = add i64 %118, %131
  store i64 %134, ptr %70, align 8, !alias.scope !108, !noalias !111
  %135 = lshr i64 %133, 32
  %136 = and i64 %133, 4294967295
  %137 = mul nuw i64 %136, %135
  %138 = add i64 %137, %117
  store i64 %138, ptr %0, align 8, !alias.scope !108, !noalias !111
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 8
  %140 = load i64, ptr %139, align 1
  %141 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %142 = load i64, ptr %141, align 1
  %143 = xor i64 %142, %140
  %144 = add i64 %138, %140
  store i64 %144, ptr %0, align 8, !alias.scope !108, !noalias !111
  %145 = lshr i64 %143, 32
  %146 = and i64 %143, 4294967295
  %147 = mul nuw i64 %146, %145
  %148 = add i64 %147, %134
  store i64 %148, ptr %70, align 8, !alias.scope !108, !noalias !111
  %149 = getelementptr inbounds nuw i8, ptr %127, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = getelementptr inbounds nuw i8, ptr %130, i64 16
  %152 = load i64, ptr %151, align 1
  %153 = xor i64 %152, %150
  %154 = add i64 %124, %150
  store i64 %154, ptr %65, align 8, !alias.scope !108, !noalias !111
  %155 = lshr i64 %153, 32
  %156 = and i64 %153, 4294967295
  %157 = mul nuw i64 %156, %155
  %158 = add i64 %157, %123
  store i64 %158, ptr %44, align 8, !alias.scope !108, !noalias !111
  %159 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds nuw i8, ptr %130, i64 24
  %162 = load i64, ptr %161, align 1
  %163 = xor i64 %162, %160
  %164 = add i64 %158, %160
  store i64 %164, ptr %44, align 8, !alias.scope !108, !noalias !111
  %165 = lshr i64 %163, 32
  %166 = and i64 %163, 4294967295
  %167 = mul nuw i64 %166, %165
  %168 = add i64 %167, %154
  store i64 %168, ptr %65, align 8, !alias.scope !108, !noalias !111
  %169 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %170 = load i64, ptr %169, align 1
  %171 = getelementptr inbounds nuw i8, ptr %130, i64 32
  %172 = load i64, ptr %171, align 1
  %173 = xor i64 %172, %170
  %174 = add i64 %122, %170
  store i64 %174, ptr %66, align 8, !alias.scope !108, !noalias !111
  %175 = lshr i64 %173, 32
  %176 = and i64 %173, 4294967295
  %177 = mul nuw i64 %176, %175
  %178 = add i64 %177, %121
  store i64 %178, ptr %67, align 8, !alias.scope !108, !noalias !111
  %179 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %180 = load i64, ptr %179, align 1
  %181 = getelementptr inbounds nuw i8, ptr %130, i64 40
  %182 = load i64, ptr %181, align 1
  %183 = xor i64 %182, %180
  %184 = add i64 %178, %180
  store i64 %184, ptr %67, align 8, !alias.scope !108, !noalias !111
  %185 = lshr i64 %183, 32
  %186 = and i64 %183, 4294967295
  %187 = mul nuw i64 %186, %185
  %188 = add i64 %187, %174
  store i64 %188, ptr %66, align 8, !alias.scope !108, !noalias !111
  %189 = getelementptr inbounds nuw i8, ptr %127, i64 48
  %190 = load i64, ptr %189, align 1
  %191 = getelementptr inbounds nuw i8, ptr %130, i64 48
  %192 = load i64, ptr %191, align 1
  %193 = xor i64 %192, %190
  %194 = add i64 %120, %190
  store i64 %194, ptr %68, align 8, !alias.scope !108, !noalias !111
  %195 = lshr i64 %193, 32
  %196 = and i64 %193, 4294967295
  %197 = mul nuw i64 %196, %195
  %198 = add i64 %197, %119
  store i64 %198, ptr %69, align 8, !alias.scope !108, !noalias !111
  %199 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %200 = load i64, ptr %199, align 1
  %201 = getelementptr inbounds nuw i8, ptr %130, i64 56
  %202 = load i64, ptr %201, align 1
  %203 = xor i64 %202, %200
  %204 = add i64 %198, %200
  store i64 %204, ptr %69, align 8, !alias.scope !108, !noalias !111
  %205 = lshr i64 %203, 32
  %206 = and i64 %203, 4294967295
  %207 = mul nuw i64 %206, %205
  %208 = add i64 %207, %194
  store i64 %208, ptr %68, align 8, !alias.scope !108, !noalias !111
  %209 = add nuw i64 %125, 1
  %210 = icmp eq i64 %209, %96
  br i1 %210, label %211, label %116, !llvm.loop !56

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
  store i64 %224, ptr %0, align 8, !alias.scope !103, !noalias !106
  %225 = load i64, ptr %78, align 1
  %226 = lshr i64 %218, 47
  %227 = xor i64 %225, %226
  %228 = xor i64 %227, %218
  %229 = mul i64 %228, 2654435761
  store i64 %229, ptr %79, align 8, !alias.scope !103, !noalias !106
  %230 = load i64, ptr %80, align 1
  %231 = lshr i64 %217, 47
  %232 = xor i64 %230, %231
  %233 = xor i64 %232, %217
  %234 = mul i64 %233, 2654435761
  store i64 %234, ptr %81, align 8, !alias.scope !103, !noalias !106
  %235 = load i64, ptr %82, align 1
  %236 = lshr i64 %216, 47
  %237 = xor i64 %235, %236
  %238 = xor i64 %237, %216
  %239 = mul i64 %238, 2654435761
  store i64 %239, ptr %83, align 8, !alias.scope !103, !noalias !106
  %240 = load i64, ptr %84, align 1
  %241 = lshr i64 %215, 47
  %242 = xor i64 %240, %241
  %243 = xor i64 %242, %215
  %244 = mul i64 %243, 2654435761
  store i64 %244, ptr %85, align 8, !alias.scope !103, !noalias !106
  %245 = load i64, ptr %86, align 1
  %246 = lshr i64 %214, 47
  %247 = xor i64 %245, %246
  %248 = xor i64 %247, %214
  %249 = mul i64 %248, 2654435761
  store i64 %249, ptr %87, align 8, !alias.scope !103, !noalias !106
  %250 = load i64, ptr %88, align 1
  %251 = lshr i64 %213, 47
  %252 = xor i64 %250, %251
  %253 = xor i64 %252, %213
  %254 = mul i64 %253, 2654435761
  store i64 %254, ptr %89, align 8, !alias.scope !103, !noalias !106
  %255 = load i64, ptr %90, align 1
  %256 = lshr i64 %212, 47
  %257 = xor i64 %255, %256
  %258 = xor i64 %257, %212
  %259 = mul i64 %258, 2654435761
  store i64 %259, ptr %91, align 8, !alias.scope !103, !noalias !106
  %260 = shl i64 %96, 6
  %261 = getelementptr inbounds nuw i8, ptr %94, i64 %260
  %262 = sub i64 %93, %96
  %263 = icmp ult i64 %262, %36
  br i1 %263, label %264, label %92, !llvm.loop !57

264:                                              ; preds = %211
  store i64 0, ptr %34, align 8, !alias.scope !90, !noalias !93
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
  tail call void @llvm.assume(i1 %267), !noalias !90
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
  tail call void @llvm.prefetch.p0(ptr nonnull %298, i32 0, i32 3, i32 1), !noalias !90
  %299 = shl i64 %295, 3
  %300 = getelementptr inbounds nuw i8, ptr %276, i64 %299
  %301 = load i64, ptr %297, align 1
  %302 = load i64, ptr %300, align 1
  %303 = xor i64 %302, %301
  %304 = add i64 %288, %301
  store i64 %304, ptr %285, align 8, !alias.scope !97, !noalias !100
  %305 = lshr i64 %303, 32
  %306 = and i64 %303, 4294967295
  %307 = mul nuw i64 %306, %305
  %308 = add i64 %307, %287
  store i64 %308, ptr %0, align 8, !alias.scope !97, !noalias !100
  %309 = getelementptr inbounds nuw i8, ptr %297, i64 8
  %310 = load i64, ptr %309, align 1
  %311 = getelementptr inbounds nuw i8, ptr %300, i64 8
  %312 = load i64, ptr %311, align 1
  %313 = xor i64 %312, %310
  %314 = add i64 %308, %310
  store i64 %314, ptr %0, align 8, !alias.scope !97, !noalias !100
  %315 = lshr i64 %313, 32
  %316 = and i64 %313, 4294967295
  %317 = mul nuw i64 %316, %315
  %318 = add i64 %317, %304
  store i64 %318, ptr %285, align 8, !alias.scope !97, !noalias !100
  %319 = getelementptr inbounds nuw i8, ptr %297, i64 16
  %320 = load i64, ptr %319, align 1
  %321 = getelementptr inbounds nuw i8, ptr %300, i64 16
  %322 = load i64, ptr %321, align 1
  %323 = xor i64 %322, %320
  %324 = add i64 %294, %320
  store i64 %324, ptr %279, align 8, !alias.scope !97, !noalias !100
  %325 = lshr i64 %323, 32
  %326 = and i64 %323, 4294967295
  %327 = mul nuw i64 %326, %325
  %328 = add i64 %327, %293
  store i64 %328, ptr %280, align 8, !alias.scope !97, !noalias !100
  %329 = getelementptr inbounds nuw i8, ptr %297, i64 24
  %330 = load i64, ptr %329, align 1
  %331 = getelementptr inbounds nuw i8, ptr %300, i64 24
  %332 = load i64, ptr %331, align 1
  %333 = xor i64 %332, %330
  %334 = add i64 %328, %330
  store i64 %334, ptr %280, align 8, !alias.scope !97, !noalias !100
  %335 = lshr i64 %333, 32
  %336 = and i64 %333, 4294967295
  %337 = mul nuw i64 %336, %335
  %338 = add i64 %337, %324
  store i64 %338, ptr %279, align 8, !alias.scope !97, !noalias !100
  %339 = getelementptr inbounds nuw i8, ptr %297, i64 32
  %340 = load i64, ptr %339, align 1
  %341 = getelementptr inbounds nuw i8, ptr %300, i64 32
  %342 = load i64, ptr %341, align 1
  %343 = xor i64 %342, %340
  %344 = add i64 %292, %340
  store i64 %344, ptr %281, align 8, !alias.scope !97, !noalias !100
  %345 = lshr i64 %343, 32
  %346 = and i64 %343, 4294967295
  %347 = mul nuw i64 %346, %345
  %348 = add i64 %347, %291
  store i64 %348, ptr %282, align 8, !alias.scope !97, !noalias !100
  %349 = getelementptr inbounds nuw i8, ptr %297, i64 40
  %350 = load i64, ptr %349, align 1
  %351 = getelementptr inbounds nuw i8, ptr %300, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = xor i64 %352, %350
  %354 = add i64 %348, %350
  store i64 %354, ptr %282, align 8, !alias.scope !97, !noalias !100
  %355 = lshr i64 %353, 32
  %356 = and i64 %353, 4294967295
  %357 = mul nuw i64 %356, %355
  %358 = add i64 %357, %344
  store i64 %358, ptr %281, align 8, !alias.scope !97, !noalias !100
  %359 = getelementptr inbounds nuw i8, ptr %297, i64 48
  %360 = load i64, ptr %359, align 1
  %361 = getelementptr inbounds nuw i8, ptr %300, i64 48
  %362 = load i64, ptr %361, align 1
  %363 = xor i64 %362, %360
  %364 = add i64 %290, %360
  store i64 %364, ptr %283, align 8, !alias.scope !97, !noalias !100
  %365 = lshr i64 %363, 32
  %366 = and i64 %363, 4294967295
  %367 = mul nuw i64 %366, %365
  %368 = add i64 %367, %289
  store i64 %368, ptr %284, align 8, !alias.scope !97, !noalias !100
  %369 = getelementptr inbounds nuw i8, ptr %297, i64 56
  %370 = load i64, ptr %369, align 1
  %371 = getelementptr inbounds nuw i8, ptr %300, i64 56
  %372 = load i64, ptr %371, align 1
  %373 = xor i64 %372, %370
  %374 = add i64 %368, %370
  store i64 %374, ptr %284, align 8, !alias.scope !97, !noalias !100
  %375 = lshr i64 %373, 32
  %376 = and i64 %373, 4294967295
  %377 = mul nuw i64 %376, %375
  %378 = add i64 %377, %364
  store i64 %378, ptr %283, align 8, !alias.scope !97, !noalias !100
  %379 = add nuw i64 %295, 1
  %380 = icmp eq i64 %379, %278
  br i1 %380, label %381, label %286, !llvm.loop !56

381:                                              ; preds = %286
  %382 = load i64, ptr %34, align 8, !alias.scope !90, !noalias !93
  %383 = add i64 %382, %278
  store i64 %383, ptr %34, align 8, !alias.scope !90, !noalias !93
  br label %384

384:                                              ; preds = %264, %381
  store i32 0, ptr %8, align 64, !alias.scope !87, !noalias !84
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
  %399 = load i64, ptr %398, align 8, !alias.scope !87, !noalias !84
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %401 = load i64, ptr %400, align 32, !alias.scope !87, !noalias !84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %402 = load i64, ptr %397, align 8, !alias.scope !114, !noalias !117
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
  tail call void @llvm.assume(i1 %411), !noalias !114
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
  %446 = load i64, ptr %0, align 8, !noalias !114
  br i1 %445, label %447, label %455

447:                                              ; preds = %440
  %448 = load i64, ptr %419, align 8, !alias.scope !121, !noalias !124
  %449 = load i64, ptr %420, align 8, !alias.scope !121, !noalias !124
  %450 = load i64, ptr %421, align 8, !alias.scope !121, !noalias !124
  %451 = load i64, ptr %422, align 8, !alias.scope !121, !noalias !124
  %452 = load i64, ptr %423, align 8, !alias.scope !121, !noalias !124
  %453 = load i64, ptr %424, align 8, !alias.scope !121, !noalias !124
  %454 = load i64, ptr %425, align 8, !alias.scope !121, !noalias !124
  br label %558

455:                                              ; preds = %440
  %456 = load i64, ptr %412, align 8, !alias.scope !126, !noalias !129
  %457 = load i64, ptr %413, align 8, !alias.scope !126, !noalias !129
  %458 = load i64, ptr %414, align 8, !alias.scope !126, !noalias !129
  %459 = load i64, ptr %415, align 8, !alias.scope !126, !noalias !129
  %460 = load i64, ptr %416, align 8, !alias.scope !126, !noalias !129
  %461 = load i64, ptr %417, align 8, !alias.scope !126, !noalias !129
  %462 = load i64, ptr %418, align 8, !alias.scope !126, !noalias !129
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
  tail call void @llvm.prefetch.p0(ptr nonnull %475, i32 0, i32 3, i32 1), !noalias !114
  %476 = shl i64 %472, 3
  %477 = getelementptr inbounds nuw i8, ptr %443, i64 %476
  %478 = load i64, ptr %474, align 1
  %479 = load i64, ptr %477, align 1
  %480 = xor i64 %479, %478
  %481 = add i64 %465, %478
  store i64 %481, ptr %418, align 8, !alias.scope !126, !noalias !129
  %482 = lshr i64 %480, 32
  %483 = and i64 %480, 4294967295
  %484 = mul nuw i64 %483, %482
  %485 = add i64 %484, %464
  store i64 %485, ptr %0, align 8, !alias.scope !126, !noalias !129
  %486 = getelementptr inbounds nuw i8, ptr %474, i64 8
  %487 = load i64, ptr %486, align 1
  %488 = getelementptr inbounds nuw i8, ptr %477, i64 8
  %489 = load i64, ptr %488, align 1
  %490 = xor i64 %489, %487
  %491 = add i64 %485, %487
  store i64 %491, ptr %0, align 8, !alias.scope !126, !noalias !129
  %492 = lshr i64 %490, 32
  %493 = and i64 %490, 4294967295
  %494 = mul nuw i64 %493, %492
  %495 = add i64 %494, %481
  store i64 %495, ptr %418, align 8, !alias.scope !126, !noalias !129
  %496 = getelementptr inbounds nuw i8, ptr %474, i64 16
  %497 = load i64, ptr %496, align 1
  %498 = getelementptr inbounds nuw i8, ptr %477, i64 16
  %499 = load i64, ptr %498, align 1
  %500 = xor i64 %499, %497
  %501 = add i64 %471, %497
  store i64 %501, ptr %412, align 8, !alias.scope !126, !noalias !129
  %502 = lshr i64 %500, 32
  %503 = and i64 %500, 4294967295
  %504 = mul nuw i64 %503, %502
  %505 = add i64 %504, %470
  store i64 %505, ptr %413, align 8, !alias.scope !126, !noalias !129
  %506 = getelementptr inbounds nuw i8, ptr %474, i64 24
  %507 = load i64, ptr %506, align 1
  %508 = getelementptr inbounds nuw i8, ptr %477, i64 24
  %509 = load i64, ptr %508, align 1
  %510 = xor i64 %509, %507
  %511 = add i64 %505, %507
  store i64 %511, ptr %413, align 8, !alias.scope !126, !noalias !129
  %512 = lshr i64 %510, 32
  %513 = and i64 %510, 4294967295
  %514 = mul nuw i64 %513, %512
  %515 = add i64 %514, %501
  store i64 %515, ptr %412, align 8, !alias.scope !126, !noalias !129
  %516 = getelementptr inbounds nuw i8, ptr %474, i64 32
  %517 = load i64, ptr %516, align 1
  %518 = getelementptr inbounds nuw i8, ptr %477, i64 32
  %519 = load i64, ptr %518, align 1
  %520 = xor i64 %519, %517
  %521 = add i64 %469, %517
  store i64 %521, ptr %414, align 8, !alias.scope !126, !noalias !129
  %522 = lshr i64 %520, 32
  %523 = and i64 %520, 4294967295
  %524 = mul nuw i64 %523, %522
  %525 = add i64 %524, %468
  store i64 %525, ptr %415, align 8, !alias.scope !126, !noalias !129
  %526 = getelementptr inbounds nuw i8, ptr %474, i64 40
  %527 = load i64, ptr %526, align 1
  %528 = getelementptr inbounds nuw i8, ptr %477, i64 40
  %529 = load i64, ptr %528, align 1
  %530 = xor i64 %529, %527
  %531 = add i64 %525, %527
  store i64 %531, ptr %415, align 8, !alias.scope !126, !noalias !129
  %532 = lshr i64 %530, 32
  %533 = and i64 %530, 4294967295
  %534 = mul nuw i64 %533, %532
  %535 = add i64 %534, %521
  store i64 %535, ptr %414, align 8, !alias.scope !126, !noalias !129
  %536 = getelementptr inbounds nuw i8, ptr %474, i64 48
  %537 = load i64, ptr %536, align 1
  %538 = getelementptr inbounds nuw i8, ptr %477, i64 48
  %539 = load i64, ptr %538, align 1
  %540 = xor i64 %539, %537
  %541 = add i64 %467, %537
  store i64 %541, ptr %416, align 8, !alias.scope !126, !noalias !129
  %542 = lshr i64 %540, 32
  %543 = and i64 %540, 4294967295
  %544 = mul nuw i64 %543, %542
  %545 = add i64 %544, %466
  store i64 %545, ptr %417, align 8, !alias.scope !126, !noalias !129
  %546 = getelementptr inbounds nuw i8, ptr %474, i64 56
  %547 = load i64, ptr %546, align 1
  %548 = getelementptr inbounds nuw i8, ptr %477, i64 56
  %549 = load i64, ptr %548, align 1
  %550 = xor i64 %549, %547
  %551 = add i64 %545, %547
  store i64 %551, ptr %417, align 8, !alias.scope !126, !noalias !129
  %552 = lshr i64 %550, 32
  %553 = and i64 %550, 4294967295
  %554 = mul nuw i64 %553, %552
  %555 = add i64 %554, %541
  store i64 %555, ptr %416, align 8, !alias.scope !126, !noalias !129
  %556 = add nuw i64 %472, 1
  %557 = icmp eq i64 %556, %444
  br i1 %557, label %558, label %463, !llvm.loop !56

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
  store i64 %571, ptr %0, align 8, !alias.scope !121, !noalias !124
  %572 = load i64, ptr %426, align 1
  %573 = lshr i64 %566, 47
  %574 = xor i64 %572, %573
  %575 = xor i64 %574, %566
  %576 = mul i64 %575, 2654435761
  store i64 %576, ptr %427, align 8, !alias.scope !121, !noalias !124
  %577 = load i64, ptr %428, align 1
  %578 = lshr i64 %565, 47
  %579 = xor i64 %577, %578
  %580 = xor i64 %579, %565
  %581 = mul i64 %580, 2654435761
  store i64 %581, ptr %429, align 8, !alias.scope !121, !noalias !124
  %582 = load i64, ptr %430, align 1
  %583 = lshr i64 %564, 47
  %584 = xor i64 %582, %583
  %585 = xor i64 %584, %564
  %586 = mul i64 %585, 2654435761
  store i64 %586, ptr %431, align 8, !alias.scope !121, !noalias !124
  %587 = load i64, ptr %432, align 1
  %588 = lshr i64 %563, 47
  %589 = xor i64 %587, %588
  %590 = xor i64 %589, %563
  %591 = mul i64 %590, 2654435761
  store i64 %591, ptr %433, align 8, !alias.scope !121, !noalias !124
  %592 = load i64, ptr %434, align 1
  %593 = lshr i64 %562, 47
  %594 = xor i64 %592, %593
  %595 = xor i64 %594, %562
  %596 = mul i64 %595, 2654435761
  store i64 %596, ptr %435, align 8, !alias.scope !121, !noalias !124
  %597 = load i64, ptr %436, align 1
  %598 = lshr i64 %561, 47
  %599 = xor i64 %597, %598
  %600 = xor i64 %599, %561
  %601 = mul i64 %600, 2654435761
  store i64 %601, ptr %437, align 8, !alias.scope !121, !noalias !124
  %602 = load i64, ptr %438, align 1
  %603 = lshr i64 %560, 47
  %604 = xor i64 %602, %603
  %605 = xor i64 %604, %560
  %606 = mul i64 %605, 2654435761
  store i64 %606, ptr %439, align 8, !alias.scope !121, !noalias !124
  %607 = shl i64 %444, 6
  %608 = getelementptr inbounds nuw i8, ptr %442, i64 %607
  %609 = sub i64 %441, %444
  %610 = icmp ult i64 %609, %399
  br i1 %610, label %611, label %440, !llvm.loop !57

611:                                              ; preds = %558
  store i64 0, ptr %397, align 8, !alias.scope !114, !noalias !117
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
  tail call void @llvm.assume(i1 %620), !noalias !114
  %621 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %622 = load i64, ptr %621, align 8, !alias.scope !132, !noalias !135
  %623 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %624 = load i64, ptr %623, align 8, !alias.scope !132, !noalias !135
  %625 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %626 = load i64, ptr %625, align 8, !alias.scope !132, !noalias !135
  %627 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %628 = load i64, ptr %627, align 8, !alias.scope !132, !noalias !135
  %629 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %630 = load i64, ptr %629, align 8, !alias.scope !132, !noalias !135
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %632 = load i64, ptr %631, align 8, !alias.scope !132, !noalias !135
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %634 = load i64, ptr %633, align 8, !alias.scope !132, !noalias !135
  %635 = load i64, ptr %0, align 8, !alias.scope !132, !noalias !135
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
  tail call void @llvm.prefetch.p0(ptr nonnull %648, i32 0, i32 3, i32 1), !noalias !114
  %649 = shl i64 %645, 3
  %650 = getelementptr inbounds nuw i8, ptr %615, i64 %649
  %651 = load i64, ptr %647, align 1
  %652 = load i64, ptr %650, align 1
  %653 = xor i64 %652, %651
  %654 = add i64 %638, %651
  store i64 %654, ptr %633, align 8, !alias.scope !132, !noalias !135
  %655 = lshr i64 %653, 32
  %656 = and i64 %653, 4294967295
  %657 = mul nuw i64 %656, %655
  %658 = add i64 %657, %637
  store i64 %658, ptr %0, align 8, !alias.scope !132, !noalias !135
  %659 = getelementptr inbounds nuw i8, ptr %647, i64 8
  %660 = load i64, ptr %659, align 1
  %661 = getelementptr inbounds nuw i8, ptr %650, i64 8
  %662 = load i64, ptr %661, align 1
  %663 = xor i64 %662, %660
  %664 = add i64 %658, %660
  store i64 %664, ptr %0, align 8, !alias.scope !132, !noalias !135
  %665 = lshr i64 %663, 32
  %666 = and i64 %663, 4294967295
  %667 = mul nuw i64 %666, %665
  %668 = add i64 %667, %654
  store i64 %668, ptr %633, align 8, !alias.scope !132, !noalias !135
  %669 = getelementptr inbounds nuw i8, ptr %647, i64 16
  %670 = load i64, ptr %669, align 1
  %671 = getelementptr inbounds nuw i8, ptr %650, i64 16
  %672 = load i64, ptr %671, align 1
  %673 = xor i64 %672, %670
  %674 = add i64 %644, %670
  store i64 %674, ptr %621, align 8, !alias.scope !132, !noalias !135
  %675 = lshr i64 %673, 32
  %676 = and i64 %673, 4294967295
  %677 = mul nuw i64 %676, %675
  %678 = add i64 %677, %643
  store i64 %678, ptr %623, align 8, !alias.scope !132, !noalias !135
  %679 = getelementptr inbounds nuw i8, ptr %647, i64 24
  %680 = load i64, ptr %679, align 1
  %681 = getelementptr inbounds nuw i8, ptr %650, i64 24
  %682 = load i64, ptr %681, align 1
  %683 = xor i64 %682, %680
  %684 = add i64 %678, %680
  store i64 %684, ptr %623, align 8, !alias.scope !132, !noalias !135
  %685 = lshr i64 %683, 32
  %686 = and i64 %683, 4294967295
  %687 = mul nuw i64 %686, %685
  %688 = add i64 %687, %674
  store i64 %688, ptr %621, align 8, !alias.scope !132, !noalias !135
  %689 = getelementptr inbounds nuw i8, ptr %647, i64 32
  %690 = load i64, ptr %689, align 1
  %691 = getelementptr inbounds nuw i8, ptr %650, i64 32
  %692 = load i64, ptr %691, align 1
  %693 = xor i64 %692, %690
  %694 = add i64 %642, %690
  store i64 %694, ptr %625, align 8, !alias.scope !132, !noalias !135
  %695 = lshr i64 %693, 32
  %696 = and i64 %693, 4294967295
  %697 = mul nuw i64 %696, %695
  %698 = add i64 %697, %641
  store i64 %698, ptr %627, align 8, !alias.scope !132, !noalias !135
  %699 = getelementptr inbounds nuw i8, ptr %647, i64 40
  %700 = load i64, ptr %699, align 1
  %701 = getelementptr inbounds nuw i8, ptr %650, i64 40
  %702 = load i64, ptr %701, align 1
  %703 = xor i64 %702, %700
  %704 = add i64 %698, %700
  store i64 %704, ptr %627, align 8, !alias.scope !132, !noalias !135
  %705 = lshr i64 %703, 32
  %706 = and i64 %703, 4294967295
  %707 = mul nuw i64 %706, %705
  %708 = add i64 %707, %694
  store i64 %708, ptr %625, align 8, !alias.scope !132, !noalias !135
  %709 = getelementptr inbounds nuw i8, ptr %647, i64 48
  %710 = load i64, ptr %709, align 1
  %711 = getelementptr inbounds nuw i8, ptr %650, i64 48
  %712 = load i64, ptr %711, align 1
  %713 = xor i64 %712, %710
  %714 = add i64 %640, %710
  store i64 %714, ptr %629, align 8, !alias.scope !132, !noalias !135
  %715 = lshr i64 %713, 32
  %716 = and i64 %713, 4294967295
  %717 = mul nuw i64 %716, %715
  %718 = add i64 %717, %639
  store i64 %718, ptr %631, align 8, !alias.scope !132, !noalias !135
  %719 = getelementptr inbounds nuw i8, ptr %647, i64 56
  %720 = load i64, ptr %719, align 1
  %721 = getelementptr inbounds nuw i8, ptr %650, i64 56
  %722 = load i64, ptr %721, align 1
  %723 = xor i64 %722, %720
  %724 = add i64 %718, %720
  store i64 %724, ptr %631, align 8, !alias.scope !132, !noalias !135
  %725 = lshr i64 %723, 32
  %726 = and i64 %723, 4294967295
  %727 = mul nuw i64 %726, %725
  %728 = add i64 %727, %714
  store i64 %728, ptr %629, align 8, !alias.scope !132, !noalias !135
  %729 = add nuw i64 %645, 1
  %730 = icmp eq i64 %729, %613
  br i1 %730, label %731, label %636, !llvm.loop !56

731:                                              ; preds = %636
  %732 = shl i64 %613, 6
  %733 = getelementptr inbounds nuw i8, ptr %614, i64 %732
  %734 = load i64, ptr %397, align 8, !alias.scope !114, !noalias !117
  %735 = add i64 %734, %613
  store i64 %735, ptr %397, align 8, !alias.scope !114, !noalias !117
  br label %736

736:                                              ; preds = %612, %731
  %737 = phi ptr [ %733, %731 ], [ %614, %612 ]
  %738 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %739 = getelementptr inbounds i8, ptr %737, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %738, ptr noundef nonnull align 1 dereferenceable(64) %739, i64 64, i1 false)
  %740 = load i32, ptr %8, align 64, !alias.scope !87, !noalias !84
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
  store i32 %753, ptr %8, align 64, !alias.scope !87, !noalias !84
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noalias nocapture noundef nonnull readonly %0, ptr noalias nocapture noundef readonly %1, i64 noundef range(i64 75, 0) %2, i64 noundef %3) unnamed_addr #21 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %6 = mul i64 %3, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %7 = load i64, ptr %0, align 8, !alias.scope !148, !noalias !151
  %8 = load i64, ptr %5, align 1, !alias.scope !153, !noalias !154
  %9 = xor i64 %8, %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 8, !alias.scope !148, !noalias !151
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %13 = load i64, ptr %12, align 1, !alias.scope !153, !noalias !154
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
  %24 = load i64, ptr %22, align 8, !alias.scope !148, !noalias !151
  %25 = load i64, ptr %23, align 1, !alias.scope !153, !noalias !154
  %26 = xor i64 %25, %24
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 8, !alias.scope !148, !noalias !151
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 35
  %30 = load i64, ptr %29, align 1, !alias.scope !153, !noalias !154
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
  %41 = load i64, ptr %39, align 8, !alias.scope !148, !noalias !151
  %42 = load i64, ptr %40, align 1, !alias.scope !153, !noalias !154
  %43 = xor i64 %42, %41
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %45 = load i64, ptr %44, align 8, !alias.scope !148, !noalias !151
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 51
  %47 = load i64, ptr %46, align 1, !alias.scope !153, !noalias !154
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
  %58 = load i64, ptr %56, align 8, !alias.scope !148, !noalias !151
  %59 = load i64, ptr %57, align 1, !alias.scope !153, !noalias !154
  %60 = xor i64 %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !148, !noalias !151
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 67
  %64 = load i64, ptr %63, align 1, !alias.scope !153, !noalias !154
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
  %82 = load i64, ptr %79, align 1, !alias.scope !155, !noalias !158
  %83 = xor i64 %82, %7
  %84 = getelementptr inbounds i8, ptr %78, i64 -67
  %85 = load i64, ptr %84, align 1, !alias.scope !155, !noalias !158
  %86 = xor i64 %85, %11
  %87 = zext i64 %83 to i128
  %88 = zext i64 %86 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %92, %81
  %94 = getelementptr inbounds i8, ptr %78, i64 -59
  %95 = load i64, ptr %94, align 1, !alias.scope !155, !noalias !158
  %96 = xor i64 %95, %24
  %97 = getelementptr inbounds i8, ptr %78, i64 -51
  %98 = load i64, ptr %97, align 1, !alias.scope !155, !noalias !158
  %99 = xor i64 %98, %28
  %100 = zext i64 %96 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %93, %105
  %107 = getelementptr inbounds i8, ptr %78, i64 -43
  %108 = load i64, ptr %107, align 1, !alias.scope !155, !noalias !158
  %109 = xor i64 %108, %41
  %110 = getelementptr inbounds i8, ptr %78, i64 -35
  %111 = load i64, ptr %110, align 1, !alias.scope !155, !noalias !158
  %112 = xor i64 %111, %45
  %113 = zext i64 %109 to i128
  %114 = zext i64 %112 to i128
  %115 = mul nuw i128 %114, %113
  %116 = lshr i128 %115, 64
  %117 = xor i128 %116, %115
  %118 = trunc i128 %117 to i64
  %119 = add i64 %106, %118
  %120 = getelementptr inbounds i8, ptr %78, i64 -27
  %121 = load i64, ptr %120, align 1, !alias.scope !155, !noalias !158
  %122 = xor i64 %121, %58
  %123 = getelementptr inbounds i8, ptr %78, i64 -19
  %124 = load i64, ptr %123, align 1, !alias.scope !155, !noalias !158
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
  br i1 %225, label %313, label %226, !llvm.loop !160

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
  br i1 %269, label %313, label %270, !llvm.loop !160

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
  %189 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %187) #34, !srcloc !161
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
  br i1 %212, label %213, label %185, !llvm.loop !162

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
  br i1 %90, label %72, label %91, !llvm.loop !83

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
  br i1 %100, label %136, label %101, !llvm.loop !163

101:                                              ; preds = %96
  %102 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.106, ptr noundef %18, i64 noundef %49) #28
  br label %136, !llvm.loop !163

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
  tail call void %3(ptr noundef %1, i64 noundef %10) #28, !callees !164
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
  br i1 %11, label %12, label %4, !llvm.loop !165

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
  br i1 %13, label %6, label %14, !llvm.loop !166

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
  tail call void %4(ptr noundef %1, i64 noundef %13) #28, !callees !164
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #23 = { mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!23 = !{i64 2148365069}
!24 = !{!25}
!25 = distinct !{!25, !22, !"XXH32_consumeLong: argument 1"}
!26 = distinct !{!26, !8}
!27 = !{!28}
!28 = distinct !{!28, !29, !"XXH64_consumeLong: argument 0"}
!29 = distinct !{!29, !"XXH64_consumeLong"}
!30 = !{i64 2148378400}
!31 = !{!32}
!32 = distinct !{!32, !29, !"XXH64_consumeLong: argument 1"}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !8}
!42 = !{!43}
!43 = distinct !{!43, !44, !"XXH3_scalarScrambleRound: argument 0"}
!44 = distinct !{!44, !"XXH3_scalarScrambleRound"}
!45 = !{!46, !47}
!46 = distinct !{!46, !44, !"XXH3_scalarScrambleRound: argument 1"}
!47 = distinct !{!47, !48, !"XXH3_consumeStripes: argument 1"}
!48 = distinct !{!48, !"XXH3_consumeStripes"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"XXH3_scalarRound: argument 0"}
!51 = distinct !{!51, !"XXH3_scalarRound"}
!52 = !{!53, !54, !47}
!53 = distinct !{!53, !51, !"XXH3_scalarRound: argument 1"}
!54 = distinct !{!54, !51, !"XXH3_scalarRound: argument 2"}
!55 = !{!47}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = !{!59}
!59 = distinct !{!59, !60, !"XXH3_scalarRound: argument 0"}
!60 = distinct !{!60, !"XXH3_scalarRound"}
!61 = !{!62, !63, !47}
!62 = distinct !{!62, !60, !"XXH3_scalarRound: argument 1"}
!63 = distinct !{!63, !60, !"XXH3_scalarRound: argument 2"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"XXH3_scalarRound: argument 0"}
!66 = distinct !{!66, !"XXH3_scalarRound"}
!67 = !{!68, !69}
!68 = distinct !{!68, !66, !"XXH3_scalarRound: argument 1"}
!69 = distinct !{!69, !66, !"XXH3_scalarRound: argument 2"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"XXH3_consumeStripes: argument 1"}
!72 = distinct !{!72, !"XXH3_consumeStripes"}
!73 = !{!74, !76}
!74 = distinct !{!74, !75, !"XXH3_mergeAccs: argument 1"}
!75 = distinct !{!75, !"XXH3_mergeAccs"}
!76 = distinct !{!76, !77, !"XXH3_finalizeLong_64b: argument 1"}
!77 = distinct !{!77, !"XXH3_finalizeLong_64b"}
!78 = !{!79, !80}
!79 = distinct !{!79, !75, !"XXH3_mergeAccs: argument 0"}
!80 = distinct !{!80, !77, !"XXH3_finalizeLong_64b: argument 0"}
!81 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8}
!84 = !{!85}
!85 = distinct !{!85, !86, !"XXH3_update: argument 1"}
!86 = distinct !{!86, !"XXH3_update"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"XXH3_update: argument 0"}
!89 = !{!88, !85}
!90 = !{!91}
!91 = distinct !{!91, !92, !"XXH3_consumeStripes: argument 1"}
!92 = distinct !{!92, !"XXH3_consumeStripes"}
!93 = !{!94, !95, !96}
!94 = distinct !{!94, !92, !"XXH3_consumeStripes: argument 0"}
!95 = distinct !{!95, !92, !"XXH3_consumeStripes: argument 2"}
!96 = distinct !{!96, !92, !"XXH3_consumeStripes: argument 3"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"XXH3_scalarRound: argument 0"}
!99 = distinct !{!99, !"XXH3_scalarRound"}
!100 = !{!101, !102, !91}
!101 = distinct !{!101, !99, !"XXH3_scalarRound: argument 1"}
!102 = distinct !{!102, !99, !"XXH3_scalarRound: argument 2"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_scalarScrambleRound: argument 0"}
!105 = distinct !{!105, !"XXH3_scalarScrambleRound"}
!106 = !{!107, !91}
!107 = distinct !{!107, !105, !"XXH3_scalarScrambleRound: argument 1"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"XXH3_scalarRound: argument 0"}
!110 = distinct !{!110, !"XXH3_scalarRound"}
!111 = !{!112, !113, !91}
!112 = distinct !{!112, !110, !"XXH3_scalarRound: argument 1"}
!113 = distinct !{!113, !110, !"XXH3_scalarRound: argument 2"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"XXH3_consumeStripes: argument 1"}
!116 = distinct !{!116, !"XXH3_consumeStripes"}
!117 = !{!118, !119, !120}
!118 = distinct !{!118, !116, !"XXH3_consumeStripes: argument 0"}
!119 = distinct !{!119, !116, !"XXH3_consumeStripes: argument 2"}
!120 = distinct !{!120, !116, !"XXH3_consumeStripes: argument 3"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"XXH3_scalarScrambleRound: argument 0"}
!123 = distinct !{!123, !"XXH3_scalarScrambleRound"}
!124 = !{!125, !115}
!125 = distinct !{!125, !123, !"XXH3_scalarScrambleRound: argument 1"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"XXH3_scalarRound: argument 0"}
!128 = distinct !{!128, !"XXH3_scalarRound"}
!129 = !{!130, !131, !115}
!130 = distinct !{!130, !128, !"XXH3_scalarRound: argument 1"}
!131 = distinct !{!131, !128, !"XXH3_scalarRound: argument 2"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"XXH3_scalarRound: argument 0"}
!134 = distinct !{!134, !"XXH3_scalarRound"}
!135 = !{!136, !137, !115}
!136 = distinct !{!136, !134, !"XXH3_scalarRound: argument 1"}
!137 = distinct !{!137, !134, !"XXH3_scalarRound: argument 2"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"XXH3_finalizeLong_64b: argument 0"}
!140 = distinct !{!140, !"XXH3_finalizeLong_64b"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"XXH3_finalizeLong_64b: argument 1"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"XXH3_mergeAccs: argument 0"}
!145 = distinct !{!145, !"XXH3_mergeAccs"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"XXH3_mergeAccs: argument 1"}
!148 = !{!149, !144, !139}
!149 = distinct !{!149, !150, !"XXH3_mix2Accs: argument 0"}
!150 = distinct !{!150, !"XXH3_mix2Accs"}
!151 = !{!152, !147, !142}
!152 = distinct !{!152, !150, !"XXH3_mix2Accs: argument 1"}
!153 = !{!147, !142}
!154 = !{!144, !139}
!155 = !{!156}
!156 = distinct !{!156, !157, !"XXH3_mergeAccs: argument 1"}
!157 = distinct !{!157, !"XXH3_mergeAccs"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"XXH3_mergeAccs: argument 0"}
!160 = distinct !{!160, !8}
!161 = !{i64 2152370723}
!162 = distinct !{!162, !8}
!163 = distinct !{!163, !8}
!164 = !{ptr @XSUM_display_BigEndian, ptr @XSUM_display_LittleEndian}
!165 = distinct !{!165, !8}
!166 = distinct !{!166, !8}
