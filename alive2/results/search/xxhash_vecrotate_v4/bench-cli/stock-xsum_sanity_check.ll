; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/repos/xxHash/cli/xsum_sanity_check.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/repos/xxHash/cli/xsum_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XSUM_testdata32_t = type { i32, i32, i32 }
%struct.XXH_INLINE_XXH128_hash_t = type { i64, i64 }
%struct.XSUM_testdata64_t = type { i32, i64, i64 }
%struct.XSUM_testdata128_t = type { i32, i64, %struct.XXH_INLINE_XXH128_hash_t }
%struct.XSUM_testdata_sample_t = type { i32, i32, [5 x i8] }

@.str = private unnamed_addr constant [15 x i8] c"buffer != NULL\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"/srv/home/hantaolou/code/veriop/alive2/repos/xxHash/cli/xsum_sanity_check.c\00", align 1
@__PRETTY_FUNCTION__.XSUM_fillTestBuffer = private unnamed_addr constant [44 x i8] c"void XSUM_fillTestBuffer(XSUM_U8 *, size_t)\00", align 1
@XSUM_XXH32_testdata = internal unnamed_addr constant [8 x %struct.XSUM_testdata32_t] [%struct.XSUM_testdata32_t { i32 0, i32 0, i32 46947589 }, %struct.XSUM_testdata32_t { i32 0, i32 -1640531535, i32 917998311 }, %struct.XSUM_testdata32_t { i32 1, i32 0, i32 -815419330 }, %struct.XSUM_testdata32_t { i32 1, i32 -1640531535, i32 -1269540188 }, %struct.XSUM_testdata32_t { i32 14, i32 0, i32 302573538 }, %struct.XSUM_testdata32_t { i32 14, i32 -1640531535, i32 1794232830 }, %struct.XSUM_testdata32_t { i32 222, i32 0, i32 1540431293 }, %struct.XSUM_testdata32_t { i32 222, i32 -1640531535, i32 1484799071 }], align 16
@.str.2 = private unnamed_addr constant [67 x i8] c"XSUM_XXH3_generateSecret_testdata[i].seedLen <= SANITY_BUFFER_SIZE\00", align 1
@__PRETTY_FUNCTION__.XSUM_sanityCheck = private unnamed_addr constant [28 x i8] c"void XSUM_sanityCheck(void)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\0D%70s\0D\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Sanity check -- all tests ok\0A\00", align 1
@__PRETTY_FUNCTION__.XSUM_testXXH32 = private unnamed_addr constant [61 x i8] c"void XSUM_testXXH32(const void *, const XSUM_testdata32_t *)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"state != NULL\00", align 1
@XSUM_checkResult32.nbTests = internal unnamed_addr global i32 1, align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"\0DError: 32-bit hash test %i: Internal sanity check failed!\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\0DGot 0x%08X, expected 0x%08X.\0A\00", align 1
@.str.10 = private unnamed_addr constant [129 x i8] c"\0DNote: If you modified the hash functions, make sure to either update the values\0Aor temporarily recompile with XSUM_NO_TESTS=1.\0A\00", align 1
@__PRETTY_FUNCTION__.XSUM_testXXH64 = private unnamed_addr constant [61 x i8] c"void XSUM_testXXH64(const void *, const XSUM_testdata64_t *)\00", align 1
@XSUM_checkResult64.nbTests = internal unnamed_addr global i32 1, align 4
@.str.11 = private unnamed_addr constant [60 x i8] c"\0DError: 64-bit hash test %i: Internal sanity check failed!\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"\0DGot 0x%08X%08XULL, expected 0x%08X%08XULL.\0A\00", align 1
@XSUM_XXH64_testdata = internal unnamed_addr constant [9 x { i32, [4 x i8], i64, i64 }] [{ i32, [4 x i8], i64, i64 } { i32 0, [4 x i8] zeroinitializer, i64 0, i64 -1205034819632174695 }, { i32, [4 x i8], i64, i64 } { i32 0, [4 x i8] zeroinitializer, i64 2654435761, i64 -6019626452224632849 }, { i32, [4 x i8], i64, i64 } { i32 1, [4 x i8] zeroinitializer, i64 0, i64 -1642502924627794072 }, { i32, [4 x i8], i64, i64 } { i32 1, [4 x i8] zeroinitializer, i64 2654435761, i64 5770343083626050755 }, { i32, [4 x i8], i64, i64 } { i32 4, [4 x i8] zeroinitializer, i64 0, i64 -7983016419938510866 }, { i32, [4 x i8], i64, i64 } { i32 14, [4 x i8] zeroinitializer, i64 0, i64 -9042422364862794296 }, { i32, [4 x i8], i64, i64 } { i32 14, [4 x i8] zeroinitializer, i64 2654435761, i64 -4342195760370323984 }, { i32, [4 x i8], i64, i64 } { i32 222, [4 x i8] zeroinitializer, i64 0, i64 -5313774165938814604 }, { i32, [4 x i8], i64, i64 } { i32 222, [4 x i8] zeroinitializer, i64 2654435761, i64 2363134950989939018 }], align 16
@__PRETTY_FUNCTION__.XSUM_testXXH3 = private unnamed_addr constant [60 x i8] c"void XSUM_testXXH3(const void *, const XSUM_testdata64_t *)\00", align 1
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@XSUM_rand.seed = internal unnamed_addr global i64 2654435761, align 8
@XSUM_XXH3_testdata = internal unnamed_addr constant [28 x { i32, [4 x i8], i64, i64 }] [{ i32, [4 x i8], i64, i64 } { i32 0, [4 x i8] zeroinitializer, i64 0, i64 3244421341483603138 }, { i32, [4 x i8], i64, i64 } { i32 0, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 -6294139913471248822 }, { i32, [4 x i8], i64, i64 } { i32 1, [4 x i8] zeroinitializer, i64 0, i64 -4302098779834749733 }, { i32, [4 x i8], i64, i64 } { i32 1, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 228526013715738360 }, { i32, [4 x i8], i64, i64 } { i32 6, [4 x i8] zeroinitializer, i64 0, i64 2861310256874353445 }, { i32, [4 x i8], i64, i64 } { i32 6, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 -8910200264133862727 }, { i32, [4 x i8], i64, i64 } { i32 12, [4 x i8] zeroinitializer, i64 0, i64 -6407537116737472537 }, { i32, [4 x i8], i64, i64 } { i32 12, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 -1787860765790249458 }, { i32, [4 x i8], i64, i64 } { i32 24, [4 x i8] zeroinitializer, i64 0, i64 -6629737633164226325 }, { i32, [4 x i8], i64, i64 } { i32 24, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 -8859001596269439344 }, { i32, [4 x i8], i64, i64 } { i32 48, [4 x i8] zeroinitializer, i64 0, i64 4142645739358134033 }, { i32, [4 x i8], i64, i64 } { i32 48, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 -5925950227509098986 }, { i32, [4 x i8], i64, i64 } { i32 80, [4 x i8] zeroinitializer, i64 0, i64 -4837152168428975862 }, { i32, [4 x i8], i64, i64 } { i32 80, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 -4117120505950818701 }, { i32, [4 x i8], i64, i64 } { i32 195, [4 x i8] zeroinitializer, i64 0, i64 -3633242170516640710 }, { i32, [4 x i8], i64, i64 } { i32 195, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 -5014757922160462887 }, { i32, [4 x i8], i64, i64 } { i32 403, [4 x i8] zeroinitializer, i64 0, i64 -3608649606498951516 }, { i32, [4 x i8], i64, i64 } { i32 403, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 7086966986368107517 }, { i32, [4 x i8], i64, i64 } { i32 512, [4 x i8] zeroinitializer, i64 0, i64 7025133117762685803 }, { i32, [4 x i8], i64, i64 } { i32 512, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 4387728548308350728 }, { i32, [4 x i8], i64, i64 } { i32 2048, [4 x i8] zeroinitializer, i64 0, i64 -2496715188469745440 }, { i32, [4 x i8], i64, i64 } { i32 2048, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 7419705058106456764 }, { i32, [4 x i8], i64, i64 } { i32 2099, [4 x i8] zeroinitializer, i64 0, i64 -4127028216447973531 }, { i32, [4 x i8], i64, i64 } { i32 2099, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 1751673103947544948 }, { i32, [4 x i8], i64, i64 } { i32 2240, [4 x i8] zeroinitializer, i64 0, i64 7958890806403606856 }, { i32, [4 x i8], i64, i64 } { i32 2240, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 8465544953863033415 }, { i32, [4 x i8], i64, i64 } { i32 2367, [4 x i8] zeroinitializer, i64 0, i64 -3803379246843076115 }, { i32, [4 x i8], i64, i64 } { i32 2367, [4 x i8] zeroinitializer, i64 -7046029288634856819, i64 -3252949037937937366 }], align 16
@__PRETTY_FUNCTION__.XSUM_testXXH3_withSecret = private unnamed_addr constant [93 x i8] c"void XSUM_testXXH3_withSecret(const void *, const void *, size_t, const XSUM_testdata64_t *)\00", align 1
@XSUM_XXH3_withSecret_testdata = internal unnamed_addr constant [13 x { i32, [4 x i8], i64, i64 }] [{ i32, [4 x i8], i64, i64 } { i32 0, [4 x i8] zeroinitializer, i64 0, i64 3844339363689645676 }, { i32, [4 x i8], i64, i64 } { i32 1, [4 x i8] zeroinitializer, i64 0, i64 -8479639195769185715 }, { i32, [4 x i8], i64, i64 } { i32 6, [4 x i8] zeroinitializer, i64 0, i64 -9022668626060940883 }, { i32, [4 x i8], i64, i64 } { i32 12, [4 x i8] zeroinitializer, i64 0, i64 1469051400900635735 }, { i32, [4 x i8], i64, i64 } { i32 24, [4 x i8] zeroinitializer, i64 0, i64 -3614890568097882136 }, { i32, [4 x i8], i64, i64 } { i32 48, [4 x i8] zeroinitializer, i64 0, i64 3723304043796964660 }, { i32, [4 x i8], i64, i64 } { i32 80, [4 x i8] zeroinitializer, i64 0, i64 -1835293717253696873 }, { i32, [4 x i8], i64, i64 } { i32 195, [4 x i8] zeroinitializer, i64 0, i64 -6892997551538242784 }, { i32, [4 x i8], i64, i64 } { i32 403, [4 x i8] zeroinitializer, i64 0, i64 1464901439599756216 }, { i32, [4 x i8], i64, i64 } { i32 512, [4 x i8] zeroinitializer, i64 0, i64 8459001714398651021 }, { i32, [4 x i8], i64, i64 } { i32 2048, [4 x i8] zeroinitializer, i64 0, i64 -3229477477997456993 }, { i32, [4 x i8], i64, i64 } { i32 2367, [4 x i8] zeroinitializer, i64 0, i64 2972279980978583015 }, { i32, [4 x i8], i64, i64 } { i32 1920, [4 x i8] zeroinitializer, i64 0, i64 8438952701676880779 }], align 16
@__PRETTY_FUNCTION__.XSUM_testXXH128 = private unnamed_addr constant [63 x i8] c"void XSUM_testXXH128(const void *, const XSUM_testdata128_t *)\00", align 1
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 8
@XSUM_checkResult128.nbTests = internal unnamed_addr global i32 1, align 4
@.str.16 = private unnamed_addr constant [61 x i8] c"\0DError: 128-bit hash test %i: Internal sanity check failed.\0A\00", align 1
@.str.17 = private unnamed_addr constant [83 x i8] c"\0DGot { 0x%08X%08XULL, 0x%08X%08XULL }, expected { 0x%08X%08XULL, 0x%08X%08XULL } \0A\00", align 1
@XSUM_XXH128_testdata = internal unnamed_addr constant [26 x { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t }] [{ i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 0, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 6918025063187695999, i64 -7374073936536430376 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 0, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 6072250355123952304, i64 -7916753214721709232 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 1, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 -4302098779834749733, i64 -6427377105285148822 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 1, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 -5387055743222976627, i64 -8522616628689353092 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 6, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 4499159515316604870, i64 588562026694103338 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 6, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 2782537859181610350, i64 6523001524642894513 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 12, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 439691569251392217, i64 7944065586697349912 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 12, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 -7211958834762580485, i64 -2891137987235281453 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 24, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 2193328689597091869, i64 930387929204602721 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 24, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 -2940766629057970007, i64 3558409297327465027 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 48, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 -485788860509260165, i64 -6916776625263074690 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 48, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 8909179873292030798, i64 1601836586323354261 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 81, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 6812732074615617539, i64 5283555249434067010 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 81, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 8088389328501175644, i64 2820639279069597622 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 222, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 -1031679072575657158, i64 3710413468563965719 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 222, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 -5865556190895703411, i64 -7961801095102162959 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 403, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 -3608649606498951516, i64 1976484430821054269 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 403, [4 x i8] zeroinitializer, i64 -7046029288634856819, %struct.XXH_INLINE_XXH128_hash_t { i64 7086966986368107517, i64 -4696390645675464462 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 512, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 7025133117762685803, i64 1788721872373398689 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 512, [4 x i8] zeroinitializer, i64 -7046029288634856819, %struct.XXH_INLINE_XXH128_hash_t { i64 4387728548308350728, i64 -7900150780028813248 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 2048, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 -2496715188469745440, i64 -633224690085629019 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 2048, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 2525749677014787595, i64 9200923851021009898 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 2240, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 7958890806403606856, i64 -3697115562250541923 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 2240, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 -1353242554259228049, i64 5810204372029184351 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 2367, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 -3803379246843076115, i64 -1685455187043830745 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 2367, [4 x i8] zeroinitializer, i64 2654435761, %struct.XXH_INLINE_XXH128_hash_t { i64 8021861663491945478, i64 -3298132137957187893 } }], align 16
@__PRETTY_FUNCTION__.XSUM_testXXH128_withSecret = private unnamed_addr constant [96 x i8] c"void XSUM_testXXH128_withSecret(const void *, const void *, size_t, const XSUM_testdata128_t *)\00", align 1
@XSUM_XXH128_withSecret_testdata = internal unnamed_addr constant [4 x { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t }] [{ i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 0, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 25090636013889710, i64 6877265917444562232 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 1, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 -8479639195769185715, i64 4208243705458006414 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 6, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 820157251033790351, i64 3993524206262481773 } }, { i32, [4 x i8], i64, %struct.XXH_INLINE_XXH128_hash_t } { i32 12, [4 x i8] zeroinitializer, i64 0, %struct.XXH_INLINE_XXH128_hash_t { i64 -5799801878197577768, i64 -8024355877102977777 } }], align 16
@XSUM_XXH3_generateSecret_testdata = internal constant [4 x { i32, i32, [5 x i8], [3 x i8] }] [{ i32, i32, [5 x i8], [3 x i8] } { i32 0, i32 192, [5 x i8] c"\E7\8Cww\00", [3 x i8] zeroinitializer }, { i32, i32, [5 x i8], [3 x i8] } { i32 1, i32 240, [5 x i8] c"+>\DE\C1\00", [3 x i8] zeroinitializer }, { i32, i32, [5 x i8], [3 x i8] } { i32 135, i32 277, [5 x i8] c"\E89l\CC{", [3 x i8] zeroinitializer }, { i32, i32, [5 x i8], [3 x i8] } { i32 692, i32 9867, [5 x i8] c"\D6\1CA\17\B3", [3 x i8] zeroinitializer }], align 16
@XSUM_testSecretGenerator.nbTests = internal unnamed_addr global i32 1, align 4
@.str.21 = private unnamed_addr constant [39 x i8] c"testData->secretLen <= SECRET_SIZE_MAX\00", align 1
@__PRETTY_FUNCTION__.XSUM_testSecretGenerator = private unnamed_addr constant [76 x i8] c"void XSUM_testSecretGenerator(const void *, const XSUM_testdata_sample_t *)\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"\0DError: Secret generation test %i: Internal sanity check failed. \0A\00", align 1
@.str.23 = private unnamed_addr constant [103 x i8] c"\0DGot { 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X }, expected { 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X } \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @XSUM_fillTestBuffer(ptr noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %4
  %7 = and i64 %1, 7
  %8 = icmp ult i64 %1, 8
  br i1 %8, label %58, label %9

9:                                                ; preds = %6
  %10 = and i64 %1, -8
  br label %12

11:                                               ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_fillTestBuffer) #28
  unreachable

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %55, %12 ]
  %14 = phi i64 [ 2654435761, %9 ], [ %54, %12 ]
  %15 = phi i64 [ 0, %9 ], [ %56, %12 ]
  %16 = lshr i64 %14, 56
  %17 = trunc nuw i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  store i8 %17, ptr %18, align 1
  %19 = mul i64 %14, -7046029288634856819
  %20 = or disjoint i64 %13, 1
  %21 = lshr i64 %19, 56
  %22 = trunc nuw i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 %20
  store i8 %22, ptr %23, align 1
  %24 = mul i64 %14, 8082899881521369513
  %25 = or disjoint i64 %13, 2
  %26 = lshr i64 %24, 56
  %27 = trunc nuw i64 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  store i8 %27, ptr %28, align 1
  %29 = mul i64 %14, 4059681500451689493
  %30 = or disjoint i64 %13, 3
  %31 = lshr i64 %29, 56
  %32 = trunc nuw i64 %31 to i8
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 %30
  store i8 %32, ptr %33, align 1
  %34 = mul i64 %14, 3863145599267594641
  %35 = or disjoint i64 %13, 4
  %36 = lshr i64 %34, 56
  %37 = trunc nuw i64 %36 to i8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %35
  store i8 %37, ptr %38, align 1
  %39 = mul i64 %14, -5086129311166093603
  %40 = or disjoint i64 %13, 5
  %41 = lshr i64 %39, 56
  %42 = trunc nuw i64 %41 to i8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 %40
  store i8 %42, ptr %43, align 1
  %44 = mul i64 %14, -9098131874030237255
  %45 = or disjoint i64 %13, 6
  %46 = lshr i64 %44, 56
  %47 = trunc nuw i64 %46 to i8
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 %45
  store i8 %47, ptr %48, align 1
  %49 = mul i64 %14, 8917150847291495653
  %50 = or disjoint i64 %13, 7
  %51 = lshr i64 %49, 56
  %52 = trunc nuw i64 %51 to i8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 %50
  store i8 %52, ptr %53, align 1
  %54 = mul i64 %14, -8225869668058319839
  %55 = add nuw i64 %13, 8
  %56 = add i64 %15, 8
  %57 = icmp eq i64 %56, %10
  br i1 %57, label %58, label %12, !llvm.loop !5

58:                                               ; preds = %12, %6
  %59 = phi i64 [ 0, %6 ], [ %55, %12 ]
  %60 = phi i64 [ 2654435761, %6 ], [ %54, %12 ]
  %61 = icmp eq i64 %7, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58, %62
  %63 = phi i64 [ %70, %62 ], [ %59, %58 ]
  %64 = phi i64 [ %69, %62 ], [ %60, %58 ]
  %65 = phi i64 [ %71, %62 ], [ 0, %58 ]
  %66 = lshr i64 %64, 56
  %67 = trunc nuw i64 %66 to i8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 %63
  store i8 %67, ptr %68, align 1
  %69 = mul i64 %64, -7046029288634856819
  %70 = add nuw i64 %63, 1
  %71 = add i64 %65, 1
  %72 = icmp eq i64 %71, %7
  br i1 %72, label %73, label %62, !llvm.loop !7

73:                                               ; preds = %58, %62, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @XSUM_sanityCheck() local_unnamed_addr #0 {
  %1 = alloca [9867 x i8], align 16
  %2 = alloca [5 x i8], align 1
  %3 = alloca [193 x i8], align 16
  %4 = alloca [193 x i8], align 16
  %5 = alloca [193 x i8], align 16
  %6 = alloca [193 x i8], align 16
  %7 = alloca [2367 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2367, ptr nonnull %7) #29
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 7
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = getelementptr inbounds i8, ptr %7, i64 2
  %14 = getelementptr inbounds i8, ptr %7, i64 3
  %15 = getelementptr inbounds i8, ptr %7, i64 4
  %16 = getelementptr inbounds i8, ptr %7, i64 5
  %17 = getelementptr inbounds i8, ptr %7, i64 6
  %18 = getelementptr inbounds i8, ptr %7, i64 7
  %19 = getelementptr inbounds i8, ptr %7, i64 8
  br label %20

20:                                               ; preds = %20, %0
  %21 = phi i64 [ 0, %0 ], [ %59, %20 ]
  %22 = phi i64 [ 2654435761, %0 ], [ %58, %20 ]
  %23 = lshr i64 %22, 56
  %24 = trunc nuw i64 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %7, i64 %21
  store i8 %24, ptr %25, align 1
  %26 = mul i64 %22, -7046029288634856819
  %27 = lshr i64 %26, 56
  %28 = trunc nuw i64 %27 to i8
  %29 = getelementptr inbounds i8, ptr %12, i64 %21
  store i8 %28, ptr %29, align 1
  %30 = mul i64 %22, 8082899881521369513
  %31 = lshr i64 %30, 56
  %32 = trunc nuw i64 %31 to i8
  %33 = getelementptr inbounds i8, ptr %13, i64 %21
  store i8 %32, ptr %33, align 1
  %34 = mul i64 %22, 4059681500451689493
  %35 = lshr i64 %34, 56
  %36 = trunc nuw i64 %35 to i8
  %37 = getelementptr inbounds i8, ptr %14, i64 %21
  store i8 %36, ptr %37, align 1
  %38 = mul i64 %22, 3863145599267594641
  %39 = lshr i64 %38, 56
  %40 = trunc nuw i64 %39 to i8
  %41 = getelementptr inbounds i8, ptr %15, i64 %21
  store i8 %40, ptr %41, align 1
  %42 = mul i64 %22, -5086129311166093603
  %43 = lshr i64 %42, 56
  %44 = trunc nuw i64 %43 to i8
  %45 = getelementptr inbounds i8, ptr %16, i64 %21
  store i8 %44, ptr %45, align 1
  %46 = mul i64 %22, -9098131874030237255
  %47 = lshr i64 %46, 56
  %48 = trunc nuw i64 %47 to i8
  %49 = getelementptr inbounds i8, ptr %17, i64 %21
  store i8 %48, ptr %49, align 1
  %50 = mul i64 %22, 8917150847291495653
  %51 = lshr i64 %50, 56
  %52 = trunc nuw i64 %51 to i8
  %53 = getelementptr inbounds i8, ptr %18, i64 %21
  store i8 %52, ptr %53, align 1
  %54 = mul i64 %22, -8225869668058319839
  %55 = lshr i64 %54, 56
  %56 = trunc nuw i64 %55 to i8
  %57 = getelementptr inbounds i8, ptr %19, i64 %21
  store i8 %56, ptr %57, align 1
  %58 = mul i64 %22, 6319156683405705261
  %59 = add nuw nsw i64 %21, 9
  %60 = icmp eq i64 %59, 2367
  br i1 %60, label %61, label %20, !llvm.loop !5

61:                                               ; preds = %20
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %66 = getelementptr i8, ptr %7, i64 -15
  %67 = load i32, ptr @XSUM_checkResult32.nbTests, align 4
  br label %72

68:                                               ; preds = %965
  %69 = getelementptr i8, ptr %7, i64 -31
  %70 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  %71 = getelementptr inbounds nuw i8, ptr %7, i64 64
  br label %1018

72:                                               ; preds = %61, %965
  %73 = phi i64 [ 0, %61 ], [ %967, %965 ]
  %74 = phi i32 [ %67, %61 ], [ %966, %965 ]
  %75 = getelementptr inbounds nuw [8 x %struct.XSUM_testdata32_t], ptr @XSUM_XXH32_testdata, i64 0, i64 %73
  %76 = call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #30
  %77 = load i32, ptr %75, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %77, 0
  %84 = select i1 %83, ptr null, ptr %7
  %85 = icmp eq ptr %76, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 285, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH32) #28
  unreachable

87:                                               ; preds = %72
  br i1 %83, label %143, label %88

88:                                               ; preds = %87
  %89 = icmp ugt i32 %77, 15
  br i1 %89, label %90, label %140

90:                                               ; preds = %88
  %91 = add i32 %80, 606290984
  %92 = add i32 %80, -2048144777
  %93 = add i32 %80, 1640531535
  %94 = getelementptr i8, ptr %66, i64 %78
  br label %95

95:                                               ; preds = %95, %90
  %96 = phi i32 [ %93, %90 ], [ %127, %95 ]
  %97 = phi i32 [ %80, %90 ], [ %120, %95 ]
  %98 = phi i32 [ %92, %90 ], [ %113, %95 ]
  %99 = phi i32 [ %91, %90 ], [ %106, %95 ]
  %100 = phi ptr [ %7, %90 ], [ %128, %95 ]
  %101 = load i32, ptr %100, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %99
  %104 = call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %105) #31, !srcloc !9
  %107 = getelementptr inbounds nuw i8, ptr %100, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = mul i32 %108, -2048144777
  %110 = add i32 %109, %98
  %111 = call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 13)
  %112 = mul i32 %111, -1640531535
  %113 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %112) #31, !srcloc !9
  %114 = getelementptr inbounds nuw i8, ptr %100, i64 8
  %115 = load i32, ptr %114, align 1
  %116 = mul i32 %115, -2048144777
  %117 = add i32 %116, %97
  %118 = call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 13)
  %119 = mul i32 %118, -1640531535
  %120 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %119) #31, !srcloc !9
  %121 = getelementptr inbounds nuw i8, ptr %100, i64 12
  %122 = load i32, ptr %121, align 1
  %123 = mul i32 %122, -2048144777
  %124 = add i32 %123, %96
  %125 = call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 13)
  %126 = mul i32 %125, -1640531535
  %127 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %126) #31, !srcloc !9
  %128 = getelementptr inbounds nuw i8, ptr %100, i64 16
  %129 = icmp ult ptr %128, %94
  br i1 %129, label %95, label %130, !llvm.loop !10

130:                                              ; preds = %95
  %131 = call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 1)
  %132 = call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 7)
  %133 = call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 12)
  %134 = call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 18)
  %135 = add i32 %131, %77
  %136 = add i32 %135, %132
  %137 = add i32 %136, %133
  %138 = add i32 %137, %134
  %139 = and i64 %78, 15
  br label %145

140:                                              ; preds = %88
  %141 = add i32 %80, 374761393
  %142 = add i32 %141, %77
  br label %145

143:                                              ; preds = %87
  %144 = add i32 %80, 374761393
  br label %324

145:                                              ; preds = %140, %130
  %146 = phi i64 [ %139, %130 ], [ %78, %140 ]
  %147 = phi i32 [ %138, %130 ], [ %142, %140 ]
  %148 = phi ptr [ %128, %130 ], [ %7, %140 ]
  %149 = icmp samesign ugt i64 %146, 3
  br i1 %149, label %150, label %179

150:                                              ; preds = %145
  %151 = add nsw i64 %146, -4
  %152 = lshr i64 %151, 2
  %153 = add nuw nsw i64 %152, 1
  %154 = and i64 %153, 7
  %155 = and i64 %151, 28
  %156 = icmp eq i64 %155, 28
  br i1 %156, label %171, label %157

157:                                              ; preds = %150, %157
  %158 = phi i32 [ %167, %157 ], [ %147, %150 ]
  %159 = phi i64 [ %168, %157 ], [ %146, %150 ]
  %160 = phi ptr [ %165, %157 ], [ %148, %150 ]
  %161 = phi i64 [ %169, %157 ], [ 0, %150 ]
  %162 = load i32, ptr %160, align 1
  %163 = mul i32 %162, -1028477379
  %164 = add i32 %163, %158
  %165 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %166 = call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 17)
  %167 = mul i32 %166, 668265263
  %168 = add nsw i64 %159, -4
  %169 = add i64 %161, 1
  %170 = icmp eq i64 %169, %154
  br i1 %170, label %171, label %157, !llvm.loop !11

171:                                              ; preds = %157, %150
  %172 = phi i32 [ %147, %150 ], [ %167, %157 ]
  %173 = phi i64 [ %146, %150 ], [ %168, %157 ]
  %174 = phi ptr [ %148, %150 ], [ %165, %157 ]
  %175 = phi ptr [ poison, %150 ], [ %165, %157 ]
  %176 = phi i32 [ poison, %150 ], [ %167, %157 ]
  %177 = phi i64 [ poison, %150 ], [ %168, %157 ]
  %178 = icmp ult i64 %151, 28
  br i1 %178, label %179, label %208

179:                                              ; preds = %171, %208, %145
  %180 = phi ptr [ %148, %145 ], [ %175, %171 ], [ %257, %208 ]
  %181 = phi i64 [ %146, %145 ], [ %177, %171 ], [ %260, %208 ]
  %182 = phi i32 [ %147, %145 ], [ %176, %171 ], [ %259, %208 ]
  %183 = icmp eq i64 %181, 0
  br i1 %183, label %324, label %184

184:                                              ; preds = %179
  %185 = and i64 %181, 7
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %202, label %187

187:                                              ; preds = %184, %187
  %188 = phi i32 [ %198, %187 ], [ %182, %184 ]
  %189 = phi i64 [ %199, %187 ], [ %181, %184 ]
  %190 = phi ptr [ %192, %187 ], [ %180, %184 ]
  %191 = phi i64 [ %200, %187 ], [ 0, %184 ]
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %193 = load i8, ptr %190, align 1
  %194 = zext i8 %193 to i32
  %195 = mul i32 %194, 374761393
  %196 = add i32 %195, %188
  %197 = call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 11)
  %198 = mul i32 %197, -1640531535
  %199 = add nsw i64 %189, -1
  %200 = add i64 %191, 1
  %201 = icmp eq i64 %200, %185
  br i1 %201, label %202, label %187, !llvm.loop !12

202:                                              ; preds = %187, %184
  %203 = phi i32 [ poison, %184 ], [ %198, %187 ]
  %204 = phi i32 [ %182, %184 ], [ %198, %187 ]
  %205 = phi i64 [ %181, %184 ], [ %199, %187 ]
  %206 = phi ptr [ %180, %184 ], [ %192, %187 ]
  %207 = icmp ult i64 %181, 8
  br i1 %207, label %324, label %262

208:                                              ; preds = %171, %208
  %209 = phi i32 [ %259, %208 ], [ %172, %171 ]
  %210 = phi i64 [ %260, %208 ], [ %173, %171 ]
  %211 = phi ptr [ %257, %208 ], [ %174, %171 ]
  %212 = load i32, ptr %211, align 1
  %213 = mul i32 %212, -1028477379
  %214 = add i32 %213, %209
  %215 = getelementptr inbounds nuw i8, ptr %211, i64 4
  %216 = call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 17)
  %217 = mul i32 %216, 668265263
  %218 = load i32, ptr %215, align 1
  %219 = mul i32 %218, -1028477379
  %220 = add i32 %219, %217
  %221 = getelementptr inbounds nuw i8, ptr %211, i64 8
  %222 = call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 17)
  %223 = mul i32 %222, 668265263
  %224 = load i32, ptr %221, align 1
  %225 = mul i32 %224, -1028477379
  %226 = add i32 %225, %223
  %227 = getelementptr inbounds nuw i8, ptr %211, i64 12
  %228 = call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 17)
  %229 = mul i32 %228, 668265263
  %230 = load i32, ptr %227, align 1
  %231 = mul i32 %230, -1028477379
  %232 = add i32 %231, %229
  %233 = getelementptr inbounds nuw i8, ptr %211, i64 16
  %234 = call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 17)
  %235 = mul i32 %234, 668265263
  %236 = load i32, ptr %233, align 1
  %237 = mul i32 %236, -1028477379
  %238 = add i32 %237, %235
  %239 = getelementptr inbounds nuw i8, ptr %211, i64 20
  %240 = call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 17)
  %241 = mul i32 %240, 668265263
  %242 = load i32, ptr %239, align 1
  %243 = mul i32 %242, -1028477379
  %244 = add i32 %243, %241
  %245 = getelementptr inbounds nuw i8, ptr %211, i64 24
  %246 = call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 17)
  %247 = mul i32 %246, 668265263
  %248 = load i32, ptr %245, align 1
  %249 = mul i32 %248, -1028477379
  %250 = add i32 %249, %247
  %251 = getelementptr inbounds nuw i8, ptr %211, i64 28
  %252 = call i32 @llvm.fshl.i32(i32 %250, i32 %250, i32 17)
  %253 = mul i32 %252, 668265263
  %254 = load i32, ptr %251, align 1
  %255 = mul i32 %254, -1028477379
  %256 = add i32 %255, %253
  %257 = getelementptr inbounds nuw i8, ptr %211, i64 32
  %258 = call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 17)
  %259 = mul i32 %258, 668265263
  %260 = add nsw i64 %210, -32
  %261 = icmp ugt i64 %260, 3
  br i1 %261, label %208, label %179, !llvm.loop !13

262:                                              ; preds = %202, %262
  %263 = phi i32 [ %321, %262 ], [ %204, %202 ]
  %264 = phi i64 [ %322, %262 ], [ %205, %202 ]
  %265 = phi ptr [ %315, %262 ], [ %206, %202 ]
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 1
  %267 = load i8, ptr %265, align 1
  %268 = zext i8 %267 to i32
  %269 = mul i32 %268, 374761393
  %270 = add i32 %269, %263
  %271 = call i32 @llvm.fshl.i32(i32 %270, i32 %270, i32 11)
  %272 = mul i32 %271, -1640531535
  %273 = getelementptr inbounds nuw i8, ptr %265, i64 2
  %274 = load i8, ptr %266, align 1
  %275 = zext i8 %274 to i32
  %276 = mul i32 %275, 374761393
  %277 = add i32 %276, %272
  %278 = call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 11)
  %279 = mul i32 %278, -1640531535
  %280 = getelementptr inbounds nuw i8, ptr %265, i64 3
  %281 = load i8, ptr %273, align 1
  %282 = zext i8 %281 to i32
  %283 = mul i32 %282, 374761393
  %284 = add i32 %283, %279
  %285 = call i32 @llvm.fshl.i32(i32 %284, i32 %284, i32 11)
  %286 = mul i32 %285, -1640531535
  %287 = getelementptr inbounds nuw i8, ptr %265, i64 4
  %288 = load i8, ptr %280, align 1
  %289 = zext i8 %288 to i32
  %290 = mul i32 %289, 374761393
  %291 = add i32 %290, %286
  %292 = call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 11)
  %293 = mul i32 %292, -1640531535
  %294 = getelementptr inbounds nuw i8, ptr %265, i64 5
  %295 = load i8, ptr %287, align 1
  %296 = zext i8 %295 to i32
  %297 = mul i32 %296, 374761393
  %298 = add i32 %297, %293
  %299 = call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 11)
  %300 = mul i32 %299, -1640531535
  %301 = getelementptr inbounds nuw i8, ptr %265, i64 6
  %302 = load i8, ptr %294, align 1
  %303 = zext i8 %302 to i32
  %304 = mul i32 %303, 374761393
  %305 = add i32 %304, %300
  %306 = call i32 @llvm.fshl.i32(i32 %305, i32 %305, i32 11)
  %307 = mul i32 %306, -1640531535
  %308 = getelementptr inbounds nuw i8, ptr %265, i64 7
  %309 = load i8, ptr %301, align 1
  %310 = zext i8 %309 to i32
  %311 = mul i32 %310, 374761393
  %312 = add i32 %311, %307
  %313 = call i32 @llvm.fshl.i32(i32 %312, i32 %312, i32 11)
  %314 = mul i32 %313, -1640531535
  %315 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %316 = load i8, ptr %308, align 1
  %317 = zext i8 %316 to i32
  %318 = mul i32 %317, 374761393
  %319 = add i32 %318, %314
  %320 = call i32 @llvm.fshl.i32(i32 %319, i32 %319, i32 11)
  %321 = mul i32 %320, -1640531535
  %322 = add nsw i64 %264, -8
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %324, label %262, !llvm.loop !14

324:                                              ; preds = %202, %262, %179, %143
  %325 = phi i32 [ %182, %179 ], [ %144, %143 ], [ %203, %202 ], [ %321, %262 ]
  %326 = lshr i32 %325, 15
  %327 = xor i32 %326, %325
  %328 = mul i32 %327, -2048144777
  %329 = lshr i32 %328, 13
  %330 = xor i32 %329, %328
  %331 = mul i32 %330, -1028477379
  %332 = lshr i32 %331, 16
  %333 = xor i32 %332, %331
  %334 = icmp eq i32 %333, %82
  br i1 %334, label %339, label %335

335:                                              ; preds = %324
  %336 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.8, i32 noundef %74) #29
  %337 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.9, i32 noundef %333, i32 noundef %82) #29
  %338 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

339:                                              ; preds = %324
  %340 = add nsw i32 %74, 1
  store i32 %340, ptr @XSUM_checkResult32.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %76, i8 0, i64 48, i1 false)
  %341 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %342 = add i32 %80, 606290984
  store i32 %342, ptr %341, align 4
  %343 = add i32 %80, -2048144777
  %344 = getelementptr inbounds nuw i8, ptr %76, i64 12
  store i32 %343, ptr %344, align 4
  %345 = getelementptr inbounds nuw i8, ptr %76, i64 16
  store i32 %80, ptr %345, align 4
  %346 = add i32 %80, 1640531535
  %347 = getelementptr inbounds nuw i8, ptr %76, i64 20
  store i32 %346, ptr %347, align 4
  br i1 %83, label %348, label %350

348:                                              ; preds = %339
  %349 = getelementptr inbounds nuw i8, ptr %76, i64 4
  br label %427

350:                                              ; preds = %339
  store i32 %77, ptr %76, align 4
  %351 = icmp ugt i32 %77, 15
  %352 = zext i1 %351 to i32
  %353 = getelementptr inbounds nuw i8, ptr %76, i64 4
  store i32 %352, ptr %353, align 4
  %354 = getelementptr inbounds nuw i8, ptr %76, i64 40
  %355 = icmp ult i32 %77, 16
  br i1 %355, label %356, label %360

356:                                              ; preds = %350
  %357 = getelementptr inbounds nuw i8, ptr %76, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %357, ptr nonnull align 16 %7, i64 range(i64 0, 4294967296) %78, i1 false)
  %358 = load i32, ptr %354, align 4
  %359 = add i32 %358, %77
  br label %406

360:                                              ; preds = %350
  %361 = getelementptr inbounds nuw i8, ptr %7, i64 %78
  %362 = ptrtoint ptr %361 to i64
  %363 = getelementptr inbounds i8, ptr %361, i64 -15
  br label %364

364:                                              ; preds = %364, %360
  %365 = phi i32 [ %346, %360 ], [ %396, %364 ]
  %366 = phi i32 [ %80, %360 ], [ %389, %364 ]
  %367 = phi i32 [ %343, %360 ], [ %382, %364 ]
  %368 = phi i32 [ %342, %360 ], [ %375, %364 ]
  %369 = phi ptr [ %7, %360 ], [ %397, %364 ]
  %370 = load i32, ptr %369, align 1
  %371 = mul i32 %370, -2048144777
  %372 = add i32 %371, %368
  %373 = call i32 @llvm.fshl.i32(i32 %372, i32 %372, i32 13)
  %374 = mul i32 %373, -1640531535
  %375 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %374) #31, !srcloc !9
  store i32 %375, ptr %341, align 4, !alias.scope !15, !noalias !18
  %376 = getelementptr inbounds nuw i8, ptr %369, i64 4
  %377 = load i32, ptr %376, align 1
  %378 = mul i32 %377, -2048144777
  %379 = add i32 %378, %367
  %380 = call i32 @llvm.fshl.i32(i32 %379, i32 %379, i32 13)
  %381 = mul i32 %380, -1640531535
  %382 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %381) #31, !srcloc !9
  store i32 %382, ptr %344, align 4, !alias.scope !15, !noalias !18
  %383 = getelementptr inbounds nuw i8, ptr %369, i64 8
  %384 = load i32, ptr %383, align 1
  %385 = mul i32 %384, -2048144777
  %386 = add i32 %385, %366
  %387 = call i32 @llvm.fshl.i32(i32 %386, i32 %386, i32 13)
  %388 = mul i32 %387, -1640531535
  %389 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %388) #31, !srcloc !9
  store i32 %389, ptr %345, align 4, !alias.scope !15, !noalias !18
  %390 = getelementptr inbounds nuw i8, ptr %369, i64 12
  %391 = load i32, ptr %390, align 1
  %392 = mul i32 %391, -2048144777
  %393 = add i32 %392, %365
  %394 = call i32 @llvm.fshl.i32(i32 %393, i32 %393, i32 13)
  %395 = mul i32 %394, -1640531535
  %396 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %395) #31, !srcloc !9
  store i32 %396, ptr %347, align 4, !alias.scope !15, !noalias !18
  %397 = getelementptr inbounds nuw i8, ptr %369, i64 16
  %398 = icmp ult ptr %397, %363
  br i1 %398, label %364, label %399, !llvm.loop !10

399:                                              ; preds = %364
  %400 = icmp ult ptr %397, %361
  br i1 %400, label %401, label %412

401:                                              ; preds = %399
  %402 = getelementptr inbounds nuw i8, ptr %76, i64 24
  %403 = ptrtoint ptr %397 to i64
  %404 = sub i64 %362, %403
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %402, ptr nonnull align 1 %397, i64 %404, i1 false)
  %405 = trunc i64 %404 to i32
  br label %406

406:                                              ; preds = %401, %356
  %407 = phi i32 [ %359, %356 ], [ %405, %401 ]
  %408 = phi i32 [ %346, %356 ], [ %396, %401 ]
  %409 = phi i32 [ %80, %356 ], [ %389, %401 ]
  %410 = phi i32 [ %343, %356 ], [ %382, %401 ]
  %411 = phi i32 [ %342, %356 ], [ %375, %401 ]
  store i32 %407, ptr %354, align 4
  br label %412

412:                                              ; preds = %406, %399
  %413 = phi i32 [ 0, %399 ], [ %407, %406 ]
  %414 = phi i32 [ %396, %399 ], [ %408, %406 ]
  %415 = phi i32 [ %389, %399 ], [ %409, %406 ]
  %416 = phi i32 [ %382, %399 ], [ %410, %406 ]
  %417 = phi i32 [ %375, %399 ], [ %411, %406 ]
  %418 = getelementptr inbounds nuw i8, ptr %76, i64 4
  br i1 %351, label %419, label %427

419:                                              ; preds = %412
  %420 = call i32 @llvm.fshl.i32(i32 %417, i32 %417, i32 1)
  %421 = call i32 @llvm.fshl.i32(i32 %416, i32 %416, i32 7)
  %422 = add i32 %421, %420
  %423 = call i32 @llvm.fshl.i32(i32 %415, i32 %415, i32 12)
  %424 = add i32 %422, %423
  %425 = call i32 @llvm.fshl.i32(i32 %414, i32 %414, i32 18)
  %426 = add i32 %424, %425
  br label %433

427:                                              ; preds = %348, %412
  %428 = phi ptr [ %349, %348 ], [ %418, %412 ]
  %429 = phi i32 [ %80, %348 ], [ %415, %412 ]
  %430 = phi i32 [ 0, %348 ], [ %77, %412 ]
  %431 = phi i32 [ 0, %348 ], [ %413, %412 ]
  %432 = add i32 %429, 374761393
  br label %433

433:                                              ; preds = %427, %419
  %434 = phi ptr [ %418, %419 ], [ %428, %427 ]
  %435 = phi i32 [ %77, %419 ], [ %430, %427 ]
  %436 = phi i32 [ %413, %419 ], [ %431, %427 ]
  %437 = phi i32 [ %426, %419 ], [ %432, %427 ]
  %438 = add i32 %435, %437
  %439 = getelementptr inbounds nuw i8, ptr %76, i64 24
  %440 = getelementptr inbounds nuw i8, ptr %76, i64 40
  %441 = and i32 %436, 15
  %442 = zext nneg i32 %441 to i64
  %443 = icmp samesign ugt i32 %441, 3
  br i1 %443, label %444, label %473

444:                                              ; preds = %433
  %445 = add nsw i64 %442, -4
  %446 = lshr i64 %445, 2
  %447 = add nuw nsw i64 %446, 1
  %448 = and i64 %447, 7
  %449 = and i64 %445, 28
  %450 = icmp eq i64 %449, 28
  br i1 %450, label %465, label %451

451:                                              ; preds = %444, %451
  %452 = phi i32 [ %461, %451 ], [ %438, %444 ]
  %453 = phi i64 [ %462, %451 ], [ %442, %444 ]
  %454 = phi ptr [ %459, %451 ], [ %439, %444 ]
  %455 = phi i64 [ %463, %451 ], [ 0, %444 ]
  %456 = load i32, ptr %454, align 1
  %457 = mul i32 %456, -1028477379
  %458 = add i32 %457, %452
  %459 = getelementptr inbounds nuw i8, ptr %454, i64 4
  %460 = call i32 @llvm.fshl.i32(i32 %458, i32 %458, i32 17)
  %461 = mul i32 %460, 668265263
  %462 = add nsw i64 %453, -4
  %463 = add i64 %455, 1
  %464 = icmp eq i64 %463, %448
  br i1 %464, label %465, label %451, !llvm.loop !20

465:                                              ; preds = %451, %444
  %466 = phi i32 [ %438, %444 ], [ %461, %451 ]
  %467 = phi i64 [ %442, %444 ], [ %462, %451 ]
  %468 = phi ptr [ %439, %444 ], [ %459, %451 ]
  %469 = phi ptr [ poison, %444 ], [ %459, %451 ]
  %470 = phi i32 [ poison, %444 ], [ %461, %451 ]
  %471 = phi i64 [ poison, %444 ], [ %462, %451 ]
  %472 = icmp ult i64 %445, 28
  br i1 %472, label %473, label %502

473:                                              ; preds = %465, %502, %433
  %474 = phi ptr [ %439, %433 ], [ %469, %465 ], [ %551, %502 ]
  %475 = phi i64 [ %442, %433 ], [ %471, %465 ], [ %554, %502 ]
  %476 = phi i32 [ %438, %433 ], [ %470, %465 ], [ %553, %502 ]
  %477 = icmp eq i64 %475, 0
  br i1 %477, label %618, label %478

478:                                              ; preds = %473
  %479 = and i64 %475, 7
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %496, label %481

481:                                              ; preds = %478, %481
  %482 = phi i32 [ %492, %481 ], [ %476, %478 ]
  %483 = phi i64 [ %493, %481 ], [ %475, %478 ]
  %484 = phi ptr [ %486, %481 ], [ %474, %478 ]
  %485 = phi i64 [ %494, %481 ], [ 0, %478 ]
  %486 = getelementptr inbounds nuw i8, ptr %484, i64 1
  %487 = load i8, ptr %484, align 1
  %488 = zext i8 %487 to i32
  %489 = mul i32 %488, 374761393
  %490 = add i32 %489, %482
  %491 = call i32 @llvm.fshl.i32(i32 %490, i32 %490, i32 11)
  %492 = mul i32 %491, -1640531535
  %493 = add nsw i64 %483, -1
  %494 = add i64 %485, 1
  %495 = icmp eq i64 %494, %479
  br i1 %495, label %496, label %481, !llvm.loop !21

496:                                              ; preds = %481, %478
  %497 = phi i32 [ poison, %478 ], [ %492, %481 ]
  %498 = phi i32 [ %476, %478 ], [ %492, %481 ]
  %499 = phi i64 [ %475, %478 ], [ %493, %481 ]
  %500 = phi ptr [ %474, %478 ], [ %486, %481 ]
  %501 = icmp ult i64 %475, 8
  br i1 %501, label %618, label %556

502:                                              ; preds = %465, %502
  %503 = phi i32 [ %553, %502 ], [ %466, %465 ]
  %504 = phi i64 [ %554, %502 ], [ %467, %465 ]
  %505 = phi ptr [ %551, %502 ], [ %468, %465 ]
  %506 = load i32, ptr %505, align 1
  %507 = mul i32 %506, -1028477379
  %508 = add i32 %507, %503
  %509 = getelementptr inbounds nuw i8, ptr %505, i64 4
  %510 = call i32 @llvm.fshl.i32(i32 %508, i32 %508, i32 17)
  %511 = mul i32 %510, 668265263
  %512 = load i32, ptr %509, align 1
  %513 = mul i32 %512, -1028477379
  %514 = add i32 %513, %511
  %515 = getelementptr inbounds nuw i8, ptr %505, i64 8
  %516 = call i32 @llvm.fshl.i32(i32 %514, i32 %514, i32 17)
  %517 = mul i32 %516, 668265263
  %518 = load i32, ptr %515, align 1
  %519 = mul i32 %518, -1028477379
  %520 = add i32 %519, %517
  %521 = getelementptr inbounds nuw i8, ptr %505, i64 12
  %522 = call i32 @llvm.fshl.i32(i32 %520, i32 %520, i32 17)
  %523 = mul i32 %522, 668265263
  %524 = load i32, ptr %521, align 1
  %525 = mul i32 %524, -1028477379
  %526 = add i32 %525, %523
  %527 = getelementptr inbounds nuw i8, ptr %505, i64 16
  %528 = call i32 @llvm.fshl.i32(i32 %526, i32 %526, i32 17)
  %529 = mul i32 %528, 668265263
  %530 = load i32, ptr %527, align 1
  %531 = mul i32 %530, -1028477379
  %532 = add i32 %531, %529
  %533 = getelementptr inbounds nuw i8, ptr %505, i64 20
  %534 = call i32 @llvm.fshl.i32(i32 %532, i32 %532, i32 17)
  %535 = mul i32 %534, 668265263
  %536 = load i32, ptr %533, align 1
  %537 = mul i32 %536, -1028477379
  %538 = add i32 %537, %535
  %539 = getelementptr inbounds nuw i8, ptr %505, i64 24
  %540 = call i32 @llvm.fshl.i32(i32 %538, i32 %538, i32 17)
  %541 = mul i32 %540, 668265263
  %542 = load i32, ptr %539, align 1
  %543 = mul i32 %542, -1028477379
  %544 = add i32 %543, %541
  %545 = getelementptr inbounds nuw i8, ptr %505, i64 28
  %546 = call i32 @llvm.fshl.i32(i32 %544, i32 %544, i32 17)
  %547 = mul i32 %546, 668265263
  %548 = load i32, ptr %545, align 1
  %549 = mul i32 %548, -1028477379
  %550 = add i32 %549, %547
  %551 = getelementptr inbounds nuw i8, ptr %505, i64 32
  %552 = call i32 @llvm.fshl.i32(i32 %550, i32 %550, i32 17)
  %553 = mul i32 %552, 668265263
  %554 = add nsw i64 %504, -32
  %555 = icmp ugt i64 %554, 3
  br i1 %555, label %502, label %473, !llvm.loop !13

556:                                              ; preds = %496, %556
  %557 = phi i32 [ %615, %556 ], [ %498, %496 ]
  %558 = phi i64 [ %616, %556 ], [ %499, %496 ]
  %559 = phi ptr [ %609, %556 ], [ %500, %496 ]
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 1
  %561 = load i8, ptr %559, align 1
  %562 = zext i8 %561 to i32
  %563 = mul i32 %562, 374761393
  %564 = add i32 %563, %557
  %565 = call i32 @llvm.fshl.i32(i32 %564, i32 %564, i32 11)
  %566 = mul i32 %565, -1640531535
  %567 = getelementptr inbounds nuw i8, ptr %559, i64 2
  %568 = load i8, ptr %560, align 1
  %569 = zext i8 %568 to i32
  %570 = mul i32 %569, 374761393
  %571 = add i32 %570, %566
  %572 = call i32 @llvm.fshl.i32(i32 %571, i32 %571, i32 11)
  %573 = mul i32 %572, -1640531535
  %574 = getelementptr inbounds nuw i8, ptr %559, i64 3
  %575 = load i8, ptr %567, align 1
  %576 = zext i8 %575 to i32
  %577 = mul i32 %576, 374761393
  %578 = add i32 %577, %573
  %579 = call i32 @llvm.fshl.i32(i32 %578, i32 %578, i32 11)
  %580 = mul i32 %579, -1640531535
  %581 = getelementptr inbounds nuw i8, ptr %559, i64 4
  %582 = load i8, ptr %574, align 1
  %583 = zext i8 %582 to i32
  %584 = mul i32 %583, 374761393
  %585 = add i32 %584, %580
  %586 = call i32 @llvm.fshl.i32(i32 %585, i32 %585, i32 11)
  %587 = mul i32 %586, -1640531535
  %588 = getelementptr inbounds nuw i8, ptr %559, i64 5
  %589 = load i8, ptr %581, align 1
  %590 = zext i8 %589 to i32
  %591 = mul i32 %590, 374761393
  %592 = add i32 %591, %587
  %593 = call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 11)
  %594 = mul i32 %593, -1640531535
  %595 = getelementptr inbounds nuw i8, ptr %559, i64 6
  %596 = load i8, ptr %588, align 1
  %597 = zext i8 %596 to i32
  %598 = mul i32 %597, 374761393
  %599 = add i32 %598, %594
  %600 = call i32 @llvm.fshl.i32(i32 %599, i32 %599, i32 11)
  %601 = mul i32 %600, -1640531535
  %602 = getelementptr inbounds nuw i8, ptr %559, i64 7
  %603 = load i8, ptr %595, align 1
  %604 = zext i8 %603 to i32
  %605 = mul i32 %604, 374761393
  %606 = add i32 %605, %601
  %607 = call i32 @llvm.fshl.i32(i32 %606, i32 %606, i32 11)
  %608 = mul i32 %607, -1640531535
  %609 = getelementptr inbounds nuw i8, ptr %559, i64 8
  %610 = load i8, ptr %602, align 1
  %611 = zext i8 %610 to i32
  %612 = mul i32 %611, 374761393
  %613 = add i32 %612, %608
  %614 = call i32 @llvm.fshl.i32(i32 %613, i32 %613, i32 11)
  %615 = mul i32 %614, -1640531535
  %616 = add nsw i64 %558, -8
  %617 = icmp eq i64 %616, 0
  br i1 %617, label %618, label %556, !llvm.loop !14

618:                                              ; preds = %496, %556, %473
  %619 = phi i32 [ %476, %473 ], [ %497, %496 ], [ %615, %556 ]
  %620 = lshr i32 %619, 15
  %621 = xor i32 %620, %619
  %622 = mul i32 %621, -2048144777
  %623 = lshr i32 %622, 13
  %624 = xor i32 %623, %622
  %625 = mul i32 %624, -1028477379
  %626 = lshr i32 %625, 16
  %627 = xor i32 %626, %625
  %628 = icmp eq i32 %627, %82
  br i1 %628, label %633, label %629

629:                                              ; preds = %618
  %630 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.8, i32 noundef %340) #29
  %631 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.9, i32 noundef %627, i32 noundef %82) #29
  %632 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

633:                                              ; preds = %618
  %634 = add nsw i32 %74, 2
  store i32 %634, ptr @XSUM_checkResult32.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %76, i8 0, i64 48, i1 false)
  store i32 %342, ptr %341, align 4
  store i32 %343, ptr %344, align 4
  store i32 %80, ptr %345, align 4
  store i32 %346, ptr %347, align 4
  br i1 %83, label %763, label %635

635:                                              ; preds = %633
  %636 = getelementptr inbounds nuw i8, ptr %76, i64 28
  %637 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %638 = getelementptr inbounds nuw i8, ptr %76, i64 36
  br label %639

639:                                              ; preds = %635, %744
  %640 = phi i32 [ %346, %635 ], [ %745, %744 ]
  %641 = phi i32 [ %80, %635 ], [ %746, %744 ]
  %642 = phi i32 [ %343, %635 ], [ %747, %744 ]
  %643 = phi i32 [ %342, %635 ], [ %748, %744 ]
  %644 = phi i32 [ 0, %635 ], [ %749, %744 ]
  %645 = phi ptr [ %10, %635 ], [ %752, %744 ]
  %646 = phi i32 [ 0, %635 ], [ %653, %744 ]
  %647 = phi i32 [ 0, %635 ], [ %650, %744 ]
  %648 = phi i64 [ 0, %635 ], [ %750, %744 ]
  %649 = getelementptr inbounds nuw i8, ptr %84, i64 %648
  %650 = add i32 %647, 1
  store i32 %650, ptr %76, align 4
  %651 = icmp ugt i32 %650, 15
  %652 = zext i1 %651 to i32
  %653 = or i32 %646, %652
  store i32 %653, ptr %434, align 4
  %654 = zext nneg i32 %644 to i64
  %655 = icmp ult i32 %644, 16
  call void @llvm.assume(i1 %655)
  %656 = icmp eq i32 %644, 15
  br i1 %656, label %661, label %657

657:                                              ; preds = %639
  %658 = getelementptr inbounds nuw i8, ptr %439, i64 %654
  %659 = load i8, ptr %649, align 1
  store i8 %659, ptr %658, align 1
  %660 = add nuw nsw i32 %644, 1
  br label %738

661:                                              ; preds = %639
  %662 = sub nuw nsw i64 16, %654
  %663 = getelementptr inbounds nuw i8, ptr %649, i64 1
  %664 = getelementptr inbounds nuw i8, ptr %439, i64 %654
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %664, ptr nonnull align 1 %649, i64 %662, i1 false)
  %665 = load i32, ptr %440, align 4
  %666 = zext i32 %665 to i64
  %667 = sub nsw i64 16, %666
  %668 = getelementptr inbounds i8, ptr %649, i64 %667
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %669 = load i32, ptr %439, align 4, !noalias !22
  %670 = mul i32 %669, -2048144777
  %671 = add i32 %670, %643
  %672 = call i32 @llvm.fshl.i32(i32 %671, i32 %671, i32 13)
  %673 = mul i32 %672, -1640531535
  %674 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %673) #31, !srcloc !9
  store i32 %674, ptr %341, align 4, !alias.scope !22, !noalias !25
  %675 = load i32, ptr %636, align 4, !noalias !22
  %676 = mul i32 %675, -2048144777
  %677 = add i32 %676, %642
  %678 = call i32 @llvm.fshl.i32(i32 %677, i32 %677, i32 13)
  %679 = mul i32 %678, -1640531535
  %680 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %679) #31, !srcloc !9
  store i32 %680, ptr %344, align 4, !alias.scope !22, !noalias !25
  %681 = load i32, ptr %637, align 4, !noalias !22
  %682 = mul i32 %681, -2048144777
  %683 = add i32 %682, %641
  %684 = call i32 @llvm.fshl.i32(i32 %683, i32 %683, i32 13)
  %685 = mul i32 %684, -1640531535
  %686 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %685) #31, !srcloc !9
  store i32 %686, ptr %345, align 4, !alias.scope !22, !noalias !25
  %687 = load i32, ptr %638, align 4, !noalias !22
  %688 = mul i32 %687, -2048144777
  %689 = add i32 %688, %640
  %690 = call i32 @llvm.fshl.i32(i32 %689, i32 %689, i32 13)
  %691 = mul i32 %690, -1640531535
  %692 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %691) #31, !srcloc !9
  store i32 %692, ptr %347, align 4, !alias.scope !22, !noalias !25
  store i32 0, ptr %440, align 4
  %693 = icmp ult i64 %667, 2
  call void @llvm.assume(i1 %693)
  %694 = ptrtoint ptr %663 to i64
  %695 = add nsw i64 %666, -31
  %696 = icmp ult i64 %695, -16
  br i1 %696, label %697, label %727

697:                                              ; preds = %661
  %698 = sub nsw i64 0, %666
  %699 = load i32, ptr %668, align 1
  %700 = mul i32 %699, -2048144777
  %701 = add i32 %700, %674
  %702 = call i32 @llvm.fshl.i32(i32 %701, i32 %701, i32 13)
  %703 = mul i32 %702, -1640531535
  %704 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %703) #31, !srcloc !9
  store i32 %704, ptr %341, align 4, !alias.scope !27, !noalias !30
  %705 = getelementptr inbounds nuw i8, ptr %668, i64 4
  %706 = load i32, ptr %705, align 1
  %707 = mul i32 %706, -2048144777
  %708 = add i32 %707, %680
  %709 = call i32 @llvm.fshl.i32(i32 %708, i32 %708, i32 13)
  %710 = mul i32 %709, -1640531535
  %711 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %710) #31, !srcloc !9
  store i32 %711, ptr %344, align 4, !alias.scope !27, !noalias !30
  %712 = getelementptr inbounds nuw i8, ptr %668, i64 8
  %713 = load i32, ptr %712, align 1
  %714 = mul i32 %713, -2048144777
  %715 = add i32 %714, %686
  %716 = call i32 @llvm.fshl.i32(i32 %715, i32 %715, i32 13)
  %717 = mul i32 %716, -1640531535
  %718 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %717) #31, !srcloc !9
  store i32 %718, ptr %345, align 4, !alias.scope !27, !noalias !30
  %719 = getelementptr inbounds nuw i8, ptr %668, i64 12
  %720 = load i32, ptr %719, align 1
  %721 = mul i32 %720, -2048144777
  %722 = add i32 %721, %692
  %723 = call i32 @llvm.fshl.i32(i32 %722, i32 %722, i32 13)
  %724 = mul i32 %723, -1640531535
  %725 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %724) #31, !srcloc !9
  store i32 %725, ptr %347, align 4, !alias.scope !27, !noalias !30
  %726 = getelementptr i8, ptr %645, i64 %698
  br label %727

727:                                              ; preds = %697, %661
  %728 = phi i32 [ %692, %661 ], [ %725, %697 ]
  %729 = phi i32 [ %686, %661 ], [ %718, %697 ]
  %730 = phi i32 [ %680, %661 ], [ %711, %697 ]
  %731 = phi i32 [ %674, %661 ], [ %704, %697 ]
  %732 = phi ptr [ %668, %661 ], [ %726, %697 ]
  %733 = icmp ult ptr %732, %663
  br i1 %733, label %734, label %744

734:                                              ; preds = %727
  %735 = ptrtoint ptr %732 to i64
  %736 = sub i64 %694, %735
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %439, ptr align 1 %732, i64 %736, i1 false)
  %737 = trunc i64 %736 to i32
  br label %738

738:                                              ; preds = %734, %657
  %739 = phi i32 [ %660, %657 ], [ %737, %734 ]
  %740 = phi i32 [ %640, %657 ], [ %728, %734 ]
  %741 = phi i32 [ %641, %657 ], [ %729, %734 ]
  %742 = phi i32 [ %642, %657 ], [ %730, %734 ]
  %743 = phi i32 [ %643, %657 ], [ %731, %734 ]
  store i32 %739, ptr %440, align 4
  br label %744

744:                                              ; preds = %738, %727
  %745 = phi i32 [ %728, %727 ], [ %740, %738 ]
  %746 = phi i32 [ %729, %727 ], [ %741, %738 ]
  %747 = phi i32 [ %730, %727 ], [ %742, %738 ]
  %748 = phi i32 [ %731, %727 ], [ %743, %738 ]
  %749 = phi i32 [ 0, %727 ], [ %739, %738 ]
  %750 = add nuw nsw i64 %648, 1
  %751 = icmp eq i64 %750, %78
  %752 = getelementptr i8, ptr %645, i64 1
  br i1 %751, label %753, label %639, !llvm.loop !32

753:                                              ; preds = %744
  %754 = icmp eq i32 %653, 0
  br i1 %754, label %763, label %755

755:                                              ; preds = %753
  %756 = call i32 @llvm.fshl.i32(i32 %748, i32 %748, i32 1)
  %757 = call i32 @llvm.fshl.i32(i32 %747, i32 %747, i32 7)
  %758 = add i32 %757, %756
  %759 = call i32 @llvm.fshl.i32(i32 %746, i32 %746, i32 12)
  %760 = add i32 %758, %759
  %761 = call i32 @llvm.fshl.i32(i32 %745, i32 %745, i32 18)
  %762 = add i32 %760, %761
  br label %768

763:                                              ; preds = %753, %633
  %764 = phi i32 [ %749, %753 ], [ 0, %633 ]
  %765 = phi i32 [ %650, %753 ], [ 0, %633 ]
  %766 = phi i32 [ %746, %753 ], [ %80, %633 ]
  %767 = add i32 %766, 374761393
  br label %768

768:                                              ; preds = %763, %755
  %769 = phi i32 [ %749, %755 ], [ %764, %763 ]
  %770 = phi i32 [ %650, %755 ], [ %765, %763 ]
  %771 = phi i32 [ %762, %755 ], [ %767, %763 ]
  %772 = add i32 %770, %771
  %773 = and i32 %769, 15
  %774 = zext nneg i32 %773 to i64
  %775 = icmp samesign ugt i32 %773, 3
  br i1 %775, label %776, label %805

776:                                              ; preds = %768
  %777 = add nsw i64 %774, -4
  %778 = lshr i64 %777, 2
  %779 = add nuw nsw i64 %778, 1
  %780 = and i64 %779, 7
  %781 = and i64 %777, 28
  %782 = icmp eq i64 %781, 28
  br i1 %782, label %797, label %783

783:                                              ; preds = %776, %783
  %784 = phi i32 [ %793, %783 ], [ %772, %776 ]
  %785 = phi i64 [ %794, %783 ], [ %774, %776 ]
  %786 = phi ptr [ %791, %783 ], [ %439, %776 ]
  %787 = phi i64 [ %795, %783 ], [ 0, %776 ]
  %788 = load i32, ptr %786, align 1
  %789 = mul i32 %788, -1028477379
  %790 = add i32 %789, %784
  %791 = getelementptr inbounds nuw i8, ptr %786, i64 4
  %792 = call i32 @llvm.fshl.i32(i32 %790, i32 %790, i32 17)
  %793 = mul i32 %792, 668265263
  %794 = add nsw i64 %785, -4
  %795 = add i64 %787, 1
  %796 = icmp eq i64 %795, %780
  br i1 %796, label %797, label %783, !llvm.loop !33

797:                                              ; preds = %783, %776
  %798 = phi i32 [ %772, %776 ], [ %793, %783 ]
  %799 = phi i64 [ %774, %776 ], [ %794, %783 ]
  %800 = phi ptr [ %439, %776 ], [ %791, %783 ]
  %801 = phi ptr [ poison, %776 ], [ %791, %783 ]
  %802 = phi i32 [ poison, %776 ], [ %793, %783 ]
  %803 = phi i64 [ poison, %776 ], [ %794, %783 ]
  %804 = icmp ult i64 %777, 28
  br i1 %804, label %805, label %834

805:                                              ; preds = %797, %834, %768
  %806 = phi ptr [ %439, %768 ], [ %801, %797 ], [ %883, %834 ]
  %807 = phi i64 [ %774, %768 ], [ %803, %797 ], [ %886, %834 ]
  %808 = phi i32 [ %772, %768 ], [ %802, %797 ], [ %885, %834 ]
  %809 = icmp eq i64 %807, 0
  br i1 %809, label %950, label %810

810:                                              ; preds = %805
  %811 = and i64 %807, 7
  %812 = icmp eq i64 %811, 0
  br i1 %812, label %828, label %813

813:                                              ; preds = %810, %813
  %814 = phi i32 [ %824, %813 ], [ %808, %810 ]
  %815 = phi i64 [ %825, %813 ], [ %807, %810 ]
  %816 = phi ptr [ %818, %813 ], [ %806, %810 ]
  %817 = phi i64 [ %826, %813 ], [ 0, %810 ]
  %818 = getelementptr inbounds nuw i8, ptr %816, i64 1
  %819 = load i8, ptr %816, align 1
  %820 = zext i8 %819 to i32
  %821 = mul i32 %820, 374761393
  %822 = add i32 %821, %814
  %823 = call i32 @llvm.fshl.i32(i32 %822, i32 %822, i32 11)
  %824 = mul i32 %823, -1640531535
  %825 = add nsw i64 %815, -1
  %826 = add i64 %817, 1
  %827 = icmp eq i64 %826, %811
  br i1 %827, label %828, label %813, !llvm.loop !34

828:                                              ; preds = %813, %810
  %829 = phi i32 [ poison, %810 ], [ %824, %813 ]
  %830 = phi i32 [ %808, %810 ], [ %824, %813 ]
  %831 = phi i64 [ %807, %810 ], [ %825, %813 ]
  %832 = phi ptr [ %806, %810 ], [ %818, %813 ]
  %833 = icmp ult i64 %807, 8
  br i1 %833, label %950, label %888

834:                                              ; preds = %797, %834
  %835 = phi i32 [ %885, %834 ], [ %798, %797 ]
  %836 = phi i64 [ %886, %834 ], [ %799, %797 ]
  %837 = phi ptr [ %883, %834 ], [ %800, %797 ]
  %838 = load i32, ptr %837, align 1
  %839 = mul i32 %838, -1028477379
  %840 = add i32 %839, %835
  %841 = getelementptr inbounds nuw i8, ptr %837, i64 4
  %842 = call i32 @llvm.fshl.i32(i32 %840, i32 %840, i32 17)
  %843 = mul i32 %842, 668265263
  %844 = load i32, ptr %841, align 1
  %845 = mul i32 %844, -1028477379
  %846 = add i32 %845, %843
  %847 = getelementptr inbounds nuw i8, ptr %837, i64 8
  %848 = call i32 @llvm.fshl.i32(i32 %846, i32 %846, i32 17)
  %849 = mul i32 %848, 668265263
  %850 = load i32, ptr %847, align 1
  %851 = mul i32 %850, -1028477379
  %852 = add i32 %851, %849
  %853 = getelementptr inbounds nuw i8, ptr %837, i64 12
  %854 = call i32 @llvm.fshl.i32(i32 %852, i32 %852, i32 17)
  %855 = mul i32 %854, 668265263
  %856 = load i32, ptr %853, align 1
  %857 = mul i32 %856, -1028477379
  %858 = add i32 %857, %855
  %859 = getelementptr inbounds nuw i8, ptr %837, i64 16
  %860 = call i32 @llvm.fshl.i32(i32 %858, i32 %858, i32 17)
  %861 = mul i32 %860, 668265263
  %862 = load i32, ptr %859, align 1
  %863 = mul i32 %862, -1028477379
  %864 = add i32 %863, %861
  %865 = getelementptr inbounds nuw i8, ptr %837, i64 20
  %866 = call i32 @llvm.fshl.i32(i32 %864, i32 %864, i32 17)
  %867 = mul i32 %866, 668265263
  %868 = load i32, ptr %865, align 1
  %869 = mul i32 %868, -1028477379
  %870 = add i32 %869, %867
  %871 = getelementptr inbounds nuw i8, ptr %837, i64 24
  %872 = call i32 @llvm.fshl.i32(i32 %870, i32 %870, i32 17)
  %873 = mul i32 %872, 668265263
  %874 = load i32, ptr %871, align 1
  %875 = mul i32 %874, -1028477379
  %876 = add i32 %875, %873
  %877 = getelementptr inbounds nuw i8, ptr %837, i64 28
  %878 = call i32 @llvm.fshl.i32(i32 %876, i32 %876, i32 17)
  %879 = mul i32 %878, 668265263
  %880 = load i32, ptr %877, align 1
  %881 = mul i32 %880, -1028477379
  %882 = add i32 %881, %879
  %883 = getelementptr inbounds nuw i8, ptr %837, i64 32
  %884 = call i32 @llvm.fshl.i32(i32 %882, i32 %882, i32 17)
  %885 = mul i32 %884, 668265263
  %886 = add nsw i64 %836, -32
  %887 = icmp ugt i64 %886, 3
  br i1 %887, label %834, label %805, !llvm.loop !13

888:                                              ; preds = %828, %888
  %889 = phi i32 [ %947, %888 ], [ %830, %828 ]
  %890 = phi i64 [ %948, %888 ], [ %831, %828 ]
  %891 = phi ptr [ %941, %888 ], [ %832, %828 ]
  %892 = getelementptr inbounds nuw i8, ptr %891, i64 1
  %893 = load i8, ptr %891, align 1
  %894 = zext i8 %893 to i32
  %895 = mul i32 %894, 374761393
  %896 = add i32 %895, %889
  %897 = call i32 @llvm.fshl.i32(i32 %896, i32 %896, i32 11)
  %898 = mul i32 %897, -1640531535
  %899 = getelementptr inbounds nuw i8, ptr %891, i64 2
  %900 = load i8, ptr %892, align 1
  %901 = zext i8 %900 to i32
  %902 = mul i32 %901, 374761393
  %903 = add i32 %902, %898
  %904 = call i32 @llvm.fshl.i32(i32 %903, i32 %903, i32 11)
  %905 = mul i32 %904, -1640531535
  %906 = getelementptr inbounds nuw i8, ptr %891, i64 3
  %907 = load i8, ptr %899, align 1
  %908 = zext i8 %907 to i32
  %909 = mul i32 %908, 374761393
  %910 = add i32 %909, %905
  %911 = call i32 @llvm.fshl.i32(i32 %910, i32 %910, i32 11)
  %912 = mul i32 %911, -1640531535
  %913 = getelementptr inbounds nuw i8, ptr %891, i64 4
  %914 = load i8, ptr %906, align 1
  %915 = zext i8 %914 to i32
  %916 = mul i32 %915, 374761393
  %917 = add i32 %916, %912
  %918 = call i32 @llvm.fshl.i32(i32 %917, i32 %917, i32 11)
  %919 = mul i32 %918, -1640531535
  %920 = getelementptr inbounds nuw i8, ptr %891, i64 5
  %921 = load i8, ptr %913, align 1
  %922 = zext i8 %921 to i32
  %923 = mul i32 %922, 374761393
  %924 = add i32 %923, %919
  %925 = call i32 @llvm.fshl.i32(i32 %924, i32 %924, i32 11)
  %926 = mul i32 %925, -1640531535
  %927 = getelementptr inbounds nuw i8, ptr %891, i64 6
  %928 = load i8, ptr %920, align 1
  %929 = zext i8 %928 to i32
  %930 = mul i32 %929, 374761393
  %931 = add i32 %930, %926
  %932 = call i32 @llvm.fshl.i32(i32 %931, i32 %931, i32 11)
  %933 = mul i32 %932, -1640531535
  %934 = getelementptr inbounds nuw i8, ptr %891, i64 7
  %935 = load i8, ptr %927, align 1
  %936 = zext i8 %935 to i32
  %937 = mul i32 %936, 374761393
  %938 = add i32 %937, %933
  %939 = call i32 @llvm.fshl.i32(i32 %938, i32 %938, i32 11)
  %940 = mul i32 %939, -1640531535
  %941 = getelementptr inbounds nuw i8, ptr %891, i64 8
  %942 = load i8, ptr %934, align 1
  %943 = zext i8 %942 to i32
  %944 = mul i32 %943, 374761393
  %945 = add i32 %944, %940
  %946 = call i32 @llvm.fshl.i32(i32 %945, i32 %945, i32 11)
  %947 = mul i32 %946, -1640531535
  %948 = add nsw i64 %890, -8
  %949 = icmp eq i64 %948, 0
  br i1 %949, label %950, label %888, !llvm.loop !14

950:                                              ; preds = %828, %888, %805
  %951 = phi i32 [ %808, %805 ], [ %829, %828 ], [ %947, %888 ]
  %952 = lshr i32 %951, 15
  %953 = xor i32 %952, %951
  %954 = mul i32 %953, -2048144777
  %955 = lshr i32 %954, 13
  %956 = xor i32 %955, %954
  %957 = mul i32 %956, -1028477379
  %958 = lshr i32 %957, 16
  %959 = xor i32 %958, %957
  %960 = icmp eq i32 %959, %82
  br i1 %960, label %965, label %961

961:                                              ; preds = %950
  %962 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.8, i32 noundef %634) #29
  %963 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.9, i32 noundef %959, i32 noundef %82) #29
  %964 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

965:                                              ; preds = %950
  %966 = add nsw i32 %74, 3
  store i32 %966, ptr @XSUM_checkResult32.nbTests, align 4
  call void @free(ptr noundef nonnull %76) #29
  %967 = add nuw nsw i64 %73, 1
  %968 = icmp eq i64 %967, 8
  br i1 %968, label %68, label %72, !llvm.loop !35

969:                                              ; preds = %1475
  %970 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %971 = getelementptr inbounds nuw i8, ptr %5, i64 9
  %972 = getelementptr inbounds nuw i8, ptr %5, i64 17
  %973 = getelementptr inbounds nuw i8, ptr %5, i64 25
  %974 = getelementptr inbounds nuw i8, ptr %5, i64 33
  %975 = getelementptr inbounds nuw i8, ptr %5, i64 41
  %976 = getelementptr inbounds nuw i8, ptr %5, i64 49
  %977 = getelementptr inbounds nuw i8, ptr %5, i64 57
  %978 = getelementptr inbounds nuw i8, ptr %5, i64 65
  %979 = getelementptr inbounds nuw i8, ptr %5, i64 73
  %980 = getelementptr inbounds nuw i8, ptr %5, i64 81
  %981 = getelementptr inbounds nuw i8, ptr %5, i64 89
  %982 = getelementptr inbounds nuw i8, ptr %5, i64 97
  %983 = getelementptr inbounds nuw i8, ptr %5, i64 105
  %984 = getelementptr inbounds nuw i8, ptr %5, i64 113
  %985 = getelementptr inbounds nuw i8, ptr %5, i64 121
  %986 = getelementptr inbounds nuw i8, ptr %5, i64 129
  %987 = getelementptr inbounds nuw i8, ptr %5, i64 137
  %988 = getelementptr inbounds nuw i8, ptr %5, i64 145
  %989 = getelementptr inbounds nuw i8, ptr %5, i64 153
  %990 = getelementptr inbounds nuw i8, ptr %5, i64 161
  %991 = getelementptr inbounds nuw i8, ptr %5, i64 169
  %992 = getelementptr inbounds nuw i8, ptr %5, i64 177
  %993 = getelementptr inbounds nuw i8, ptr %5, i64 185
  %994 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %995 = getelementptr inbounds nuw i8, ptr %6, i64 9
  %996 = getelementptr inbounds nuw i8, ptr %6, i64 17
  %997 = getelementptr inbounds nuw i8, ptr %6, i64 25
  %998 = getelementptr inbounds nuw i8, ptr %6, i64 33
  %999 = getelementptr inbounds nuw i8, ptr %6, i64 41
  %1000 = getelementptr inbounds nuw i8, ptr %6, i64 49
  %1001 = getelementptr inbounds nuw i8, ptr %6, i64 57
  %1002 = getelementptr inbounds nuw i8, ptr %6, i64 65
  %1003 = getelementptr inbounds nuw i8, ptr %6, i64 73
  %1004 = getelementptr inbounds nuw i8, ptr %6, i64 81
  %1005 = getelementptr inbounds nuw i8, ptr %6, i64 89
  %1006 = getelementptr inbounds nuw i8, ptr %6, i64 97
  %1007 = getelementptr inbounds nuw i8, ptr %6, i64 105
  %1008 = getelementptr inbounds nuw i8, ptr %6, i64 113
  %1009 = getelementptr inbounds nuw i8, ptr %6, i64 121
  %1010 = getelementptr inbounds nuw i8, ptr %6, i64 129
  %1011 = getelementptr inbounds nuw i8, ptr %6, i64 137
  %1012 = getelementptr inbounds nuw i8, ptr %6, i64 145
  %1013 = getelementptr inbounds nuw i8, ptr %6, i64 153
  %1014 = getelementptr inbounds nuw i8, ptr %6, i64 161
  %1015 = getelementptr inbounds nuw i8, ptr %6, i64 169
  %1016 = getelementptr inbounds nuw i8, ptr %6, i64 177
  %1017 = getelementptr inbounds nuw i8, ptr %6, i64 185
  br label %1482

1018:                                             ; preds = %68, %1475
  %1019 = phi i64 [ 0, %68 ], [ %1477, %1475 ]
  %1020 = phi i32 [ %70, %68 ], [ %1476, %1475 ]
  %1021 = getelementptr inbounds nuw [9 x %struct.XSUM_testdata64_t], ptr @XSUM_XXH64_testdata, i64 0, i64 %1019
  %1022 = call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #30
  %1023 = load i32, ptr %1021, align 8
  %1024 = zext i32 %1023 to i64
  %1025 = getelementptr inbounds nuw i8, ptr %1021, i64 8
  %1026 = load i64, ptr %1025, align 8
  %1027 = getelementptr inbounds nuw i8, ptr %1021, i64 16
  %1028 = load i64, ptr %1027, align 8
  %1029 = icmp eq i32 %1023, 0
  %1030 = select i1 %1029, ptr null, ptr %7
  %1031 = icmp eq ptr %1022, null
  br i1 %1031, label %1032, label %1033

1032:                                             ; preds = %1018
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 315, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH64) #28
  unreachable

1033:                                             ; preds = %1018
  br i1 %1029, label %1116, label %1034

1034:                                             ; preds = %1033
  %1035 = icmp ugt i32 %1023, 31
  br i1 %1035, label %1036, label %1113

1036:                                             ; preds = %1034
  %1037 = add i64 %1026, 6983438078262162902
  %1038 = add i64 %1026, -4417276706812531889
  %1039 = add i64 %1026, 7046029288634856825
  %1040 = getelementptr i8, ptr %69, i64 %1024
  br label %1041

1041:                                             ; preds = %1041, %1036
  %1042 = phi i64 [ %1039, %1036 ], [ %1073, %1041 ]
  %1043 = phi i64 [ %1026, %1036 ], [ %1066, %1041 ]
  %1044 = phi i64 [ %1038, %1036 ], [ %1059, %1041 ]
  %1045 = phi i64 [ %1037, %1036 ], [ %1052, %1041 ]
  %1046 = phi ptr [ %7, %1036 ], [ %1074, %1041 ]
  %1047 = load i64, ptr %1046, align 1
  %1048 = mul i64 %1047, -4417276706812531889
  %1049 = add i64 %1048, %1045
  %1050 = call i64 @llvm.fshl.i64(i64 %1049, i64 %1049, i64 31)
  %1051 = mul i64 %1050, -7046029288634856825
  %1052 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1051) #31, !srcloc !36
  %1053 = getelementptr inbounds nuw i8, ptr %1046, i64 8
  %1054 = load i64, ptr %1053, align 1
  %1055 = mul i64 %1054, -4417276706812531889
  %1056 = add i64 %1055, %1044
  %1057 = call i64 @llvm.fshl.i64(i64 %1056, i64 %1056, i64 31)
  %1058 = mul i64 %1057, -7046029288634856825
  %1059 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1058) #31, !srcloc !36
  %1060 = getelementptr inbounds nuw i8, ptr %1046, i64 16
  %1061 = load i64, ptr %1060, align 1
  %1062 = mul i64 %1061, -4417276706812531889
  %1063 = add i64 %1062, %1043
  %1064 = call i64 @llvm.fshl.i64(i64 %1063, i64 %1063, i64 31)
  %1065 = mul i64 %1064, -7046029288634856825
  %1066 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1065) #31, !srcloc !36
  %1067 = getelementptr inbounds nuw i8, ptr %1046, i64 24
  %1068 = load i64, ptr %1067, align 1
  %1069 = mul i64 %1068, -4417276706812531889
  %1070 = add i64 %1069, %1042
  %1071 = call i64 @llvm.fshl.i64(i64 %1070, i64 %1070, i64 31)
  %1072 = mul i64 %1071, -7046029288634856825
  %1073 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1072) #31, !srcloc !36
  %1074 = getelementptr inbounds nuw i8, ptr %1046, i64 32
  %1075 = icmp ult ptr %1074, %1040
  br i1 %1075, label %1041, label %1076, !llvm.loop !37

1076:                                             ; preds = %1041
  %1077 = call i64 @llvm.fshl.i64(i64 %1052, i64 %1052, i64 1)
  %1078 = call i64 @llvm.fshl.i64(i64 %1059, i64 %1059, i64 7)
  %1079 = add i64 %1078, %1077
  %1080 = call i64 @llvm.fshl.i64(i64 %1066, i64 %1066, i64 12)
  %1081 = add i64 %1079, %1080
  %1082 = call i64 @llvm.fshl.i64(i64 %1073, i64 %1073, i64 18)
  %1083 = add i64 %1081, %1082
  %1084 = mul i64 %1052, -4417276706812531889
  %1085 = call i64 @llvm.fshl.i64(i64 %1084, i64 %1084, i64 31)
  %1086 = mul i64 %1085, -7046029288634856825
  %1087 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1086) #31, !srcloc !36
  %1088 = xor i64 %1087, %1083
  %1089 = mul i64 %1088, -7046029288634856825
  %1090 = add i64 %1089, -8796714831421723037
  %1091 = mul i64 %1059, -4417276706812531889
  %1092 = call i64 @llvm.fshl.i64(i64 %1091, i64 %1091, i64 31)
  %1093 = mul i64 %1092, -7046029288634856825
  %1094 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1093) #31, !srcloc !36
  %1095 = xor i64 %1090, %1094
  %1096 = mul i64 %1095, -7046029288634856825
  %1097 = add i64 %1096, -8796714831421723037
  %1098 = mul i64 %1066, -4417276706812531889
  %1099 = call i64 @llvm.fshl.i64(i64 %1098, i64 %1098, i64 31)
  %1100 = mul i64 %1099, -7046029288634856825
  %1101 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1100) #31, !srcloc !36
  %1102 = xor i64 %1097, %1101
  %1103 = mul i64 %1102, -7046029288634856825
  %1104 = add i64 %1103, -8796714831421723037
  %1105 = mul i64 %1073, -4417276706812531889
  %1106 = call i64 @llvm.fshl.i64(i64 %1105, i64 %1105, i64 31)
  %1107 = mul i64 %1106, -7046029288634856825
  %1108 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1107) #31, !srcloc !36
  %1109 = xor i64 %1104, %1108
  %1110 = mul i64 %1109, -7046029288634856825
  %1111 = add nuw nsw i64 %1024, -8796714831421723037
  %1112 = add i64 %1111, %1110
  br label %1118

1113:                                             ; preds = %1034
  %1114 = add i64 %1026, 2870177450012600261
  %1115 = add i64 %1114, %1024
  br label %1118

1116:                                             ; preds = %1033
  %1117 = add i64 %1026, 2870177450012600261
  br label %1245

1118:                                             ; preds = %1113, %1076
  %1119 = phi i64 [ %1112, %1076 ], [ %1115, %1113 ]
  %1120 = phi ptr [ %1074, %1076 ], [ %7, %1113 ]
  %1121 = and i64 %1024, 31
  %1122 = icmp samesign ugt i64 %1121, 7
  br i1 %1122, label %1123, label %1139

1123:                                             ; preds = %1118, %1123
  %1124 = phi i64 [ %1136, %1123 ], [ %1119, %1118 ]
  %1125 = phi ptr [ %1132, %1123 ], [ %1120, %1118 ]
  %1126 = phi i64 [ %1137, %1123 ], [ %1121, %1118 ]
  %1127 = load i64, ptr %1125, align 1
  %1128 = mul i64 %1127, -4417276706812531889
  %1129 = call i64 @llvm.fshl.i64(i64 %1128, i64 %1128, i64 31)
  %1130 = mul i64 %1129, -7046029288634856825
  %1131 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1130) #31, !srcloc !36
  %1132 = getelementptr inbounds nuw i8, ptr %1125, i64 8
  %1133 = xor i64 %1131, %1124
  %1134 = call i64 @llvm.fshl.i64(i64 %1133, i64 %1133, i64 27)
  %1135 = mul i64 %1134, -7046029288634856825
  %1136 = add i64 %1135, -8796714831421723037
  %1137 = add nsw i64 %1126, -8
  %1138 = icmp ugt i64 %1137, 7
  br i1 %1138, label %1123, label %1139, !llvm.loop !38

1139:                                             ; preds = %1123, %1118
  %1140 = phi i64 [ %1121, %1118 ], [ %1137, %1123 ]
  %1141 = phi ptr [ %1120, %1118 ], [ %1132, %1123 ]
  %1142 = phi i64 [ %1119, %1118 ], [ %1136, %1123 ]
  %1143 = icmp samesign ugt i64 %1140, 3
  br i1 %1143, label %1144, label %1154

1144:                                             ; preds = %1139
  %1145 = load i32, ptr %1141, align 1
  %1146 = zext i32 %1145 to i64
  %1147 = mul i64 %1146, -7046029288634856825
  %1148 = xor i64 %1147, %1142
  %1149 = getelementptr inbounds nuw i8, ptr %1141, i64 4
  %1150 = call i64 @llvm.fshl.i64(i64 %1148, i64 %1148, i64 23)
  %1151 = mul i64 %1150, -4417276706812531889
  %1152 = add i64 %1151, 1609587929392839161
  %1153 = add nsw i64 %1140, -4
  br label %1154

1154:                                             ; preds = %1144, %1139
  %1155 = phi i64 [ %1153, %1144 ], [ %1140, %1139 ]
  %1156 = phi ptr [ %1149, %1144 ], [ %1141, %1139 ]
  %1157 = phi i64 [ %1152, %1144 ], [ %1142, %1139 ]
  %1158 = icmp eq i64 %1155, 0
  br i1 %1158, label %1245, label %1159

1159:                                             ; preds = %1154
  %1160 = and i64 %1155, 7
  %1161 = icmp eq i64 %1160, 0
  br i1 %1161, label %1177, label %1162

1162:                                             ; preds = %1159, %1162
  %1163 = phi i64 [ %1173, %1162 ], [ %1157, %1159 ]
  %1164 = phi ptr [ %1167, %1162 ], [ %1156, %1159 ]
  %1165 = phi i64 [ %1174, %1162 ], [ %1155, %1159 ]
  %1166 = phi i64 [ %1175, %1162 ], [ 0, %1159 ]
  %1167 = getelementptr inbounds nuw i8, ptr %1164, i64 1
  %1168 = load i8, ptr %1164, align 1
  %1169 = zext i8 %1168 to i64
  %1170 = mul i64 %1169, 2870177450012600261
  %1171 = xor i64 %1170, %1163
  %1172 = call i64 @llvm.fshl.i64(i64 %1171, i64 %1171, i64 11)
  %1173 = mul i64 %1172, -7046029288634856825
  %1174 = add nsw i64 %1165, -1
  %1175 = add i64 %1166, 1
  %1176 = icmp eq i64 %1175, %1160
  br i1 %1176, label %1177, label %1162, !llvm.loop !39

1177:                                             ; preds = %1162, %1159
  %1178 = phi i64 [ poison, %1159 ], [ %1173, %1162 ]
  %1179 = phi i64 [ %1157, %1159 ], [ %1173, %1162 ]
  %1180 = phi ptr [ %1156, %1159 ], [ %1167, %1162 ]
  %1181 = phi i64 [ %1155, %1159 ], [ %1174, %1162 ]
  %1182 = icmp ult i64 %1155, 8
  br i1 %1182, label %1245, label %1183

1183:                                             ; preds = %1177, %1183
  %1184 = phi i64 [ %1242, %1183 ], [ %1179, %1177 ]
  %1185 = phi ptr [ %1236, %1183 ], [ %1180, %1177 ]
  %1186 = phi i64 [ %1243, %1183 ], [ %1181, %1177 ]
  %1187 = getelementptr inbounds nuw i8, ptr %1185, i64 1
  %1188 = load i8, ptr %1185, align 1
  %1189 = zext i8 %1188 to i64
  %1190 = mul i64 %1189, 2870177450012600261
  %1191 = xor i64 %1190, %1184
  %1192 = call i64 @llvm.fshl.i64(i64 %1191, i64 %1191, i64 11)
  %1193 = mul i64 %1192, -7046029288634856825
  %1194 = getelementptr inbounds nuw i8, ptr %1185, i64 2
  %1195 = load i8, ptr %1187, align 1
  %1196 = zext i8 %1195 to i64
  %1197 = mul i64 %1196, 2870177450012600261
  %1198 = xor i64 %1197, %1193
  %1199 = call i64 @llvm.fshl.i64(i64 %1198, i64 %1198, i64 11)
  %1200 = mul i64 %1199, -7046029288634856825
  %1201 = getelementptr inbounds nuw i8, ptr %1185, i64 3
  %1202 = load i8, ptr %1194, align 1
  %1203 = zext i8 %1202 to i64
  %1204 = mul i64 %1203, 2870177450012600261
  %1205 = xor i64 %1204, %1200
  %1206 = call i64 @llvm.fshl.i64(i64 %1205, i64 %1205, i64 11)
  %1207 = mul i64 %1206, -7046029288634856825
  %1208 = getelementptr inbounds nuw i8, ptr %1185, i64 4
  %1209 = load i8, ptr %1201, align 1
  %1210 = zext i8 %1209 to i64
  %1211 = mul i64 %1210, 2870177450012600261
  %1212 = xor i64 %1211, %1207
  %1213 = call i64 @llvm.fshl.i64(i64 %1212, i64 %1212, i64 11)
  %1214 = mul i64 %1213, -7046029288634856825
  %1215 = getelementptr inbounds nuw i8, ptr %1185, i64 5
  %1216 = load i8, ptr %1208, align 1
  %1217 = zext i8 %1216 to i64
  %1218 = mul i64 %1217, 2870177450012600261
  %1219 = xor i64 %1218, %1214
  %1220 = call i64 @llvm.fshl.i64(i64 %1219, i64 %1219, i64 11)
  %1221 = mul i64 %1220, -7046029288634856825
  %1222 = getelementptr inbounds nuw i8, ptr %1185, i64 6
  %1223 = load i8, ptr %1215, align 1
  %1224 = zext i8 %1223 to i64
  %1225 = mul i64 %1224, 2870177450012600261
  %1226 = xor i64 %1225, %1221
  %1227 = call i64 @llvm.fshl.i64(i64 %1226, i64 %1226, i64 11)
  %1228 = mul i64 %1227, -7046029288634856825
  %1229 = getelementptr inbounds nuw i8, ptr %1185, i64 7
  %1230 = load i8, ptr %1222, align 1
  %1231 = zext i8 %1230 to i64
  %1232 = mul i64 %1231, 2870177450012600261
  %1233 = xor i64 %1232, %1228
  %1234 = call i64 @llvm.fshl.i64(i64 %1233, i64 %1233, i64 11)
  %1235 = mul i64 %1234, -7046029288634856825
  %1236 = getelementptr inbounds nuw i8, ptr %1185, i64 8
  %1237 = load i8, ptr %1229, align 1
  %1238 = zext i8 %1237 to i64
  %1239 = mul i64 %1238, 2870177450012600261
  %1240 = xor i64 %1239, %1235
  %1241 = call i64 @llvm.fshl.i64(i64 %1240, i64 %1240, i64 11)
  %1242 = mul i64 %1241, -7046029288634856825
  %1243 = add nsw i64 %1186, -8
  %1244 = icmp eq i64 %1243, 0
  br i1 %1244, label %1245, label %1183, !llvm.loop !40

1245:                                             ; preds = %1177, %1183, %1154, %1116
  %1246 = phi i64 [ %1157, %1154 ], [ %1117, %1116 ], [ %1178, %1177 ], [ %1242, %1183 ]
  %1247 = lshr i64 %1246, 33
  %1248 = xor i64 %1247, %1246
  %1249 = mul i64 %1248, -4417276706812531889
  %1250 = lshr i64 %1249, 29
  %1251 = xor i64 %1250, %1249
  %1252 = mul i64 %1251, 1609587929392839161
  %1253 = lshr i64 %1252, 32
  %1254 = xor i64 %1253, %1252
  %1255 = icmp eq i64 %1254, %1028
  br i1 %1255, label %1265, label %1256

1256:                                             ; preds = %1245
  %1257 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1020) #29
  %1258 = trunc nuw i64 %1253 to i32
  %1259 = trunc i64 %1254 to i32
  %1260 = lshr i64 %1028, 32
  %1261 = trunc nuw i64 %1260 to i32
  %1262 = trunc i64 %1028 to i32
  %1263 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1258, i32 noundef %1259, i32 noundef %1261, i32 noundef %1262) #29
  %1264 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1265:                                             ; preds = %1245
  %1266 = add nsw i32 %1020, 1
  store i32 %1266, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1022, i8 0, i64 88, i1 false)
  %1267 = getelementptr inbounds nuw i8, ptr %1022, i64 8
  %1268 = add i64 %1026, 6983438078262162902
  store i64 %1268, ptr %1267, align 8
  %1269 = add i64 %1026, -4417276706812531889
  %1270 = getelementptr inbounds nuw i8, ptr %1022, i64 16
  store i64 %1269, ptr %1270, align 8
  %1271 = getelementptr inbounds nuw i8, ptr %1022, i64 24
  store i64 %1026, ptr %1271, align 8
  %1272 = add i64 %1026, 7046029288634856825
  %1273 = getelementptr inbounds nuw i8, ptr %1022, i64 32
  store i64 %1272, ptr %1273, align 8
  br i1 %1029, label %1329, label %1274

1274:                                             ; preds = %1265
  store i64 %1024, ptr %1022, align 8
  %1275 = getelementptr inbounds nuw i8, ptr %1022, i64 72
  %1276 = icmp ult i32 %1023, 32
  br i1 %1276, label %1277, label %1281

1277:                                             ; preds = %1274
  %1278 = getelementptr inbounds nuw i8, ptr %1022, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1278, ptr nonnull align 16 %7, i64 range(i64 0, 4294967296) %1024, i1 false)
  %1279 = load i32, ptr %1275, align 8
  %1280 = add i32 %1279, %1023
  br label %1327

1281:                                             ; preds = %1274
  %1282 = getelementptr inbounds nuw i8, ptr %7, i64 %1024
  %1283 = ptrtoint ptr %1282 to i64
  %1284 = getelementptr inbounds i8, ptr %1282, i64 -31
  br label %1285

1285:                                             ; preds = %1285, %1281
  %1286 = phi i64 [ %1272, %1281 ], [ %1317, %1285 ]
  %1287 = phi i64 [ %1026, %1281 ], [ %1310, %1285 ]
  %1288 = phi i64 [ %1269, %1281 ], [ %1303, %1285 ]
  %1289 = phi i64 [ %1268, %1281 ], [ %1296, %1285 ]
  %1290 = phi ptr [ %7, %1281 ], [ %1318, %1285 ]
  %1291 = load i64, ptr %1290, align 1
  %1292 = mul i64 %1291, -4417276706812531889
  %1293 = add i64 %1292, %1289
  %1294 = call i64 @llvm.fshl.i64(i64 %1293, i64 %1293, i64 31)
  %1295 = mul i64 %1294, -7046029288634856825
  %1296 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1295) #31, !srcloc !36
  store i64 %1296, ptr %1267, align 8, !alias.scope !41, !noalias !44
  %1297 = getelementptr inbounds nuw i8, ptr %1290, i64 8
  %1298 = load i64, ptr %1297, align 1
  %1299 = mul i64 %1298, -4417276706812531889
  %1300 = add i64 %1299, %1288
  %1301 = call i64 @llvm.fshl.i64(i64 %1300, i64 %1300, i64 31)
  %1302 = mul i64 %1301, -7046029288634856825
  %1303 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1302) #31, !srcloc !36
  store i64 %1303, ptr %1270, align 8, !alias.scope !41, !noalias !44
  %1304 = getelementptr inbounds nuw i8, ptr %1290, i64 16
  %1305 = load i64, ptr %1304, align 1
  %1306 = mul i64 %1305, -4417276706812531889
  %1307 = add i64 %1306, %1287
  %1308 = call i64 @llvm.fshl.i64(i64 %1307, i64 %1307, i64 31)
  %1309 = mul i64 %1308, -7046029288634856825
  %1310 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1309) #31, !srcloc !36
  store i64 %1310, ptr %1271, align 8, !alias.scope !41, !noalias !44
  %1311 = getelementptr inbounds nuw i8, ptr %1290, i64 24
  %1312 = load i64, ptr %1311, align 1
  %1313 = mul i64 %1312, -4417276706812531889
  %1314 = add i64 %1313, %1286
  %1315 = call i64 @llvm.fshl.i64(i64 %1314, i64 %1314, i64 31)
  %1316 = mul i64 %1315, -7046029288634856825
  %1317 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1316) #31, !srcloc !36
  store i64 %1317, ptr %1273, align 8, !alias.scope !41, !noalias !44
  %1318 = getelementptr inbounds nuw i8, ptr %1290, i64 32
  %1319 = icmp ult ptr %1318, %1284
  br i1 %1319, label %1285, label %1320, !llvm.loop !37

1320:                                             ; preds = %1285
  %1321 = icmp ult ptr %1318, %1282
  br i1 %1321, label %1322, label %1329

1322:                                             ; preds = %1320
  %1323 = getelementptr inbounds nuw i8, ptr %1022, i64 40
  %1324 = ptrtoint ptr %1318 to i64
  %1325 = sub i64 %1283, %1324
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1323, ptr nonnull align 1 %1318, i64 %1325, i1 false)
  %1326 = trunc i64 %1325 to i32
  br label %1327

1327:                                             ; preds = %1322, %1277
  %1328 = phi i32 [ %1280, %1277 ], [ %1326, %1322 ]
  store i32 %1328, ptr %1275, align 8
  br label %1329

1329:                                             ; preds = %1327, %1265, %1320
  %1330 = call fastcc i64 @XXH_INLINE_XXH64_digest(ptr nocapture noundef %1022) #33
  %1331 = icmp eq i64 %1330, %1028
  br i1 %1331, label %1342, label %1332

1332:                                             ; preds = %1329
  %1333 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1266) #29
  %1334 = lshr i64 %1330, 32
  %1335 = trunc nuw i64 %1334 to i32
  %1336 = trunc i64 %1330 to i32
  %1337 = lshr i64 %1028, 32
  %1338 = trunc nuw i64 %1337 to i32
  %1339 = trunc i64 %1028 to i32
  %1340 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1335, i32 noundef %1336, i32 noundef %1338, i32 noundef %1339) #29
  %1341 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1342:                                             ; preds = %1329
  %1343 = add nsw i32 %1020, 2
  store i32 %1343, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1022, i8 0, i64 88, i1 false)
  store i64 %1268, ptr %1267, align 8
  store i64 %1269, ptr %1270, align 8
  store i64 %1026, ptr %1271, align 8
  store i64 %1272, ptr %1273, align 8
  br i1 %1029, label %1462, label %1344

1344:                                             ; preds = %1342
  %1345 = getelementptr inbounds nuw i8, ptr %1022, i64 72
  %1346 = getelementptr inbounds nuw i8, ptr %1022, i64 40
  %1347 = getelementptr inbounds nuw i8, ptr %1022, i64 48
  %1348 = getelementptr inbounds nuw i8, ptr %1022, i64 56
  %1349 = getelementptr inbounds nuw i8, ptr %1022, i64 64
  br label %1350

1350:                                             ; preds = %1344, %1452
  %1351 = phi i64 [ %1272, %1344 ], [ %1453, %1452 ]
  %1352 = phi i64 [ %1026, %1344 ], [ %1454, %1452 ]
  %1353 = phi i64 [ %1269, %1344 ], [ %1455, %1452 ]
  %1354 = phi i64 [ %1268, %1344 ], [ %1456, %1452 ]
  %1355 = phi i32 [ 0, %1344 ], [ %1457, %1452 ]
  %1356 = phi ptr [ %71, %1344 ], [ %1460, %1452 ]
  %1357 = phi i64 [ 0, %1344 ], [ %1360, %1452 ]
  %1358 = phi i64 [ 0, %1344 ], [ %1458, %1452 ]
  %1359 = getelementptr inbounds nuw i8, ptr %1030, i64 %1358
  %1360 = add i64 %1357, 1
  %1361 = zext nneg i32 %1355 to i64
  %1362 = icmp ult i32 %1355, 33
  call void @llvm.assume(i1 %1362)
  %1363 = icmp samesign ult i32 %1355, 31
  br i1 %1363, label %1364, label %1369

1364:                                             ; preds = %1350
  %1365 = getelementptr inbounds nuw i8, ptr %1346, i64 %1361
  %1366 = load i8, ptr %1359, align 1
  store i8 %1366, ptr %1365, align 1
  %1367 = load i32, ptr %1345, align 8
  %1368 = add i32 %1367, 1
  br label %1446

1369:                                             ; preds = %1350
  %1370 = sub nuw nsw i64 32, %1361
  %1371 = getelementptr inbounds nuw i8, ptr %1359, i64 1
  %1372 = getelementptr inbounds nuw i8, ptr %1346, i64 %1361
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1372, ptr nonnull align 1 %1359, i64 %1370, i1 false)
  %1373 = load i32, ptr %1345, align 8
  %1374 = zext i32 %1373 to i64
  %1375 = sub nsw i64 32, %1374
  %1376 = getelementptr inbounds i8, ptr %1359, i64 %1375
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %1377 = load i64, ptr %1346, align 8, !noalias !46
  %1378 = mul i64 %1377, -4417276706812531889
  %1379 = add i64 %1378, %1354
  %1380 = call i64 @llvm.fshl.i64(i64 %1379, i64 %1379, i64 31)
  %1381 = mul i64 %1380, -7046029288634856825
  %1382 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1381) #31, !srcloc !36
  store i64 %1382, ptr %1267, align 8, !alias.scope !46, !noalias !49
  %1383 = load i64, ptr %1347, align 8, !noalias !46
  %1384 = mul i64 %1383, -4417276706812531889
  %1385 = add i64 %1384, %1353
  %1386 = call i64 @llvm.fshl.i64(i64 %1385, i64 %1385, i64 31)
  %1387 = mul i64 %1386, -7046029288634856825
  %1388 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1387) #31, !srcloc !36
  store i64 %1388, ptr %1270, align 8, !alias.scope !46, !noalias !49
  %1389 = load i64, ptr %1348, align 8, !noalias !46
  %1390 = mul i64 %1389, -4417276706812531889
  %1391 = add i64 %1390, %1352
  %1392 = call i64 @llvm.fshl.i64(i64 %1391, i64 %1391, i64 31)
  %1393 = mul i64 %1392, -7046029288634856825
  %1394 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1393) #31, !srcloc !36
  store i64 %1394, ptr %1271, align 8, !alias.scope !46, !noalias !49
  %1395 = load i64, ptr %1349, align 8, !noalias !46
  %1396 = mul i64 %1395, -4417276706812531889
  %1397 = add i64 %1396, %1351
  %1398 = call i64 @llvm.fshl.i64(i64 %1397, i64 %1397, i64 31)
  %1399 = mul i64 %1398, -7046029288634856825
  %1400 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1399) #31, !srcloc !36
  store i64 %1400, ptr %1273, align 8, !alias.scope !46, !noalias !49
  store i32 0, ptr %1345, align 8
  %1401 = icmp ult i64 %1375, 2
  call void @llvm.assume(i1 %1401)
  %1402 = ptrtoint ptr %1371 to i64
  %1403 = add nsw i64 %1374, -63
  %1404 = icmp ult i64 %1403, -32
  br i1 %1404, label %1405, label %1435

1405:                                             ; preds = %1369
  %1406 = sub nsw i64 0, %1374
  %1407 = load i64, ptr %1376, align 1
  %1408 = mul i64 %1407, -4417276706812531889
  %1409 = add i64 %1408, %1382
  %1410 = call i64 @llvm.fshl.i64(i64 %1409, i64 %1409, i64 31)
  %1411 = mul i64 %1410, -7046029288634856825
  %1412 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1411) #31, !srcloc !36
  store i64 %1412, ptr %1267, align 8, !alias.scope !51, !noalias !54
  %1413 = getelementptr inbounds nuw i8, ptr %1376, i64 8
  %1414 = load i64, ptr %1413, align 1
  %1415 = mul i64 %1414, -4417276706812531889
  %1416 = add i64 %1415, %1388
  %1417 = call i64 @llvm.fshl.i64(i64 %1416, i64 %1416, i64 31)
  %1418 = mul i64 %1417, -7046029288634856825
  %1419 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1418) #31, !srcloc !36
  store i64 %1419, ptr %1270, align 8, !alias.scope !51, !noalias !54
  %1420 = getelementptr inbounds nuw i8, ptr %1376, i64 16
  %1421 = load i64, ptr %1420, align 1
  %1422 = mul i64 %1421, -4417276706812531889
  %1423 = add i64 %1422, %1394
  %1424 = call i64 @llvm.fshl.i64(i64 %1423, i64 %1423, i64 31)
  %1425 = mul i64 %1424, -7046029288634856825
  %1426 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1425) #31, !srcloc !36
  store i64 %1426, ptr %1271, align 8, !alias.scope !51, !noalias !54
  %1427 = getelementptr inbounds nuw i8, ptr %1376, i64 24
  %1428 = load i64, ptr %1427, align 1
  %1429 = mul i64 %1428, -4417276706812531889
  %1430 = add i64 %1429, %1400
  %1431 = call i64 @llvm.fshl.i64(i64 %1430, i64 %1430, i64 31)
  %1432 = mul i64 %1431, -7046029288634856825
  %1433 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1432) #31, !srcloc !36
  store i64 %1433, ptr %1273, align 8, !alias.scope !51, !noalias !54
  %1434 = getelementptr i8, ptr %1356, i64 %1406
  br label %1435

1435:                                             ; preds = %1405, %1369
  %1436 = phi i64 [ %1400, %1369 ], [ %1433, %1405 ]
  %1437 = phi i64 [ %1394, %1369 ], [ %1426, %1405 ]
  %1438 = phi i64 [ %1388, %1369 ], [ %1419, %1405 ]
  %1439 = phi i64 [ %1382, %1369 ], [ %1412, %1405 ]
  %1440 = phi ptr [ %1376, %1369 ], [ %1434, %1405 ]
  %1441 = icmp ult ptr %1440, %1371
  br i1 %1441, label %1442, label %1452

1442:                                             ; preds = %1435
  %1443 = ptrtoint ptr %1440 to i64
  %1444 = sub i64 %1402, %1443
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1346, ptr align 1 %1440, i64 %1444, i1 false)
  %1445 = trunc i64 %1444 to i32
  br label %1446

1446:                                             ; preds = %1442, %1364
  %1447 = phi i32 [ %1368, %1364 ], [ %1445, %1442 ]
  %1448 = phi i64 [ %1351, %1364 ], [ %1436, %1442 ]
  %1449 = phi i64 [ %1352, %1364 ], [ %1437, %1442 ]
  %1450 = phi i64 [ %1353, %1364 ], [ %1438, %1442 ]
  %1451 = phi i64 [ %1354, %1364 ], [ %1439, %1442 ]
  store i32 %1447, ptr %1345, align 8
  br label %1452

1452:                                             ; preds = %1446, %1435
  %1453 = phi i64 [ %1436, %1435 ], [ %1448, %1446 ]
  %1454 = phi i64 [ %1437, %1435 ], [ %1449, %1446 ]
  %1455 = phi i64 [ %1438, %1435 ], [ %1450, %1446 ]
  %1456 = phi i64 [ %1439, %1435 ], [ %1451, %1446 ]
  %1457 = phi i32 [ 0, %1435 ], [ %1447, %1446 ]
  %1458 = add nuw nsw i64 %1358, 1
  %1459 = icmp eq i64 %1458, %1024
  %1460 = getelementptr i8, ptr %1356, i64 1
  br i1 %1459, label %1461, label %1350, !llvm.loop !56

1461:                                             ; preds = %1452
  store i64 %1360, ptr %1022, align 8
  br label %1462

1462:                                             ; preds = %1461, %1342
  %1463 = call fastcc i64 @XXH_INLINE_XXH64_digest(ptr nocapture noundef %1022) #33
  %1464 = icmp eq i64 %1463, %1028
  br i1 %1464, label %1475, label %1465

1465:                                             ; preds = %1462
  %1466 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1343) #29
  %1467 = lshr i64 %1463, 32
  %1468 = trunc nuw i64 %1467 to i32
  %1469 = trunc i64 %1463 to i32
  %1470 = lshr i64 %1028, 32
  %1471 = trunc nuw i64 %1470 to i32
  %1472 = trunc i64 %1028 to i32
  %1473 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1468, i32 noundef %1469, i32 noundef %1471, i32 noundef %1472) #29
  %1474 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1475:                                             ; preds = %1462
  %1476 = add nsw i32 %1020, 3
  store i32 %1476, ptr @XSUM_checkResult64.nbTests, align 4
  call void @free(ptr noundef nonnull %1022) #29
  %1477 = add nuw nsw i64 %1019, 1
  %1478 = icmp eq i64 %1477, 9
  br i1 %1478, label %969, label %1018, !llvm.loop !57

1479:                                             ; preds = %1981
  %1480 = getelementptr inbounds nuw i8, ptr %7, i64 63
  %1481 = getelementptr inbounds nuw i8, ptr %7, i64 71
  br label %2038

1482:                                             ; preds = %969, %1981
  %1483 = phi i32 [ %1476, %969 ], [ %1982, %1981 ]
  %1484 = phi i64 [ 0, %969 ], [ %1987, %1981 ]
  %1485 = getelementptr inbounds nuw [28 x %struct.XSUM_testdata64_t], ptr @XSUM_XXH3_testdata, i64 0, i64 %1484
  %1486 = load i32, ptr %1485, align 8
  %1487 = zext i32 %1486 to i64
  %1488 = getelementptr inbounds nuw i8, ptr %1485, i64 8
  %1489 = load i64, ptr %1488, align 8
  %1490 = getelementptr inbounds nuw i8, ptr %1485, i64 16
  %1491 = load i64, ptr %1490, align 8
  %1492 = icmp eq i32 %1486, 0
  br i1 %1492, label %1493, label %1503

1493:                                             ; preds = %1482
  %1494 = xor i64 %1489, -8707998980786479652
  %1495 = lshr i64 %1494, 33
  %1496 = xor i64 %1495, %1494
  %1497 = mul i64 %1496, -4417276706812531889
  %1498 = lshr i64 %1497, 29
  %1499 = xor i64 %1498, %1497
  %1500 = mul i64 %1499, 1609587929392839161
  %1501 = lshr i64 %1500, 32
  %1502 = xor i64 %1501, %1500
  br label %1505

1503:                                             ; preds = %1482
  %1504 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSeed(ptr nocapture noundef nonnull %7, i64 noundef %1487, i64 noundef %1489) #33
  br label %1505

1505:                                             ; preds = %1503, %1493
  %1506 = phi i64 [ %1502, %1493 ], [ %1504, %1503 ]
  %1507 = phi ptr [ inttoptr (i64 8 to ptr), %1493 ], [ %62, %1503 ]
  %1508 = phi ptr [ inttoptr (i64 16 to ptr), %1493 ], [ %9, %1503 ]
  %1509 = phi ptr [ inttoptr (i64 24 to ptr), %1493 ], [ %63, %1503 ]
  %1510 = phi ptr [ inttoptr (i64 32 to ptr), %1493 ], [ %10, %1503 ]
  %1511 = phi ptr [ inttoptr (i64 40 to ptr), %1493 ], [ %64, %1503 ]
  %1512 = phi ptr [ inttoptr (i64 48 to ptr), %1493 ], [ %11, %1503 ]
  %1513 = phi ptr [ inttoptr (i64 56 to ptr), %1493 ], [ %65, %1503 ]
  %1514 = phi ptr [ null, %1493 ], [ %7, %1503 ]
  %1515 = icmp eq i64 %1506, %1491
  br i1 %1515, label %1526, label %1516

1516:                                             ; preds = %1505
  %1517 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1483) #29
  %1518 = lshr i64 %1506, 32
  %1519 = trunc nuw i64 %1518 to i32
  %1520 = trunc i64 %1506 to i32
  %1521 = lshr i64 %1491, 32
  %1522 = trunc nuw i64 %1521 to i32
  %1523 = trunc i64 %1491 to i32
  %1524 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1519, i32 noundef %1520, i32 noundef %1522, i32 noundef %1523) #29
  %1525 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1526:                                             ; preds = %1505
  %1527 = add nsw i32 %1483, 1
  store i32 %1527, ptr @XSUM_checkResult64.nbTests, align 4
  %1528 = icmp eq i64 %1489, 0
  br i1 %1528, label %1554, label %1529

1529:                                             ; preds = %1526
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %5) #29
  %1530 = add i64 %1489, -4734510112055689544
  %1531 = sub i64 2066345149520216444, %1489
  %1532 = add i64 %1489, -2623469361688619810
  %1533 = sub i64 2262974939099578482, %1489
  %1534 = add i64 %1489, 8711581037947681227
  %1535 = sub i64 2410270004345854594, %1489
  %1536 = add i64 %1489, -8204357891075471176
  %1537 = sub i64 5487137525590930912, %1489
  %1538 = add i64 %1489, -3818837453329782724
  %1539 = sub i64 -6688317018830679928, %1489
  %1540 = add i64 %1489, 5690594596133299313
  %1541 = sub i64 -2833645246901970632, %1489
  %1542 = add i64 %1489, 4554437623014685352
  %1543 = sub i64 2111919702937427193, %1489
  %1544 = add i64 %1489, 3556072174620004746
  %1545 = sub i64 7238261902898274248, %1489
  %1546 = add i64 %1489, -4329134394285701654
  %1547 = sub i64 -1485321483350670907, %1489
  %1548 = add i64 %1489, 5321830579834785047
  %1549 = sub i64 -7032137544937171245, %1489
  %1550 = add i64 %1489, -242834301215959509
  %1551 = sub i64 -3588858202114426737, %1489
  %1552 = add i64 %1489, 2883454493032893253
  %1553 = sub i64 9097354517224871855, %1489
  br label %1773

1554:                                             ; preds = %1526
  %1555 = icmp ult i32 %1486, 17
  br i1 %1555, label %1556, label %1631

1556:                                             ; preds = %1554
  %1557 = icmp samesign ugt i32 %1486, 8
  br i1 %1557, label %1558, label %1581, !prof !58

1558:                                             ; preds = %1556
  %1559 = icmp ne ptr %1514, null
  call void @llvm.assume(i1 %1559)
  %1560 = load i64, ptr %1514, align 16
  %1561 = xor i64 %1560, 7458650908927343033
  %1562 = getelementptr inbounds nuw i8, ptr %1514, i64 %1487
  %1563 = getelementptr inbounds i8, ptr %1562, i64 -8
  %1564 = load i64, ptr %1563, align 1
  %1565 = xor i64 %1564, -5812251307325107654
  %1566 = call noundef i64 @llvm.bswap.i64(i64 %1561)
  %1567 = add i64 %1566, %1487
  %1568 = add i64 %1567, %1565
  %1569 = zext i64 %1561 to i128
  %1570 = zext i64 %1565 to i128
  %1571 = mul nuw i128 %1570, %1569
  %1572 = lshr i128 %1571, 64
  %1573 = xor i128 %1572, %1571
  %1574 = trunc i128 %1573 to i64
  %1575 = add i64 %1568, %1574
  %1576 = lshr i64 %1575, 37
  %1577 = xor i64 %1576, %1575
  %1578 = mul i64 %1577, 1609587791953885689
  %1579 = lshr i64 %1578, 32
  %1580 = xor i64 %1579, %1578
  br label %1758

1581:                                             ; preds = %1556
  %1582 = icmp samesign ugt i32 %1486, 3
  br i1 %1582, label %1583, label %1605, !prof !58

1583:                                             ; preds = %1581
  %1584 = icmp ne ptr %1514, null
  call void @llvm.assume(i1 %1584)
  %1585 = load i32, ptr %1514, align 16
  %1586 = getelementptr inbounds nuw i8, ptr %1514, i64 %1487
  %1587 = getelementptr inbounds i8, ptr %1586, i64 -4
  %1588 = load i32, ptr %1587, align 1
  %1589 = zext i32 %1588 to i64
  %1590 = zext i32 %1585 to i64
  %1591 = shl nuw i64 %1590, 32
  %1592 = or disjoint i64 %1591, %1589
  %1593 = xor i64 %1592, -4090762196417718878
  %1594 = call i64 @llvm.fshl.i64(i64 %1593, i64 %1593, i64 49)
  %1595 = call i64 @llvm.fshl.i64(i64 %1593, i64 %1593, i64 24)
  %1596 = xor i64 %1594, %1595
  %1597 = xor i64 %1596, %1593
  %1598 = mul i64 %1597, -6939452855193903323
  %1599 = lshr i64 %1598, 35
  %1600 = add nuw nsw i64 %1599, %1487
  %1601 = xor i64 %1600, %1598
  %1602 = mul i64 %1601, -6939452855193903323
  %1603 = lshr i64 %1602, 28
  %1604 = xor i64 %1603, %1602
  br label %1758

1605:                                             ; preds = %1581
  br i1 %1492, label %1758, label %1606

1606:                                             ; preds = %1605
  %1607 = icmp ne ptr %1514, null
  call void @llvm.assume(i1 %1607)
  %1608 = load i8, ptr %1514, align 16
  %1609 = lshr i64 %1487, 1
  %1610 = getelementptr inbounds nuw i8, ptr %1514, i64 %1609
  %1611 = load i8, ptr %1610, align 1
  %1612 = getelementptr i8, ptr %1514, i64 %1487
  %1613 = getelementptr i8, ptr %1612, i64 -1
  %1614 = load i8, ptr %1613, align 1
  %1615 = zext i8 %1608 to i64
  %1616 = shl nuw nsw i64 %1615, 16
  %1617 = zext i8 %1611 to i64
  %1618 = shl nuw nsw i64 %1617, 24
  %1619 = zext i8 %1614 to i64
  %1620 = shl nuw nsw i64 %1487, 8
  %1621 = or disjoint i64 %1616, %1620
  %1622 = or disjoint i64 %1621, %1618
  %1623 = or disjoint i64 %1622, %1619
  %1624 = xor i64 %1623, 2267503259
  %1625 = mul i64 %1624, -4417276706812531889
  %1626 = lshr i64 %1625, 29
  %1627 = xor i64 %1626, %1625
  %1628 = mul i64 %1627, 1609587929392839161
  %1629 = lshr i64 %1628, 32
  %1630 = xor i64 %1629, %1628
  br label %1758

1631:                                             ; preds = %1554
  %1632 = icmp ult i32 %1486, 129
  br i1 %1632, label %1633, label %1752

1633:                                             ; preds = %1631
  %1634 = mul i64 %1487, -7046029288634856825
  %1635 = icmp samesign ugt i32 %1486, 32
  br i1 %1635, label %1636, label %1720

1636:                                             ; preds = %1633
  %1637 = icmp samesign ugt i32 %1486, 64
  br i1 %1637, label %1638, label %1693

1638:                                             ; preds = %1636
  %1639 = icmp samesign ugt i32 %1486, 96
  br i1 %1639, label %1640, label %1666

1640:                                             ; preds = %1638
  %1641 = load i64, ptr %1512, align 1
  %1642 = load i64, ptr %1513, align 1
  %1643 = xor i64 %1641, 4554437623014685352
  %1644 = xor i64 %1642, 2111919702937427193
  %1645 = zext i64 %1643 to i128
  %1646 = zext i64 %1644 to i128
  %1647 = mul nuw i128 %1646, %1645
  %1648 = lshr i128 %1647, 64
  %1649 = xor i128 %1648, %1647
  %1650 = trunc i128 %1649 to i64
  %1651 = add i64 %1634, %1650
  %1652 = getelementptr inbounds nuw i8, ptr %1514, i64 %1487
  %1653 = getelementptr inbounds i8, ptr %1652, i64 -64
  %1654 = load i64, ptr %1653, align 1
  %1655 = getelementptr inbounds i8, ptr %1652, i64 -56
  %1656 = load i64, ptr %1655, align 1
  %1657 = xor i64 %1654, 3556072174620004746
  %1658 = xor i64 %1656, 7238261902898274248
  %1659 = zext i64 %1657 to i128
  %1660 = zext i64 %1658 to i128
  %1661 = mul nuw i128 %1660, %1659
  %1662 = lshr i128 %1661, 64
  %1663 = xor i128 %1662, %1661
  %1664 = trunc i128 %1663 to i64
  %1665 = add i64 %1651, %1664
  br label %1666

1666:                                             ; preds = %1640, %1638
  %1667 = phi i64 [ %1665, %1640 ], [ %1634, %1638 ]
  %1668 = load i64, ptr %1510, align 1
  %1669 = load i64, ptr %1511, align 1
  %1670 = xor i64 %1668, -3818837453329782724
  %1671 = xor i64 %1669, -6688317018830679928
  %1672 = zext i64 %1670 to i128
  %1673 = zext i64 %1671 to i128
  %1674 = mul nuw i128 %1673, %1672
  %1675 = lshr i128 %1674, 64
  %1676 = xor i128 %1675, %1674
  %1677 = trunc i128 %1676 to i64
  %1678 = add i64 %1667, %1677
  %1679 = getelementptr inbounds nuw i8, ptr %1514, i64 %1487
  %1680 = getelementptr inbounds i8, ptr %1679, i64 -48
  %1681 = load i64, ptr %1680, align 1
  %1682 = getelementptr inbounds i8, ptr %1679, i64 -40
  %1683 = load i64, ptr %1682, align 1
  %1684 = xor i64 %1681, 5690594596133299313
  %1685 = xor i64 %1683, -2833645246901970632
  %1686 = zext i64 %1684 to i128
  %1687 = zext i64 %1685 to i128
  %1688 = mul nuw i128 %1687, %1686
  %1689 = lshr i128 %1688, 64
  %1690 = xor i128 %1689, %1688
  %1691 = trunc i128 %1690 to i64
  %1692 = add i64 %1678, %1691
  br label %1693

1693:                                             ; preds = %1666, %1636
  %1694 = phi i64 [ %1692, %1666 ], [ %1634, %1636 ]
  %1695 = load i64, ptr %1508, align 1
  %1696 = load i64, ptr %1509, align 1
  %1697 = xor i64 %1695, 8711581037947681227
  %1698 = xor i64 %1696, 2410270004345854594
  %1699 = zext i64 %1697 to i128
  %1700 = zext i64 %1698 to i128
  %1701 = mul nuw i128 %1700, %1699
  %1702 = lshr i128 %1701, 64
  %1703 = xor i128 %1702, %1701
  %1704 = trunc i128 %1703 to i64
  %1705 = add i64 %1694, %1704
  %1706 = getelementptr inbounds nuw i8, ptr %1514, i64 %1487
  %1707 = getelementptr inbounds i8, ptr %1706, i64 -32
  %1708 = load i64, ptr %1707, align 1
  %1709 = getelementptr inbounds i8, ptr %1706, i64 -24
  %1710 = load i64, ptr %1709, align 1
  %1711 = xor i64 %1708, -8204357891075471176
  %1712 = xor i64 %1710, 5487137525590930912
  %1713 = zext i64 %1711 to i128
  %1714 = zext i64 %1712 to i128
  %1715 = mul nuw i128 %1714, %1713
  %1716 = lshr i128 %1715, 64
  %1717 = xor i128 %1716, %1715
  %1718 = trunc i128 %1717 to i64
  %1719 = add i64 %1705, %1718
  br label %1720

1720:                                             ; preds = %1693, %1633
  %1721 = phi i64 [ %1719, %1693 ], [ %1634, %1633 ]
  %1722 = load i64, ptr %1514, align 16
  %1723 = load i64, ptr %1507, align 1
  %1724 = xor i64 %1722, -4734510112055689544
  %1725 = xor i64 %1723, 2066345149520216444
  %1726 = zext i64 %1724 to i128
  %1727 = zext i64 %1725 to i128
  %1728 = mul nuw i128 %1727, %1726
  %1729 = lshr i128 %1728, 64
  %1730 = xor i128 %1729, %1728
  %1731 = trunc i128 %1730 to i64
  %1732 = add i64 %1721, %1731
  %1733 = getelementptr inbounds nuw i8, ptr %1514, i64 %1487
  %1734 = getelementptr inbounds i8, ptr %1733, i64 -16
  %1735 = load i64, ptr %1734, align 1
  %1736 = getelementptr inbounds i8, ptr %1733, i64 -8
  %1737 = load i64, ptr %1736, align 1
  %1738 = xor i64 %1735, -2623469361688619810
  %1739 = xor i64 %1737, 2262974939099578482
  %1740 = zext i64 %1738 to i128
  %1741 = zext i64 %1739 to i128
  %1742 = mul nuw i128 %1741, %1740
  %1743 = lshr i128 %1742, 64
  %1744 = xor i128 %1743, %1742
  %1745 = trunc i128 %1744 to i64
  %1746 = add i64 %1732, %1745
  %1747 = lshr i64 %1746, 37
  %1748 = xor i64 %1747, %1746
  %1749 = mul i64 %1748, 1609587791953885689
  %1750 = lshr i64 %1749, 32
  %1751 = xor i64 %1750, %1749
  br label %1758

1752:                                             ; preds = %1631
  %1753 = icmp ult i32 %1486, 241
  br i1 %1753, label %1754, label %1756

1754:                                             ; preds = %1752
  %1755 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %1514, i64 noundef range(i64 0, 4294967296) %1487, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #33
  br label %1758

1756:                                             ; preds = %1752
  %1757 = call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %1514, i64 noundef range(i64 0, 4294967296) %1487) #29
  br label %1758

1758:                                             ; preds = %1756, %1754, %1720, %1606, %1605, %1583, %1558
  %1759 = phi i64 [ %1751, %1720 ], [ %1755, %1754 ], [ %1757, %1756 ], [ %1580, %1558 ], [ %1604, %1583 ], [ %1630, %1606 ], [ 3244421341483603138, %1605 ]
  %1760 = icmp eq i64 %1759, %1491
  br i1 %1760, label %1771, label %1761

1761:                                             ; preds = %1758
  %1762 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1527) #29
  %1763 = lshr i64 %1759, 32
  %1764 = trunc nuw i64 %1763 to i32
  %1765 = trunc i64 %1759 to i32
  %1766 = lshr i64 %1491, 32
  %1767 = trunc nuw i64 %1766 to i32
  %1768 = trunc i64 %1491 to i32
  %1769 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1764, i32 noundef %1765, i32 noundef %1767, i32 noundef %1768) #29
  %1770 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1771:                                             ; preds = %1758
  %1772 = add nsw i32 %1483, 2
  store i32 %1772, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %5) #29
  br label %1773

1773:                                             ; preds = %1771, %1529
  %1774 = phi i64 [ -4734510112055689544, %1771 ], [ %1530, %1529 ]
  %1775 = phi i64 [ 2066345149520216444, %1771 ], [ %1531, %1529 ]
  %1776 = phi i64 [ -2623469361688619810, %1771 ], [ %1532, %1529 ]
  %1777 = phi i64 [ 2262974939099578482, %1771 ], [ %1533, %1529 ]
  %1778 = phi i64 [ 8711581037947681227, %1771 ], [ %1534, %1529 ]
  %1779 = phi i64 [ 2410270004345854594, %1771 ], [ %1535, %1529 ]
  %1780 = phi i64 [ -8204357891075471176, %1771 ], [ %1536, %1529 ]
  %1781 = phi i64 [ 5487137525590930912, %1771 ], [ %1537, %1529 ]
  %1782 = phi i64 [ -3818837453329782724, %1771 ], [ %1538, %1529 ]
  %1783 = phi i64 [ -6688317018830679928, %1771 ], [ %1539, %1529 ]
  %1784 = phi i64 [ 5690594596133299313, %1771 ], [ %1540, %1529 ]
  %1785 = phi i64 [ -2833645246901970632, %1771 ], [ %1541, %1529 ]
  %1786 = phi i64 [ 4554437623014685352, %1771 ], [ %1542, %1529 ]
  %1787 = phi i64 [ 2111919702937427193, %1771 ], [ %1543, %1529 ]
  %1788 = phi i64 [ 3556072174620004746, %1771 ], [ %1544, %1529 ]
  %1789 = phi i64 [ 7238261902898274248, %1771 ], [ %1545, %1529 ]
  %1790 = phi i64 [ -4329134394285701654, %1771 ], [ %1546, %1529 ]
  %1791 = phi i64 [ -1485321483350670907, %1771 ], [ %1547, %1529 ]
  %1792 = phi i64 [ 5321830579834785047, %1771 ], [ %1548, %1529 ]
  %1793 = phi i64 [ -7032137544937171245, %1771 ], [ %1549, %1529 ]
  %1794 = phi i64 [ -242834301215959509, %1771 ], [ %1550, %1529 ]
  %1795 = phi i64 [ -3588858202114426737, %1771 ], [ %1551, %1529 ]
  %1796 = phi i64 [ 2883454493032893253, %1771 ], [ %1552, %1529 ]
  %1797 = phi i64 [ 9097354517224871855, %1771 ], [ %1553, %1529 ]
  %1798 = phi i64 [ 0, %1771 ], [ %1489, %1529 ]
  %1799 = phi i32 [ %1772, %1771 ], [ %1527, %1529 ]
  store i64 %1774, ptr %970, align 1
  store i64 %1775, ptr %971, align 1
  store i64 %1776, ptr %972, align 1
  store i64 %1777, ptr %973, align 1
  store i64 %1778, ptr %974, align 1
  store i64 %1779, ptr %975, align 1
  store i64 %1780, ptr %976, align 1
  store i64 %1781, ptr %977, align 1
  store i64 %1782, ptr %978, align 1
  store i64 %1783, ptr %979, align 1
  store i64 %1784, ptr %980, align 1
  store i64 %1785, ptr %981, align 1
  store i64 %1786, ptr %982, align 1
  store i64 %1787, ptr %983, align 1
  store i64 %1788, ptr %984, align 1
  store i64 %1789, ptr %985, align 1
  store i64 %1790, ptr %986, align 1
  store i64 %1791, ptr %987, align 1
  store i64 %1792, ptr %988, align 1
  store i64 %1793, ptr %989, align 1
  store i64 %1794, ptr %990, align 1
  store i64 %1795, ptr %991, align 1
  store i64 %1796, ptr %992, align 1
  store i64 %1797, ptr %993, align 1
  %1800 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecretandSeed(ptr nocapture noundef %1514, i64 noundef %1487, ptr nocapture noundef %970, i64 noundef 192, i64 noundef %1798) #33
  %1801 = icmp eq i64 %1800, %1491
  br i1 %1801, label %1812, label %1802

1802:                                             ; preds = %1773
  %1803 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1799) #29
  %1804 = lshr i64 %1800, 32
  %1805 = trunc nuw i64 %1804 to i32
  %1806 = trunc i64 %1800 to i32
  %1807 = lshr i64 %1491, 32
  %1808 = trunc nuw i64 %1807 to i32
  %1809 = trunc i64 %1491 to i32
  %1810 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1805, i32 noundef %1806, i32 noundef %1808, i32 noundef %1809) #29
  %1811 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1812:                                             ; preds = %1773
  %1813 = add nsw i32 %1799, 1
  store i32 %1813, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %970, i8 -103, i64 9, i1 false)
  %1814 = icmp ult i32 %1486, 241
  br i1 %1814, label %1815, label %1830

1815:                                             ; preds = %1812
  %1816 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecretandSeed(ptr nocapture noundef %1514, i64 noundef %1487, ptr nocapture noundef %970, i64 noundef 192, i64 noundef %1489) #33
  %1817 = icmp eq i64 %1816, %1491
  br i1 %1817, label %1828, label %1818

1818:                                             ; preds = %1815
  %1819 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1813) #29
  %1820 = lshr i64 %1816, 32
  %1821 = trunc nuw i64 %1820 to i32
  %1822 = trunc i64 %1816 to i32
  %1823 = lshr i64 %1491, 32
  %1824 = trunc nuw i64 %1823 to i32
  %1825 = trunc i64 %1491 to i32
  %1826 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1821, i32 noundef %1822, i32 noundef %1824, i32 noundef %1825) #29
  %1827 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1828:                                             ; preds = %1815
  %1829 = add nsw i32 %1799, 2
  store i32 %1829, ptr @XSUM_checkResult64.nbTests, align 4
  br label %1830

1830:                                             ; preds = %1828, %1812
  %1831 = phi i32 [ %1829, %1828 ], [ %1813, %1812 ]
  call void @llvm.lifetime.end.p0(i64 193, ptr nonnull %5) #29
  %1832 = call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #30
  %1833 = icmp eq ptr %1832, null
  br i1 %1833, label %1834, label %1835

1834:                                             ; preds = %1830
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 407, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH3) #28
  unreachable

1835:                                             ; preds = %1830
  %1836 = ptrtoint ptr %1832 to i64
  %1837 = and i64 %1836, 63
  %1838 = sub nuw nsw i64 64, %1837
  %1839 = getelementptr inbounds nuw i8, ptr %1832, i64 %1838
  %1840 = ptrtoint ptr %1839 to i64
  %1841 = and i64 %1840, 63
  %1842 = icmp eq i64 %1841, 0
  call void @llvm.assume(i1 %1842)
  %1843 = trunc nuw nsw i64 %1838 to i8
  %1844 = getelementptr inbounds i8, ptr %1839, i64 -1
  store i8 %1843, ptr %1844, align 1
  %1845 = getelementptr inbounds nuw i8, ptr %1839, i64 552
  store i64 0, ptr %1845, align 8
  %1846 = getelementptr inbounds nuw i8, ptr %1839, i64 568
  store ptr null, ptr %1846, align 8
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef %1839, i64 noundef %1489)
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1839, ptr nocapture noundef %1514, i64 noundef %1487)
  %1847 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1839) #33
  %1848 = icmp eq i64 %1847, %1491
  br i1 %1848, label %1859, label %1849

1849:                                             ; preds = %1835
  %1850 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1831) #29
  %1851 = lshr i64 %1847, 32
  %1852 = trunc nuw i64 %1851 to i32
  %1853 = trunc i64 %1847 to i32
  %1854 = lshr i64 %1491, 32
  %1855 = trunc nuw i64 %1854 to i32
  %1856 = trunc i64 %1491 to i32
  %1857 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1852, i32 noundef %1853, i32 noundef %1855, i32 noundef %1856) #29
  %1858 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1859:                                             ; preds = %1835
  %1860 = add nsw i32 %1831, 1
  store i32 %1860, ptr @XSUM_checkResult64.nbTests, align 4
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef %1839, i64 noundef %1489)
  br i1 %1492, label %1878, label %1861

1861:                                             ; preds = %1859
  %1862 = call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %1487, i64 2)
  br label %1863

1863:                                             ; preds = %1863, %1861
  %1864 = phi i64 [ 0, %1861 ], [ %1874, %1863 ]
  %1865 = load i64, ptr @XSUM_rand.seed, align 8
  %1866 = mul i64 %1865, -7046029288634856819
  store i64 %1866, ptr @XSUM_rand.seed, align 8
  %1867 = lshr i64 %1866, 40
  %1868 = urem i64 %1867, %1862
  %1869 = add nuw nsw i64 %1868, %1864
  %1870 = icmp ugt i64 %1869, %1487
  %1871 = sub nuw nsw i64 %1487, %1864
  %1872 = select i1 %1870, i64 %1871, i64 %1868
  %1873 = getelementptr inbounds nuw i8, ptr %1514, i64 %1864
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1839, ptr nocapture noundef %1873, i64 noundef %1872)
  %1874 = add i64 %1872, %1864
  %1875 = icmp ult i64 %1874, %1487
  br i1 %1875, label %1863, label %1876, !llvm.loop !59

1876:                                             ; preds = %1863
  %1877 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  br label %1878

1878:                                             ; preds = %1876, %1859
  %1879 = phi i32 [ %1877, %1876 ], [ %1860, %1859 ]
  %1880 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1839) #33
  %1881 = icmp eq i64 %1880, %1491
  br i1 %1881, label %1892, label %1882

1882:                                             ; preds = %1878
  %1883 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1879) #29
  %1884 = lshr i64 %1880, 32
  %1885 = trunc nuw i64 %1884 to i32
  %1886 = trunc i64 %1880 to i32
  %1887 = lshr i64 %1491, 32
  %1888 = trunc nuw i64 %1887 to i32
  %1889 = trunc i64 %1491 to i32
  %1890 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1885, i32 noundef %1886, i32 noundef %1888, i32 noundef %1889) #29
  %1891 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1892:                                             ; preds = %1878
  %1893 = add nsw i32 %1879, 1
  store i32 %1893, ptr @XSUM_checkResult64.nbTests, align 4
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef %1839, i64 noundef %1489)
  br i1 %1492, label %1901, label %1894

1894:                                             ; preds = %1892, %1894
  %1895 = phi i64 [ %1897, %1894 ], [ 0, %1892 ]
  %1896 = getelementptr inbounds nuw i8, ptr %1514, i64 %1895
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1839, ptr nocapture noundef %1896, i64 noundef 1)
  %1897 = add nuw nsw i64 %1895, 1
  %1898 = icmp eq i64 %1897, %1487
  br i1 %1898, label %1899, label %1894, !llvm.loop !60

1899:                                             ; preds = %1894
  %1900 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  br label %1901

1901:                                             ; preds = %1899, %1892
  %1902 = phi i32 [ %1900, %1899 ], [ %1893, %1892 ]
  %1903 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1839) #33
  %1904 = icmp eq i64 %1903, %1491
  br i1 %1904, label %1915, label %1905

1905:                                             ; preds = %1901
  %1906 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1902) #29
  %1907 = lshr i64 %1903, 32
  %1908 = trunc nuw i64 %1907 to i32
  %1909 = trunc i64 %1903 to i32
  %1910 = lshr i64 %1491, 32
  %1911 = trunc nuw i64 %1910 to i32
  %1912 = trunc i64 %1491 to i32
  %1913 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1908, i32 noundef %1909, i32 noundef %1911, i32 noundef %1912) #29
  %1914 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1915:                                             ; preds = %1901
  %1916 = add nsw i32 %1902, 1
  store i32 %1916, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %6) #29
  %1917 = add i64 %1489, -4734510112055689544
  %1918 = sub i64 2066345149520216444, %1489
  %1919 = add i64 %1489, -2623469361688619810
  %1920 = sub i64 2262974939099578482, %1489
  %1921 = add i64 %1489, 8711581037947681227
  %1922 = sub i64 2410270004345854594, %1489
  %1923 = add i64 %1489, -8204357891075471176
  %1924 = sub i64 5487137525590930912, %1489
  %1925 = add i64 %1489, -3818837453329782724
  %1926 = sub i64 -6688317018830679928, %1489
  %1927 = add i64 %1489, 5690594596133299313
  %1928 = sub i64 -2833645246901970632, %1489
  %1929 = add i64 %1489, 4554437623014685352
  %1930 = sub i64 2111919702937427193, %1489
  %1931 = add i64 %1489, 3556072174620004746
  %1932 = sub i64 7238261902898274248, %1489
  %1933 = add i64 %1489, -4329134394285701654
  %1934 = sub i64 -1485321483350670907, %1489
  %1935 = add i64 %1489, 5321830579834785047
  %1936 = sub i64 -7032137544937171245, %1489
  %1937 = add i64 %1489, -242834301215959509
  %1938 = sub i64 -3588858202114426737, %1489
  %1939 = add i64 %1489, 2883454493032893253
  %1940 = sub i64 9097354517224871855, %1489
  store i64 %1917, ptr %994, align 1
  store i64 %1918, ptr %995, align 1
  store i64 %1919, ptr %996, align 1
  store i64 %1920, ptr %997, align 1
  store i64 %1921, ptr %998, align 1
  store i64 %1922, ptr %999, align 1
  store i64 %1923, ptr %1000, align 1
  store i64 %1924, ptr %1001, align 1
  store i64 %1925, ptr %1002, align 1
  store i64 %1926, ptr %1003, align 1
  store i64 %1927, ptr %1004, align 1
  store i64 %1928, ptr %1005, align 1
  store i64 %1929, ptr %1006, align 1
  store i64 %1930, ptr %1007, align 1
  store i64 %1931, ptr %1008, align 1
  store i64 %1932, ptr %1009, align 1
  store i64 %1933, ptr %1010, align 1
  store i64 %1934, ptr %1011, align 1
  store i64 %1935, ptr %1012, align 1
  store i64 %1936, ptr %1013, align 1
  store i64 %1937, ptr %1014, align 1
  store i64 %1938, ptr %1015, align 1
  store i64 %1939, ptr %1016, align 1
  store i64 %1940, ptr %1017, align 1
  %1941 = getelementptr inbounds nuw i8, ptr %1839, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %1941, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %1839, align 64
  %1942 = getelementptr inbounds nuw i8, ptr %1839, i64 8
  store i64 -7046029288634856825, ptr %1942, align 8
  %1943 = getelementptr inbounds nuw i8, ptr %1839, i64 16
  store i64 -4417276706812531889, ptr %1943, align 16
  %1944 = getelementptr inbounds nuw i8, ptr %1839, i64 24
  store i64 1609587929392839161, ptr %1944, align 8
  %1945 = getelementptr inbounds nuw i8, ptr %1839, i64 32
  store i64 -8796714831421723037, ptr %1945, align 32
  %1946 = getelementptr inbounds nuw i8, ptr %1839, i64 40
  store i64 2246822519, ptr %1946, align 8
  %1947 = getelementptr inbounds nuw i8, ptr %1839, i64 48
  store i64 2870177450012600261, ptr %1947, align 16
  %1948 = getelementptr inbounds nuw i8, ptr %1839, i64 56
  store i64 2654435761, ptr %1948, align 8
  store i64 %1489, ptr %1845, align 8
  %1949 = getelementptr inbounds nuw i8, ptr %1839, i64 516
  store ptr %994, ptr %1846, align 8
  %1950 = getelementptr inbounds nuw i8, ptr %1839, i64 544
  store i64 128, ptr %1950, align 32
  %1951 = getelementptr inbounds nuw i8, ptr %1839, i64 536
  store i64 16, ptr %1951, align 8
  store i32 1, ptr %1949, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1839, ptr nocapture noundef %1514, i64 noundef %1487)
  %1952 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1839) #33
  %1953 = icmp eq i64 %1952, %1491
  br i1 %1953, label %1964, label %1954

1954:                                             ; preds = %1915
  %1955 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1916) #29
  %1956 = lshr i64 %1952, 32
  %1957 = trunc nuw i64 %1956 to i32
  %1958 = trunc i64 %1952 to i32
  %1959 = lshr i64 %1491, 32
  %1960 = trunc nuw i64 %1959 to i32
  %1961 = trunc i64 %1491 to i32
  %1962 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1957, i32 noundef %1958, i32 noundef %1960, i32 noundef %1961) #29
  %1963 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1964:                                             ; preds = %1915
  %1965 = add nsw i32 %1902, 2
  store i32 %1965, ptr @XSUM_checkResult64.nbTests, align 4
  br i1 %1814, label %1966, label %1981

1966:                                             ; preds = %1964
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %994, i8 -103, i64 9, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %1941, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %1839, align 64
  store i64 -7046029288634856825, ptr %1942, align 8
  store i64 -4417276706812531889, ptr %1943, align 16
  store i64 1609587929392839161, ptr %1944, align 8
  store i64 -8796714831421723037, ptr %1945, align 32
  store i64 2246822519, ptr %1946, align 8
  store i64 2870177450012600261, ptr %1947, align 16
  store i64 2654435761, ptr %1948, align 8
  store i64 %1489, ptr %1845, align 8
  store ptr %994, ptr %1846, align 8
  store i64 128, ptr %1950, align 32
  store i64 16, ptr %1951, align 8
  store i32 1, ptr %1949, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1839, ptr nocapture noundef %1514, i64 noundef %1487)
  %1967 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1839) #33
  %1968 = icmp eq i64 %1967, %1491
  br i1 %1968, label %1979, label %1969

1969:                                             ; preds = %1966
  %1970 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1965) #29
  %1971 = lshr i64 %1967, 32
  %1972 = trunc nuw i64 %1971 to i32
  %1973 = trunc i64 %1967 to i32
  %1974 = lshr i64 %1491, 32
  %1975 = trunc nuw i64 %1974 to i32
  %1976 = trunc i64 %1491 to i32
  %1977 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1972, i32 noundef %1973, i32 noundef %1975, i32 noundef %1976) #29
  %1978 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1979:                                             ; preds = %1966
  %1980 = add nsw i32 %1902, 3
  store i32 %1980, ptr @XSUM_checkResult64.nbTests, align 4
  br label %1981

1981:                                             ; preds = %1964, %1979
  %1982 = phi i32 [ %1965, %1964 ], [ %1980, %1979 ]
  call void @llvm.lifetime.end.p0(i64 193, ptr nonnull %6) #29
  %1983 = load i8, ptr %1844, align 1
  %1984 = zext i8 %1983 to i64
  %1985 = sub nsw i64 0, %1984
  %1986 = getelementptr inbounds i8, ptr %1839, i64 %1985
  call void @free(ptr noundef nonnull %1986) #29
  %1987 = add nuw nsw i64 %1484, 1
  %1988 = icmp eq i64 %1987, 28
  br i1 %1988, label %1479, label %1482, !llvm.loop !61

1989:                                             ; preds = %2209
  %1990 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %1991 = getelementptr inbounds nuw i8, ptr %3, i64 9
  %1992 = getelementptr inbounds nuw i8, ptr %3, i64 17
  %1993 = getelementptr inbounds nuw i8, ptr %3, i64 25
  %1994 = getelementptr inbounds nuw i8, ptr %3, i64 33
  %1995 = getelementptr inbounds nuw i8, ptr %3, i64 41
  %1996 = getelementptr inbounds nuw i8, ptr %3, i64 49
  %1997 = getelementptr inbounds nuw i8, ptr %3, i64 57
  %1998 = getelementptr inbounds nuw i8, ptr %3, i64 65
  %1999 = getelementptr inbounds nuw i8, ptr %3, i64 73
  %2000 = getelementptr inbounds nuw i8, ptr %3, i64 81
  %2001 = getelementptr inbounds nuw i8, ptr %3, i64 89
  %2002 = getelementptr inbounds nuw i8, ptr %3, i64 97
  %2003 = getelementptr inbounds nuw i8, ptr %3, i64 105
  %2004 = getelementptr inbounds nuw i8, ptr %3, i64 113
  %2005 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %2006 = getelementptr inbounds nuw i8, ptr %3, i64 129
  %2007 = getelementptr inbounds nuw i8, ptr %3, i64 137
  %2008 = getelementptr inbounds nuw i8, ptr %3, i64 145
  %2009 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %2010 = getelementptr inbounds nuw i8, ptr %3, i64 161
  %2011 = getelementptr inbounds nuw i8, ptr %3, i64 169
  %2012 = getelementptr inbounds nuw i8, ptr %3, i64 177
  %2013 = getelementptr inbounds nuw i8, ptr %3, i64 185
  %2014 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %2015 = getelementptr inbounds nuw i8, ptr %4, i64 9
  %2016 = getelementptr inbounds nuw i8, ptr %4, i64 17
  %2017 = getelementptr inbounds nuw i8, ptr %4, i64 25
  %2018 = getelementptr inbounds nuw i8, ptr %4, i64 33
  %2019 = getelementptr inbounds nuw i8, ptr %4, i64 41
  %2020 = getelementptr inbounds nuw i8, ptr %4, i64 49
  %2021 = getelementptr inbounds nuw i8, ptr %4, i64 57
  %2022 = getelementptr inbounds nuw i8, ptr %4, i64 65
  %2023 = getelementptr inbounds nuw i8, ptr %4, i64 73
  %2024 = getelementptr inbounds nuw i8, ptr %4, i64 81
  %2025 = getelementptr inbounds nuw i8, ptr %4, i64 89
  %2026 = getelementptr inbounds nuw i8, ptr %4, i64 97
  %2027 = getelementptr inbounds nuw i8, ptr %4, i64 105
  %2028 = getelementptr inbounds nuw i8, ptr %4, i64 113
  %2029 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %2030 = getelementptr inbounds nuw i8, ptr %4, i64 129
  %2031 = getelementptr inbounds nuw i8, ptr %4, i64 137
  %2032 = getelementptr inbounds nuw i8, ptr %4, i64 145
  %2033 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %2034 = getelementptr inbounds nuw i8, ptr %4, i64 161
  %2035 = getelementptr inbounds nuw i8, ptr %4, i64 169
  %2036 = getelementptr inbounds nuw i8, ptr %4, i64 177
  %2037 = getelementptr inbounds nuw i8, ptr %4, i64 185
  br label %2221

2038:                                             ; preds = %1479, %2209
  %2039 = phi i32 [ %1982, %1479 ], [ %2210, %2209 ]
  %2040 = phi i64 [ 0, %1479 ], [ %2215, %2209 ]
  %2041 = getelementptr inbounds nuw [13 x %struct.XSUM_testdata64_t], ptr @XSUM_XXH3_withSecret_testdata, i64 0, i64 %2040
  %2042 = load i32, ptr %2041, align 8
  %2043 = getelementptr i8, ptr %2041, i64 16
  %2044 = load i64, ptr %2043, align 8
  %2045 = zext i32 %2042 to i64
  %2046 = icmp ne i32 %2042, 0
  br i1 %2046, label %2047, label %2050

2047:                                             ; preds = %2038
  %2048 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecret(ptr nocapture noundef nonnull %7, i64 noundef %2045, ptr nocapture noundef nonnull %8, i64 noundef 147) #33
  %2049 = icmp eq i64 %2048, %2044
  br i1 %2049, label %2074, label %2063

2050:                                             ; preds = %2038
  %2051 = load i64, ptr %1480, align 1
  %2052 = load i64, ptr %1481, align 1
  %2053 = xor i64 %2052, %2051
  %2054 = lshr i64 %2053, 33
  %2055 = xor i64 %2054, %2053
  %2056 = mul i64 %2055, -4417276706812531889
  %2057 = lshr i64 %2056, 29
  %2058 = xor i64 %2057, %2056
  %2059 = mul i64 %2058, 1609587929392839161
  %2060 = lshr i64 %2059, 32
  %2061 = xor i64 %2060, %2059
  %2062 = icmp eq i64 %2061, %2044
  br i1 %2062, label %2090, label %2063

2063:                                             ; preds = %2050, %2047
  %2064 = phi i64 [ %2061, %2050 ], [ %2048, %2047 ]
  %2065 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2039) #29
  %2066 = lshr i64 %2064, 32
  %2067 = trunc nuw i64 %2066 to i32
  %2068 = trunc i64 %2064 to i32
  %2069 = lshr i64 %2044, 32
  %2070 = trunc nuw i64 %2069 to i32
  %2071 = trunc i64 %2044 to i32
  %2072 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2067, i32 noundef %2068, i32 noundef %2070, i32 noundef %2071) #29
  %2073 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2074:                                             ; preds = %2047
  %2075 = add nsw i32 %2039, 1
  store i32 %2075, ptr @XSUM_checkResult64.nbTests, align 4
  %2076 = icmp ugt i32 %2042, 240
  br i1 %2076, label %2077, label %2094

2077:                                             ; preds = %2074
  %2078 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecretandSeed(ptr nocapture noundef nonnull %7, i64 noundef %2045, ptr nocapture noundef nonnull %8, i64 noundef 147, i64 noundef 0) #33
  %2079 = icmp eq i64 %2078, %2044
  br i1 %2079, label %2090, label %2080

2080:                                             ; preds = %2077
  %2081 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2075) #29
  %2082 = lshr i64 %2078, 32
  %2083 = trunc nuw i64 %2082 to i32
  %2084 = trunc i64 %2078 to i32
  %2085 = lshr i64 %2044, 32
  %2086 = trunc nuw i64 %2085 to i32
  %2087 = trunc i64 %2044 to i32
  %2088 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2083, i32 noundef %2084, i32 noundef %2086, i32 noundef %2087) #29
  %2089 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2090:                                             ; preds = %2077, %2050
  %2091 = phi i32 [ 1, %2050 ], [ 2, %2077 ]
  %2092 = phi ptr [ null, %2050 ], [ %7, %2077 ]
  %2093 = add nsw i32 %2039, %2091
  store i32 %2093, ptr @XSUM_checkResult64.nbTests, align 4
  br label %2094

2094:                                             ; preds = %2090, %2074
  %2095 = phi i32 [ %2075, %2074 ], [ %2093, %2090 ]
  %2096 = phi i1 [ false, %2074 ], [ %2046, %2090 ]
  %2097 = phi ptr [ %7, %2074 ], [ %2092, %2090 ]
  %2098 = call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #30
  %2099 = icmp eq ptr %2098, null
  br i1 %2099, label %2100, label %2101

2100:                                             ; preds = %2094
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 479, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH3_withSecret) #28
  unreachable

2101:                                             ; preds = %2094
  %2102 = ptrtoint ptr %2098 to i64
  %2103 = and i64 %2102, 63
  %2104 = sub nuw nsw i64 64, %2103
  %2105 = getelementptr inbounds nuw i8, ptr %2098, i64 %2104
  %2106 = ptrtoint ptr %2105 to i64
  %2107 = and i64 %2106, 63
  %2108 = icmp eq i64 %2107, 0
  call void @llvm.assume(i1 %2108)
  %2109 = trunc nuw nsw i64 %2104 to i8
  %2110 = getelementptr inbounds i8, ptr %2105, i64 -1
  store i8 %2109, ptr %2110, align 1
  %2111 = getelementptr inbounds nuw i8, ptr %2105, i64 552
  %2112 = getelementptr inbounds nuw i8, ptr %2105, i64 568
  %2113 = getelementptr inbounds nuw i8, ptr %2105, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2113, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2105, align 64
  %2114 = getelementptr inbounds nuw i8, ptr %2105, i64 8
  store i64 -7046029288634856825, ptr %2114, align 8
  %2115 = getelementptr inbounds nuw i8, ptr %2105, i64 16
  store i64 -4417276706812531889, ptr %2115, align 16
  %2116 = getelementptr inbounds nuw i8, ptr %2105, i64 24
  store i64 1609587929392839161, ptr %2116, align 8
  %2117 = getelementptr inbounds nuw i8, ptr %2105, i64 32
  store i64 -8796714831421723037, ptr %2117, align 32
  %2118 = getelementptr inbounds nuw i8, ptr %2105, i64 40
  store i64 2246822519, ptr %2118, align 8
  %2119 = getelementptr inbounds nuw i8, ptr %2105, i64 48
  store i64 2870177450012600261, ptr %2119, align 16
  %2120 = getelementptr inbounds nuw i8, ptr %2105, i64 56
  store i64 2654435761, ptr %2120, align 8
  store i64 0, ptr %2111, align 8
  store ptr %8, ptr %2112, align 8
  %2121 = getelementptr inbounds nuw i8, ptr %2105, i64 544
  store i64 83, ptr %2121, align 32
  %2122 = getelementptr inbounds nuw i8, ptr %2105, i64 536
  store i64 10, ptr %2122, align 8
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2105, ptr nocapture noundef %2097, i64 noundef %2045)
  %2123 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %2105) #33
  %2124 = icmp eq i64 %2123, %2044
  br i1 %2124, label %2135, label %2125

2125:                                             ; preds = %2101
  %2126 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2095) #29
  %2127 = lshr i64 %2123, 32
  %2128 = trunc nuw i64 %2127 to i32
  %2129 = trunc i64 %2123 to i32
  %2130 = lshr i64 %2044, 32
  %2131 = trunc nuw i64 %2130 to i32
  %2132 = trunc i64 %2044 to i32
  %2133 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2128, i32 noundef %2129, i32 noundef %2131, i32 noundef %2132) #29
  %2134 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2135:                                             ; preds = %2101
  %2136 = add nsw i32 %2095, 1
  store i32 %2136, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2113, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2105, align 64
  store i64 -7046029288634856825, ptr %2114, align 8
  store i64 -4417276706812531889, ptr %2115, align 16
  store i64 1609587929392839161, ptr %2116, align 8
  store i64 -8796714831421723037, ptr %2117, align 32
  store i64 2246822519, ptr %2118, align 8
  store i64 2870177450012600261, ptr %2119, align 16
  store i64 2654435761, ptr %2120, align 8
  store i64 0, ptr %2111, align 8
  store ptr %8, ptr %2112, align 8
  store i64 83, ptr %2121, align 32
  store i64 10, ptr %2122, align 8
  br i1 %2046, label %2137, label %2154

2137:                                             ; preds = %2135
  %2138 = call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %2045, i64 2)
  br label %2139

2139:                                             ; preds = %2139, %2137
  %2140 = phi i64 [ 0, %2137 ], [ %2150, %2139 ]
  %2141 = load i64, ptr @XSUM_rand.seed, align 8
  %2142 = mul i64 %2141, -7046029288634856819
  store i64 %2142, ptr @XSUM_rand.seed, align 8
  %2143 = lshr i64 %2142, 40
  %2144 = urem i64 %2143, %2138
  %2145 = add nuw nsw i64 %2144, %2140
  %2146 = icmp ugt i64 %2145, %2045
  %2147 = sub nuw nsw i64 %2045, %2140
  %2148 = select i1 %2146, i64 %2147, i64 %2144
  %2149 = getelementptr inbounds nuw i8, ptr %2097, i64 %2140
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2105, ptr nocapture noundef %2149, i64 noundef %2148)
  %2150 = add i64 %2148, %2140
  %2151 = icmp ult i64 %2150, %2045
  br i1 %2151, label %2139, label %2152, !llvm.loop !59

2152:                                             ; preds = %2139
  %2153 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  br label %2154

2154:                                             ; preds = %2152, %2135
  %2155 = phi i32 [ %2153, %2152 ], [ %2136, %2135 ]
  %2156 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %2105) #33
  %2157 = icmp eq i64 %2156, %2044
  br i1 %2157, label %2168, label %2158

2158:                                             ; preds = %2154
  %2159 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2155) #29
  %2160 = lshr i64 %2156, 32
  %2161 = trunc nuw i64 %2160 to i32
  %2162 = trunc i64 %2156 to i32
  %2163 = lshr i64 %2044, 32
  %2164 = trunc nuw i64 %2163 to i32
  %2165 = trunc i64 %2044 to i32
  %2166 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2161, i32 noundef %2162, i32 noundef %2164, i32 noundef %2165) #29
  %2167 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2168:                                             ; preds = %2154
  %2169 = add nsw i32 %2155, 1
  store i32 %2169, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2113, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2105, align 64
  store i64 -7046029288634856825, ptr %2114, align 8
  store i64 -4417276706812531889, ptr %2115, align 16
  store i64 1609587929392839161, ptr %2116, align 8
  store i64 -8796714831421723037, ptr %2117, align 32
  store i64 2246822519, ptr %2118, align 8
  store i64 2870177450012600261, ptr %2119, align 16
  store i64 2654435761, ptr %2120, align 8
  store i64 0, ptr %2111, align 8
  store ptr %8, ptr %2112, align 8
  store i64 83, ptr %2121, align 32
  store i64 10, ptr %2122, align 8
  br i1 %2046, label %2170, label %2177

2170:                                             ; preds = %2168, %2170
  %2171 = phi i64 [ %2173, %2170 ], [ 0, %2168 ]
  %2172 = getelementptr inbounds nuw i8, ptr %2097, i64 %2171
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2105, ptr nocapture noundef %2172, i64 noundef 1)
  %2173 = add nuw nsw i64 %2171, 1
  %2174 = icmp eq i64 %2173, %2045
  br i1 %2174, label %2175, label %2170, !llvm.loop !62

2175:                                             ; preds = %2170
  %2176 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  br label %2177

2177:                                             ; preds = %2175, %2168
  %2178 = phi i32 [ %2176, %2175 ], [ %2169, %2168 ]
  %2179 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %2105) #33
  %2180 = icmp eq i64 %2179, %2044
  br i1 %2180, label %2191, label %2181

2181:                                             ; preds = %2177
  %2182 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2178) #29
  %2183 = lshr i64 %2179, 32
  %2184 = trunc nuw i64 %2183 to i32
  %2185 = trunc i64 %2179 to i32
  %2186 = lshr i64 %2044, 32
  %2187 = trunc nuw i64 %2186 to i32
  %2188 = trunc i64 %2044 to i32
  %2189 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2184, i32 noundef %2185, i32 noundef %2187, i32 noundef %2188) #29
  %2190 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2191:                                             ; preds = %2177
  %2192 = add nsw i32 %2178, 1
  store i32 %2192, ptr @XSUM_checkResult64.nbTests, align 4
  br i1 %2096, label %2193, label %2209

2193:                                             ; preds = %2191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2113, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2105, align 64
  store i64 -7046029288634856825, ptr %2114, align 8
  store i64 -4417276706812531889, ptr %2115, align 16
  store i64 1609587929392839161, ptr %2116, align 8
  store i64 -8796714831421723037, ptr %2117, align 32
  store i64 2246822519, ptr %2118, align 8
  store i64 2870177450012600261, ptr %2119, align 16
  store i64 2654435761, ptr %2120, align 8
  store i64 17, ptr %2111, align 8
  %2194 = getelementptr inbounds nuw i8, ptr %2105, i64 516
  store ptr %8, ptr %2112, align 8
  store i64 83, ptr %2121, align 32
  store i64 10, ptr %2122, align 8
  store i32 1, ptr %2194, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2105, ptr nocapture noundef %2097, i64 noundef %2045)
  %2195 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %2105) #33
  %2196 = icmp eq i64 %2195, %2044
  br i1 %2196, label %2207, label %2197

2197:                                             ; preds = %2193
  %2198 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2192) #29
  %2199 = lshr i64 %2195, 32
  %2200 = trunc nuw i64 %2199 to i32
  %2201 = trunc i64 %2195 to i32
  %2202 = lshr i64 %2044, 32
  %2203 = trunc nuw i64 %2202 to i32
  %2204 = trunc i64 %2044 to i32
  %2205 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2200, i32 noundef %2201, i32 noundef %2203, i32 noundef %2204) #29
  %2206 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2207:                                             ; preds = %2193
  %2208 = add nsw i32 %2178, 2
  store i32 %2208, ptr @XSUM_checkResult64.nbTests, align 4
  br label %2209

2209:                                             ; preds = %2191, %2207
  %2210 = phi i32 [ %2192, %2191 ], [ %2208, %2207 ]
  %2211 = load i8, ptr %2110, align 1
  %2212 = zext i8 %2211 to i64
  %2213 = sub nsw i64 0, %2212
  %2214 = getelementptr inbounds i8, ptr %2105, i64 %2213
  call void @free(ptr noundef nonnull %2214) #29
  %2215 = add nuw nsw i64 %2040, 1
  %2216 = icmp eq i64 %2215, 13
  br i1 %2216, label %1989, label %2038, !llvm.loop !63

2217:                                             ; preds = %2924
  %2218 = getelementptr inbounds nuw i8, ptr %7, i64 79
  %2219 = getelementptr inbounds nuw i8, ptr %7, i64 87
  %2220 = getelementptr inbounds nuw i8, ptr %7, i64 95
  br label %2942

2221:                                             ; preds = %1989, %2924
  %2222 = phi i64 [ 0, %1989 ], [ %2930, %2924 ]
  %2223 = getelementptr inbounds nuw [26 x %struct.XSUM_testdata128_t], ptr @XSUM_XXH128_testdata, i64 0, i64 %2222
  %2224 = load i32, ptr %2223, align 16
  %2225 = zext i32 %2224 to i64
  %2226 = getelementptr inbounds nuw i8, ptr %2223, i64 8
  %2227 = load i64, ptr %2226, align 8
  %2228 = getelementptr inbounds nuw i8, ptr %2223, i64 16
  %2229 = load i64, ptr %2228, align 16
  %2230 = getelementptr inbounds nuw i8, ptr %2223, i64 24
  %2231 = load i64, ptr %2230, align 8
  %2232 = icmp eq i32 %2224, 0
  br i1 %2232, label %2233, label %2254

2233:                                             ; preds = %2221
  %2234 = xor i64 %2227, 7507096552062056628
  %2235 = lshr i64 %2234, 33
  %2236 = xor i64 %2235, %2234
  %2237 = mul i64 %2236, -4417276706812531889
  %2238 = lshr i64 %2237, 29
  %2239 = xor i64 %2238, %2237
  %2240 = mul i64 %2239, 1609587929392839161
  %2241 = lshr i64 %2240, 32
  %2242 = xor i64 %2241, %2240
  %2243 = xor i64 %2227, -7613947547284439735
  %2244 = lshr i64 %2243, 33
  %2245 = xor i64 %2244, %2243
  %2246 = mul i64 %2245, -4417276706812531889
  %2247 = lshr i64 %2246, 29
  %2248 = xor i64 %2247, %2246
  %2249 = mul i64 %2248, 1609587929392839161
  %2250 = lshr i64 %2249, 32
  %2251 = xor i64 %2250, %2249
  %2252 = insertvalue { i64, i64 } poison, i64 %2242, 0
  %2253 = insertvalue { i64, i64 } %2252, i64 %2251, 1
  br label %2256

2254:                                             ; preds = %2221
  %2255 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef nonnull %7, i64 noundef %2225, i64 noundef %2227) #33
  br label %2256

2256:                                             ; preds = %2254, %2233
  %2257 = phi { i64, i64 } [ %2253, %2233 ], [ %2255, %2254 ]
  %2258 = phi ptr [ inttoptr (i64 8 to ptr), %2233 ], [ %62, %2254 ]
  %2259 = phi ptr [ inttoptr (i64 16 to ptr), %2233 ], [ %9, %2254 ]
  %2260 = phi ptr [ inttoptr (i64 24 to ptr), %2233 ], [ %63, %2254 ]
  %2261 = phi ptr [ inttoptr (i64 32 to ptr), %2233 ], [ %10, %2254 ]
  %2262 = phi ptr [ inttoptr (i64 40 to ptr), %2233 ], [ %64, %2254 ]
  %2263 = phi ptr [ inttoptr (i64 48 to ptr), %2233 ], [ %11, %2254 ]
  %2264 = phi ptr [ inttoptr (i64 56 to ptr), %2233 ], [ %65, %2254 ]
  %2265 = phi ptr [ null, %2233 ], [ %7, %2254 ]
  %2266 = extractvalue { i64, i64 } %2257, 0
  %2267 = extractvalue { i64, i64 } %2257, 1
  %2268 = icmp eq i64 %2266, %2229
  %2269 = icmp eq i64 %2267, %2231
  %2270 = select i1 %2268, i1 %2269, i1 false
  %2271 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br i1 %2270, label %2288, label %2272

2272:                                             ; preds = %2256
  %2273 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2271) #29
  %2274 = lshr i64 %2266, 32
  %2275 = trunc nuw i64 %2274 to i32
  %2276 = trunc i64 %2266 to i32
  %2277 = lshr i64 %2267, 32
  %2278 = trunc nuw i64 %2277 to i32
  %2279 = trunc i64 %2267 to i32
  %2280 = lshr i64 %2229, 32
  %2281 = trunc nuw i64 %2280 to i32
  %2282 = trunc i64 %2229 to i32
  %2283 = lshr i64 %2231, 32
  %2284 = trunc nuw i64 %2283 to i32
  %2285 = trunc i64 %2231 to i32
  %2286 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2275, i32 noundef %2276, i32 noundef %2278, i32 noundef %2279, i32 noundef %2281, i32 noundef %2282, i32 noundef %2284, i32 noundef %2285) #29
  %2287 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2288:                                             ; preds = %2256
  %2289 = add nsw i32 %2271, 1
  store i32 %2289, ptr @XSUM_checkResult128.nbTests, align 4
  %2290 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef readonly %2265, i64 noundef range(i64 0, 4294967296) %2225, i64 noundef %2227) #33
  %2291 = extractvalue { i64, i64 } %2290, 0
  %2292 = extractvalue { i64, i64 } %2290, 1
  %2293 = icmp eq i64 %2291, %2229
  %2294 = icmp eq i64 %2292, %2231
  %2295 = select i1 %2293, i1 %2294, i1 false
  br i1 %2295, label %2312, label %2296

2296:                                             ; preds = %2288
  %2297 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2289) #29
  %2298 = lshr i64 %2291, 32
  %2299 = trunc nuw i64 %2298 to i32
  %2300 = trunc i64 %2291 to i32
  %2301 = lshr i64 %2292, 32
  %2302 = trunc nuw i64 %2301 to i32
  %2303 = trunc i64 %2292 to i32
  %2304 = lshr i64 %2229, 32
  %2305 = trunc nuw i64 %2304 to i32
  %2306 = trunc i64 %2229 to i32
  %2307 = lshr i64 %2231, 32
  %2308 = trunc nuw i64 %2307 to i32
  %2309 = trunc i64 %2231 to i32
  %2310 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2299, i32 noundef %2300, i32 noundef %2302, i32 noundef %2303, i32 noundef %2305, i32 noundef %2306, i32 noundef %2308, i32 noundef %2309) #29
  %2311 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2312:                                             ; preds = %2288
  %2313 = add nsw i32 %2271, 2
  store i32 %2313, ptr @XSUM_checkResult128.nbTests, align 4
  %2314 = icmp eq i64 %2227, 0
  br i1 %2314, label %2340, label %2315

2315:                                             ; preds = %2312
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %3) #29
  %2316 = add i64 %2227, -4734510112055689544
  %2317 = sub i64 2066345149520216444, %2227
  %2318 = add i64 %2227, -2623469361688619810
  %2319 = sub i64 2262974939099578482, %2227
  %2320 = add i64 %2227, 8711581037947681227
  %2321 = sub i64 2410270004345854594, %2227
  %2322 = add i64 %2227, -8204357891075471176
  %2323 = sub i64 5487137525590930912, %2227
  %2324 = add i64 %2227, -3818837453329782724
  %2325 = sub i64 -6688317018830679928, %2227
  %2326 = add i64 %2227, 5690594596133299313
  %2327 = sub i64 -2833645246901970632, %2227
  %2328 = add i64 %2227, 4554437623014685352
  %2329 = sub i64 2111919702937427193, %2227
  %2330 = add i64 %2227, 3556072174620004746
  %2331 = sub i64 7238261902898274248, %2227
  %2332 = add i64 %2227, -4329134394285701654
  %2333 = sub i64 -1485321483350670907, %2227
  %2334 = add i64 %2227, 5321830579834785047
  %2335 = sub i64 -7032137544937171245, %2227
  %2336 = add i64 %2227, -242834301215959509
  %2337 = sub i64 -3588858202114426737, %2227
  %2338 = add i64 %2227, 2883454493032893253
  %2339 = sub i64 9097354517224871855, %2227
  br label %2646

2340:                                             ; preds = %2312
  %2341 = icmp ult i32 %2224, 17
  br i1 %2341, label %2342, label %2462

2342:                                             ; preds = %2340
  %2343 = icmp samesign ugt i32 %2224, 8
  br i1 %2343, label %2344, label %2386

2344:                                             ; preds = %2342
  %2345 = icmp ne ptr %2265, null
  call void @llvm.assume(i1 %2345)
  %2346 = load i64, ptr %2265, align 16
  %2347 = getelementptr inbounds nuw i8, ptr %2265, i64 %2225
  %2348 = getelementptr inbounds i8, ptr %2347, i64 -8
  %2349 = load i64, ptr %2348, align 1
  %2350 = xor i64 %2346, %2349
  %2351 = xor i64 %2350, 6455697860950631241
  %2352 = zext i64 %2351 to i128
  %2353 = mul nuw i128 %2352, 11400714785074694791
  %2354 = trunc i128 %2353 to i64
  %2355 = lshr i128 %2353, 64
  %2356 = trunc nuw i128 %2355 to i64
  %2357 = shl nuw nsw i64 %2225, 54
  %2358 = add nsw i64 %2357, -18014398509481984
  %2359 = add i64 %2358, %2354
  %2360 = xor i64 %2349, -4466874330221494952
  %2361 = and i64 %2360, 4294967295
  %2362 = mul nuw i64 %2361, 2246822518
  %2363 = add i64 %2362, %2360
  %2364 = add i64 %2363, %2356
  %2365 = call noundef i64 @llvm.bswap.i64(i64 %2364)
  %2366 = xor i64 %2365, %2359
  %2367 = zext i64 %2366 to i128
  %2368 = mul nuw i128 %2367, 14029467366897019727
  %2369 = trunc i128 %2368 to i64
  %2370 = lshr i128 %2368, 64
  %2371 = trunc nuw i128 %2370 to i64
  %2372 = mul i64 %2364, -4417276706812531889
  %2373 = add i64 %2372, %2371
  %2374 = lshr i64 %2369, 37
  %2375 = xor i64 %2374, %2369
  %2376 = mul i64 %2375, 1609587791953885689
  %2377 = lshr i64 %2376, 32
  %2378 = xor i64 %2377, %2376
  %2379 = lshr i64 %2373, 37
  %2380 = xor i64 %2379, %2373
  %2381 = mul i64 %2380, 1609587791953885689
  %2382 = lshr i64 %2381, 32
  %2383 = xor i64 %2382, %2381
  %2384 = insertvalue { i64, i64 } poison, i64 %2378, 0
  %2385 = insertvalue { i64, i64 } %2384, i64 %2383, 1
  br label %2621

2386:                                             ; preds = %2342
  %2387 = icmp samesign ugt i32 %2224, 3
  br i1 %2387, label %2388, label %2423

2388:                                             ; preds = %2386
  %2389 = icmp ne ptr %2265, null
  call void @llvm.assume(i1 %2389)
  %2390 = load i32, ptr %2265, align 16
  %2391 = getelementptr inbounds nuw i8, ptr %2265, i64 %2225
  %2392 = getelementptr inbounds i8, ptr %2391, i64 -4
  %2393 = load i32, ptr %2392, align 1
  %2394 = zext i32 %2390 to i64
  %2395 = zext i32 %2393 to i64
  %2396 = shl nuw i64 %2395, 32
  %2397 = or disjoint i64 %2396, %2394
  %2398 = xor i64 %2397, -4255862940314790740
  %2399 = shl nuw nsw i64 %2225, 2
  %2400 = add nuw nsw i64 %2399, -7046029288634856825
  %2401 = zext i64 %2398 to i128
  %2402 = zext i64 %2400 to i128
  %2403 = mul nuw i128 %2401, %2402
  %2404 = trunc i128 %2403 to i64
  %2405 = lshr i128 %2403, 64
  %2406 = trunc nuw i128 %2405 to i64
  %2407 = shl i64 %2404, 1
  %2408 = add i64 %2407, %2406
  %2409 = lshr i64 %2408, 3
  %2410 = xor i64 %2409, %2404
  %2411 = lshr i64 %2410, 35
  %2412 = xor i64 %2411, %2410
  %2413 = mul i64 %2412, -6939452855193903323
  %2414 = lshr i64 %2413, 28
  %2415 = xor i64 %2414, %2413
  %2416 = lshr i64 %2408, 37
  %2417 = xor i64 %2416, %2408
  %2418 = mul i64 %2417, 1609587791953885689
  %2419 = lshr i64 %2418, 32
  %2420 = xor i64 %2419, %2418
  %2421 = insertvalue { i64, i64 } poison, i64 %2415, 0
  %2422 = insertvalue { i64, i64 } %2421, i64 %2420, 1
  br label %2621

2423:                                             ; preds = %2386
  br i1 %2232, label %2621, label %2424

2424:                                             ; preds = %2423
  %2425 = icmp ne ptr %2265, null
  call void @llvm.assume(i1 %2425)
  %2426 = load i8, ptr %2265, align 16
  %2427 = lshr i64 %2225, 1
  %2428 = getelementptr inbounds nuw i8, ptr %2265, i64 %2427
  %2429 = load i8, ptr %2428, align 1
  %2430 = getelementptr i8, ptr %2265, i64 %2225
  %2431 = getelementptr i8, ptr %2430, i64 -1
  %2432 = load i8, ptr %2431, align 1
  %2433 = zext i8 %2426 to i32
  %2434 = shl nuw nsw i32 %2433, 16
  %2435 = zext i8 %2429 to i32
  %2436 = shl nuw i32 %2435, 24
  %2437 = zext i8 %2432 to i32
  %2438 = shl nuw nsw i32 %2224, 8
  %2439 = or disjoint i32 %2434, %2438
  %2440 = or disjoint i32 %2439, %2436
  %2441 = or disjoint i32 %2440, %2437
  %2442 = call noundef i32 @llvm.bswap.i32(i32 %2441)
  %2443 = call i32 @llvm.fshl.i32(i32 %2442, i32 %2442, i32 13)
  %2444 = xor i32 %2441, -2027464037
  %2445 = zext i32 %2444 to i64
  %2446 = xor i32 %2443, 808198283
  %2447 = zext i32 %2446 to i64
  %2448 = mul i64 %2445, -4417276706812531889
  %2449 = lshr i64 %2448, 29
  %2450 = xor i64 %2449, %2448
  %2451 = mul i64 %2450, 1609587929392839161
  %2452 = lshr i64 %2451, 32
  %2453 = xor i64 %2452, %2451
  %2454 = mul i64 %2447, -4417276706812531889
  %2455 = lshr i64 %2454, 29
  %2456 = xor i64 %2455, %2454
  %2457 = mul i64 %2456, 1609587929392839161
  %2458 = lshr i64 %2457, 32
  %2459 = xor i64 %2458, %2457
  %2460 = insertvalue { i64, i64 } poison, i64 %2453, 0
  %2461 = insertvalue { i64, i64 } %2460, i64 %2459, 1
  br label %2621

2462:                                             ; preds = %2340
  %2463 = icmp ult i32 %2224, 129
  br i1 %2463, label %2464, label %2615

2464:                                             ; preds = %2462
  %2465 = mul i64 %2225, -7046029288634856825
  %2466 = icmp samesign ugt i32 %2224, 32
  br i1 %2466, label %2467, label %2564

2467:                                             ; preds = %2464
  %2468 = icmp samesign ugt i32 %2224, 64
  br i1 %2468, label %2469, label %2532

2469:                                             ; preds = %2467
  %2470 = icmp samesign ugt i32 %2224, 96
  br i1 %2470, label %2471, label %2500

2471:                                             ; preds = %2469
  %2472 = getelementptr inbounds nuw i8, ptr %2265, i64 %2225
  %2473 = getelementptr inbounds i8, ptr %2472, i64 -64
  %2474 = load i64, ptr %2263, align 1
  %2475 = load i64, ptr %2264, align 1
  %2476 = xor i64 %2474, 4554437623014685352
  %2477 = xor i64 %2475, 2111919702937427193
  %2478 = zext i64 %2476 to i128
  %2479 = zext i64 %2477 to i128
  %2480 = mul nuw i128 %2479, %2478
  %2481 = lshr i128 %2480, 64
  %2482 = xor i128 %2481, %2480
  %2483 = trunc i128 %2482 to i64
  %2484 = add i64 %2465, %2483
  %2485 = load i64, ptr %2473, align 1
  %2486 = getelementptr inbounds i8, ptr %2472, i64 -56
  %2487 = load i64, ptr %2486, align 1
  %2488 = add i64 %2487, %2485
  %2489 = xor i64 %2484, %2488
  %2490 = xor i64 %2485, 3556072174620004746
  %2491 = xor i64 %2487, 7238261902898274248
  %2492 = zext i64 %2490 to i128
  %2493 = zext i64 %2491 to i128
  %2494 = mul nuw i128 %2493, %2492
  %2495 = lshr i128 %2494, 64
  %2496 = xor i128 %2495, %2494
  %2497 = trunc i128 %2496 to i64
  %2498 = add i64 %2475, %2474
  %2499 = xor i64 %2498, %2497
  br label %2500

2500:                                             ; preds = %2471, %2469
  %2501 = phi i64 [ %2489, %2471 ], [ %2465, %2469 ]
  %2502 = phi i64 [ %2499, %2471 ], [ 0, %2469 ]
  %2503 = getelementptr inbounds nuw i8, ptr %2265, i64 %2225
  %2504 = getelementptr inbounds i8, ptr %2503, i64 -48
  %2505 = load i64, ptr %2261, align 1
  %2506 = load i64, ptr %2262, align 1
  %2507 = xor i64 %2505, -3818837453329782724
  %2508 = xor i64 %2506, -6688317018830679928
  %2509 = zext i64 %2507 to i128
  %2510 = zext i64 %2508 to i128
  %2511 = mul nuw i128 %2510, %2509
  %2512 = lshr i128 %2511, 64
  %2513 = xor i128 %2512, %2511
  %2514 = trunc i128 %2513 to i64
  %2515 = add i64 %2501, %2514
  %2516 = load i64, ptr %2504, align 1
  %2517 = getelementptr inbounds i8, ptr %2503, i64 -40
  %2518 = load i64, ptr %2517, align 1
  %2519 = add i64 %2518, %2516
  %2520 = xor i64 %2515, %2519
  %2521 = xor i64 %2516, 5690594596133299313
  %2522 = xor i64 %2518, -2833645246901970632
  %2523 = zext i64 %2521 to i128
  %2524 = zext i64 %2522 to i128
  %2525 = mul nuw i128 %2524, %2523
  %2526 = lshr i128 %2525, 64
  %2527 = xor i128 %2526, %2525
  %2528 = trunc i128 %2527 to i64
  %2529 = add i64 %2502, %2528
  %2530 = add i64 %2506, %2505
  %2531 = xor i64 %2529, %2530
  br label %2532

2532:                                             ; preds = %2500, %2467
  %2533 = phi i64 [ %2520, %2500 ], [ %2465, %2467 ]
  %2534 = phi i64 [ %2531, %2500 ], [ 0, %2467 ]
  %2535 = getelementptr inbounds nuw i8, ptr %2265, i64 %2225
  %2536 = getelementptr inbounds i8, ptr %2535, i64 -32
  %2537 = load i64, ptr %2259, align 1
  %2538 = load i64, ptr %2260, align 1
  %2539 = xor i64 %2537, 8711581037947681227
  %2540 = xor i64 %2538, 2410270004345854594
  %2541 = zext i64 %2539 to i128
  %2542 = zext i64 %2540 to i128
  %2543 = mul nuw i128 %2542, %2541
  %2544 = lshr i128 %2543, 64
  %2545 = xor i128 %2544, %2543
  %2546 = trunc i128 %2545 to i64
  %2547 = add i64 %2533, %2546
  %2548 = load i64, ptr %2536, align 1
  %2549 = getelementptr inbounds i8, ptr %2535, i64 -24
  %2550 = load i64, ptr %2549, align 1
  %2551 = add i64 %2550, %2548
  %2552 = xor i64 %2547, %2551
  %2553 = xor i64 %2548, -8204357891075471176
  %2554 = xor i64 %2550, 5487137525590930912
  %2555 = zext i64 %2553 to i128
  %2556 = zext i64 %2554 to i128
  %2557 = mul nuw i128 %2556, %2555
  %2558 = lshr i128 %2557, 64
  %2559 = xor i128 %2558, %2557
  %2560 = trunc i128 %2559 to i64
  %2561 = add i64 %2534, %2560
  %2562 = add i64 %2538, %2537
  %2563 = xor i64 %2561, %2562
  br label %2564

2564:                                             ; preds = %2532, %2464
  %2565 = phi i64 [ %2552, %2532 ], [ %2465, %2464 ]
  %2566 = phi i64 [ %2563, %2532 ], [ 0, %2464 ]
  %2567 = getelementptr inbounds nuw i8, ptr %2265, i64 %2225
  %2568 = getelementptr inbounds i8, ptr %2567, i64 -16
  %2569 = load i64, ptr %2265, align 16
  %2570 = load i64, ptr %2258, align 1
  %2571 = xor i64 %2569, -4734510112055689544
  %2572 = xor i64 %2570, 2066345149520216444
  %2573 = zext i64 %2571 to i128
  %2574 = zext i64 %2572 to i128
  %2575 = mul nuw i128 %2574, %2573
  %2576 = lshr i128 %2575, 64
  %2577 = xor i128 %2576, %2575
  %2578 = trunc i128 %2577 to i64
  %2579 = add i64 %2565, %2578
  %2580 = load i64, ptr %2568, align 1
  %2581 = getelementptr inbounds i8, ptr %2567, i64 -8
  %2582 = load i64, ptr %2581, align 1
  %2583 = add i64 %2582, %2580
  %2584 = xor i64 %2579, %2583
  %2585 = xor i64 %2580, -2623469361688619810
  %2586 = xor i64 %2582, 2262974939099578482
  %2587 = zext i64 %2585 to i128
  %2588 = zext i64 %2586 to i128
  %2589 = mul nuw i128 %2588, %2587
  %2590 = lshr i128 %2589, 64
  %2591 = xor i128 %2590, %2589
  %2592 = trunc i128 %2591 to i64
  %2593 = add i64 %2566, %2592
  %2594 = add i64 %2570, %2569
  %2595 = xor i64 %2593, %2594
  %2596 = add i64 %2595, %2584
  %2597 = mul i64 %2584, -7046029288634856825
  %2598 = mul i64 %2595, -8796714831421723037
  %2599 = mul i64 %2225, -4417276706812531889
  %2600 = add i64 %2597, %2599
  %2601 = add i64 %2600, %2598
  %2602 = lshr i64 %2596, 37
  %2603 = xor i64 %2602, %2596
  %2604 = mul i64 %2603, 1609587791953885689
  %2605 = lshr i64 %2604, 32
  %2606 = xor i64 %2605, %2604
  %2607 = lshr i64 %2601, 37
  %2608 = xor i64 %2607, %2601
  %2609 = mul i64 %2608, 1609587791953885689
  %2610 = lshr i64 %2609, 32
  %2611 = xor i64 %2610, %2609
  %2612 = sub i64 0, %2611
  %2613 = insertvalue { i64, i64 } poison, i64 %2606, 0
  %2614 = insertvalue { i64, i64 } %2613, i64 %2612, 1
  br label %2621

2615:                                             ; preds = %2462
  %2616 = icmp ult i32 %2224, 241
  br i1 %2616, label %2617, label %2619

2617:                                             ; preds = %2615
  %2618 = call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef readonly %2265, i64 noundef range(i64 0, 4294967296) %2225, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #33
  br label %2621

2619:                                             ; preds = %2615
  %2620 = call fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noundef readonly %2265, i64 noundef range(i64 0, 4294967296) %2225) #29
  br label %2621

2621:                                             ; preds = %2619, %2617, %2564, %2424, %2423, %2388, %2344
  %2622 = phi { i64, i64 } [ %2614, %2564 ], [ %2618, %2617 ], [ %2620, %2619 ], [ %2385, %2344 ], [ %2422, %2388 ], [ %2461, %2424 ], [ { i64 6918025063187695999, i64 -7374073936536430376 }, %2423 ]
  %2623 = extractvalue { i64, i64 } %2622, 0
  %2624 = extractvalue { i64, i64 } %2622, 1
  %2625 = icmp eq i64 %2623, %2229
  %2626 = icmp eq i64 %2624, %2231
  %2627 = select i1 %2625, i1 %2626, i1 false
  br i1 %2627, label %2644, label %2628

2628:                                             ; preds = %2621
  %2629 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2313) #29
  %2630 = lshr i64 %2623, 32
  %2631 = trunc nuw i64 %2630 to i32
  %2632 = trunc i64 %2623 to i32
  %2633 = lshr i64 %2624, 32
  %2634 = trunc nuw i64 %2633 to i32
  %2635 = trunc i64 %2624 to i32
  %2636 = lshr i64 %2229, 32
  %2637 = trunc nuw i64 %2636 to i32
  %2638 = trunc i64 %2229 to i32
  %2639 = lshr i64 %2231, 32
  %2640 = trunc nuw i64 %2639 to i32
  %2641 = trunc i64 %2231 to i32
  %2642 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2631, i32 noundef %2632, i32 noundef %2634, i32 noundef %2635, i32 noundef %2637, i32 noundef %2638, i32 noundef %2640, i32 noundef %2641) #29
  %2643 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2644:                                             ; preds = %2621
  %2645 = add nsw i32 %2271, 3
  store i32 %2645, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %3) #29
  br label %2646

2646:                                             ; preds = %2644, %2315
  %2647 = phi i64 [ -4734510112055689544, %2644 ], [ %2316, %2315 ]
  %2648 = phi i64 [ 2066345149520216444, %2644 ], [ %2317, %2315 ]
  %2649 = phi i64 [ -2623469361688619810, %2644 ], [ %2318, %2315 ]
  %2650 = phi i64 [ 2262974939099578482, %2644 ], [ %2319, %2315 ]
  %2651 = phi i64 [ 8711581037947681227, %2644 ], [ %2320, %2315 ]
  %2652 = phi i64 [ 2410270004345854594, %2644 ], [ %2321, %2315 ]
  %2653 = phi i64 [ -8204357891075471176, %2644 ], [ %2322, %2315 ]
  %2654 = phi i64 [ 5487137525590930912, %2644 ], [ %2323, %2315 ]
  %2655 = phi i64 [ -3818837453329782724, %2644 ], [ %2324, %2315 ]
  %2656 = phi i64 [ -6688317018830679928, %2644 ], [ %2325, %2315 ]
  %2657 = phi i64 [ 5690594596133299313, %2644 ], [ %2326, %2315 ]
  %2658 = phi i64 [ -2833645246901970632, %2644 ], [ %2327, %2315 ]
  %2659 = phi i64 [ 4554437623014685352, %2644 ], [ %2328, %2315 ]
  %2660 = phi i64 [ 2111919702937427193, %2644 ], [ %2329, %2315 ]
  %2661 = phi i64 [ 3556072174620004746, %2644 ], [ %2330, %2315 ]
  %2662 = phi i64 [ 7238261902898274248, %2644 ], [ %2331, %2315 ]
  %2663 = phi i64 [ -4329134394285701654, %2644 ], [ %2332, %2315 ]
  %2664 = phi i64 [ -1485321483350670907, %2644 ], [ %2333, %2315 ]
  %2665 = phi i64 [ 5321830579834785047, %2644 ], [ %2334, %2315 ]
  %2666 = phi i64 [ -7032137544937171245, %2644 ], [ %2335, %2315 ]
  %2667 = phi i64 [ -242834301215959509, %2644 ], [ %2336, %2315 ]
  %2668 = phi i64 [ -3588858202114426737, %2644 ], [ %2337, %2315 ]
  %2669 = phi i64 [ 2883454493032893253, %2644 ], [ %2338, %2315 ]
  %2670 = phi i64 [ 9097354517224871855, %2644 ], [ %2339, %2315 ]
  %2671 = phi i64 [ 0, %2644 ], [ %2227, %2315 ]
  %2672 = phi i32 [ %2645, %2644 ], [ %2313, %2315 ]
  store i64 %2647, ptr %1990, align 1
  store i64 %2648, ptr %1991, align 1
  store i64 %2649, ptr %1992, align 1
  store i64 %2650, ptr %1993, align 1
  store i64 %2651, ptr %1994, align 1
  store i64 %2652, ptr %1995, align 1
  store i64 %2653, ptr %1996, align 1
  store i64 %2654, ptr %1997, align 1
  store i64 %2655, ptr %1998, align 1
  store i64 %2656, ptr %1999, align 1
  store i64 %2657, ptr %2000, align 1
  store i64 %2658, ptr %2001, align 1
  store i64 %2659, ptr %2002, align 1
  store i64 %2660, ptr %2003, align 1
  store i64 %2661, ptr %2004, align 1
  store i64 %2662, ptr %2005, align 1
  store i64 %2663, ptr %2006, align 1
  store i64 %2664, ptr %2007, align 1
  store i64 %2665, ptr %2008, align 1
  store i64 %2666, ptr %2009, align 1
  store i64 %2667, ptr %2010, align 1
  store i64 %2668, ptr %2011, align 1
  store i64 %2669, ptr %2012, align 1
  store i64 %2670, ptr %2013, align 1
  %2673 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecretandSeed(ptr nocapture noundef %2265, i64 noundef %2225, ptr nocapture noundef %1990, i64 noundef 192, i64 noundef %2671) #33
  %2674 = extractvalue { i64, i64 } %2673, 0
  %2675 = extractvalue { i64, i64 } %2673, 1
  %2676 = icmp eq i64 %2674, %2229
  %2677 = icmp eq i64 %2675, %2231
  %2678 = select i1 %2676, i1 %2677, i1 false
  br i1 %2678, label %2695, label %2679

2679:                                             ; preds = %2646
  %2680 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2672) #29
  %2681 = lshr i64 %2674, 32
  %2682 = trunc nuw i64 %2681 to i32
  %2683 = trunc i64 %2674 to i32
  %2684 = lshr i64 %2675, 32
  %2685 = trunc nuw i64 %2684 to i32
  %2686 = trunc i64 %2675 to i32
  %2687 = lshr i64 %2229, 32
  %2688 = trunc nuw i64 %2687 to i32
  %2689 = trunc i64 %2229 to i32
  %2690 = lshr i64 %2231, 32
  %2691 = trunc nuw i64 %2690 to i32
  %2692 = trunc i64 %2231 to i32
  %2693 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2682, i32 noundef %2683, i32 noundef %2685, i32 noundef %2686, i32 noundef %2688, i32 noundef %2689, i32 noundef %2691, i32 noundef %2692) #29
  %2694 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2695:                                             ; preds = %2646
  %2696 = add nsw i32 %2672, 1
  store i32 %2696, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1990, i8 -103, i64 9, i1 false)
  %2697 = icmp ult i32 %2224, 241
  br i1 %2697, label %2698, label %2723

2698:                                             ; preds = %2695
  %2699 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecretandSeed(ptr nocapture noundef %2265, i64 noundef %2225, ptr nocapture noundef %1990, i64 noundef 192, i64 noundef %2227) #33
  %2700 = extractvalue { i64, i64 } %2699, 0
  %2701 = extractvalue { i64, i64 } %2699, 1
  %2702 = icmp eq i64 %2700, %2229
  %2703 = icmp eq i64 %2701, %2231
  %2704 = select i1 %2702, i1 %2703, i1 false
  br i1 %2704, label %2721, label %2705

2705:                                             ; preds = %2698
  %2706 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2696) #29
  %2707 = lshr i64 %2700, 32
  %2708 = trunc nuw i64 %2707 to i32
  %2709 = trunc i64 %2700 to i32
  %2710 = lshr i64 %2701, 32
  %2711 = trunc nuw i64 %2710 to i32
  %2712 = trunc i64 %2701 to i32
  %2713 = lshr i64 %2229, 32
  %2714 = trunc nuw i64 %2713 to i32
  %2715 = trunc i64 %2229 to i32
  %2716 = lshr i64 %2231, 32
  %2717 = trunc nuw i64 %2716 to i32
  %2718 = trunc i64 %2231 to i32
  %2719 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2708, i32 noundef %2709, i32 noundef %2711, i32 noundef %2712, i32 noundef %2714, i32 noundef %2715, i32 noundef %2717, i32 noundef %2718) #29
  %2720 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2721:                                             ; preds = %2698
  %2722 = add nsw i32 %2672, 2
  store i32 %2722, ptr @XSUM_checkResult128.nbTests, align 4
  br label %2723

2723:                                             ; preds = %2721, %2695
  %2724 = phi i32 [ %2722, %2721 ], [ %2696, %2695 ]
  call void @llvm.lifetime.end.p0(i64 193, ptr nonnull %3) #29
  %2725 = call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #30
  %2726 = icmp eq ptr %2725, null
  br i1 %2726, label %2727, label %2728

2727:                                             ; preds = %2723
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 559, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH128) #28
  unreachable

2728:                                             ; preds = %2723
  %2729 = ptrtoint ptr %2725 to i64
  %2730 = and i64 %2729, 63
  %2731 = sub nuw nsw i64 64, %2730
  %2732 = getelementptr inbounds nuw i8, ptr %2725, i64 %2731
  %2733 = ptrtoint ptr %2732 to i64
  %2734 = and i64 %2733, 63
  %2735 = icmp eq i64 %2734, 0
  call void @llvm.assume(i1 %2735)
  %2736 = trunc nuw nsw i64 %2731 to i8
  %2737 = getelementptr inbounds i8, ptr %2732, i64 -1
  store i8 %2736, ptr %2737, align 1
  %2738 = getelementptr inbounds nuw i8, ptr %2732, i64 552
  store i64 0, ptr %2738, align 8
  %2739 = getelementptr inbounds nuw i8, ptr %2732, i64 568
  store ptr null, ptr %2739, align 8
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef nonnull %2732, i64 noundef %2227)
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2732, ptr nocapture noundef %2265, i64 noundef %2225)
  %2740 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2732) #33
  %2741 = extractvalue { i64, i64 } %2740, 0
  %2742 = extractvalue { i64, i64 } %2740, 1
  %2743 = icmp eq i64 %2741, %2229
  %2744 = icmp eq i64 %2742, %2231
  %2745 = select i1 %2743, i1 %2744, i1 false
  br i1 %2745, label %2762, label %2746

2746:                                             ; preds = %2728
  %2747 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2724) #29
  %2748 = lshr i64 %2741, 32
  %2749 = trunc nuw i64 %2748 to i32
  %2750 = trunc i64 %2741 to i32
  %2751 = lshr i64 %2742, 32
  %2752 = trunc nuw i64 %2751 to i32
  %2753 = trunc i64 %2742 to i32
  %2754 = lshr i64 %2229, 32
  %2755 = trunc nuw i64 %2754 to i32
  %2756 = trunc i64 %2229 to i32
  %2757 = lshr i64 %2231, 32
  %2758 = trunc nuw i64 %2757 to i32
  %2759 = trunc i64 %2231 to i32
  %2760 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2749, i32 noundef %2750, i32 noundef %2752, i32 noundef %2753, i32 noundef %2755, i32 noundef %2756, i32 noundef %2758, i32 noundef %2759) #29
  %2761 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2762:                                             ; preds = %2728
  %2763 = add nsw i32 %2724, 1
  store i32 %2763, ptr @XSUM_checkResult128.nbTests, align 4
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef nonnull %2732, i64 noundef %2227)
  br i1 %2232, label %2781, label %2764

2764:                                             ; preds = %2762
  %2765 = call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %2225, i64 2)
  br label %2766

2766:                                             ; preds = %2766, %2764
  %2767 = phi i64 [ 0, %2764 ], [ %2777, %2766 ]
  %2768 = load i64, ptr @XSUM_rand.seed, align 8
  %2769 = mul i64 %2768, -7046029288634856819
  store i64 %2769, ptr @XSUM_rand.seed, align 8
  %2770 = lshr i64 %2769, 40
  %2771 = urem i64 %2770, %2765
  %2772 = add nuw nsw i64 %2771, %2767
  %2773 = icmp ugt i64 %2772, %2225
  %2774 = sub nuw nsw i64 %2225, %2767
  %2775 = select i1 %2773, i64 %2774, i64 %2771
  %2776 = getelementptr inbounds nuw i8, ptr %2265, i64 %2767
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2732, ptr nocapture noundef %2776, i64 noundef %2775)
  %2777 = add i64 %2775, %2767
  %2778 = icmp ult i64 %2777, %2225
  br i1 %2778, label %2766, label %2779, !llvm.loop !59

2779:                                             ; preds = %2766
  %2780 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br label %2781

2781:                                             ; preds = %2779, %2762
  %2782 = phi i32 [ %2780, %2779 ], [ %2763, %2762 ]
  %2783 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2732) #33
  %2784 = extractvalue { i64, i64 } %2783, 0
  %2785 = extractvalue { i64, i64 } %2783, 1
  %2786 = icmp eq i64 %2784, %2229
  %2787 = icmp eq i64 %2785, %2231
  %2788 = select i1 %2786, i1 %2787, i1 false
  br i1 %2788, label %2805, label %2789

2789:                                             ; preds = %2781
  %2790 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2782) #29
  %2791 = lshr i64 %2784, 32
  %2792 = trunc nuw i64 %2791 to i32
  %2793 = trunc i64 %2784 to i32
  %2794 = lshr i64 %2785, 32
  %2795 = trunc nuw i64 %2794 to i32
  %2796 = trunc i64 %2785 to i32
  %2797 = lshr i64 %2229, 32
  %2798 = trunc nuw i64 %2797 to i32
  %2799 = trunc i64 %2229 to i32
  %2800 = lshr i64 %2231, 32
  %2801 = trunc nuw i64 %2800 to i32
  %2802 = trunc i64 %2231 to i32
  %2803 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2792, i32 noundef %2793, i32 noundef %2795, i32 noundef %2796, i32 noundef %2798, i32 noundef %2799, i32 noundef %2801, i32 noundef %2802) #29
  %2804 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2805:                                             ; preds = %2781
  %2806 = add nsw i32 %2782, 1
  store i32 %2806, ptr @XSUM_checkResult128.nbTests, align 4
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef nonnull %2732, i64 noundef %2227)
  br i1 %2232, label %2814, label %2807

2807:                                             ; preds = %2805, %2807
  %2808 = phi i64 [ %2810, %2807 ], [ 0, %2805 ]
  %2809 = getelementptr inbounds nuw i8, ptr %2265, i64 %2808
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2732, ptr nocapture noundef %2809, i64 noundef 1)
  %2810 = add nuw nsw i64 %2808, 1
  %2811 = icmp eq i64 %2810, %2225
  br i1 %2811, label %2812, label %2807, !llvm.loop !64

2812:                                             ; preds = %2807
  %2813 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br label %2814

2814:                                             ; preds = %2812, %2805
  %2815 = phi i32 [ %2813, %2812 ], [ %2806, %2805 ]
  %2816 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2732) #33
  %2817 = extractvalue { i64, i64 } %2816, 0
  %2818 = extractvalue { i64, i64 } %2816, 1
  %2819 = icmp eq i64 %2817, %2229
  %2820 = icmp eq i64 %2818, %2231
  %2821 = select i1 %2819, i1 %2820, i1 false
  br i1 %2821, label %2838, label %2822

2822:                                             ; preds = %2814
  %2823 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2815) #29
  %2824 = lshr i64 %2817, 32
  %2825 = trunc nuw i64 %2824 to i32
  %2826 = trunc i64 %2817 to i32
  %2827 = lshr i64 %2818, 32
  %2828 = trunc nuw i64 %2827 to i32
  %2829 = trunc i64 %2818 to i32
  %2830 = lshr i64 %2229, 32
  %2831 = trunc nuw i64 %2830 to i32
  %2832 = trunc i64 %2229 to i32
  %2833 = lshr i64 %2231, 32
  %2834 = trunc nuw i64 %2833 to i32
  %2835 = trunc i64 %2231 to i32
  %2836 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2825, i32 noundef %2826, i32 noundef %2828, i32 noundef %2829, i32 noundef %2831, i32 noundef %2832, i32 noundef %2834, i32 noundef %2835) #29
  %2837 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2838:                                             ; preds = %2814
  %2839 = add nsw i32 %2815, 1
  store i32 %2839, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %4) #29
  %2840 = add i64 %2227, -4734510112055689544
  %2841 = sub i64 2066345149520216444, %2227
  %2842 = add i64 %2227, -2623469361688619810
  %2843 = sub i64 2262974939099578482, %2227
  %2844 = add i64 %2227, 8711581037947681227
  %2845 = sub i64 2410270004345854594, %2227
  %2846 = add i64 %2227, -8204357891075471176
  %2847 = sub i64 5487137525590930912, %2227
  %2848 = add i64 %2227, -3818837453329782724
  %2849 = sub i64 -6688317018830679928, %2227
  %2850 = add i64 %2227, 5690594596133299313
  %2851 = sub i64 -2833645246901970632, %2227
  %2852 = add i64 %2227, 4554437623014685352
  %2853 = sub i64 2111919702937427193, %2227
  %2854 = add i64 %2227, 3556072174620004746
  %2855 = sub i64 7238261902898274248, %2227
  %2856 = add i64 %2227, -4329134394285701654
  %2857 = sub i64 -1485321483350670907, %2227
  %2858 = add i64 %2227, 5321830579834785047
  %2859 = sub i64 -7032137544937171245, %2227
  %2860 = add i64 %2227, -242834301215959509
  %2861 = sub i64 -3588858202114426737, %2227
  %2862 = add i64 %2227, 2883454493032893253
  %2863 = sub i64 9097354517224871855, %2227
  store i64 %2840, ptr %2014, align 1
  store i64 %2841, ptr %2015, align 1
  store i64 %2842, ptr %2016, align 1
  store i64 %2843, ptr %2017, align 1
  store i64 %2844, ptr %2018, align 1
  store i64 %2845, ptr %2019, align 1
  store i64 %2846, ptr %2020, align 1
  store i64 %2847, ptr %2021, align 1
  store i64 %2848, ptr %2022, align 1
  store i64 %2849, ptr %2023, align 1
  store i64 %2850, ptr %2024, align 1
  store i64 %2851, ptr %2025, align 1
  store i64 %2852, ptr %2026, align 1
  store i64 %2853, ptr %2027, align 1
  store i64 %2854, ptr %2028, align 1
  store i64 %2855, ptr %2029, align 1
  store i64 %2856, ptr %2030, align 1
  store i64 %2857, ptr %2031, align 1
  store i64 %2858, ptr %2032, align 1
  store i64 %2859, ptr %2033, align 1
  store i64 %2860, ptr %2034, align 1
  store i64 %2861, ptr %2035, align 1
  store i64 %2862, ptr %2036, align 1
  store i64 %2863, ptr %2037, align 1
  %2864 = getelementptr inbounds nuw i8, ptr %2732, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2864, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2732, align 64
  %2865 = getelementptr inbounds nuw i8, ptr %2732, i64 8
  store i64 -7046029288634856825, ptr %2865, align 8
  %2866 = getelementptr inbounds nuw i8, ptr %2732, i64 16
  store i64 -4417276706812531889, ptr %2866, align 16
  %2867 = getelementptr inbounds nuw i8, ptr %2732, i64 24
  store i64 1609587929392839161, ptr %2867, align 8
  %2868 = getelementptr inbounds nuw i8, ptr %2732, i64 32
  store i64 -8796714831421723037, ptr %2868, align 32
  %2869 = getelementptr inbounds nuw i8, ptr %2732, i64 40
  store i64 2246822519, ptr %2869, align 8
  %2870 = getelementptr inbounds nuw i8, ptr %2732, i64 48
  store i64 2870177450012600261, ptr %2870, align 16
  %2871 = getelementptr inbounds nuw i8, ptr %2732, i64 56
  store i64 2654435761, ptr %2871, align 8
  store i64 %2227, ptr %2738, align 8
  %2872 = getelementptr inbounds nuw i8, ptr %2732, i64 516
  store ptr %2014, ptr %2739, align 8
  %2873 = getelementptr inbounds nuw i8, ptr %2732, i64 544
  store i64 128, ptr %2873, align 32
  %2874 = getelementptr inbounds nuw i8, ptr %2732, i64 536
  store i64 16, ptr %2874, align 8
  store i32 1, ptr %2872, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2732, ptr nocapture noundef %2265, i64 noundef %2225)
  %2875 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2732) #33
  %2876 = extractvalue { i64, i64 } %2875, 0
  %2877 = extractvalue { i64, i64 } %2875, 1
  %2878 = icmp eq i64 %2876, %2229
  %2879 = icmp eq i64 %2877, %2231
  %2880 = select i1 %2878, i1 %2879, i1 false
  br i1 %2880, label %2897, label %2881

2881:                                             ; preds = %2838
  %2882 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2839) #29
  %2883 = lshr i64 %2876, 32
  %2884 = trunc nuw i64 %2883 to i32
  %2885 = trunc i64 %2876 to i32
  %2886 = lshr i64 %2877, 32
  %2887 = trunc nuw i64 %2886 to i32
  %2888 = trunc i64 %2877 to i32
  %2889 = lshr i64 %2229, 32
  %2890 = trunc nuw i64 %2889 to i32
  %2891 = trunc i64 %2229 to i32
  %2892 = lshr i64 %2231, 32
  %2893 = trunc nuw i64 %2892 to i32
  %2894 = trunc i64 %2231 to i32
  %2895 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2884, i32 noundef %2885, i32 noundef %2887, i32 noundef %2888, i32 noundef %2890, i32 noundef %2891, i32 noundef %2893, i32 noundef %2894) #29
  %2896 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2897:                                             ; preds = %2838
  %2898 = add nsw i32 %2815, 2
  store i32 %2898, ptr @XSUM_checkResult128.nbTests, align 4
  br i1 %2697, label %2899, label %2924

2899:                                             ; preds = %2897
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %2014, i8 -103, i64 9, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2864, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2732, align 64
  store i64 -7046029288634856825, ptr %2865, align 8
  store i64 -4417276706812531889, ptr %2866, align 16
  store i64 1609587929392839161, ptr %2867, align 8
  store i64 -8796714831421723037, ptr %2868, align 32
  store i64 2246822519, ptr %2869, align 8
  store i64 2870177450012600261, ptr %2870, align 16
  store i64 2654435761, ptr %2871, align 8
  store i64 %2227, ptr %2738, align 8
  store ptr %2014, ptr %2739, align 8
  store i64 128, ptr %2873, align 32
  store i64 16, ptr %2874, align 8
  store i32 1, ptr %2872, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2732, ptr nocapture noundef %2265, i64 noundef %2225)
  %2900 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2732) #33
  %2901 = extractvalue { i64, i64 } %2900, 0
  %2902 = extractvalue { i64, i64 } %2900, 1
  %2903 = icmp eq i64 %2901, %2229
  %2904 = icmp eq i64 %2902, %2231
  %2905 = select i1 %2903, i1 %2904, i1 false
  br i1 %2905, label %2922, label %2906

2906:                                             ; preds = %2899
  %2907 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2898) #29
  %2908 = lshr i64 %2901, 32
  %2909 = trunc nuw i64 %2908 to i32
  %2910 = trunc i64 %2901 to i32
  %2911 = lshr i64 %2902, 32
  %2912 = trunc nuw i64 %2911 to i32
  %2913 = trunc i64 %2902 to i32
  %2914 = lshr i64 %2229, 32
  %2915 = trunc nuw i64 %2914 to i32
  %2916 = trunc i64 %2229 to i32
  %2917 = lshr i64 %2231, 32
  %2918 = trunc nuw i64 %2917 to i32
  %2919 = trunc i64 %2231 to i32
  %2920 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2909, i32 noundef %2910, i32 noundef %2912, i32 noundef %2913, i32 noundef %2915, i32 noundef %2916, i32 noundef %2918, i32 noundef %2919) #29
  %2921 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2922:                                             ; preds = %2899
  %2923 = add nsw i32 %2815, 3
  store i32 %2923, ptr @XSUM_checkResult128.nbTests, align 4
  br label %2924

2924:                                             ; preds = %2897, %2922
  %2925 = phi i32 [ %2898, %2897 ], [ %2923, %2922 ]
  call void @llvm.lifetime.end.p0(i64 193, ptr nonnull %4) #29
  %2926 = load i8, ptr %2737, align 1
  %2927 = zext i8 %2926 to i64
  %2928 = sub nsw i64 0, %2927
  %2929 = getelementptr inbounds i8, ptr %2732, i64 %2928
  call void @free(ptr noundef nonnull %2929) #29
  %2930 = add nuw nsw i64 %2222, 1
  %2931 = icmp eq i64 %2930, 26
  br i1 %2931, label %2217, label %2221, !llvm.loop !65

2932:                                             ; preds = %3189
  %2933 = load i32, ptr @XSUM_testSecretGenerator.nbTests, align 4
  %2934 = getelementptr inbounds nuw i8, ptr %1, i64 62
  %2935 = getelementptr inbounds nuw i8, ptr %1, i64 131
  %2936 = getelementptr inbounds nuw i8, ptr %1, i64 191
  %2937 = getelementptr inbounds nuw i8, ptr %1, i64 241
  %2938 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %2939 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %2940 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %2941 = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %3197

2942:                                             ; preds = %2217, %3189
  %2943 = phi i32 [ %2925, %2217 ], [ %3190, %3189 ]
  %2944 = phi i64 [ 0, %2217 ], [ %3195, %3189 ]
  %2945 = getelementptr inbounds nuw [4 x %struct.XSUM_testdata128_t], ptr @XSUM_XXH128_withSecret_testdata, i64 0, i64 %2944
  %2946 = load i32, ptr %2945, align 16
  %2947 = zext i32 %2946 to i64
  %2948 = getelementptr inbounds nuw i8, ptr %2945, i64 16
  %2949 = load i64, ptr %2948, align 16
  %2950 = getelementptr inbounds nuw i8, ptr %2945, i64 24
  %2951 = load i64, ptr %2950, align 8
  %2952 = icmp ne i32 %2946, 0
  br i1 %2952, label %2953, label %2960

2953:                                             ; preds = %2942
  %2954 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecret(ptr nocapture noundef nonnull %7, i64 noundef %2947, ptr nocapture noundef nonnull %8, i64 noundef 147) #33
  %2955 = extractvalue { i64, i64 } %2954, 0
  %2956 = extractvalue { i64, i64 } %2954, 1
  %2957 = icmp eq i64 %2955, %2949
  %2958 = icmp eq i64 %2956, %2951
  %2959 = select i1 %2957, i1 %2958, i1 false
  br i1 %2959, label %3004, label %2986

2960:                                             ; preds = %2942
  %2961 = load i64, ptr %1481, align 1
  %2962 = load i64, ptr %2218, align 1
  %2963 = xor i64 %2962, %2961
  %2964 = load i64, ptr %2219, align 1
  %2965 = load i64, ptr %2220, align 1
  %2966 = xor i64 %2965, %2964
  %2967 = lshr i64 %2963, 33
  %2968 = xor i64 %2967, %2963
  %2969 = mul i64 %2968, -4417276706812531889
  %2970 = lshr i64 %2969, 29
  %2971 = xor i64 %2970, %2969
  %2972 = mul i64 %2971, 1609587929392839161
  %2973 = lshr i64 %2972, 32
  %2974 = xor i64 %2973, %2972
  %2975 = lshr i64 %2966, 33
  %2976 = xor i64 %2975, %2966
  %2977 = mul i64 %2976, -4417276706812531889
  %2978 = lshr i64 %2977, 29
  %2979 = xor i64 %2978, %2977
  %2980 = mul i64 %2979, 1609587929392839161
  %2981 = lshr i64 %2980, 32
  %2982 = xor i64 %2981, %2980
  %2983 = icmp eq i64 %2974, %2949
  %2984 = icmp eq i64 %2982, %2951
  %2985 = select i1 %2983, i1 %2984, i1 false
  br i1 %2985, label %3030, label %2986

2986:                                             ; preds = %2960, %2953
  %2987 = phi i64 [ %2982, %2960 ], [ %2956, %2953 ]
  %2988 = phi i64 [ %2974, %2960 ], [ %2955, %2953 ]
  %2989 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2943) #29
  %2990 = lshr i64 %2988, 32
  %2991 = trunc nuw i64 %2990 to i32
  %2992 = trunc i64 %2988 to i32
  %2993 = lshr i64 %2987, 32
  %2994 = trunc nuw i64 %2993 to i32
  %2995 = trunc i64 %2987 to i32
  %2996 = lshr i64 %2949, 32
  %2997 = trunc nuw i64 %2996 to i32
  %2998 = trunc i64 %2949 to i32
  %2999 = lshr i64 %2951, 32
  %3000 = trunc nuw i64 %2999 to i32
  %3001 = trunc i64 %2951 to i32
  %3002 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2991, i32 noundef %2992, i32 noundef %2994, i32 noundef %2995, i32 noundef %2997, i32 noundef %2998, i32 noundef %3000, i32 noundef %3001) #29
  %3003 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3004:                                             ; preds = %2953
  %3005 = add nsw i32 %2943, 1
  store i32 %3005, ptr @XSUM_checkResult128.nbTests, align 4
  %3006 = icmp ugt i32 %2946, 240
  br i1 %3006, label %3007, label %3034

3007:                                             ; preds = %3004
  %3008 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecretandSeed(ptr nocapture noundef nonnull %7, i64 noundef %2947, ptr nocapture noundef nonnull %8, i64 noundef 147, i64 noundef 0) #33
  %3009 = extractvalue { i64, i64 } %3008, 0
  %3010 = extractvalue { i64, i64 } %3008, 1
  %3011 = icmp eq i64 %3009, %2949
  %3012 = icmp eq i64 %3010, %2951
  %3013 = select i1 %3011, i1 %3012, i1 false
  br i1 %3013, label %3030, label %3014

3014:                                             ; preds = %3007
  %3015 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3005) #29
  %3016 = lshr i64 %3009, 32
  %3017 = trunc nuw i64 %3016 to i32
  %3018 = trunc i64 %3009 to i32
  %3019 = lshr i64 %3010, 32
  %3020 = trunc nuw i64 %3019 to i32
  %3021 = trunc i64 %3010 to i32
  %3022 = lshr i64 %2949, 32
  %3023 = trunc nuw i64 %3022 to i32
  %3024 = trunc i64 %2949 to i32
  %3025 = lshr i64 %2951, 32
  %3026 = trunc nuw i64 %3025 to i32
  %3027 = trunc i64 %2951 to i32
  %3028 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3017, i32 noundef %3018, i32 noundef %3020, i32 noundef %3021, i32 noundef %3023, i32 noundef %3024, i32 noundef %3026, i32 noundef %3027) #29
  %3029 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3030:                                             ; preds = %3007, %2960
  %3031 = phi i32 [ 1, %2960 ], [ 2, %3007 ]
  %3032 = phi ptr [ null, %2960 ], [ %7, %3007 ]
  %3033 = add nsw i32 %2943, %3031
  store i32 %3033, ptr @XSUM_checkResult128.nbTests, align 4
  br label %3034

3034:                                             ; preds = %3030, %3004
  %3035 = phi i1 [ false, %3004 ], [ %2952, %3030 ]
  %3036 = phi ptr [ %7, %3004 ], [ %3032, %3030 ]
  %3037 = phi i32 [ %3005, %3004 ], [ %3033, %3030 ]
  %3038 = call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #30
  %3039 = icmp eq ptr %3038, null
  br i1 %3039, label %3040, label %3041

3040:                                             ; preds = %3034
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 628, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH128_withSecret) #28
  unreachable

3041:                                             ; preds = %3034
  %3042 = ptrtoint ptr %3038 to i64
  %3043 = and i64 %3042, 63
  %3044 = sub nuw nsw i64 64, %3043
  %3045 = getelementptr inbounds nuw i8, ptr %3038, i64 %3044
  %3046 = ptrtoint ptr %3045 to i64
  %3047 = and i64 %3046, 63
  %3048 = icmp eq i64 %3047, 0
  call void @llvm.assume(i1 %3048)
  %3049 = trunc nuw nsw i64 %3044 to i8
  %3050 = getelementptr inbounds i8, ptr %3045, i64 -1
  store i8 %3049, ptr %3050, align 1
  %3051 = getelementptr inbounds nuw i8, ptr %3045, i64 552
  %3052 = getelementptr inbounds nuw i8, ptr %3045, i64 568
  %3053 = getelementptr inbounds nuw i8, ptr %3045, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %3053, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3045, align 64
  %3054 = getelementptr inbounds nuw i8, ptr %3045, i64 8
  store i64 -7046029288634856825, ptr %3054, align 8
  %3055 = getelementptr inbounds nuw i8, ptr %3045, i64 16
  store i64 -4417276706812531889, ptr %3055, align 16
  %3056 = getelementptr inbounds nuw i8, ptr %3045, i64 24
  store i64 1609587929392839161, ptr %3056, align 8
  %3057 = getelementptr inbounds nuw i8, ptr %3045, i64 32
  store i64 -8796714831421723037, ptr %3057, align 32
  %3058 = getelementptr inbounds nuw i8, ptr %3045, i64 40
  store i64 2246822519, ptr %3058, align 8
  %3059 = getelementptr inbounds nuw i8, ptr %3045, i64 48
  store i64 2870177450012600261, ptr %3059, align 16
  %3060 = getelementptr inbounds nuw i8, ptr %3045, i64 56
  store i64 2654435761, ptr %3060, align 8
  store i64 0, ptr %3051, align 8
  store ptr %8, ptr %3052, align 8
  %3061 = getelementptr inbounds nuw i8, ptr %3045, i64 544
  store i64 83, ptr %3061, align 32
  %3062 = getelementptr inbounds nuw i8, ptr %3045, i64 536
  store i64 10, ptr %3062, align 8
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %3045, ptr nocapture noundef %3036, i64 noundef %2947)
  %3063 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %3045) #33
  %3064 = extractvalue { i64, i64 } %3063, 0
  %3065 = extractvalue { i64, i64 } %3063, 1
  %3066 = icmp eq i64 %3064, %2949
  %3067 = icmp eq i64 %3065, %2951
  %3068 = select i1 %3066, i1 %3067, i1 false
  br i1 %3068, label %3085, label %3069

3069:                                             ; preds = %3041
  %3070 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3037) #29
  %3071 = lshr i64 %3064, 32
  %3072 = trunc nuw i64 %3071 to i32
  %3073 = trunc i64 %3064 to i32
  %3074 = lshr i64 %3065, 32
  %3075 = trunc nuw i64 %3074 to i32
  %3076 = trunc i64 %3065 to i32
  %3077 = lshr i64 %2949, 32
  %3078 = trunc nuw i64 %3077 to i32
  %3079 = trunc i64 %2949 to i32
  %3080 = lshr i64 %2951, 32
  %3081 = trunc nuw i64 %3080 to i32
  %3082 = trunc i64 %2951 to i32
  %3083 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3072, i32 noundef %3073, i32 noundef %3075, i32 noundef %3076, i32 noundef %3078, i32 noundef %3079, i32 noundef %3081, i32 noundef %3082) #29
  %3084 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3085:                                             ; preds = %3041
  %3086 = add nsw i32 %3037, 1
  store i32 %3086, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %3053, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3045, align 64
  store i64 -7046029288634856825, ptr %3054, align 8
  store i64 -4417276706812531889, ptr %3055, align 16
  store i64 1609587929392839161, ptr %3056, align 8
  store i64 -8796714831421723037, ptr %3057, align 32
  store i64 2246822519, ptr %3058, align 8
  store i64 2870177450012600261, ptr %3059, align 16
  store i64 2654435761, ptr %3060, align 8
  store i64 0, ptr %3051, align 8
  store ptr %8, ptr %3052, align 8
  store i64 83, ptr %3061, align 32
  store i64 10, ptr %3062, align 8
  br i1 %2952, label %3087, label %3104

3087:                                             ; preds = %3085
  %3088 = call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %2947, i64 2)
  br label %3089

3089:                                             ; preds = %3089, %3087
  %3090 = phi i64 [ 0, %3087 ], [ %3100, %3089 ]
  %3091 = load i64, ptr @XSUM_rand.seed, align 8
  %3092 = mul i64 %3091, -7046029288634856819
  store i64 %3092, ptr @XSUM_rand.seed, align 8
  %3093 = lshr i64 %3092, 40
  %3094 = urem i64 %3093, %3088
  %3095 = add nuw nsw i64 %3094, %3090
  %3096 = icmp ugt i64 %3095, %2947
  %3097 = sub nuw nsw i64 %2947, %3090
  %3098 = select i1 %3096, i64 %3097, i64 %3094
  %3099 = getelementptr inbounds nuw i8, ptr %3036, i64 %3090
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %3045, ptr nocapture noundef %3099, i64 noundef %3098)
  %3100 = add i64 %3098, %3090
  %3101 = icmp ult i64 %3100, %2947
  br i1 %3101, label %3089, label %3102, !llvm.loop !59

3102:                                             ; preds = %3089
  %3103 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br label %3104

3104:                                             ; preds = %3102, %3085
  %3105 = phi i32 [ %3103, %3102 ], [ %3086, %3085 ]
  %3106 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %3045) #33
  %3107 = extractvalue { i64, i64 } %3106, 0
  %3108 = extractvalue { i64, i64 } %3106, 1
  %3109 = icmp eq i64 %3107, %2949
  %3110 = icmp eq i64 %3108, %2951
  %3111 = select i1 %3109, i1 %3110, i1 false
  br i1 %3111, label %3128, label %3112

3112:                                             ; preds = %3104
  %3113 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3105) #29
  %3114 = lshr i64 %3107, 32
  %3115 = trunc nuw i64 %3114 to i32
  %3116 = trunc i64 %3107 to i32
  %3117 = lshr i64 %3108, 32
  %3118 = trunc nuw i64 %3117 to i32
  %3119 = trunc i64 %3108 to i32
  %3120 = lshr i64 %2949, 32
  %3121 = trunc nuw i64 %3120 to i32
  %3122 = trunc i64 %2949 to i32
  %3123 = lshr i64 %2951, 32
  %3124 = trunc nuw i64 %3123 to i32
  %3125 = trunc i64 %2951 to i32
  %3126 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3115, i32 noundef %3116, i32 noundef %3118, i32 noundef %3119, i32 noundef %3121, i32 noundef %3122, i32 noundef %3124, i32 noundef %3125) #29
  %3127 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3128:                                             ; preds = %3104
  %3129 = add nsw i32 %3105, 1
  store i32 %3129, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %3053, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3045, align 64
  store i64 -7046029288634856825, ptr %3054, align 8
  store i64 -4417276706812531889, ptr %3055, align 16
  store i64 1609587929392839161, ptr %3056, align 8
  store i64 -8796714831421723037, ptr %3057, align 32
  store i64 2246822519, ptr %3058, align 8
  store i64 2870177450012600261, ptr %3059, align 16
  store i64 2654435761, ptr %3060, align 8
  store i64 0, ptr %3051, align 8
  store ptr %8, ptr %3052, align 8
  store i64 83, ptr %3061, align 32
  store i64 10, ptr %3062, align 8
  br i1 %2952, label %3130, label %3137

3130:                                             ; preds = %3128, %3130
  %3131 = phi i64 [ %3133, %3130 ], [ 0, %3128 ]
  %3132 = getelementptr inbounds nuw i8, ptr %3036, i64 %3131
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %3045, ptr nocapture noundef %3132, i64 noundef 1)
  %3133 = add nuw nsw i64 %3131, 1
  %3134 = icmp eq i64 %3133, %2947
  br i1 %3134, label %3135, label %3130, !llvm.loop !66

3135:                                             ; preds = %3130
  %3136 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br label %3137

3137:                                             ; preds = %3135, %3128
  %3138 = phi i32 [ %3136, %3135 ], [ %3129, %3128 ]
  %3139 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %3045) #33
  %3140 = extractvalue { i64, i64 } %3139, 0
  %3141 = extractvalue { i64, i64 } %3139, 1
  %3142 = icmp eq i64 %3140, %2949
  %3143 = icmp eq i64 %3141, %2951
  %3144 = select i1 %3142, i1 %3143, i1 false
  br i1 %3144, label %3161, label %3145

3145:                                             ; preds = %3137
  %3146 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3138) #29
  %3147 = lshr i64 %3140, 32
  %3148 = trunc nuw i64 %3147 to i32
  %3149 = trunc i64 %3140 to i32
  %3150 = lshr i64 %3141, 32
  %3151 = trunc nuw i64 %3150 to i32
  %3152 = trunc i64 %3141 to i32
  %3153 = lshr i64 %2949, 32
  %3154 = trunc nuw i64 %3153 to i32
  %3155 = trunc i64 %2949 to i32
  %3156 = lshr i64 %2951, 32
  %3157 = trunc nuw i64 %3156 to i32
  %3158 = trunc i64 %2951 to i32
  %3159 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3148, i32 noundef %3149, i32 noundef %3151, i32 noundef %3152, i32 noundef %3154, i32 noundef %3155, i32 noundef %3157, i32 noundef %3158) #29
  %3160 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3161:                                             ; preds = %3137
  %3162 = add nsw i32 %3138, 1
  store i32 %3162, ptr @XSUM_checkResult128.nbTests, align 4
  br i1 %3035, label %3163, label %3189

3163:                                             ; preds = %3161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %3053, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3045, align 64
  store i64 -7046029288634856825, ptr %3054, align 8
  store i64 -4417276706812531889, ptr %3055, align 16
  store i64 1609587929392839161, ptr %3056, align 8
  store i64 -8796714831421723037, ptr %3057, align 32
  store i64 2246822519, ptr %3058, align 8
  store i64 2870177450012600261, ptr %3059, align 16
  store i64 2654435761, ptr %3060, align 8
  store i64 0, ptr %3051, align 8
  %3164 = getelementptr inbounds nuw i8, ptr %3045, i64 516
  store ptr %8, ptr %3052, align 8
  store i64 83, ptr %3061, align 32
  store i64 10, ptr %3062, align 8
  store i32 1, ptr %3164, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %3045, ptr nocapture noundef %3036, i64 noundef %2947)
  %3165 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %3045) #33
  %3166 = extractvalue { i64, i64 } %3165, 0
  %3167 = extractvalue { i64, i64 } %3165, 1
  %3168 = icmp eq i64 %3166, %2949
  %3169 = icmp eq i64 %3167, %2951
  %3170 = select i1 %3168, i1 %3169, i1 false
  br i1 %3170, label %3187, label %3171

3171:                                             ; preds = %3163
  %3172 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3162) #29
  %3173 = lshr i64 %3166, 32
  %3174 = trunc nuw i64 %3173 to i32
  %3175 = trunc i64 %3166 to i32
  %3176 = lshr i64 %3167, 32
  %3177 = trunc nuw i64 %3176 to i32
  %3178 = trunc i64 %3167 to i32
  %3179 = lshr i64 %2949, 32
  %3180 = trunc nuw i64 %3179 to i32
  %3181 = trunc i64 %2949 to i32
  %3182 = lshr i64 %2951, 32
  %3183 = trunc nuw i64 %3182 to i32
  %3184 = trunc i64 %2951 to i32
  %3185 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3174, i32 noundef %3175, i32 noundef %3177, i32 noundef %3178, i32 noundef %3180, i32 noundef %3181, i32 noundef %3183, i32 noundef %3184) #29
  %3186 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3187:                                             ; preds = %3163
  %3188 = add nsw i32 %3138, 2
  store i32 %3188, ptr @XSUM_checkResult128.nbTests, align 4
  br label %3189

3189:                                             ; preds = %3161, %3187
  %3190 = phi i32 [ %3162, %3161 ], [ %3188, %3187 ]
  %3191 = load i8, ptr %3050, align 1
  %3192 = zext i8 %3191 to i64
  %3193 = sub nsw i64 0, %3192
  %3194 = getelementptr inbounds i8, ptr %3045, i64 %3193
  call void @free(ptr noundef nonnull %3194) #29
  %3195 = add nuw nsw i64 %2944, 1
  %3196 = icmp eq i64 %3195, 4
  br i1 %3196, label %2932, label %2942, !llvm.loop !67

3197:                                             ; preds = %2932, %3321
  %3198 = phi i64 [ 0, %2932 ], [ %3323, %3321 ]
  %3199 = phi i32 [ %2933, %2932 ], [ %3322, %3321 ]
  %3200 = getelementptr inbounds nuw [4 x %struct.XSUM_testdata_sample_t], ptr @XSUM_XXH3_generateSecret_testdata, i64 0, i64 %3198
  %3201 = load i32, ptr %3200, align 16
  %3202 = icmp ult i32 %3201, 2368
  br i1 %3202, label %3204, label %3203

3203:                                             ; preds = %3197
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 725, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_sanityCheck) #28
  unreachable

3204:                                             ; preds = %3197
  call void @llvm.lifetime.start.p0(i64 9867, ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(9867) %1, i8 0, i64 9867, i1 false)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #29
  %3205 = getelementptr inbounds nuw i8, ptr %3200, i64 4
  %3206 = load i32, ptr %3205, align 4
  %3207 = icmp ult i32 %3206, 9868
  br i1 %3207, label %3209, label %3208

3208:                                             ; preds = %3204
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 667, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testSecretGenerator) #28
  unreachable

3209:                                             ; preds = %3204
  %3210 = zext nneg i32 %3206 to i64
  %3211 = icmp samesign ult i32 %3206, 136
  br i1 %3211, label %3290, label %3212

3212:                                             ; preds = %3209
  %3213 = icmp eq i32 %3201, 0
  %3214 = select i1 %3213, i32 192, i32 %3201
  %3215 = zext nneg i32 %3214 to i64
  %3216 = select i1 %3213, ptr @XXH3_kSecret, ptr %7
  br label %3217

3217:                                             ; preds = %3217, %3212
  %3218 = phi i64 [ 0, %3212 ], [ %3222, %3217 ]
  %3219 = sub nuw nsw i64 %3210, %3218
  %3220 = call i64 @llvm.umin.i64(i64 %3219, i64 %3215)
  %3221 = getelementptr inbounds nuw i8, ptr %1, i64 %3218
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3221, ptr nonnull align 16 %3216, i64 %3220, i1 false)
  %3222 = add nuw nsw i64 %3220, %3218
  %3223 = icmp samesign ult i64 %3222, %3210
  br i1 %3223, label %3217, label %3224, !llvm.loop !68

3224:                                             ; preds = %3217
  %3225 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef nonnull readonly %3216, i64 noundef range(i64 0, 4294967296) %3215, i64 noundef 0) #33
  %3226 = extractvalue { i64, i64 } %3225, 0
  %3227 = extractvalue { i64, i64 } %3225, 1
  %3228 = call noundef i64 @llvm.bswap.i64(i64 %3226)
  %3229 = lshr i64 %3210, 4
  %3230 = call noundef i64 @llvm.bswap.i64(i64 %3227)
  %3231 = call i64 @llvm.umax.i64(i64 %3229, i64 1)
  %3232 = xor i64 %3230, %3228
  br label %3233

3233:                                             ; preds = %3233, %3224
  %3234 = phi i64 [ 0, %3224 ], [ %3275, %3233 ]
  %3235 = sub nuw nsw i64 6455697860950631241, %3234
  %3236 = add nuw nsw i64 %3234, -4466874330221494952
  %3237 = xor i64 %3235, %3232
  %3238 = zext i64 %3237 to i128
  %3239 = mul nuw i128 %3238, 11400714785074694791
  %3240 = trunc i128 %3239 to i64
  %3241 = lshr i128 %3239, 64
  %3242 = trunc nuw i128 %3241 to i64
  %3243 = add i64 %3240, 270215977642229760
  %3244 = xor i64 %3236, %3228
  %3245 = and i64 %3244, 4294967295
  %3246 = mul nuw i64 %3245, 2246822518
  %3247 = add i64 %3246, %3244
  %3248 = add i64 %3247, %3242
  %3249 = call noundef i64 @llvm.bswap.i64(i64 %3248)
  %3250 = xor i64 %3249, %3243
  %3251 = zext i64 %3250 to i128
  %3252 = mul nuw i128 %3251, 14029467366897019727
  %3253 = trunc i128 %3252 to i64
  %3254 = lshr i128 %3252, 64
  %3255 = trunc nuw i128 %3254 to i64
  %3256 = mul i64 %3248, -4417276706812531889
  %3257 = add i64 %3256, %3255
  %3258 = lshr i64 %3253, 37
  %3259 = xor i64 %3258, %3253
  %3260 = mul i64 %3259, 1609587791953885689
  %3261 = lshr i64 %3260, 32
  %3262 = lshr i64 %3257, 37
  %3263 = xor i64 %3262, %3257
  %3264 = mul i64 %3263, 1609587791953885689
  %3265 = lshr i64 %3264, 32
  %3266 = shl nuw nsw i64 %3234, 4
  %3267 = getelementptr inbounds nuw i8, ptr %1, i64 %3266
  %3268 = load i64, ptr %3267, align 16
  %3269 = xor i64 %3268, %3261
  %3270 = xor i64 %3269, %3260
  store i64 %3270, ptr %3267, align 16
  %3271 = getelementptr inbounds nuw i8, ptr %3267, i64 8
  %3272 = load i64, ptr %3271, align 8
  %3273 = xor i64 %3272, %3265
  %3274 = xor i64 %3273, %3264
  store i64 %3274, ptr %3271, align 8
  %3275 = add nuw nsw i64 %3234, 1
  %3276 = icmp eq i64 %3275, %3231
  br i1 %3276, label %3277, label %3233, !llvm.loop !69

3277:                                             ; preds = %3233
  %3278 = getelementptr inbounds nuw i8, ptr %1, i64 %3210
  %3279 = getelementptr inbounds i8, ptr %3278, i64 -16
  %3280 = load i64, ptr %3279, align 1
  %3281 = xor i64 %3280, %3226
  store i64 %3281, ptr %3279, align 1
  %3282 = getelementptr inbounds i8, ptr %3278, i64 -8
  %3283 = load i64, ptr %3282, align 1
  %3284 = xor i64 %3283, %3227
  store i64 %3284, ptr %3282, align 1
  %3285 = load i8, ptr %1, align 16
  %3286 = load i8, ptr %2934, align 2
  %3287 = load i8, ptr %2935, align 1
  %3288 = load i8, ptr %2936, align 1
  %3289 = load i8, ptr %2937, align 1
  br label %3290

3290:                                             ; preds = %3277, %3209
  %3291 = phi i8 [ 0, %3209 ], [ %3289, %3277 ]
  %3292 = phi i8 [ 0, %3209 ], [ %3288, %3277 ]
  %3293 = phi i8 [ 0, %3209 ], [ %3287, %3277 ]
  %3294 = phi i8 [ 0, %3209 ], [ %3286, %3277 ]
  %3295 = phi i8 [ 0, %3209 ], [ %3285, %3277 ]
  store i8 %3295, ptr %2, align 1
  store i8 %3294, ptr %2938, align 1
  store i8 %3293, ptr %2939, align 1
  store i8 %3292, ptr %2940, align 1
  store i8 %3291, ptr %2941, align 1
  %3296 = getelementptr inbounds nuw i8, ptr %3200, i64 8
  %3297 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %2, ptr noundef nonnull readonly dereferenceable(5) %3296, i64 5)
  %3298 = icmp eq i32 %3297, 0
  br i1 %3298, label %3321, label %3299

3299:                                             ; preds = %3290
  %3300 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.22, i32 noundef %3199) #29
  %3301 = zext i8 %3295 to i32
  %3302 = zext i8 %3294 to i32
  %3303 = zext i8 %3293 to i32
  %3304 = zext i8 %3292 to i32
  %3305 = zext i8 %3291 to i32
  %3306 = load i8, ptr %3296, align 4
  %3307 = zext i8 %3306 to i32
  %3308 = getelementptr inbounds nuw i8, ptr %3200, i64 9
  %3309 = load i8, ptr %3308, align 1
  %3310 = zext i8 %3309 to i32
  %3311 = getelementptr inbounds nuw i8, ptr %3200, i64 10
  %3312 = load i8, ptr %3311, align 2
  %3313 = zext i8 %3312 to i32
  %3314 = getelementptr inbounds nuw i8, ptr %3200, i64 11
  %3315 = load i8, ptr %3314, align 1
  %3316 = zext i8 %3315 to i32
  %3317 = getelementptr inbounds nuw i8, ptr %3200, i64 12
  %3318 = load i8, ptr %3317, align 4
  %3319 = zext i8 %3318 to i32
  %3320 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.23, i32 noundef %3301, i32 noundef %3302, i32 noundef %3303, i32 noundef %3304, i32 noundef %3305, i32 noundef %3307, i32 noundef %3310, i32 noundef %3313, i32 noundef %3316, i32 noundef %3319) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3321:                                             ; preds = %3290
  %3322 = add nsw i32 %3199, 1
  store i32 %3322, ptr @XSUM_testSecretGenerator.nbTests, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(i64 9867, ptr nonnull %1) #29
  %3323 = add nuw nsw i64 %3198, 1
  %3324 = icmp eq i64 %3323, 4
  br i1 %3324, label %3325, label %3197, !llvm.loop !70

3325:                                             ; preds = %3321
  %3326 = call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #29
  %3327 = call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 3, ptr noundef nonnull @.str.5) #29
  call void @llvm.lifetime.end.p0(i64 2367, ptr nonnull %7) #29
  ret void
}

declare i32 @XSUM_logVerbose(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i32 @XSUM_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH64_digest(ptr nocapture noundef nonnull readonly %0) unnamed_addr #11 {
  %2 = load i64, ptr %0, align 8
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 7)
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 12)
  %15 = add i64 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 18)
  %19 = add i64 %15, %18
  %20 = mul i64 %6, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %22) #31, !srcloc !36
  %24 = xor i64 %19, %23
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  %27 = mul i64 %9, -4417276706812531889
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %29) #31, !srcloc !36
  %31 = xor i64 %26, %30
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = mul i64 %13, -4417276706812531889
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %36) #31, !srcloc !36
  %38 = xor i64 %33, %37
  %39 = mul i64 %38, -7046029288634856825
  %40 = add i64 %39, -8796714831421723037
  %41 = mul i64 %17, -4417276706812531889
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %43 = mul i64 %42, -7046029288634856825
  %44 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %43) #31, !srcloc !36
  %45 = xor i64 %40, %44
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %46, -8796714831421723037
  br label %52

48:                                               ; preds = %1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %50, 2870177450012600261
  br label %52

52:                                               ; preds = %48, %4
  %53 = phi i64 [ %47, %4 ], [ %51, %48 ]
  %54 = add i64 %53, %2
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %56 = and i64 %2, 31
  %57 = icmp samesign ugt i64 %56, 7
  br i1 %57, label %58, label %74

58:                                               ; preds = %52, %58
  %59 = phi i64 [ %71, %58 ], [ %54, %52 ]
  %60 = phi ptr [ %67, %58 ], [ %55, %52 ]
  %61 = phi i64 [ %72, %58 ], [ %56, %52 ]
  %62 = load i64, ptr %60, align 8
  %63 = mul i64 %62, -4417276706812531889
  %64 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 31)
  %65 = mul i64 %64, -7046029288634856825
  %66 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %65) #31, !srcloc !36
  %67 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %68 = xor i64 %66, %59
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 27)
  %70 = mul i64 %69, -7046029288634856825
  %71 = add i64 %70, -8796714831421723037
  %72 = add nsw i64 %61, -8
  %73 = icmp ugt i64 %72, 7
  br i1 %73, label %58, label %74, !llvm.loop !38

74:                                               ; preds = %58, %52
  %75 = phi i64 [ %56, %52 ], [ %72, %58 ]
  %76 = phi ptr [ %55, %52 ], [ %67, %58 ]
  %77 = phi i64 [ %54, %52 ], [ %71, %58 ]
  %78 = icmp samesign ugt i64 %75, 3
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i32, ptr %76, align 4
  %81 = zext i32 %80 to i64
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %82, %77
  %84 = getelementptr inbounds nuw i8, ptr %76, i64 4
  %85 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 23)
  %86 = mul i64 %85, -4417276706812531889
  %87 = add i64 %86, 1609587929392839161
  %88 = add nsw i64 %75, -4
  br label %89

89:                                               ; preds = %79, %74
  %90 = phi i64 [ %88, %79 ], [ %75, %74 ]
  %91 = phi ptr [ %84, %79 ], [ %76, %74 ]
  %92 = phi i64 [ %87, %79 ], [ %77, %74 ]
  %93 = icmp eq i64 %90, 0
  br i1 %93, label %180, label %94

94:                                               ; preds = %89
  %95 = and i64 %90, 7
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %108, %97 ], [ %92, %94 ]
  %99 = phi ptr [ %102, %97 ], [ %91, %94 ]
  %100 = phi i64 [ %109, %97 ], [ %90, %94 ]
  %101 = phi i64 [ %110, %97 ], [ 0, %94 ]
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 1
  %103 = load i8, ptr %99, align 1
  %104 = zext i8 %103 to i64
  %105 = mul i64 %104, 2870177450012600261
  %106 = xor i64 %105, %98
  %107 = tail call i64 @llvm.fshl.i64(i64 %106, i64 %106, i64 11)
  %108 = mul i64 %107, -7046029288634856825
  %109 = add nsw i64 %100, -1
  %110 = add i64 %101, 1
  %111 = icmp eq i64 %110, %95
  br i1 %111, label %112, label %97, !llvm.loop !71

112:                                              ; preds = %97, %94
  %113 = phi i64 [ poison, %94 ], [ %108, %97 ]
  %114 = phi i64 [ %92, %94 ], [ %108, %97 ]
  %115 = phi ptr [ %91, %94 ], [ %102, %97 ]
  %116 = phi i64 [ %90, %94 ], [ %109, %97 ]
  %117 = icmp ult i64 %90, 8
  br i1 %117, label %180, label %118

118:                                              ; preds = %112, %118
  %119 = phi i64 [ %177, %118 ], [ %114, %112 ]
  %120 = phi ptr [ %171, %118 ], [ %115, %112 ]
  %121 = phi i64 [ %178, %118 ], [ %116, %112 ]
  %122 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %123 = load i8, ptr %120, align 1
  %124 = zext i8 %123 to i64
  %125 = mul i64 %124, 2870177450012600261
  %126 = xor i64 %125, %119
  %127 = tail call i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 11)
  %128 = mul i64 %127, -7046029288634856825
  %129 = getelementptr inbounds nuw i8, ptr %120, i64 2
  %130 = load i8, ptr %122, align 1
  %131 = zext i8 %130 to i64
  %132 = mul i64 %131, 2870177450012600261
  %133 = xor i64 %132, %128
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 11)
  %135 = mul i64 %134, -7046029288634856825
  %136 = getelementptr inbounds nuw i8, ptr %120, i64 3
  %137 = load i8, ptr %129, align 1
  %138 = zext i8 %137 to i64
  %139 = mul i64 %138, 2870177450012600261
  %140 = xor i64 %139, %135
  %141 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 11)
  %142 = mul i64 %141, -7046029288634856825
  %143 = getelementptr inbounds nuw i8, ptr %120, i64 4
  %144 = load i8, ptr %136, align 1
  %145 = zext i8 %144 to i64
  %146 = mul i64 %145, 2870177450012600261
  %147 = xor i64 %146, %142
  %148 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 11)
  %149 = mul i64 %148, -7046029288634856825
  %150 = getelementptr inbounds nuw i8, ptr %120, i64 5
  %151 = load i8, ptr %143, align 1
  %152 = zext i8 %151 to i64
  %153 = mul i64 %152, 2870177450012600261
  %154 = xor i64 %153, %149
  %155 = tail call i64 @llvm.fshl.i64(i64 %154, i64 %154, i64 11)
  %156 = mul i64 %155, -7046029288634856825
  %157 = getelementptr inbounds nuw i8, ptr %120, i64 6
  %158 = load i8, ptr %150, align 1
  %159 = zext i8 %158 to i64
  %160 = mul i64 %159, 2870177450012600261
  %161 = xor i64 %160, %156
  %162 = tail call i64 @llvm.fshl.i64(i64 %161, i64 %161, i64 11)
  %163 = mul i64 %162, -7046029288634856825
  %164 = getelementptr inbounds nuw i8, ptr %120, i64 7
  %165 = load i8, ptr %157, align 1
  %166 = zext i8 %165 to i64
  %167 = mul i64 %166, 2870177450012600261
  %168 = xor i64 %167, %163
  %169 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %168, i64 11)
  %170 = mul i64 %169, -7046029288634856825
  %171 = getelementptr inbounds nuw i8, ptr %120, i64 8
  %172 = load i8, ptr %164, align 1
  %173 = zext i8 %172 to i64
  %174 = mul i64 %173, 2870177450012600261
  %175 = xor i64 %174, %170
  %176 = tail call i64 @llvm.fshl.i64(i64 %175, i64 %175, i64 11)
  %177 = mul i64 %176, -7046029288634856825
  %178 = add nsw i64 %121, -8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %118, !llvm.loop !40

180:                                              ; preds = %112, %118, %89
  %181 = phi i64 [ %92, %89 ], [ %113, %112 ], [ %177, %118 ]
  %182 = lshr i64 %181, 33
  %183 = xor i64 %182, %181
  %184 = mul i64 %183, -4417276706812531889
  %185 = lshr i64 %184, 29
  %186 = xor i64 %185, %184
  %187 = mul i64 %186, 1609587929392839161
  %188 = lshr i64 %187, 32
  %189 = xor i64 %188, %187
  ret i64 %189
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH3_64bits_withSeed(ptr nocapture noundef readonly %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %2) unnamed_addr #12 {
  %4 = icmp samesign ult i64 %1, 17
  br i1 %4, label %5, label %102

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %32, !prof !58

7:                                                ; preds = %5
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, 7458650908927343033
  %10 = sub i64 -5812251307325107654, %2
  %11 = load i64, ptr %0, align 1
  %12 = xor i64 %11, %9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = load i64, ptr %14, align 1
  %16 = xor i64 %15, %10
  %17 = tail call noundef i64 @llvm.bswap.i64(i64 %12)
  %18 = add i64 %17, %1
  %19 = add i64 %18, %16
  %20 = zext i64 %12 to i128
  %21 = zext i64 %16 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %19, %25
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587791953885689
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  br label %252

32:                                               ; preds = %5
  %33 = icmp samesign ugt i64 %1, 3
  br i1 %33, label %34, label %62, !prof !58

34:                                               ; preds = %32
  %35 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %35)
  %36 = trunc i64 %2 to i32
  %37 = tail call noundef i32 @llvm.bswap.i32(i32 %36)
  %38 = zext i32 %37 to i64
  %39 = shl nuw i64 %38, 32
  %40 = xor i64 %39, %2
  %41 = load i32, ptr %0, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %43 = getelementptr inbounds i8, ptr %42, i64 -4
  %44 = load i32, ptr %43, align 1
  %45 = sub i64 -4090762196417718878, %40
  %46 = zext i32 %44 to i64
  %47 = zext i32 %41 to i64
  %48 = shl nuw i64 %47, 32
  %49 = or disjoint i64 %48, %46
  %50 = xor i64 %49, %45
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 49)
  %52 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 24)
  %53 = xor i64 %51, %52
  %54 = xor i64 %53, %50
  %55 = mul i64 %54, -6939452855193903323
  %56 = lshr i64 %55, 35
  %57 = add nuw nsw i64 %56, %1
  %58 = xor i64 %57, %55
  %59 = mul i64 %58, -6939452855193903323
  %60 = lshr i64 %59, 28
  %61 = xor i64 %60, %59
  br label %252

62:                                               ; preds = %32
  %63 = icmp eq i64 %1, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %62
  %65 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %65)
  %66 = load i8, ptr %0, align 1
  %67 = lshr i64 %1, 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr i8, ptr %0, i64 %1
  %71 = getelementptr i8, ptr %70, i64 -1
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %66 to i64
  %74 = shl nuw nsw i64 %73, 16
  %75 = zext i8 %69 to i64
  %76 = shl nuw nsw i64 %75, 24
  %77 = or disjoint i64 %76, %74
  %78 = zext i8 %72 to i64
  %79 = or disjoint i64 %77, %78
  %80 = shl nuw nsw i64 %1, 8
  %81 = or disjoint i64 %79, %80
  %82 = add i64 %2, 2267503259
  %83 = xor i64 %81, %82
  %84 = lshr i64 %83, 33
  %85 = xor i64 %84, %83
  %86 = mul i64 %85, -4417276706812531889
  %87 = lshr i64 %86, 29
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, 1609587929392839161
  %90 = lshr i64 %89, 32
  %91 = xor i64 %90, %89
  br label %252

92:                                               ; preds = %62
  %93 = xor i64 %2, -8707998980786479652
  %94 = lshr i64 %93, 33
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, -4417276706812531889
  %97 = lshr i64 %96, 29
  %98 = xor i64 %97, %96
  %99 = mul i64 %98, 1609587929392839161
  %100 = lshr i64 %99, 32
  %101 = xor i64 %100, %99
  br label %252

102:                                              ; preds = %3
  %103 = icmp samesign ult i64 %1, 129
  br i1 %103, label %104, label %246

104:                                              ; preds = %102
  %105 = mul i64 %1, -7046029288634856825
  %106 = icmp samesign ugt i64 %1, 32
  br i1 %106, label %107, label %209

107:                                              ; preds = %104
  %108 = icmp samesign ugt i64 %1, 64
  br i1 %108, label %109, label %176

109:                                              ; preds = %107
  %110 = icmp samesign ugt i64 %1, 96
  br i1 %110, label %111, label %143

111:                                              ; preds = %109
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %113 = load i64, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %115 = load i64, ptr %114, align 1
  %116 = add i64 %2, 4554437623014685352
  %117 = xor i64 %113, %116
  %118 = sub i64 2111919702937427193, %2
  %119 = xor i64 %115, %118
  %120 = zext i64 %117 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %105, %125
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %128 = getelementptr inbounds i8, ptr %127, i64 -64
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds i8, ptr %127, i64 -56
  %131 = load i64, ptr %130, align 1
  %132 = add i64 %2, 3556072174620004746
  %133 = xor i64 %129, %132
  %134 = sub i64 7238261902898274248, %2
  %135 = xor i64 %131, %134
  %136 = zext i64 %133 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %126, %141
  br label %143

143:                                              ; preds = %111, %109
  %144 = phi i64 [ %142, %111 ], [ %105, %109 ]
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %146 = load i64, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %148 = load i64, ptr %147, align 1
  %149 = add i64 %2, -3818837453329782724
  %150 = xor i64 %146, %149
  %151 = sub i64 -6688317018830679928, %2
  %152 = xor i64 %148, %151
  %153 = zext i64 %150 to i128
  %154 = zext i64 %152 to i128
  %155 = mul nuw i128 %154, %153
  %156 = lshr i128 %155, 64
  %157 = xor i128 %156, %155
  %158 = trunc i128 %157 to i64
  %159 = add i64 %144, %158
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %161 = getelementptr inbounds i8, ptr %160, i64 -48
  %162 = load i64, ptr %161, align 1
  %163 = getelementptr inbounds i8, ptr %160, i64 -40
  %164 = load i64, ptr %163, align 1
  %165 = add i64 %2, 5690594596133299313
  %166 = xor i64 %162, %165
  %167 = sub i64 -2833645246901970632, %2
  %168 = xor i64 %164, %167
  %169 = zext i64 %166 to i128
  %170 = zext i64 %168 to i128
  %171 = mul nuw i128 %170, %169
  %172 = lshr i128 %171, 64
  %173 = xor i128 %172, %171
  %174 = trunc i128 %173 to i64
  %175 = add i64 %159, %174
  br label %176

176:                                              ; preds = %143, %107
  %177 = phi i64 [ %175, %143 ], [ %105, %107 ]
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %179 = load i64, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %181 = load i64, ptr %180, align 1
  %182 = add i64 %2, 8711581037947681227
  %183 = xor i64 %179, %182
  %184 = sub i64 2410270004345854594, %2
  %185 = xor i64 %181, %184
  %186 = zext i64 %183 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %177, %191
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %194 = getelementptr inbounds i8, ptr %193, i64 -32
  %195 = load i64, ptr %194, align 1
  %196 = getelementptr inbounds i8, ptr %193, i64 -24
  %197 = load i64, ptr %196, align 1
  %198 = add i64 %2, -8204357891075471176
  %199 = xor i64 %195, %198
  %200 = sub i64 5487137525590930912, %2
  %201 = xor i64 %197, %200
  %202 = zext i64 %199 to i128
  %203 = zext i64 %201 to i128
  %204 = mul nuw i128 %203, %202
  %205 = lshr i128 %204, 64
  %206 = xor i128 %205, %204
  %207 = trunc i128 %206 to i64
  %208 = add i64 %192, %207
  br label %209

209:                                              ; preds = %104, %176
  %210 = phi i64 [ %208, %176 ], [ %105, %104 ]
  %211 = load i64, ptr %0, align 1
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %213 = load i64, ptr %212, align 1
  %214 = add i64 %2, -4734510112055689544
  %215 = xor i64 %211, %214
  %216 = sub i64 2066345149520216444, %2
  %217 = xor i64 %213, %216
  %218 = zext i64 %215 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %210, %223
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %226 = getelementptr inbounds i8, ptr %225, i64 -16
  %227 = load i64, ptr %226, align 1
  %228 = getelementptr inbounds i8, ptr %225, i64 -8
  %229 = load i64, ptr %228, align 1
  %230 = add i64 %2, -2623469361688619810
  %231 = xor i64 %227, %230
  %232 = sub i64 2262974939099578482, %2
  %233 = xor i64 %229, %232
  %234 = zext i64 %231 to i128
  %235 = zext i64 %233 to i128
  %236 = mul nuw i128 %235, %234
  %237 = lshr i128 %236, 64
  %238 = xor i128 %237, %236
  %239 = trunc i128 %238 to i64
  %240 = add i64 %224, %239
  %241 = lshr i64 %240, 37
  %242 = xor i64 %241, %240
  %243 = mul i64 %242, 1609587791953885689
  %244 = lshr i64 %243, 32
  %245 = xor i64 %244, %243
  br label %252

246:                                              ; preds = %102
  %247 = icmp samesign ult i64 %1, 241
  br i1 %247, label %248, label %250

248:                                              ; preds = %246
  %249 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #33
  br label %252

250:                                              ; preds = %246
  %251 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %2) #29
  br label %252

252:                                              ; preds = %92, %64, %34, %7, %209, %248, %250
  %253 = phi i64 [ %245, %209 ], [ %249, %248 ], [ %251, %250 ], [ %31, %7 ], [ %61, %34 ], [ %91, %64 ], [ %101, %92 ]
  ret i64 %253
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH3_64bits_withSecretandSeed(ptr nocapture noundef readonly %0, i64 noundef range(i64 0, 4294967296) %1, ptr nocapture noundef nonnull readonly %2, i64 noundef range(i64 147, 193) %3, i64 noundef %4) unnamed_addr #12 {
  %6 = icmp samesign ult i64 %1, 241
  br i1 %6, label %7, label %252

7:                                                ; preds = %5
  %8 = icmp samesign ult i64 %1, 17
  br i1 %8, label %9, label %106

9:                                                ; preds = %7
  %10 = icmp samesign ugt i64 %1, 8
  br i1 %10, label %11, label %36, !prof !58

11:                                               ; preds = %9
  %12 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %12)
  %13 = add i64 %4, 7458650908927343033
  %14 = sub i64 -5812251307325107654, %4
  %15 = load i64, ptr %0, align 1
  %16 = xor i64 %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %18 = getelementptr inbounds i8, ptr %17, i64 -8
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %14
  %21 = tail call noundef i64 @llvm.bswap.i64(i64 %16)
  %22 = add i64 %21, %1
  %23 = add i64 %22, %20
  %24 = zext i64 %16 to i128
  %25 = zext i64 %20 to i128
  %26 = mul nuw i128 %25, %24
  %27 = lshr i128 %26, 64
  %28 = xor i128 %27, %26
  %29 = trunc i128 %28 to i64
  %30 = add i64 %23, %29
  %31 = lshr i64 %30, 37
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, 1609587791953885689
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  br label %685

36:                                               ; preds = %9
  %37 = icmp samesign ugt i64 %1, 3
  br i1 %37, label %38, label %66, !prof !58

38:                                               ; preds = %36
  %39 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %39)
  %40 = trunc i64 %4 to i32
  %41 = tail call noundef i32 @llvm.bswap.i32(i32 %40)
  %42 = zext i32 %41 to i64
  %43 = shl nuw i64 %42, 32
  %44 = xor i64 %43, %4
  %45 = load i32, ptr %0, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %47 = getelementptr inbounds i8, ptr %46, i64 -4
  %48 = load i32, ptr %47, align 1
  %49 = sub i64 -4090762196417718878, %44
  %50 = zext i32 %48 to i64
  %51 = zext i32 %45 to i64
  %52 = shl nuw i64 %51, 32
  %53 = or disjoint i64 %52, %50
  %54 = xor i64 %53, %49
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 49)
  %56 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 24)
  %57 = xor i64 %55, %56
  %58 = xor i64 %57, %54
  %59 = mul i64 %58, -6939452855193903323
  %60 = lshr i64 %59, 35
  %61 = add nuw nsw i64 %60, %1
  %62 = xor i64 %61, %59
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 28
  %65 = xor i64 %64, %63
  br label %685

66:                                               ; preds = %36
  %67 = icmp eq i64 %1, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %66
  %69 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %69)
  %70 = load i8, ptr %0, align 1
  %71 = lshr i64 %1, 1
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr i8, ptr %0, i64 %1
  %75 = getelementptr i8, ptr %74, i64 -1
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %70 to i64
  %78 = shl nuw nsw i64 %77, 16
  %79 = zext i8 %73 to i64
  %80 = shl nuw nsw i64 %79, 24
  %81 = or disjoint i64 %80, %78
  %82 = zext i8 %76 to i64
  %83 = or disjoint i64 %81, %82
  %84 = shl nuw nsw i64 %1, 8
  %85 = or disjoint i64 %83, %84
  %86 = add i64 %4, 2267503259
  %87 = xor i64 %85, %86
  %88 = lshr i64 %87, 33
  %89 = xor i64 %88, %87
  %90 = mul i64 %89, -4417276706812531889
  %91 = lshr i64 %90, 29
  %92 = xor i64 %91, %90
  %93 = mul i64 %92, 1609587929392839161
  %94 = lshr i64 %93, 32
  %95 = xor i64 %94, %93
  br label %685

96:                                               ; preds = %66
  %97 = xor i64 %4, -8707998980786479652
  %98 = lshr i64 %97, 33
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, -4417276706812531889
  %101 = lshr i64 %100, 29
  %102 = xor i64 %101, %100
  %103 = mul i64 %102, 1609587929392839161
  %104 = lshr i64 %103, 32
  %105 = xor i64 %104, %103
  br label %685

106:                                              ; preds = %7
  %107 = icmp samesign ult i64 %1, 129
  br i1 %107, label %108, label %250

108:                                              ; preds = %106
  %109 = mul i64 %1, -7046029288634856825
  %110 = icmp samesign ugt i64 %1, 32
  br i1 %110, label %111, label %213

111:                                              ; preds = %108
  %112 = icmp samesign ugt i64 %1, 64
  br i1 %112, label %113, label %180

113:                                              ; preds = %111
  %114 = icmp samesign ugt i64 %1, 96
  br i1 %114, label %115, label %147

115:                                              ; preds = %113
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %117 = load i64, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %119 = load i64, ptr %118, align 1
  %120 = add i64 %4, 4554437623014685352
  %121 = xor i64 %117, %120
  %122 = sub i64 2111919702937427193, %4
  %123 = xor i64 %119, %122
  %124 = zext i64 %121 to i128
  %125 = zext i64 %123 to i128
  %126 = mul nuw i128 %125, %124
  %127 = lshr i128 %126, 64
  %128 = xor i128 %127, %126
  %129 = trunc i128 %128 to i64
  %130 = add i64 %109, %129
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %132 = getelementptr inbounds i8, ptr %131, i64 -64
  %133 = load i64, ptr %132, align 1
  %134 = getelementptr inbounds i8, ptr %131, i64 -56
  %135 = load i64, ptr %134, align 1
  %136 = add i64 %4, 3556072174620004746
  %137 = xor i64 %133, %136
  %138 = sub i64 7238261902898274248, %4
  %139 = xor i64 %135, %138
  %140 = zext i64 %137 to i128
  %141 = zext i64 %139 to i128
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %130, %145
  br label %147

147:                                              ; preds = %115, %113
  %148 = phi i64 [ %146, %115 ], [ %109, %113 ]
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %150 = load i64, ptr %149, align 1
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %152 = load i64, ptr %151, align 1
  %153 = add i64 %4, -3818837453329782724
  %154 = xor i64 %150, %153
  %155 = sub i64 -6688317018830679928, %4
  %156 = xor i64 %152, %155
  %157 = zext i64 %154 to i128
  %158 = zext i64 %156 to i128
  %159 = mul nuw i128 %158, %157
  %160 = lshr i128 %159, 64
  %161 = xor i128 %160, %159
  %162 = trunc i128 %161 to i64
  %163 = add i64 %148, %162
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %165 = getelementptr inbounds i8, ptr %164, i64 -48
  %166 = load i64, ptr %165, align 1
  %167 = getelementptr inbounds i8, ptr %164, i64 -40
  %168 = load i64, ptr %167, align 1
  %169 = add i64 %4, 5690594596133299313
  %170 = xor i64 %166, %169
  %171 = sub i64 -2833645246901970632, %4
  %172 = xor i64 %168, %171
  %173 = zext i64 %170 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %163, %178
  br label %180

180:                                              ; preds = %147, %111
  %181 = phi i64 [ %179, %147 ], [ %109, %111 ]
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %185 = load i64, ptr %184, align 1
  %186 = add i64 %4, 8711581037947681227
  %187 = xor i64 %183, %186
  %188 = sub i64 2410270004345854594, %4
  %189 = xor i64 %185, %188
  %190 = zext i64 %187 to i128
  %191 = zext i64 %189 to i128
  %192 = mul nuw i128 %191, %190
  %193 = lshr i128 %192, 64
  %194 = xor i128 %193, %192
  %195 = trunc i128 %194 to i64
  %196 = add i64 %181, %195
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %198 = getelementptr inbounds i8, ptr %197, i64 -32
  %199 = load i64, ptr %198, align 1
  %200 = getelementptr inbounds i8, ptr %197, i64 -24
  %201 = load i64, ptr %200, align 1
  %202 = add i64 %4, -8204357891075471176
  %203 = xor i64 %199, %202
  %204 = sub i64 5487137525590930912, %4
  %205 = xor i64 %201, %204
  %206 = zext i64 %203 to i128
  %207 = zext i64 %205 to i128
  %208 = mul nuw i128 %207, %206
  %209 = lshr i128 %208, 64
  %210 = xor i128 %209, %208
  %211 = trunc i128 %210 to i64
  %212 = add i64 %196, %211
  br label %213

213:                                              ; preds = %108, %180
  %214 = phi i64 [ %212, %180 ], [ %109, %108 ]
  %215 = load i64, ptr %0, align 1
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %217 = load i64, ptr %216, align 1
  %218 = add i64 %4, -4734510112055689544
  %219 = xor i64 %215, %218
  %220 = sub i64 2066345149520216444, %4
  %221 = xor i64 %217, %220
  %222 = zext i64 %219 to i128
  %223 = zext i64 %221 to i128
  %224 = mul nuw i128 %223, %222
  %225 = lshr i128 %224, 64
  %226 = xor i128 %225, %224
  %227 = trunc i128 %226 to i64
  %228 = add i64 %214, %227
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %230 = getelementptr inbounds i8, ptr %229, i64 -16
  %231 = load i64, ptr %230, align 1
  %232 = getelementptr inbounds i8, ptr %229, i64 -8
  %233 = load i64, ptr %232, align 1
  %234 = add i64 %4, -2623469361688619810
  %235 = xor i64 %231, %234
  %236 = sub i64 2262974939099578482, %4
  %237 = xor i64 %233, %236
  %238 = zext i64 %235 to i128
  %239 = zext i64 %237 to i128
  %240 = mul nuw i128 %239, %238
  %241 = lshr i128 %240, 64
  %242 = xor i128 %241, %240
  %243 = trunc i128 %242 to i64
  %244 = add i64 %228, %243
  %245 = lshr i64 %244, 37
  %246 = xor i64 %245, %244
  %247 = mul i64 %246, 1609587791953885689
  %248 = lshr i64 %247, 32
  %249 = xor i64 %248, %247
  br label %685

250:                                              ; preds = %106
  %251 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %4) #33
  br label %685

252:                                              ; preds = %5
  %253 = add nsw i64 %3, -64
  %254 = lshr i64 %253, 3
  %255 = shl nuw nsw i64 %254, 6
  %256 = add nsw i64 %1, -1
  %257 = trunc i64 %256 to i32
  %258 = trunc nuw nsw i64 %255 to i32
  %259 = udiv i32 %257, %258
  %260 = zext nneg i32 %259 to i64
  %261 = icmp ugt i32 %258, %257
  br i1 %261, label %423, label %262

262:                                              ; preds = %252
  %263 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %264 = getelementptr inbounds i8, ptr %263, i64 -64
  %265 = load i64, ptr %264, align 1
  %266 = getelementptr inbounds i8, ptr %263, i64 -56
  %267 = load i64, ptr %266, align 1
  %268 = getelementptr inbounds i8, ptr %263, i64 -48
  %269 = load i64, ptr %268, align 1
  %270 = getelementptr inbounds i8, ptr %263, i64 -40
  %271 = load i64, ptr %270, align 1
  %272 = getelementptr inbounds i8, ptr %263, i64 -32
  %273 = load i64, ptr %272, align 1
  %274 = getelementptr inbounds i8, ptr %263, i64 -24
  %275 = load i64, ptr %274, align 1
  %276 = getelementptr inbounds i8, ptr %263, i64 -16
  %277 = load i64, ptr %276, align 1
  %278 = getelementptr inbounds i8, ptr %263, i64 -8
  %279 = load i64, ptr %278, align 1
  %280 = tail call i64 @llvm.umax.i64(i64 %260, i64 1)
  br label %281

281:                                              ; preds = %262, %388
  %282 = phi i64 [ 2654435761, %262 ], [ %420, %388 ]
  %283 = phi i64 [ 2870177450012600261, %262 ], [ %416, %388 ]
  %284 = phi i64 [ 2246822519, %262 ], [ %412, %388 ]
  %285 = phi i64 [ -8796714831421723037, %262 ], [ %408, %388 ]
  %286 = phi i64 [ 1609587929392839161, %262 ], [ %404, %388 ]
  %287 = phi i64 [ -4417276706812531889, %262 ], [ %400, %388 ]
  %288 = phi i64 [ -7046029288634856825, %262 ], [ %396, %388 ]
  %289 = phi i64 [ 3266489917, %262 ], [ %392, %388 ]
  %290 = phi i64 [ 0, %262 ], [ %421, %388 ]
  %291 = mul nuw nsw i64 %290, %255
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 %291
  br label %293

293:                                              ; preds = %281, %293
  %294 = phi i64 [ %282, %281 ], [ %385, %293 ]
  %295 = phi i64 [ %283, %281 ], [ %381, %293 ]
  %296 = phi i64 [ %284, %281 ], [ %365, %293 ]
  %297 = phi i64 [ %285, %281 ], [ %361, %293 ]
  %298 = phi i64 [ %286, %281 ], [ %345, %293 ]
  %299 = phi i64 [ %287, %281 ], [ %341, %293 ]
  %300 = phi i64 [ %288, %281 ], [ %325, %293 ]
  %301 = phi i64 [ %289, %281 ], [ %321, %293 ]
  %302 = phi i64 [ 0, %281 ], [ %386, %293 ]
  %303 = shl i64 %302, 6
  %304 = getelementptr inbounds nuw i8, ptr %292, i64 %303
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %305, i32 0, i32 3, i32 1)
  %306 = shl i64 %302, 3
  %307 = getelementptr inbounds nuw i8, ptr %2, i64 %306
  %308 = load i64, ptr %304, align 1
  %309 = load i64, ptr %307, align 1
  %310 = xor i64 %309, %308
  %311 = add i64 %300, %308
  %312 = lshr i64 %310, 32
  %313 = and i64 %310, 4294967295
  %314 = mul nuw i64 %313, %312
  %315 = add i64 %314, %301
  %316 = getelementptr inbounds nuw i8, ptr %304, i64 8
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %307, i64 8
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = add i64 %315, %317
  %322 = lshr i64 %320, 32
  %323 = and i64 %320, 4294967295
  %324 = mul nuw i64 %323, %322
  %325 = add i64 %324, %311
  %326 = getelementptr inbounds nuw i8, ptr %304, i64 16
  %327 = load i64, ptr %326, align 1
  %328 = getelementptr inbounds nuw i8, ptr %307, i64 16
  %329 = load i64, ptr %328, align 1
  %330 = xor i64 %329, %327
  %331 = add i64 %298, %327
  %332 = lshr i64 %330, 32
  %333 = and i64 %330, 4294967295
  %334 = mul nuw i64 %333, %332
  %335 = add i64 %334, %299
  %336 = getelementptr inbounds nuw i8, ptr %304, i64 24
  %337 = load i64, ptr %336, align 1
  %338 = getelementptr inbounds nuw i8, ptr %307, i64 24
  %339 = load i64, ptr %338, align 1
  %340 = xor i64 %339, %337
  %341 = add i64 %335, %337
  %342 = lshr i64 %340, 32
  %343 = and i64 %340, 4294967295
  %344 = mul nuw i64 %343, %342
  %345 = add i64 %344, %331
  %346 = getelementptr inbounds nuw i8, ptr %304, i64 32
  %347 = load i64, ptr %346, align 1
  %348 = getelementptr inbounds nuw i8, ptr %307, i64 32
  %349 = load i64, ptr %348, align 1
  %350 = xor i64 %349, %347
  %351 = add i64 %296, %347
  %352 = lshr i64 %350, 32
  %353 = and i64 %350, 4294967295
  %354 = mul nuw i64 %353, %352
  %355 = add i64 %354, %297
  %356 = getelementptr inbounds nuw i8, ptr %304, i64 40
  %357 = load i64, ptr %356, align 1
  %358 = getelementptr inbounds nuw i8, ptr %307, i64 40
  %359 = load i64, ptr %358, align 1
  %360 = xor i64 %359, %357
  %361 = add i64 %355, %357
  %362 = lshr i64 %360, 32
  %363 = and i64 %360, 4294967295
  %364 = mul nuw i64 %363, %362
  %365 = add i64 %364, %351
  %366 = getelementptr inbounds nuw i8, ptr %304, i64 48
  %367 = load i64, ptr %366, align 1
  %368 = getelementptr inbounds nuw i8, ptr %307, i64 48
  %369 = load i64, ptr %368, align 1
  %370 = xor i64 %369, %367
  %371 = add i64 %294, %367
  %372 = lshr i64 %370, 32
  %373 = and i64 %370, 4294967295
  %374 = mul nuw i64 %373, %372
  %375 = add i64 %374, %295
  %376 = getelementptr inbounds nuw i8, ptr %304, i64 56
  %377 = load i64, ptr %376, align 1
  %378 = getelementptr inbounds nuw i8, ptr %307, i64 56
  %379 = load i64, ptr %378, align 1
  %380 = xor i64 %379, %377
  %381 = add i64 %375, %377
  %382 = lshr i64 %380, 32
  %383 = and i64 %380, 4294967295
  %384 = mul nuw i64 %383, %382
  %385 = add i64 %384, %371
  %386 = add nuw nsw i64 %302, 1
  %387 = icmp eq i64 %386, %254
  br i1 %387, label %388, label %293, !llvm.loop !72

388:                                              ; preds = %293
  %389 = lshr i64 %321, 47
  %390 = xor i64 %265, %389
  %391 = xor i64 %390, %321
  %392 = mul i64 %391, 2654435761
  %393 = lshr i64 %325, 47
  %394 = xor i64 %267, %393
  %395 = xor i64 %394, %325
  %396 = mul i64 %395, 2654435761
  %397 = lshr i64 %341, 47
  %398 = xor i64 %269, %397
  %399 = xor i64 %398, %341
  %400 = mul i64 %399, 2654435761
  %401 = lshr i64 %345, 47
  %402 = xor i64 %271, %401
  %403 = xor i64 %402, %345
  %404 = mul i64 %403, 2654435761
  %405 = lshr i64 %361, 47
  %406 = xor i64 %273, %405
  %407 = xor i64 %406, %361
  %408 = mul i64 %407, 2654435761
  %409 = lshr i64 %365, 47
  %410 = xor i64 %275, %409
  %411 = xor i64 %410, %365
  %412 = mul i64 %411, 2654435761
  %413 = lshr i64 %381, 47
  %414 = xor i64 %277, %413
  %415 = xor i64 %414, %381
  %416 = mul i64 %415, 2654435761
  %417 = lshr i64 %385, 47
  %418 = xor i64 %279, %417
  %419 = xor i64 %418, %385
  %420 = mul i64 %419, 2654435761
  %421 = add nuw nsw i64 %290, 1
  %422 = icmp eq i64 %421, %280
  br i1 %422, label %423, label %281, !llvm.loop !73

423:                                              ; preds = %388, %252
  %424 = phi i64 [ 2654435761, %252 ], [ %420, %388 ]
  %425 = phi i64 [ 2870177450012600261, %252 ], [ %416, %388 ]
  %426 = phi i64 [ 2246822519, %252 ], [ %412, %388 ]
  %427 = phi i64 [ -8796714831421723037, %252 ], [ %408, %388 ]
  %428 = phi i64 [ 1609587929392839161, %252 ], [ %404, %388 ]
  %429 = phi i64 [ -4417276706812531889, %252 ], [ %400, %388 ]
  %430 = phi i64 [ -7046029288634856825, %252 ], [ %396, %388 ]
  %431 = phi i64 [ 3266489917, %252 ], [ %392, %388 ]
  %432 = mul nuw nsw i64 %255, %260
  %433 = sub nsw i64 %256, %432
  %434 = lshr i64 %433, 6
  %435 = lshr i64 %3, 3
  %436 = icmp samesign ule i64 %434, %435
  tail call void @llvm.assume(i1 %436)
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 %432
  %438 = icmp ult i64 %433, 64
  br i1 %438, label %536, label %439

439:                                              ; preds = %423
  %440 = tail call i64 @llvm.umax.i64(i64 %434, i64 1)
  br label %441

441:                                              ; preds = %439, %441
  %442 = phi i64 [ %424, %439 ], [ %533, %441 ]
  %443 = phi i64 [ %425, %439 ], [ %529, %441 ]
  %444 = phi i64 [ %426, %439 ], [ %513, %441 ]
  %445 = phi i64 [ %427, %439 ], [ %509, %441 ]
  %446 = phi i64 [ %428, %439 ], [ %493, %441 ]
  %447 = phi i64 [ %429, %439 ], [ %489, %441 ]
  %448 = phi i64 [ %430, %439 ], [ %473, %441 ]
  %449 = phi i64 [ %431, %439 ], [ %469, %441 ]
  %450 = phi i64 [ 0, %439 ], [ %534, %441 ]
  %451 = shl i64 %450, 6
  %452 = getelementptr inbounds nuw i8, ptr %437, i64 %451
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %453, i32 0, i32 3, i32 1)
  %454 = shl i64 %450, 3
  %455 = getelementptr inbounds nuw i8, ptr %2, i64 %454
  %456 = load i64, ptr %452, align 1
  %457 = load i64, ptr %455, align 1
  %458 = xor i64 %457, %456
  %459 = add i64 %448, %456
  %460 = lshr i64 %458, 32
  %461 = and i64 %458, 4294967295
  %462 = mul nuw i64 %461, %460
  %463 = add i64 %462, %449
  %464 = getelementptr inbounds nuw i8, ptr %452, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = getelementptr inbounds nuw i8, ptr %455, i64 8
  %467 = load i64, ptr %466, align 1
  %468 = xor i64 %467, %465
  %469 = add i64 %463, %465
  %470 = lshr i64 %468, 32
  %471 = and i64 %468, 4294967295
  %472 = mul nuw i64 %471, %470
  %473 = add i64 %472, %459
  %474 = getelementptr inbounds nuw i8, ptr %452, i64 16
  %475 = load i64, ptr %474, align 1
  %476 = getelementptr inbounds nuw i8, ptr %455, i64 16
  %477 = load i64, ptr %476, align 1
  %478 = xor i64 %477, %475
  %479 = add i64 %446, %475
  %480 = lshr i64 %478, 32
  %481 = and i64 %478, 4294967295
  %482 = mul nuw i64 %481, %480
  %483 = add i64 %482, %447
  %484 = getelementptr inbounds nuw i8, ptr %452, i64 24
  %485 = load i64, ptr %484, align 1
  %486 = getelementptr inbounds nuw i8, ptr %455, i64 24
  %487 = load i64, ptr %486, align 1
  %488 = xor i64 %487, %485
  %489 = add i64 %483, %485
  %490 = lshr i64 %488, 32
  %491 = and i64 %488, 4294967295
  %492 = mul nuw i64 %491, %490
  %493 = add i64 %492, %479
  %494 = getelementptr inbounds nuw i8, ptr %452, i64 32
  %495 = load i64, ptr %494, align 1
  %496 = getelementptr inbounds nuw i8, ptr %455, i64 32
  %497 = load i64, ptr %496, align 1
  %498 = xor i64 %497, %495
  %499 = add i64 %444, %495
  %500 = lshr i64 %498, 32
  %501 = and i64 %498, 4294967295
  %502 = mul nuw i64 %501, %500
  %503 = add i64 %502, %445
  %504 = getelementptr inbounds nuw i8, ptr %452, i64 40
  %505 = load i64, ptr %504, align 1
  %506 = getelementptr inbounds nuw i8, ptr %455, i64 40
  %507 = load i64, ptr %506, align 1
  %508 = xor i64 %507, %505
  %509 = add i64 %503, %505
  %510 = lshr i64 %508, 32
  %511 = and i64 %508, 4294967295
  %512 = mul nuw i64 %511, %510
  %513 = add i64 %512, %499
  %514 = getelementptr inbounds nuw i8, ptr %452, i64 48
  %515 = load i64, ptr %514, align 1
  %516 = getelementptr inbounds nuw i8, ptr %455, i64 48
  %517 = load i64, ptr %516, align 1
  %518 = xor i64 %517, %515
  %519 = add i64 %442, %515
  %520 = lshr i64 %518, 32
  %521 = and i64 %518, 4294967295
  %522 = mul nuw i64 %521, %520
  %523 = add i64 %522, %443
  %524 = getelementptr inbounds nuw i8, ptr %452, i64 56
  %525 = load i64, ptr %524, align 1
  %526 = getelementptr inbounds nuw i8, ptr %455, i64 56
  %527 = load i64, ptr %526, align 1
  %528 = xor i64 %527, %525
  %529 = add i64 %523, %525
  %530 = lshr i64 %528, 32
  %531 = and i64 %528, 4294967295
  %532 = mul nuw i64 %531, %530
  %533 = add i64 %532, %519
  %534 = add nuw nsw i64 %450, 1
  %535 = icmp eq i64 %534, %440
  br i1 %535, label %536, label %441, !llvm.loop !72

536:                                              ; preds = %441, %423
  %537 = phi i64 [ %424, %423 ], [ %533, %441 ]
  %538 = phi i64 [ %425, %423 ], [ %529, %441 ]
  %539 = phi i64 [ %426, %423 ], [ %513, %441 ]
  %540 = phi i64 [ %427, %423 ], [ %509, %441 ]
  %541 = phi i64 [ %428, %423 ], [ %493, %441 ]
  %542 = phi i64 [ %429, %423 ], [ %489, %441 ]
  %543 = phi i64 [ %430, %423 ], [ %473, %441 ]
  %544 = phi i64 [ %431, %423 ], [ %469, %441 ]
  %545 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %546 = getelementptr inbounds i8, ptr %545, i64 -64
  %547 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %548 = getelementptr inbounds i8, ptr %547, i64 -71
  %549 = load i64, ptr %546, align 1
  %550 = load i64, ptr %548, align 1
  %551 = xor i64 %550, %549
  %552 = add i64 %543, %549
  %553 = lshr i64 %551, 32
  %554 = and i64 %551, 4294967295
  %555 = mul nuw i64 %554, %553
  %556 = add i64 %555, %544
  %557 = getelementptr inbounds i8, ptr %545, i64 -56
  %558 = load i64, ptr %557, align 1
  %559 = getelementptr inbounds i8, ptr %547, i64 -63
  %560 = load i64, ptr %559, align 1
  %561 = xor i64 %560, %558
  %562 = add i64 %556, %558
  %563 = lshr i64 %561, 32
  %564 = and i64 %561, 4294967295
  %565 = mul nuw i64 %564, %563
  %566 = add i64 %565, %552
  %567 = getelementptr inbounds i8, ptr %545, i64 -48
  %568 = load i64, ptr %567, align 1
  %569 = getelementptr inbounds i8, ptr %547, i64 -55
  %570 = load i64, ptr %569, align 1
  %571 = xor i64 %570, %568
  %572 = add i64 %541, %568
  %573 = lshr i64 %571, 32
  %574 = and i64 %571, 4294967295
  %575 = mul nuw i64 %574, %573
  %576 = add i64 %575, %542
  %577 = getelementptr inbounds i8, ptr %545, i64 -40
  %578 = load i64, ptr %577, align 1
  %579 = getelementptr inbounds i8, ptr %547, i64 -47
  %580 = load i64, ptr %579, align 1
  %581 = xor i64 %580, %578
  %582 = add i64 %576, %578
  %583 = lshr i64 %581, 32
  %584 = and i64 %581, 4294967295
  %585 = mul nuw i64 %584, %583
  %586 = add i64 %585, %572
  %587 = getelementptr inbounds i8, ptr %545, i64 -32
  %588 = load i64, ptr %587, align 1
  %589 = getelementptr inbounds i8, ptr %547, i64 -39
  %590 = load i64, ptr %589, align 1
  %591 = xor i64 %590, %588
  %592 = add i64 %539, %588
  %593 = lshr i64 %591, 32
  %594 = and i64 %591, 4294967295
  %595 = mul nuw i64 %594, %593
  %596 = add i64 %595, %540
  %597 = getelementptr inbounds i8, ptr %545, i64 -24
  %598 = load i64, ptr %597, align 1
  %599 = getelementptr inbounds i8, ptr %547, i64 -31
  %600 = load i64, ptr %599, align 1
  %601 = xor i64 %600, %598
  %602 = add i64 %596, %598
  %603 = lshr i64 %601, 32
  %604 = and i64 %601, 4294967295
  %605 = mul nuw i64 %604, %603
  %606 = add i64 %605, %592
  %607 = getelementptr inbounds i8, ptr %545, i64 -16
  %608 = load i64, ptr %607, align 1
  %609 = getelementptr inbounds i8, ptr %547, i64 -23
  %610 = load i64, ptr %609, align 1
  %611 = xor i64 %610, %608
  %612 = add i64 %537, %608
  %613 = lshr i64 %611, 32
  %614 = and i64 %611, 4294967295
  %615 = mul nuw i64 %614, %613
  %616 = add i64 %615, %538
  %617 = getelementptr inbounds i8, ptr %545, i64 -8
  %618 = load i64, ptr %617, align 1
  %619 = getelementptr inbounds i8, ptr %547, i64 -15
  %620 = load i64, ptr %619, align 1
  %621 = xor i64 %620, %618
  %622 = add i64 %616, %618
  %623 = lshr i64 %621, 32
  %624 = and i64 %621, 4294967295
  %625 = mul nuw i64 %624, %623
  %626 = add i64 %625, %612
  %627 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %628 = mul i64 %1, -7046029288634856825
  %629 = load i64, ptr %627, align 1, !alias.scope !74, !noalias !79
  %630 = xor i64 %629, %562
  %631 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %632 = load i64, ptr %631, align 1, !alias.scope !74, !noalias !79
  %633 = xor i64 %632, %566
  %634 = zext i64 %630 to i128
  %635 = zext i64 %633 to i128
  %636 = mul nuw i128 %635, %634
  %637 = lshr i128 %636, 64
  %638 = xor i128 %637, %636
  %639 = trunc i128 %638 to i64
  %640 = add i64 %628, %639
  %641 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %642 = load i64, ptr %641, align 1, !alias.scope !74, !noalias !79
  %643 = xor i64 %642, %582
  %644 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %645 = load i64, ptr %644, align 1, !alias.scope !74, !noalias !79
  %646 = xor i64 %645, %586
  %647 = zext i64 %643 to i128
  %648 = zext i64 %646 to i128
  %649 = mul nuw i128 %648, %647
  %650 = lshr i128 %649, 64
  %651 = xor i128 %650, %649
  %652 = trunc i128 %651 to i64
  %653 = add i64 %640, %652
  %654 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %655 = load i64, ptr %654, align 1, !alias.scope !74, !noalias !79
  %656 = xor i64 %655, %602
  %657 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %658 = load i64, ptr %657, align 1, !alias.scope !74, !noalias !79
  %659 = xor i64 %658, %606
  %660 = zext i64 %656 to i128
  %661 = zext i64 %659 to i128
  %662 = mul nuw i128 %661, %660
  %663 = lshr i128 %662, 64
  %664 = xor i128 %663, %662
  %665 = trunc i128 %664 to i64
  %666 = add i64 %653, %665
  %667 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %668 = load i64, ptr %667, align 1, !alias.scope !74, !noalias !79
  %669 = xor i64 %668, %622
  %670 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %671 = load i64, ptr %670, align 1, !alias.scope !74, !noalias !79
  %672 = xor i64 %671, %626
  %673 = zext i64 %669 to i128
  %674 = zext i64 %672 to i128
  %675 = mul nuw i128 %674, %673
  %676 = lshr i128 %675, 64
  %677 = xor i128 %676, %675
  %678 = trunc i128 %677 to i64
  %679 = add i64 %666, %678
  %680 = lshr i64 %679, 37
  %681 = xor i64 %680, %679
  %682 = mul i64 %681, 1609587791953885689
  %683 = lshr i64 %682, 32
  %684 = xor i64 %683, %682
  br label %685

685:                                              ; preds = %250, %213, %11, %38, %68, %96, %536
  %686 = phi i64 [ %684, %536 ], [ %249, %213 ], [ %251, %250 ], [ %35, %11 ], [ %65, %38 ], [ %95, %68 ], [ %105, %96 ]
  ret i64 %686
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef nonnull initializes((0, 64), (512, 552)) %0, i64 noundef %1) unnamed_addr #13 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %7, align 16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %9, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %11, align 16
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %13, align 8
  br label %81

14:                                               ; preds = %2
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %71, label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %24 = add i64 %1, -4734510112055689544
  %25 = sub i64 2066345149520216444, %1
  store i64 %24, ptr %23, align 1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %25, ptr %26, align 1
  %27 = add i64 %1, -2623469361688619810
  %28 = sub i64 2262974939099578482, %1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %27, ptr %29, align 1
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %28, ptr %30, align 1
  %31 = add i64 %1, 8711581037947681227
  %32 = sub i64 2410270004345854594, %1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %31, ptr %33, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %32, ptr %34, align 1
  %35 = add i64 %1, -8204357891075471176
  %36 = sub i64 5487137525590930912, %1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %35, ptr %37, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %36, ptr %38, align 1
  %39 = add i64 %1, -3818837453329782724
  %40 = sub i64 -6688317018830679928, %1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %39, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %40, ptr %42, align 1
  %43 = add i64 %1, 5690594596133299313
  %44 = sub i64 -2833645246901970632, %1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %43, ptr %45, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %44, ptr %46, align 1
  %47 = add i64 %1, 4554437623014685352
  %48 = sub i64 2111919702937427193, %1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %47, ptr %49, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %48, ptr %50, align 1
  %51 = add i64 %1, 3556072174620004746
  %52 = sub i64 7238261902898274248, %1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %51, ptr %53, align 1
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %52, ptr %54, align 1
  %55 = add i64 %1, -4329134394285701654
  %56 = sub i64 -1485321483350670907, %1
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %55, ptr %57, align 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %56, ptr %58, align 1
  %59 = add i64 %1, 5321830579834785047
  %60 = sub i64 -7032137544937171245, %1
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %59, ptr %61, align 1
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %60, ptr %62, align 1
  %63 = add i64 %1, -242834301215959509
  %64 = sub i64 -3588858202114426737, %1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %63, ptr %65, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %64, ptr %66, align 1
  %67 = add i64 %1, 2883454493032893253
  %68 = sub i64 9097354517224871855, %1
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %67, ptr %69, align 1
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %68, ptr %70, align 1
  br label %71

71:                                               ; preds = %22, %18
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %72, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %74, align 16
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %76, align 32
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %78, align 16
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %79, align 8
  store i64 %1, ptr %15, align 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 1, ptr %80, align 4
  br label %81

81:                                               ; preds = %71, %4
  %82 = phi ptr [ null, %71 ], [ @XXH3_kSecret, %4 ]
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %82, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %84, align 32
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %85, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef nonnull readonly %0) unnamed_addr #14 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = select i1 %5, ptr %6, ptr %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %9 = load i64, ptr %8, align 16
  %10 = icmp ugt i64 %9, 240
  br i1 %10, label %11, label %495

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #29
  %12 = load i64, ptr %0, align 64
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load i64, ptr %15, align 16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %20 = load i64, ptr %19, align 32
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %24 = load i64, ptr %23, align 16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %28 = load i32, ptr %27, align 64
  %29 = icmp ugt i32 %28, 63
  br i1 %29, label %30, label %336

30:                                               ; preds = %11
  %31 = add i32 %28, -1
  %32 = lshr i32 %31, 6
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %39 = shl i64 %35, 3
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39
  %41 = sub i64 %37, %35
  %42 = icmp ugt i64 %41, %33
  br i1 %42, label %216, label %43

43:                                               ; preds = %30
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %45 = load i64, ptr %44, align 32
  %46 = getelementptr inbounds nuw i8, ptr %7, i64 %45
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %49 = load i64, ptr %48, align 1
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %51 = load i64, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 24
  %53 = load i64, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %55 = load i64, ptr %54, align 1
  %56 = getelementptr inbounds nuw i8, ptr %46, i64 40
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %59 = load i64, ptr %58, align 1
  %60 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %61 = load i64, ptr %60, align 1
  br label %62

62:                                               ; preds = %43, %171
  %63 = phi i64 [ %26, %43 ], [ %211, %171 ]
  %64 = phi i64 [ %24, %43 ], [ %207, %171 ]
  %65 = phi i64 [ %22, %43 ], [ %203, %171 ]
  %66 = phi i64 [ %20, %43 ], [ %199, %171 ]
  %67 = phi i64 [ %18, %43 ], [ %195, %171 ]
  %68 = phi i64 [ %16, %43 ], [ %191, %171 ]
  %69 = phi i64 [ %14, %43 ], [ %187, %171 ]
  %70 = phi i64 [ %12, %43 ], [ %183, %171 ]
  %71 = phi i64 [ %33, %43 ], [ %214, %171 ]
  %72 = phi ptr [ %38, %43 ], [ %213, %171 ]
  %73 = phi ptr [ %40, %43 ], [ %7, %171 ]
  %74 = phi i64 [ %41, %43 ], [ %37, %171 ]
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %171, label %76

76:                                               ; preds = %62, %76
  %77 = phi i64 [ %168, %76 ], [ %63, %62 ]
  %78 = phi i64 [ %164, %76 ], [ %64, %62 ]
  %79 = phi i64 [ %148, %76 ], [ %65, %62 ]
  %80 = phi i64 [ %144, %76 ], [ %66, %62 ]
  %81 = phi i64 [ %128, %76 ], [ %67, %62 ]
  %82 = phi i64 [ %124, %76 ], [ %68, %62 ]
  %83 = phi i64 [ %108, %76 ], [ %69, %62 ]
  %84 = phi i64 [ %104, %76 ], [ %70, %62 ]
  %85 = phi i64 [ %169, %76 ], [ 0, %62 ]
  %86 = shl i64 %85, 6
  %87 = getelementptr inbounds nuw i8, ptr %72, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %88, i32 0, i32 3, i32 1), !noalias !82
  %89 = shl i64 %85, 3
  %90 = getelementptr inbounds nuw i8, ptr %73, i64 %89
  %91 = load i64, ptr %87, align 1
  %92 = load i64, ptr %90, align 1
  %93 = xor i64 %92, %91
  %94 = add i64 %83, %91
  %95 = lshr i64 %93, 32
  %96 = and i64 %93, 4294967295
  %97 = mul nuw i64 %96, %95
  %98 = add i64 %97, %84
  %99 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %100 = load i64, ptr %99, align 1
  %101 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %102 = load i64, ptr %101, align 1
  %103 = xor i64 %102, %100
  %104 = add i64 %98, %100
  %105 = lshr i64 %103, 32
  %106 = and i64 %103, 4294967295
  %107 = mul nuw i64 %106, %105
  %108 = add i64 %107, %94
  %109 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %110 = load i64, ptr %109, align 1
  %111 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %112 = load i64, ptr %111, align 1
  %113 = xor i64 %112, %110
  %114 = add i64 %81, %110
  %115 = lshr i64 %113, 32
  %116 = and i64 %113, 4294967295
  %117 = mul nuw i64 %116, %115
  %118 = add i64 %117, %82
  %119 = getelementptr inbounds nuw i8, ptr %87, i64 24
  %120 = load i64, ptr %119, align 1
  %121 = getelementptr inbounds nuw i8, ptr %90, i64 24
  %122 = load i64, ptr %121, align 1
  %123 = xor i64 %122, %120
  %124 = add i64 %118, %120
  %125 = lshr i64 %123, 32
  %126 = and i64 %123, 4294967295
  %127 = mul nuw i64 %126, %125
  %128 = add i64 %127, %114
  %129 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %130 = load i64, ptr %129, align 1
  %131 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %132 = load i64, ptr %131, align 1
  %133 = xor i64 %132, %130
  %134 = add i64 %79, %130
  %135 = lshr i64 %133, 32
  %136 = and i64 %133, 4294967295
  %137 = mul nuw i64 %136, %135
  %138 = add i64 %137, %80
  %139 = getelementptr inbounds nuw i8, ptr %87, i64 40
  %140 = load i64, ptr %139, align 1
  %141 = getelementptr inbounds nuw i8, ptr %90, i64 40
  %142 = load i64, ptr %141, align 1
  %143 = xor i64 %142, %140
  %144 = add i64 %138, %140
  %145 = lshr i64 %143, 32
  %146 = and i64 %143, 4294967295
  %147 = mul nuw i64 %146, %145
  %148 = add i64 %147, %134
  %149 = getelementptr inbounds nuw i8, ptr %87, i64 48
  %150 = load i64, ptr %149, align 1
  %151 = getelementptr inbounds nuw i8, ptr %90, i64 48
  %152 = load i64, ptr %151, align 1
  %153 = xor i64 %152, %150
  %154 = add i64 %77, %150
  %155 = lshr i64 %153, 32
  %156 = and i64 %153, 4294967295
  %157 = mul nuw i64 %156, %155
  %158 = add i64 %157, %78
  %159 = getelementptr inbounds nuw i8, ptr %87, i64 56
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds nuw i8, ptr %90, i64 56
  %162 = load i64, ptr %161, align 1
  %163 = xor i64 %162, %160
  %164 = add i64 %158, %160
  %165 = lshr i64 %163, 32
  %166 = and i64 %163, 4294967295
  %167 = mul nuw i64 %166, %165
  %168 = add i64 %167, %154
  %169 = add nuw i64 %85, 1
  %170 = icmp eq i64 %169, %74
  br i1 %170, label %171, label %76, !llvm.loop !72

171:                                              ; preds = %76, %62
  %172 = phi i64 [ %63, %62 ], [ %168, %76 ]
  %173 = phi i64 [ %64, %62 ], [ %164, %76 ]
  %174 = phi i64 [ %65, %62 ], [ %148, %76 ]
  %175 = phi i64 [ %66, %62 ], [ %144, %76 ]
  %176 = phi i64 [ %67, %62 ], [ %128, %76 ]
  %177 = phi i64 [ %68, %62 ], [ %124, %76 ]
  %178 = phi i64 [ %69, %62 ], [ %108, %76 ]
  %179 = phi i64 [ %70, %62 ], [ %104, %76 ]
  %180 = lshr i64 %179, 47
  %181 = xor i64 %47, %180
  %182 = xor i64 %181, %179
  %183 = mul i64 %182, 2654435761
  %184 = lshr i64 %178, 47
  %185 = xor i64 %49, %184
  %186 = xor i64 %185, %178
  %187 = mul i64 %186, 2654435761
  %188 = lshr i64 %177, 47
  %189 = xor i64 %51, %188
  %190 = xor i64 %189, %177
  %191 = mul i64 %190, 2654435761
  %192 = lshr i64 %176, 47
  %193 = xor i64 %53, %192
  %194 = xor i64 %193, %176
  %195 = mul i64 %194, 2654435761
  %196 = lshr i64 %175, 47
  %197 = xor i64 %55, %196
  %198 = xor i64 %197, %175
  %199 = mul i64 %198, 2654435761
  %200 = lshr i64 %174, 47
  %201 = xor i64 %57, %200
  %202 = xor i64 %201, %174
  %203 = mul i64 %202, 2654435761
  %204 = lshr i64 %173, 47
  %205 = xor i64 %59, %204
  %206 = xor i64 %205, %173
  %207 = mul i64 %206, 2654435761
  %208 = lshr i64 %172, 47
  %209 = xor i64 %61, %208
  %210 = xor i64 %209, %172
  %211 = mul i64 %210, 2654435761
  %212 = shl i64 %74, 6
  %213 = getelementptr inbounds nuw i8, ptr %72, i64 %212
  %214 = sub i64 %71, %74
  %215 = icmp ult i64 %214, %37
  br i1 %215, label %216, label %62, !llvm.loop !85

216:                                              ; preds = %171, %30
  %217 = phi i64 [ %26, %30 ], [ %211, %171 ]
  %218 = phi i64 [ %24, %30 ], [ %207, %171 ]
  %219 = phi i64 [ %22, %30 ], [ %203, %171 ]
  %220 = phi i64 [ %20, %30 ], [ %199, %171 ]
  %221 = phi i64 [ %18, %30 ], [ %195, %171 ]
  %222 = phi i64 [ %16, %30 ], [ %191, %171 ]
  %223 = phi i64 [ %14, %30 ], [ %187, %171 ]
  %224 = phi i64 [ %12, %30 ], [ %183, %171 ]
  %225 = phi i64 [ %33, %30 ], [ %214, %171 ]
  %226 = phi ptr [ %38, %30 ], [ %213, %171 ]
  %227 = phi ptr [ %40, %30 ], [ %7, %171 ]
  %228 = icmp eq i64 %225, 0
  br i1 %228, label %324, label %229

229:                                              ; preds = %216, %229
  %230 = phi i64 [ %321, %229 ], [ %217, %216 ]
  %231 = phi i64 [ %317, %229 ], [ %218, %216 ]
  %232 = phi i64 [ %301, %229 ], [ %219, %216 ]
  %233 = phi i64 [ %297, %229 ], [ %220, %216 ]
  %234 = phi i64 [ %281, %229 ], [ %221, %216 ]
  %235 = phi i64 [ %277, %229 ], [ %222, %216 ]
  %236 = phi i64 [ %261, %229 ], [ %223, %216 ]
  %237 = phi i64 [ %257, %229 ], [ %224, %216 ]
  %238 = phi i64 [ %322, %229 ], [ 0, %216 ]
  %239 = shl i64 %238, 6
  %240 = getelementptr inbounds nuw i8, ptr %226, i64 %239
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %241, i32 0, i32 3, i32 1), !noalias !82
  %242 = shl i64 %238, 3
  %243 = getelementptr inbounds nuw i8, ptr %227, i64 %242
  %244 = load i64, ptr %240, align 1
  %245 = load i64, ptr %243, align 1
  %246 = xor i64 %245, %244
  %247 = add i64 %236, %244
  %248 = lshr i64 %246, 32
  %249 = and i64 %246, 4294967295
  %250 = mul nuw i64 %249, %248
  %251 = add i64 %250, %237
  %252 = getelementptr inbounds nuw i8, ptr %240, i64 8
  %253 = load i64, ptr %252, align 1
  %254 = getelementptr inbounds nuw i8, ptr %243, i64 8
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %253
  %257 = add i64 %251, %253
  %258 = lshr i64 %256, 32
  %259 = and i64 %256, 4294967295
  %260 = mul nuw i64 %259, %258
  %261 = add i64 %260, %247
  %262 = getelementptr inbounds nuw i8, ptr %240, i64 16
  %263 = load i64, ptr %262, align 1
  %264 = getelementptr inbounds nuw i8, ptr %243, i64 16
  %265 = load i64, ptr %264, align 1
  %266 = xor i64 %265, %263
  %267 = add i64 %234, %263
  %268 = lshr i64 %266, 32
  %269 = and i64 %266, 4294967295
  %270 = mul nuw i64 %269, %268
  %271 = add i64 %270, %235
  %272 = getelementptr inbounds nuw i8, ptr %240, i64 24
  %273 = load i64, ptr %272, align 1
  %274 = getelementptr inbounds nuw i8, ptr %243, i64 24
  %275 = load i64, ptr %274, align 1
  %276 = xor i64 %275, %273
  %277 = add i64 %271, %273
  %278 = lshr i64 %276, 32
  %279 = and i64 %276, 4294967295
  %280 = mul nuw i64 %279, %278
  %281 = add i64 %280, %267
  %282 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds nuw i8, ptr %243, i64 32
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %285, %283
  %287 = add i64 %232, %283
  %288 = lshr i64 %286, 32
  %289 = and i64 %286, 4294967295
  %290 = mul nuw i64 %289, %288
  %291 = add i64 %290, %233
  %292 = getelementptr inbounds nuw i8, ptr %240, i64 40
  %293 = load i64, ptr %292, align 1
  %294 = getelementptr inbounds nuw i8, ptr %243, i64 40
  %295 = load i64, ptr %294, align 1
  %296 = xor i64 %295, %293
  %297 = add i64 %291, %293
  %298 = lshr i64 %296, 32
  %299 = and i64 %296, 4294967295
  %300 = mul nuw i64 %299, %298
  %301 = add i64 %300, %287
  %302 = getelementptr inbounds nuw i8, ptr %240, i64 48
  %303 = load i64, ptr %302, align 1
  %304 = getelementptr inbounds nuw i8, ptr %243, i64 48
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %305, %303
  %307 = add i64 %230, %303
  %308 = lshr i64 %306, 32
  %309 = and i64 %306, 4294967295
  %310 = mul nuw i64 %309, %308
  %311 = add i64 %310, %231
  %312 = getelementptr inbounds nuw i8, ptr %240, i64 56
  %313 = load i64, ptr %312, align 1
  %314 = getelementptr inbounds nuw i8, ptr %243, i64 56
  %315 = load i64, ptr %314, align 1
  %316 = xor i64 %315, %313
  %317 = add i64 %311, %313
  %318 = lshr i64 %316, 32
  %319 = and i64 %316, 4294967295
  %320 = mul nuw i64 %319, %318
  %321 = add i64 %320, %307
  %322 = add nuw i64 %238, 1
  %323 = icmp eq i64 %322, %225
  br i1 %323, label %324, label %229, !llvm.loop !72

324:                                              ; preds = %229, %216
  %325 = phi i64 [ %217, %216 ], [ %321, %229 ]
  %326 = phi i64 [ %218, %216 ], [ %317, %229 ]
  %327 = phi i64 [ %219, %216 ], [ %301, %229 ]
  %328 = phi i64 [ %220, %216 ], [ %297, %229 ]
  %329 = phi i64 [ %221, %216 ], [ %281, %229 ]
  %330 = phi i64 [ %222, %216 ], [ %277, %229 ]
  %331 = phi i64 [ %223, %216 ], [ %261, %229 ]
  %332 = phi i64 [ %224, %216 ], [ %257, %229 ]
  %333 = zext i32 %28 to i64
  %334 = getelementptr inbounds nuw i8, ptr %38, i64 %333
  %335 = getelementptr inbounds i8, ptr %334, i64 -64
  br label %345

336:                                              ; preds = %11
  %337 = sub nuw nsw i32 64, %28
  %338 = zext nneg i32 %337 to i64
  %339 = icmp ne i32 %28, 0
  tail call void @llvm.assume(i1 %339)
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %341 = sub nsw i64 0, %338
  %342 = getelementptr inbounds i8, ptr %27, i64 %341
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %342, i64 %338, i1 false)
  %343 = getelementptr inbounds nuw i8, ptr %2, i64 %338
  %344 = zext nneg i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %343, ptr nonnull align 64 %340, i64 %344, i1 false)
  br label %345

345:                                              ; preds = %336, %324
  %346 = phi i64 [ %325, %324 ], [ %26, %336 ]
  %347 = phi i64 [ %326, %324 ], [ %24, %336 ]
  %348 = phi i64 [ %327, %324 ], [ %22, %336 ]
  %349 = phi i64 [ %328, %324 ], [ %20, %336 ]
  %350 = phi i64 [ %329, %324 ], [ %18, %336 ]
  %351 = phi i64 [ %330, %324 ], [ %16, %336 ]
  %352 = phi i64 [ %331, %324 ], [ %14, %336 ]
  %353 = phi i64 [ %332, %324 ], [ %12, %336 ]
  %354 = phi ptr [ %335, %324 ], [ %2, %336 ]
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %356 = load i64, ptr %355, align 32
  %357 = getelementptr inbounds nuw i8, ptr %7, i64 %356
  %358 = getelementptr inbounds i8, ptr %357, i64 -7
  %359 = load i64, ptr %354, align 1
  %360 = load i64, ptr %358, align 1
  %361 = xor i64 %360, %359
  %362 = add i64 %352, %359
  %363 = lshr i64 %361, 32
  %364 = and i64 %361, 4294967295
  %365 = mul nuw i64 %364, %363
  %366 = add i64 %365, %353
  %367 = getelementptr inbounds nuw i8, ptr %354, i64 8
  %368 = load i64, ptr %367, align 1
  %369 = getelementptr inbounds nuw i8, ptr %357, i64 1
  %370 = load i64, ptr %369, align 1
  %371 = xor i64 %370, %368
  %372 = add i64 %366, %368
  %373 = lshr i64 %371, 32
  %374 = and i64 %371, 4294967295
  %375 = mul nuw i64 %374, %373
  %376 = add i64 %375, %362
  %377 = getelementptr inbounds nuw i8, ptr %354, i64 16
  %378 = load i64, ptr %377, align 1
  %379 = getelementptr inbounds nuw i8, ptr %357, i64 9
  %380 = load i64, ptr %379, align 1
  %381 = xor i64 %380, %378
  %382 = add i64 %350, %378
  %383 = lshr i64 %381, 32
  %384 = and i64 %381, 4294967295
  %385 = mul nuw i64 %384, %383
  %386 = add i64 %385, %351
  %387 = getelementptr inbounds nuw i8, ptr %354, i64 24
  %388 = load i64, ptr %387, align 1
  %389 = getelementptr inbounds nuw i8, ptr %357, i64 17
  %390 = load i64, ptr %389, align 1
  %391 = xor i64 %390, %388
  %392 = add i64 %386, %388
  %393 = lshr i64 %391, 32
  %394 = and i64 %391, 4294967295
  %395 = mul nuw i64 %394, %393
  %396 = add i64 %395, %382
  %397 = getelementptr inbounds nuw i8, ptr %354, i64 32
  %398 = load i64, ptr %397, align 1
  %399 = getelementptr inbounds nuw i8, ptr %357, i64 25
  %400 = load i64, ptr %399, align 1
  %401 = xor i64 %400, %398
  %402 = add i64 %348, %398
  %403 = lshr i64 %401, 32
  %404 = and i64 %401, 4294967295
  %405 = mul nuw i64 %404, %403
  %406 = add i64 %405, %349
  %407 = getelementptr inbounds nuw i8, ptr %354, i64 40
  %408 = load i64, ptr %407, align 1
  %409 = getelementptr inbounds nuw i8, ptr %357, i64 33
  %410 = load i64, ptr %409, align 1
  %411 = xor i64 %410, %408
  %412 = add i64 %406, %408
  %413 = lshr i64 %411, 32
  %414 = and i64 %411, 4294967295
  %415 = mul nuw i64 %414, %413
  %416 = add i64 %415, %402
  %417 = getelementptr inbounds nuw i8, ptr %354, i64 48
  %418 = load i64, ptr %417, align 1
  %419 = getelementptr inbounds nuw i8, ptr %357, i64 41
  %420 = load i64, ptr %419, align 1
  %421 = xor i64 %420, %418
  %422 = add i64 %346, %418
  %423 = lshr i64 %421, 32
  %424 = and i64 %421, 4294967295
  %425 = mul nuw i64 %424, %423
  %426 = add i64 %425, %347
  %427 = getelementptr inbounds nuw i8, ptr %354, i64 56
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds nuw i8, ptr %357, i64 49
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %428
  %432 = add i64 %426, %428
  %433 = lshr i64 %431, 32
  %434 = and i64 %431, 4294967295
  %435 = mul nuw i64 %434, %433
  %436 = add i64 %435, %422
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #29
  %437 = getelementptr inbounds nuw i8, ptr %7, i64 11
  %438 = mul i64 %9, -7046029288634856825
  %439 = load i64, ptr %437, align 1, !alias.scope !86, !noalias !91
  %440 = xor i64 %439, %372
  %441 = getelementptr inbounds nuw i8, ptr %7, i64 19
  %442 = load i64, ptr %441, align 1, !alias.scope !86, !noalias !91
  %443 = xor i64 %442, %376
  %444 = zext i64 %440 to i128
  %445 = zext i64 %443 to i128
  %446 = mul nuw i128 %445, %444
  %447 = lshr i128 %446, 64
  %448 = xor i128 %447, %446
  %449 = trunc i128 %448 to i64
  %450 = add i64 %438, %449
  %451 = getelementptr inbounds nuw i8, ptr %7, i64 27
  %452 = load i64, ptr %451, align 1, !alias.scope !86, !noalias !91
  %453 = xor i64 %452, %392
  %454 = getelementptr inbounds nuw i8, ptr %7, i64 35
  %455 = load i64, ptr %454, align 1, !alias.scope !86, !noalias !91
  %456 = xor i64 %455, %396
  %457 = zext i64 %453 to i128
  %458 = zext i64 %456 to i128
  %459 = mul nuw i128 %458, %457
  %460 = lshr i128 %459, 64
  %461 = xor i128 %460, %459
  %462 = trunc i128 %461 to i64
  %463 = add i64 %450, %462
  %464 = getelementptr inbounds nuw i8, ptr %7, i64 43
  %465 = load i64, ptr %464, align 1, !alias.scope !86, !noalias !91
  %466 = xor i64 %465, %412
  %467 = getelementptr inbounds nuw i8, ptr %7, i64 51
  %468 = load i64, ptr %467, align 1, !alias.scope !86, !noalias !91
  %469 = xor i64 %468, %416
  %470 = zext i64 %466 to i128
  %471 = zext i64 %469 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %463, %475
  %477 = getelementptr inbounds nuw i8, ptr %7, i64 59
  %478 = load i64, ptr %477, align 1, !alias.scope !86, !noalias !91
  %479 = xor i64 %478, %432
  %480 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %481 = load i64, ptr %480, align 1, !alias.scope !86, !noalias !91
  %482 = xor i64 %481, %436
  %483 = zext i64 %479 to i128
  %484 = zext i64 %482 to i128
  %485 = mul nuw i128 %484, %483
  %486 = lshr i128 %485, 64
  %487 = xor i128 %486, %485
  %488 = trunc i128 %487 to i64
  %489 = add i64 %476, %488
  %490 = lshr i64 %489, 37
  %491 = xor i64 %490, %489
  %492 = mul i64 %491, 1609587791953885689
  %493 = lshr i64 %492, 32
  %494 = xor i64 %493, %492
  br label %509

495:                                              ; preds = %1
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %497 = load i32, ptr %496, align 4
  %498 = icmp eq i32 %497, 0
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %498, label %504, label %500

500:                                              ; preds = %495
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %502 = load i64, ptr %501, align 8
  %503 = tail call fastcc i64 @XXH_INLINE_XXH3_64bits_withSeed(ptr nocapture noundef nonnull %499, i64 noundef %9, i64 noundef %502) #33
  br label %509

504:                                              ; preds = %495
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %506 = load i64, ptr %505, align 32
  %507 = add i64 %506, 64
  %508 = tail call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecret(ptr nocapture noundef nonnull %499, i64 noundef %9, ptr nocapture noundef %7, i64 noundef %507) #33
  br label %509

509:                                              ; preds = %504, %500, %345
  %510 = phi i64 [ %494, %345 ], [ %503, %500 ], [ %508, %504 ]
  ret i64 %510
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #15 {
  %4 = alloca [192 x i8], align 8
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %379

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %153, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %118
  %12 = phi i64 [ 2654435761, %9 ], [ %150, %118 ]
  %13 = phi i64 [ 2870177450012600261, %9 ], [ %146, %118 ]
  %14 = phi i64 [ 2246822519, %9 ], [ %142, %118 ]
  %15 = phi i64 [ -8796714831421723037, %9 ], [ %138, %118 ]
  %16 = phi i64 [ 1609587929392839161, %9 ], [ %134, %118 ]
  %17 = phi i64 [ -4417276706812531889, %9 ], [ %130, %118 ]
  %18 = phi i64 [ -7046029288634856825, %9 ], [ %126, %118 ]
  %19 = phi i64 [ 3266489917, %9 ], [ %122, %118 ]
  %20 = phi i64 [ 0, %9 ], [ %151, %118 ]
  %21 = shl i64 %20, 10
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  br label %23

23:                                               ; preds = %11, %23
  %24 = phi i64 [ %12, %11 ], [ %115, %23 ]
  %25 = phi i64 [ %13, %11 ], [ %111, %23 ]
  %26 = phi i64 [ %14, %11 ], [ %95, %23 ]
  %27 = phi i64 [ %15, %11 ], [ %91, %23 ]
  %28 = phi i64 [ %16, %11 ], [ %75, %23 ]
  %29 = phi i64 [ %17, %11 ], [ %71, %23 ]
  %30 = phi i64 [ %18, %11 ], [ %55, %23 ]
  %31 = phi i64 [ %19, %11 ], [ %51, %23 ]
  %32 = phi i64 [ 0, %11 ], [ %116, %23 ]
  %33 = shl nuw nsw i64 %32, 6
  %34 = getelementptr inbounds nuw i8, ptr %22, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %35, i32 0, i32 3, i32 1)
  %36 = shl nuw nsw i64 %32, 3
  %37 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %36
  %38 = load i64, ptr %34, align 1
  %39 = load i64, ptr %37, align 8
  %40 = xor i64 %39, %38
  %41 = add i64 %30, %38
  %42 = lshr i64 %40, 32
  %43 = and i64 %40, 4294967295
  %44 = mul nuw i64 %43, %42
  %45 = add i64 %44, %31
  %46 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %49 = load i64, ptr %48, align 8
  %50 = xor i64 %49, %47
  %51 = add i64 %45, %47
  %52 = lshr i64 %50, 32
  %53 = and i64 %50, 4294967295
  %54 = mul nuw i64 %53, %52
  %55 = add i64 %54, %41
  %56 = getelementptr inbounds nuw i8, ptr %34, i64 16
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %59 = load i64, ptr %58, align 8
  %60 = xor i64 %59, %57
  %61 = add i64 %28, %57
  %62 = lshr i64 %60, 32
  %63 = and i64 %60, 4294967295
  %64 = mul nuw i64 %63, %62
  %65 = add i64 %64, %29
  %66 = getelementptr inbounds nuw i8, ptr %34, i64 24
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %69 = load i64, ptr %68, align 8
  %70 = xor i64 %69, %67
  %71 = add i64 %65, %67
  %72 = lshr i64 %70, 32
  %73 = and i64 %70, 4294967295
  %74 = mul nuw i64 %73, %72
  %75 = add i64 %74, %61
  %76 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %79 = load i64, ptr %78, align 8
  %80 = xor i64 %79, %77
  %81 = add i64 %26, %77
  %82 = lshr i64 %80, 32
  %83 = and i64 %80, 4294967295
  %84 = mul nuw i64 %83, %82
  %85 = add i64 %84, %27
  %86 = getelementptr inbounds nuw i8, ptr %34, i64 40
  %87 = load i64, ptr %86, align 1
  %88 = getelementptr inbounds nuw i8, ptr %37, i64 40
  %89 = load i64, ptr %88, align 8
  %90 = xor i64 %89, %87
  %91 = add i64 %85, %87
  %92 = lshr i64 %90, 32
  %93 = and i64 %90, 4294967295
  %94 = mul nuw i64 %93, %92
  %95 = add i64 %94, %81
  %96 = getelementptr inbounds nuw i8, ptr %34, i64 48
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %37, i64 48
  %99 = load i64, ptr %98, align 8
  %100 = xor i64 %99, %97
  %101 = add i64 %24, %97
  %102 = lshr i64 %100, 32
  %103 = and i64 %100, 4294967295
  %104 = mul nuw i64 %103, %102
  %105 = add i64 %104, %25
  %106 = getelementptr inbounds nuw i8, ptr %34, i64 56
  %107 = load i64, ptr %106, align 1
  %108 = getelementptr inbounds nuw i8, ptr %37, i64 56
  %109 = load i64, ptr %108, align 8
  %110 = xor i64 %109, %107
  %111 = add i64 %105, %107
  %112 = lshr i64 %110, 32
  %113 = and i64 %110, 4294967295
  %114 = mul nuw i64 %113, %112
  %115 = add i64 %114, %101
  %116 = add nuw nsw i64 %32, 1
  %117 = icmp eq i64 %116, 16
  br i1 %117, label %118, label %23, !llvm.loop !72

118:                                              ; preds = %23
  %119 = lshr i64 %51, 47
  %120 = xor i64 %119, %51
  %121 = xor i64 %120, -4329134394285701654
  %122 = mul i64 %121, 2654435761
  %123 = lshr i64 %55, 47
  %124 = xor i64 %123, %55
  %125 = xor i64 %124, -1485321483350670907
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %71, 47
  %128 = xor i64 %127, %71
  %129 = xor i64 %128, 5321830579834785047
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %75, 47
  %132 = xor i64 %131, %75
  %133 = xor i64 %132, -7032137544937171245
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %91, 47
  %136 = xor i64 %135, %91
  %137 = xor i64 %136, -242834301215959509
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %95, 47
  %140 = xor i64 %139, %95
  %141 = xor i64 %140, -3588858202114426737
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %111, 47
  %144 = xor i64 %143, %111
  %145 = xor i64 %144, 2883454493032893253
  %146 = mul i64 %145, 2654435761
  %147 = lshr i64 %115, 47
  %148 = xor i64 %147, %115
  %149 = xor i64 %148, 9097354517224871855
  %150 = mul i64 %149, 2654435761
  %151 = add nuw nsw i64 %20, 1
  %152 = icmp eq i64 %151, %10
  br i1 %152, label %153, label %11, !llvm.loop !73

153:                                              ; preds = %118, %6
  %154 = phi i64 [ 2654435761, %6 ], [ %150, %118 ]
  %155 = phi i64 [ 2870177450012600261, %6 ], [ %146, %118 ]
  %156 = phi i64 [ 2246822519, %6 ], [ %142, %118 ]
  %157 = phi i64 [ -8796714831421723037, %6 ], [ %138, %118 ]
  %158 = phi i64 [ 1609587929392839161, %6 ], [ %134, %118 ]
  %159 = phi i64 [ -4417276706812531889, %6 ], [ %130, %118 ]
  %160 = phi i64 [ -7046029288634856825, %6 ], [ %126, %118 ]
  %161 = phi i64 [ 3266489917, %6 ], [ %122, %118 ]
  %162 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %162)
  %163 = and i64 %7, -1024
  %164 = lshr i64 %7, 6
  %165 = and i64 %164, 15
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 %163
  %167 = icmp eq i64 %165, 0
  br i1 %167, label %263, label %168

168:                                              ; preds = %153, %168
  %169 = phi i64 [ %260, %168 ], [ %154, %153 ]
  %170 = phi i64 [ %256, %168 ], [ %155, %153 ]
  %171 = phi i64 [ %240, %168 ], [ %156, %153 ]
  %172 = phi i64 [ %236, %168 ], [ %157, %153 ]
  %173 = phi i64 [ %220, %168 ], [ %158, %153 ]
  %174 = phi i64 [ %216, %168 ], [ %159, %153 ]
  %175 = phi i64 [ %200, %168 ], [ %160, %153 ]
  %176 = phi i64 [ %196, %168 ], [ %161, %153 ]
  %177 = phi i64 [ %261, %168 ], [ 0, %153 ]
  %178 = shl nuw nsw i64 %177, 6
  %179 = getelementptr inbounds nuw i8, ptr %166, i64 %178
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %180, i32 0, i32 3, i32 1)
  %181 = shl nuw nsw i64 %177, 3
  %182 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %181
  %183 = load i64, ptr %179, align 1
  %184 = load i64, ptr %182, align 8
  %185 = xor i64 %184, %183
  %186 = add i64 %175, %183
  %187 = lshr i64 %185, 32
  %188 = and i64 %185, 4294967295
  %189 = mul nuw i64 %188, %187
  %190 = add i64 %189, %176
  %191 = getelementptr inbounds nuw i8, ptr %179, i64 8
  %192 = load i64, ptr %191, align 1
  %193 = getelementptr inbounds nuw i8, ptr %182, i64 8
  %194 = load i64, ptr %193, align 8
  %195 = xor i64 %194, %192
  %196 = add i64 %190, %192
  %197 = lshr i64 %195, 32
  %198 = and i64 %195, 4294967295
  %199 = mul nuw i64 %198, %197
  %200 = add i64 %199, %186
  %201 = getelementptr inbounds nuw i8, ptr %179, i64 16
  %202 = load i64, ptr %201, align 1
  %203 = getelementptr inbounds nuw i8, ptr %182, i64 16
  %204 = load i64, ptr %203, align 8
  %205 = xor i64 %204, %202
  %206 = add i64 %173, %202
  %207 = lshr i64 %205, 32
  %208 = and i64 %205, 4294967295
  %209 = mul nuw i64 %208, %207
  %210 = add i64 %209, %174
  %211 = getelementptr inbounds nuw i8, ptr %179, i64 24
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %182, i64 24
  %214 = load i64, ptr %213, align 8
  %215 = xor i64 %214, %212
  %216 = add i64 %210, %212
  %217 = lshr i64 %215, 32
  %218 = and i64 %215, 4294967295
  %219 = mul nuw i64 %218, %217
  %220 = add i64 %219, %206
  %221 = getelementptr inbounds nuw i8, ptr %179, i64 32
  %222 = load i64, ptr %221, align 1
  %223 = getelementptr inbounds nuw i8, ptr %182, i64 32
  %224 = load i64, ptr %223, align 8
  %225 = xor i64 %224, %222
  %226 = add i64 %171, %222
  %227 = lshr i64 %225, 32
  %228 = and i64 %225, 4294967295
  %229 = mul nuw i64 %228, %227
  %230 = add i64 %229, %172
  %231 = getelementptr inbounds nuw i8, ptr %179, i64 40
  %232 = load i64, ptr %231, align 1
  %233 = getelementptr inbounds nuw i8, ptr %182, i64 40
  %234 = load i64, ptr %233, align 8
  %235 = xor i64 %234, %232
  %236 = add i64 %230, %232
  %237 = lshr i64 %235, 32
  %238 = and i64 %235, 4294967295
  %239 = mul nuw i64 %238, %237
  %240 = add i64 %239, %226
  %241 = getelementptr inbounds nuw i8, ptr %179, i64 48
  %242 = load i64, ptr %241, align 1
  %243 = getelementptr inbounds nuw i8, ptr %182, i64 48
  %244 = load i64, ptr %243, align 8
  %245 = xor i64 %244, %242
  %246 = add i64 %169, %242
  %247 = lshr i64 %245, 32
  %248 = and i64 %245, 4294967295
  %249 = mul nuw i64 %248, %247
  %250 = add i64 %249, %170
  %251 = getelementptr inbounds nuw i8, ptr %179, i64 56
  %252 = load i64, ptr %251, align 1
  %253 = getelementptr inbounds nuw i8, ptr %182, i64 56
  %254 = load i64, ptr %253, align 8
  %255 = xor i64 %254, %252
  %256 = add i64 %250, %252
  %257 = lshr i64 %255, 32
  %258 = and i64 %255, 4294967295
  %259 = mul nuw i64 %258, %257
  %260 = add i64 %259, %246
  %261 = add nuw nsw i64 %177, 1
  %262 = icmp eq i64 %261, %165
  br i1 %262, label %263, label %168, !llvm.loop !72

263:                                              ; preds = %168, %153
  %264 = phi i64 [ %154, %153 ], [ %260, %168 ]
  %265 = phi i64 [ %155, %153 ], [ %256, %168 ]
  %266 = phi i64 [ %156, %153 ], [ %240, %168 ]
  %267 = phi i64 [ %157, %153 ], [ %236, %168 ]
  %268 = phi i64 [ %158, %153 ], [ %220, %168 ]
  %269 = phi i64 [ %159, %153 ], [ %216, %168 ]
  %270 = phi i64 [ %160, %153 ], [ %200, %168 ]
  %271 = phi i64 [ %161, %153 ], [ %196, %168 ]
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %273 = getelementptr inbounds i8, ptr %272, i64 -64
  %274 = load i64, ptr %273, align 1
  %275 = xor i64 %274, -1556992608276218209
  %276 = add i64 %270, %274
  %277 = lshr i64 %275, 32
  %278 = and i64 %275, 4294967295
  %279 = mul nuw i64 %278, %277
  %280 = add i64 %279, %271
  %281 = getelementptr inbounds i8, ptr %272, i64 -56
  %282 = load i64, ptr %281, align 1
  %283 = xor i64 %282, -4196251135427498811
  %284 = add i64 %280, %282
  %285 = lshr i64 %283, 32
  %286 = and i64 %283, 4294967295
  %287 = mul nuw i64 %286, %285
  %288 = add i64 %287, %276
  %289 = getelementptr inbounds i8, ptr %272, i64 -48
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, 1723580219865931905
  %292 = add i64 %268, %290
  %293 = lshr i64 %291, 32
  %294 = and i64 %291, 4294967295
  %295 = mul nuw i64 %294, %293
  %296 = add i64 %295, %269
  %297 = getelementptr inbounds i8, ptr %272, i64 -40
  %298 = load i64, ptr %297, align 1
  %299 = xor i64 %298, -3221803331004277491
  %300 = add i64 %296, %298
  %301 = lshr i64 %299, 32
  %302 = and i64 %299, 4294967295
  %303 = mul nuw i64 %302, %301
  %304 = add i64 %303, %292
  %305 = getelementptr inbounds i8, ptr %272, i64 -32
  %306 = load i64, ptr %305, align 1
  %307 = xor i64 %306, 3143064850383918358
  %308 = add i64 %266, %306
  %309 = lshr i64 %307, 32
  %310 = and i64 %307, 4294967295
  %311 = mul nuw i64 %310, %309
  %312 = add i64 %311, %267
  %313 = getelementptr inbounds i8, ptr %272, i64 -24
  %314 = load i64, ptr %313, align 1
  %315 = xor i64 %314, -8071399103737053674
  %316 = add i64 %312, %314
  %317 = lshr i64 %315, 32
  %318 = and i64 %315, 4294967295
  %319 = mul nuw i64 %318, %317
  %320 = add i64 %319, %308
  %321 = getelementptr inbounds i8, ptr %272, i64 -16
  %322 = load i64, ptr %321, align 1
  %323 = xor i64 %322, 5030012605302946040
  %324 = add i64 %264, %322
  %325 = lshr i64 %323, 32
  %326 = and i64 %323, 4294967295
  %327 = mul nuw i64 %326, %325
  %328 = add i64 %327, %265
  %329 = getelementptr inbounds i8, ptr %272, i64 -8
  %330 = load i64, ptr %329, align 1
  %331 = xor i64 %330, -5825401622958753077
  %332 = add i64 %328, %330
  %333 = lshr i64 %331, 32
  %334 = and i64 %331, 4294967295
  %335 = mul nuw i64 %334, %333
  %336 = add i64 %335, %324
  %337 = mul i64 %1, -7046029288634856825
  %338 = xor i64 %284, 7914194659941938988
  %339 = xor i64 %288, -6611157965513653271
  %340 = zext i64 %338 to i128
  %341 = zext i64 %339 to i128
  %342 = mul nuw i128 %341, %340
  %343 = lshr i128 %342, 64
  %344 = xor i128 %343, %342
  %345 = trunc i128 %344 to i64
  %346 = add i64 %337, %345
  %347 = xor i64 %300, -1839215637059881052
  %348 = xor i64 %304, -3433288310154277810
  %349 = zext i64 %347 to i128
  %350 = zext i64 %348 to i128
  %351 = mul nuw i128 %350, %349
  %352 = lshr i128 %351, 64
  %353 = xor i128 %352, %351
  %354 = trunc i128 %353 to i64
  %355 = add i64 %346, %354
  %356 = xor i64 %316, 5046485836271438973
  %357 = xor i64 %320, -8055285457383852172
  %358 = zext i64 %356 to i128
  %359 = zext i64 %357 to i128
  %360 = mul nuw i128 %359, %358
  %361 = lshr i128 %360, 64
  %362 = xor i128 %361, %360
  %363 = trunc i128 %362 to i64
  %364 = add i64 %355, %363
  %365 = xor i64 %332, 5920048007935066598
  %366 = xor i64 %336, 7336514198459093435
  %367 = zext i64 %365 to i128
  %368 = zext i64 %366 to i128
  %369 = mul nuw i128 %368, %367
  %370 = lshr i128 %369, 64
  %371 = xor i128 %370, %369
  %372 = trunc i128 %371 to i64
  %373 = add i64 %364, %372
  %374 = lshr i64 %373, 37
  %375 = xor i64 %374, %373
  %376 = mul i64 %375, 1609587791953885689
  %377 = lshr i64 %376, 32
  %378 = xor i64 %377, %376
  br label %831

379:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #29
  %380 = add i64 %2, -4734510112055689544
  %381 = sub i64 2066345149520216444, %2
  store i64 %380, ptr %4, align 8
  %382 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %381, ptr %382, align 8
  %383 = add i64 %2, -2623469361688619810
  %384 = sub i64 2262974939099578482, %2
  %385 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %383, ptr %385, align 8
  %386 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %384, ptr %386, align 8
  %387 = add i64 %2, 8711581037947681227
  %388 = sub i64 2410270004345854594, %2
  %389 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %387, ptr %389, align 8
  %390 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %388, ptr %390, align 8
  %391 = add i64 %2, -8204357891075471176
  %392 = sub i64 5487137525590930912, %2
  %393 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %391, ptr %393, align 8
  %394 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %392, ptr %394, align 8
  %395 = add i64 %2, -3818837453329782724
  %396 = sub i64 -6688317018830679928, %2
  %397 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %395, ptr %397, align 8
  %398 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %396, ptr %398, align 8
  %399 = add i64 %2, 5690594596133299313
  %400 = sub i64 -2833645246901970632, %2
  %401 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %399, ptr %401, align 8
  %402 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %400, ptr %402, align 8
  %403 = add i64 %2, 4554437623014685352
  %404 = sub i64 2111919702937427193, %2
  %405 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %403, ptr %405, align 8
  %406 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %404, ptr %406, align 8
  %407 = add i64 %2, 3556072174620004746
  %408 = sub i64 7238261902898274248, %2
  %409 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %407, ptr %409, align 8
  %410 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %408, ptr %410, align 8
  %411 = add i64 %2, -4329134394285701654
  %412 = sub i64 -1485321483350670907, %2
  %413 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i64 %411, ptr %413, align 8
  %414 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %412, ptr %414, align 8
  %415 = add i64 %2, 5321830579834785047
  %416 = sub i64 -7032137544937171245, %2
  %417 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i64 %415, ptr %417, align 8
  %418 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 %416, ptr %418, align 8
  %419 = add i64 %2, -242834301215959509
  %420 = sub i64 -3588858202114426737, %2
  %421 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 %419, ptr %421, align 8
  %422 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 %420, ptr %422, align 8
  %423 = add i64 %2, 2883454493032893253
  %424 = sub i64 9097354517224871855, %2
  %425 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i64 %423, ptr %425, align 8
  %426 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i64 %424, ptr %426, align 8
  %427 = add i64 %1, -1
  %428 = icmp ult i64 %427, 1024
  br i1 %428, label %573, label %429

429:                                              ; preds = %379
  %430 = lshr i64 %427, 10
  br label %431

431:                                              ; preds = %429, %538
  %432 = phi i64 [ 2654435761, %429 ], [ %570, %538 ]
  %433 = phi i64 [ 2870177450012600261, %429 ], [ %566, %538 ]
  %434 = phi i64 [ 2246822519, %429 ], [ %562, %538 ]
  %435 = phi i64 [ -8796714831421723037, %429 ], [ %558, %538 ]
  %436 = phi i64 [ 1609587929392839161, %429 ], [ %554, %538 ]
  %437 = phi i64 [ -4417276706812531889, %429 ], [ %550, %538 ]
  %438 = phi i64 [ -7046029288634856825, %429 ], [ %546, %538 ]
  %439 = phi i64 [ 3266489917, %429 ], [ %542, %538 ]
  %440 = phi i64 [ 0, %429 ], [ %571, %538 ]
  %441 = shl i64 %440, 10
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 %441
  br label %443

443:                                              ; preds = %431, %443
  %444 = phi i64 [ %432, %431 ], [ %535, %443 ]
  %445 = phi i64 [ %433, %431 ], [ %531, %443 ]
  %446 = phi i64 [ %434, %431 ], [ %515, %443 ]
  %447 = phi i64 [ %435, %431 ], [ %511, %443 ]
  %448 = phi i64 [ %436, %431 ], [ %495, %443 ]
  %449 = phi i64 [ %437, %431 ], [ %491, %443 ]
  %450 = phi i64 [ %438, %431 ], [ %475, %443 ]
  %451 = phi i64 [ %439, %431 ], [ %471, %443 ]
  %452 = phi i64 [ 0, %431 ], [ %536, %443 ]
  %453 = shl nuw nsw i64 %452, 6
  %454 = getelementptr inbounds nuw i8, ptr %442, i64 %453
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %455, i32 0, i32 3, i32 1)
  %456 = shl nuw nsw i64 %452, 3
  %457 = getelementptr inbounds nuw i8, ptr %4, i64 %456
  %458 = load i64, ptr %454, align 1
  %459 = load i64, ptr %457, align 8
  %460 = xor i64 %459, %458
  %461 = add i64 %450, %458
  %462 = lshr i64 %460, 32
  %463 = and i64 %460, 4294967295
  %464 = mul nuw i64 %463, %462
  %465 = add i64 %464, %451
  %466 = getelementptr inbounds nuw i8, ptr %454, i64 8
  %467 = load i64, ptr %466, align 1
  %468 = getelementptr inbounds nuw i8, ptr %457, i64 8
  %469 = load i64, ptr %468, align 8
  %470 = xor i64 %469, %467
  %471 = add i64 %465, %467
  %472 = lshr i64 %470, 32
  %473 = and i64 %470, 4294967295
  %474 = mul nuw i64 %473, %472
  %475 = add i64 %474, %461
  %476 = getelementptr inbounds nuw i8, ptr %454, i64 16
  %477 = load i64, ptr %476, align 1
  %478 = getelementptr inbounds nuw i8, ptr %457, i64 16
  %479 = load i64, ptr %478, align 8
  %480 = xor i64 %479, %477
  %481 = add i64 %448, %477
  %482 = lshr i64 %480, 32
  %483 = and i64 %480, 4294967295
  %484 = mul nuw i64 %483, %482
  %485 = add i64 %484, %449
  %486 = getelementptr inbounds nuw i8, ptr %454, i64 24
  %487 = load i64, ptr %486, align 1
  %488 = getelementptr inbounds nuw i8, ptr %457, i64 24
  %489 = load i64, ptr %488, align 8
  %490 = xor i64 %489, %487
  %491 = add i64 %485, %487
  %492 = lshr i64 %490, 32
  %493 = and i64 %490, 4294967295
  %494 = mul nuw i64 %493, %492
  %495 = add i64 %494, %481
  %496 = getelementptr inbounds nuw i8, ptr %454, i64 32
  %497 = load i64, ptr %496, align 1
  %498 = getelementptr inbounds nuw i8, ptr %457, i64 32
  %499 = load i64, ptr %498, align 8
  %500 = xor i64 %499, %497
  %501 = add i64 %446, %497
  %502 = lshr i64 %500, 32
  %503 = and i64 %500, 4294967295
  %504 = mul nuw i64 %503, %502
  %505 = add i64 %504, %447
  %506 = getelementptr inbounds nuw i8, ptr %454, i64 40
  %507 = load i64, ptr %506, align 1
  %508 = getelementptr inbounds nuw i8, ptr %457, i64 40
  %509 = load i64, ptr %508, align 8
  %510 = xor i64 %509, %507
  %511 = add i64 %505, %507
  %512 = lshr i64 %510, 32
  %513 = and i64 %510, 4294967295
  %514 = mul nuw i64 %513, %512
  %515 = add i64 %514, %501
  %516 = getelementptr inbounds nuw i8, ptr %454, i64 48
  %517 = load i64, ptr %516, align 1
  %518 = getelementptr inbounds nuw i8, ptr %457, i64 48
  %519 = load i64, ptr %518, align 8
  %520 = xor i64 %519, %517
  %521 = add i64 %444, %517
  %522 = lshr i64 %520, 32
  %523 = and i64 %520, 4294967295
  %524 = mul nuw i64 %523, %522
  %525 = add i64 %524, %445
  %526 = getelementptr inbounds nuw i8, ptr %454, i64 56
  %527 = load i64, ptr %526, align 1
  %528 = getelementptr inbounds nuw i8, ptr %457, i64 56
  %529 = load i64, ptr %528, align 8
  %530 = xor i64 %529, %527
  %531 = add i64 %525, %527
  %532 = lshr i64 %530, 32
  %533 = and i64 %530, 4294967295
  %534 = mul nuw i64 %533, %532
  %535 = add i64 %534, %521
  %536 = add nuw nsw i64 %452, 1
  %537 = icmp eq i64 %536, 16
  br i1 %537, label %538, label %443, !llvm.loop !72

538:                                              ; preds = %443
  %539 = lshr i64 %471, 47
  %540 = xor i64 %411, %539
  %541 = xor i64 %540, %471
  %542 = mul i64 %541, 2654435761
  %543 = lshr i64 %475, 47
  %544 = xor i64 %412, %543
  %545 = xor i64 %544, %475
  %546 = mul i64 %545, 2654435761
  %547 = lshr i64 %491, 47
  %548 = xor i64 %415, %547
  %549 = xor i64 %548, %491
  %550 = mul i64 %549, 2654435761
  %551 = lshr i64 %495, 47
  %552 = xor i64 %416, %551
  %553 = xor i64 %552, %495
  %554 = mul i64 %553, 2654435761
  %555 = lshr i64 %511, 47
  %556 = xor i64 %419, %555
  %557 = xor i64 %556, %511
  %558 = mul i64 %557, 2654435761
  %559 = lshr i64 %515, 47
  %560 = xor i64 %420, %559
  %561 = xor i64 %560, %515
  %562 = mul i64 %561, 2654435761
  %563 = lshr i64 %531, 47
  %564 = xor i64 %423, %563
  %565 = xor i64 %564, %531
  %566 = mul i64 %565, 2654435761
  %567 = lshr i64 %535, 47
  %568 = xor i64 %424, %567
  %569 = xor i64 %568, %535
  %570 = mul i64 %569, 2654435761
  %571 = add nuw nsw i64 %440, 1
  %572 = icmp eq i64 %571, %430
  br i1 %572, label %573, label %431, !llvm.loop !73

573:                                              ; preds = %538, %379
  %574 = phi i64 [ 2654435761, %379 ], [ %570, %538 ]
  %575 = phi i64 [ 2870177450012600261, %379 ], [ %566, %538 ]
  %576 = phi i64 [ 2246822519, %379 ], [ %562, %538 ]
  %577 = phi i64 [ -8796714831421723037, %379 ], [ %558, %538 ]
  %578 = phi i64 [ 1609587929392839161, %379 ], [ %554, %538 ]
  %579 = phi i64 [ -4417276706812531889, %379 ], [ %550, %538 ]
  %580 = phi i64 [ -7046029288634856825, %379 ], [ %546, %538 ]
  %581 = phi i64 [ 3266489917, %379 ], [ %542, %538 ]
  %582 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %582)
  %583 = and i64 %427, -1024
  %584 = lshr i64 %427, 6
  %585 = and i64 %584, 15
  %586 = getelementptr inbounds nuw i8, ptr %0, i64 %583
  %587 = icmp eq i64 %585, 0
  br i1 %587, label %683, label %588

588:                                              ; preds = %573, %588
  %589 = phi i64 [ %680, %588 ], [ %574, %573 ]
  %590 = phi i64 [ %676, %588 ], [ %575, %573 ]
  %591 = phi i64 [ %660, %588 ], [ %576, %573 ]
  %592 = phi i64 [ %656, %588 ], [ %577, %573 ]
  %593 = phi i64 [ %640, %588 ], [ %578, %573 ]
  %594 = phi i64 [ %636, %588 ], [ %579, %573 ]
  %595 = phi i64 [ %620, %588 ], [ %580, %573 ]
  %596 = phi i64 [ %616, %588 ], [ %581, %573 ]
  %597 = phi i64 [ %681, %588 ], [ 0, %573 ]
  %598 = shl nuw nsw i64 %597, 6
  %599 = getelementptr inbounds nuw i8, ptr %586, i64 %598
  %600 = getelementptr inbounds nuw i8, ptr %599, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %600, i32 0, i32 3, i32 1)
  %601 = shl nuw nsw i64 %597, 3
  %602 = getelementptr inbounds nuw i8, ptr %4, i64 %601
  %603 = load i64, ptr %599, align 1
  %604 = load i64, ptr %602, align 8
  %605 = xor i64 %604, %603
  %606 = add i64 %595, %603
  %607 = lshr i64 %605, 32
  %608 = and i64 %605, 4294967295
  %609 = mul nuw i64 %608, %607
  %610 = add i64 %609, %596
  %611 = getelementptr inbounds nuw i8, ptr %599, i64 8
  %612 = load i64, ptr %611, align 1
  %613 = getelementptr inbounds nuw i8, ptr %602, i64 8
  %614 = load i64, ptr %613, align 8
  %615 = xor i64 %614, %612
  %616 = add i64 %610, %612
  %617 = lshr i64 %615, 32
  %618 = and i64 %615, 4294967295
  %619 = mul nuw i64 %618, %617
  %620 = add i64 %619, %606
  %621 = getelementptr inbounds nuw i8, ptr %599, i64 16
  %622 = load i64, ptr %621, align 1
  %623 = getelementptr inbounds nuw i8, ptr %602, i64 16
  %624 = load i64, ptr %623, align 8
  %625 = xor i64 %624, %622
  %626 = add i64 %593, %622
  %627 = lshr i64 %625, 32
  %628 = and i64 %625, 4294967295
  %629 = mul nuw i64 %628, %627
  %630 = add i64 %629, %594
  %631 = getelementptr inbounds nuw i8, ptr %599, i64 24
  %632 = load i64, ptr %631, align 1
  %633 = getelementptr inbounds nuw i8, ptr %602, i64 24
  %634 = load i64, ptr %633, align 8
  %635 = xor i64 %634, %632
  %636 = add i64 %630, %632
  %637 = lshr i64 %635, 32
  %638 = and i64 %635, 4294967295
  %639 = mul nuw i64 %638, %637
  %640 = add i64 %639, %626
  %641 = getelementptr inbounds nuw i8, ptr %599, i64 32
  %642 = load i64, ptr %641, align 1
  %643 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %644 = load i64, ptr %643, align 8
  %645 = xor i64 %644, %642
  %646 = add i64 %591, %642
  %647 = lshr i64 %645, 32
  %648 = and i64 %645, 4294967295
  %649 = mul nuw i64 %648, %647
  %650 = add i64 %649, %592
  %651 = getelementptr inbounds nuw i8, ptr %599, i64 40
  %652 = load i64, ptr %651, align 1
  %653 = getelementptr inbounds nuw i8, ptr %602, i64 40
  %654 = load i64, ptr %653, align 8
  %655 = xor i64 %654, %652
  %656 = add i64 %650, %652
  %657 = lshr i64 %655, 32
  %658 = and i64 %655, 4294967295
  %659 = mul nuw i64 %658, %657
  %660 = add i64 %659, %646
  %661 = getelementptr inbounds nuw i8, ptr %599, i64 48
  %662 = load i64, ptr %661, align 1
  %663 = getelementptr inbounds nuw i8, ptr %602, i64 48
  %664 = load i64, ptr %663, align 8
  %665 = xor i64 %664, %662
  %666 = add i64 %589, %662
  %667 = lshr i64 %665, 32
  %668 = and i64 %665, 4294967295
  %669 = mul nuw i64 %668, %667
  %670 = add i64 %669, %590
  %671 = getelementptr inbounds nuw i8, ptr %599, i64 56
  %672 = load i64, ptr %671, align 1
  %673 = getelementptr inbounds nuw i8, ptr %602, i64 56
  %674 = load i64, ptr %673, align 8
  %675 = xor i64 %674, %672
  %676 = add i64 %670, %672
  %677 = lshr i64 %675, 32
  %678 = and i64 %675, 4294967295
  %679 = mul nuw i64 %678, %677
  %680 = add i64 %679, %666
  %681 = add nuw nsw i64 %597, 1
  %682 = icmp eq i64 %681, %585
  br i1 %682, label %683, label %588, !llvm.loop !72

683:                                              ; preds = %588, %573
  %684 = phi i64 [ %574, %573 ], [ %680, %588 ]
  %685 = phi i64 [ %575, %573 ], [ %676, %588 ]
  %686 = phi i64 [ %576, %573 ], [ %660, %588 ]
  %687 = phi i64 [ %577, %573 ], [ %656, %588 ]
  %688 = phi i64 [ %578, %573 ], [ %640, %588 ]
  %689 = phi i64 [ %579, %573 ], [ %636, %588 ]
  %690 = phi i64 [ %580, %573 ], [ %620, %588 ]
  %691 = phi i64 [ %581, %573 ], [ %616, %588 ]
  %692 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %693 = getelementptr inbounds i8, ptr %692, i64 -64
  %694 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %695 = load i64, ptr %693, align 1
  %696 = load i64, ptr %694, align 1
  %697 = xor i64 %696, %695
  %698 = add i64 %690, %695
  %699 = lshr i64 %697, 32
  %700 = and i64 %697, 4294967295
  %701 = mul nuw i64 %700, %699
  %702 = add i64 %701, %691
  %703 = getelementptr inbounds i8, ptr %692, i64 -56
  %704 = load i64, ptr %703, align 1
  %705 = getelementptr inbounds nuw i8, ptr %4, i64 129
  %706 = load i64, ptr %705, align 1
  %707 = xor i64 %706, %704
  %708 = add i64 %702, %704
  %709 = lshr i64 %707, 32
  %710 = and i64 %707, 4294967295
  %711 = mul nuw i64 %710, %709
  %712 = add i64 %711, %698
  %713 = getelementptr inbounds i8, ptr %692, i64 -48
  %714 = load i64, ptr %713, align 1
  %715 = getelementptr inbounds nuw i8, ptr %4, i64 137
  %716 = load i64, ptr %715, align 1
  %717 = xor i64 %716, %714
  %718 = add i64 %688, %714
  %719 = lshr i64 %717, 32
  %720 = and i64 %717, 4294967295
  %721 = mul nuw i64 %720, %719
  %722 = add i64 %721, %689
  %723 = getelementptr inbounds i8, ptr %692, i64 -40
  %724 = load i64, ptr %723, align 1
  %725 = getelementptr inbounds nuw i8, ptr %4, i64 145
  %726 = load i64, ptr %725, align 1
  %727 = xor i64 %726, %724
  %728 = add i64 %722, %724
  %729 = lshr i64 %727, 32
  %730 = and i64 %727, 4294967295
  %731 = mul nuw i64 %730, %729
  %732 = add i64 %731, %718
  %733 = getelementptr inbounds i8, ptr %692, i64 -32
  %734 = load i64, ptr %733, align 1
  %735 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %736 = load i64, ptr %735, align 1
  %737 = xor i64 %736, %734
  %738 = add i64 %686, %734
  %739 = lshr i64 %737, 32
  %740 = and i64 %737, 4294967295
  %741 = mul nuw i64 %740, %739
  %742 = add i64 %741, %687
  %743 = getelementptr inbounds i8, ptr %692, i64 -24
  %744 = load i64, ptr %743, align 1
  %745 = getelementptr inbounds nuw i8, ptr %4, i64 161
  %746 = load i64, ptr %745, align 1
  %747 = xor i64 %746, %744
  %748 = add i64 %742, %744
  %749 = lshr i64 %747, 32
  %750 = and i64 %747, 4294967295
  %751 = mul nuw i64 %750, %749
  %752 = add i64 %751, %738
  %753 = getelementptr inbounds i8, ptr %692, i64 -16
  %754 = load i64, ptr %753, align 1
  %755 = getelementptr inbounds nuw i8, ptr %4, i64 169
  %756 = load i64, ptr %755, align 1
  %757 = xor i64 %756, %754
  %758 = add i64 %684, %754
  %759 = lshr i64 %757, 32
  %760 = and i64 %757, 4294967295
  %761 = mul nuw i64 %760, %759
  %762 = add i64 %761, %685
  %763 = getelementptr inbounds i8, ptr %692, i64 -8
  %764 = load i64, ptr %763, align 1
  %765 = getelementptr inbounds nuw i8, ptr %4, i64 177
  %766 = load i64, ptr %765, align 1
  %767 = xor i64 %766, %764
  %768 = add i64 %762, %764
  %769 = lshr i64 %767, 32
  %770 = and i64 %767, 4294967295
  %771 = mul nuw i64 %770, %769
  %772 = add i64 %771, %758
  %773 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %774 = mul i64 %1, -7046029288634856825
  %775 = load i64, ptr %773, align 1, !alias.scope !94, !noalias !99
  %776 = xor i64 %775, %708
  %777 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %778 = load i64, ptr %777, align 1, !alias.scope !94, !noalias !99
  %779 = xor i64 %778, %712
  %780 = zext i64 %776 to i128
  %781 = zext i64 %779 to i128
  %782 = mul nuw i128 %781, %780
  %783 = lshr i128 %782, 64
  %784 = xor i128 %783, %782
  %785 = trunc i128 %784 to i64
  %786 = add i64 %774, %785
  %787 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %788 = load i64, ptr %787, align 1, !alias.scope !94, !noalias !99
  %789 = xor i64 %788, %728
  %790 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %791 = load i64, ptr %790, align 1, !alias.scope !94, !noalias !99
  %792 = xor i64 %791, %732
  %793 = zext i64 %789 to i128
  %794 = zext i64 %792 to i128
  %795 = mul nuw i128 %794, %793
  %796 = lshr i128 %795, 64
  %797 = xor i128 %796, %795
  %798 = trunc i128 %797 to i64
  %799 = add i64 %786, %798
  %800 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %801 = load i64, ptr %800, align 1, !alias.scope !94, !noalias !99
  %802 = xor i64 %801, %748
  %803 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %804 = load i64, ptr %803, align 1, !alias.scope !94, !noalias !99
  %805 = xor i64 %804, %752
  %806 = zext i64 %802 to i128
  %807 = zext i64 %805 to i128
  %808 = mul nuw i128 %807, %806
  %809 = lshr i128 %808, 64
  %810 = xor i128 %809, %808
  %811 = trunc i128 %810 to i64
  %812 = add i64 %799, %811
  %813 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %814 = load i64, ptr %813, align 1, !alias.scope !94, !noalias !99
  %815 = xor i64 %814, %768
  %816 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %817 = load i64, ptr %816, align 1, !alias.scope !94, !noalias !99
  %818 = xor i64 %817, %772
  %819 = zext i64 %815 to i128
  %820 = zext i64 %818 to i128
  %821 = mul nuw i128 %820, %819
  %822 = lshr i128 %821, 64
  %823 = xor i128 %822, %821
  %824 = trunc i128 %823 to i64
  %825 = add i64 %812, %824
  %826 = lshr i64 %825, 37
  %827 = xor i64 %826, %825
  %828 = mul i64 %827, 1609587791953885689
  %829 = lshr i64 %828, 32
  %830 = xor i64 %829, %828
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #29
  br label %831

831:                                              ; preds = %263, %683
  %832 = phi i64 [ %378, %263 ], [ %830, %683 ]
  ret i64 %832
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #16 {
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
  %189 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %187) #31, !srcloc !102
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
  br i1 %212, label %213, label %185, !llvm.loop !103

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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #18 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %149, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %114
  %8 = phi i64 [ 2654435761, %5 ], [ %146, %114 ]
  %9 = phi i64 [ 2870177450012600261, %5 ], [ %142, %114 ]
  %10 = phi i64 [ 2246822519, %5 ], [ %138, %114 ]
  %11 = phi i64 [ -8796714831421723037, %5 ], [ %134, %114 ]
  %12 = phi i64 [ 1609587929392839161, %5 ], [ %130, %114 ]
  %13 = phi i64 [ -4417276706812531889, %5 ], [ %126, %114 ]
  %14 = phi i64 [ -7046029288634856825, %5 ], [ %122, %114 ]
  %15 = phi i64 [ 3266489917, %5 ], [ %118, %114 ]
  %16 = phi i64 [ 0, %5 ], [ %147, %114 ]
  %17 = shl i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %17
  br label %19

19:                                               ; preds = %7, %19
  %20 = phi i64 [ %8, %7 ], [ %111, %19 ]
  %21 = phi i64 [ %9, %7 ], [ %107, %19 ]
  %22 = phi i64 [ %10, %7 ], [ %91, %19 ]
  %23 = phi i64 [ %11, %7 ], [ %87, %19 ]
  %24 = phi i64 [ %12, %7 ], [ %71, %19 ]
  %25 = phi i64 [ %13, %7 ], [ %67, %19 ]
  %26 = phi i64 [ %14, %7 ], [ %51, %19 ]
  %27 = phi i64 [ %15, %7 ], [ %47, %19 ]
  %28 = phi i64 [ 0, %7 ], [ %112, %19 ]
  %29 = shl nuw nsw i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1)
  %32 = shl nuw nsw i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %32
  %34 = load i64, ptr %30, align 1
  %35 = load i64, ptr %33, align 8
  %36 = xor i64 %35, %34
  %37 = add i64 %26, %34
  %38 = lshr i64 %36, 32
  %39 = and i64 %36, 4294967295
  %40 = mul nuw i64 %39, %38
  %41 = add i64 %40, %27
  %42 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %43 = load i64, ptr %42, align 1
  %44 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %45 = load i64, ptr %44, align 8
  %46 = xor i64 %45, %43
  %47 = add i64 %41, %43
  %48 = lshr i64 %46, 32
  %49 = and i64 %46, 4294967295
  %50 = mul nuw i64 %49, %48
  %51 = add i64 %50, %37
  %52 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %53 = load i64, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %55 = load i64, ptr %54, align 8
  %56 = xor i64 %55, %53
  %57 = add i64 %24, %53
  %58 = lshr i64 %56, 32
  %59 = and i64 %56, 4294967295
  %60 = mul nuw i64 %59, %58
  %61 = add i64 %60, %25
  %62 = getelementptr inbounds nuw i8, ptr %30, i64 24
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr inbounds nuw i8, ptr %33, i64 24
  %65 = load i64, ptr %64, align 8
  %66 = xor i64 %65, %63
  %67 = add i64 %61, %63
  %68 = lshr i64 %66, 32
  %69 = and i64 %66, 4294967295
  %70 = mul nuw i64 %69, %68
  %71 = add i64 %70, %57
  %72 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %75 = load i64, ptr %74, align 8
  %76 = xor i64 %75, %73
  %77 = add i64 %22, %73
  %78 = lshr i64 %76, 32
  %79 = and i64 %76, 4294967295
  %80 = mul nuw i64 %79, %78
  %81 = add i64 %80, %23
  %82 = getelementptr inbounds nuw i8, ptr %30, i64 40
  %83 = load i64, ptr %82, align 1
  %84 = getelementptr inbounds nuw i8, ptr %33, i64 40
  %85 = load i64, ptr %84, align 8
  %86 = xor i64 %85, %83
  %87 = add i64 %81, %83
  %88 = lshr i64 %86, 32
  %89 = and i64 %86, 4294967295
  %90 = mul nuw i64 %89, %88
  %91 = add i64 %90, %77
  %92 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr inbounds nuw i8, ptr %33, i64 48
  %95 = load i64, ptr %94, align 8
  %96 = xor i64 %95, %93
  %97 = add i64 %20, %93
  %98 = lshr i64 %96, 32
  %99 = and i64 %96, 4294967295
  %100 = mul nuw i64 %99, %98
  %101 = add i64 %100, %21
  %102 = getelementptr inbounds nuw i8, ptr %30, i64 56
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %33, i64 56
  %105 = load i64, ptr %104, align 8
  %106 = xor i64 %105, %103
  %107 = add i64 %101, %103
  %108 = lshr i64 %106, 32
  %109 = and i64 %106, 4294967295
  %110 = mul nuw i64 %109, %108
  %111 = add i64 %110, %97
  %112 = add nuw nsw i64 %28, 1
  %113 = icmp eq i64 %112, 16
  br i1 %113, label %114, label %19, !llvm.loop !72

114:                                              ; preds = %19
  %115 = lshr i64 %47, 47
  %116 = xor i64 %115, %47
  %117 = xor i64 %116, -4329134394285701654
  %118 = mul i64 %117, 2654435761
  %119 = lshr i64 %51, 47
  %120 = xor i64 %119, %51
  %121 = xor i64 %120, -1485321483350670907
  %122 = mul i64 %121, 2654435761
  %123 = lshr i64 %67, 47
  %124 = xor i64 %123, %67
  %125 = xor i64 %124, 5321830579834785047
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %71, 47
  %128 = xor i64 %127, %71
  %129 = xor i64 %128, -7032137544937171245
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %87, 47
  %132 = xor i64 %131, %87
  %133 = xor i64 %132, -242834301215959509
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %91, 47
  %136 = xor i64 %135, %91
  %137 = xor i64 %136, -3588858202114426737
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %107, 47
  %140 = xor i64 %139, %107
  %141 = xor i64 %140, 2883454493032893253
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %111, 47
  %144 = xor i64 %143, %111
  %145 = xor i64 %144, 9097354517224871855
  %146 = mul i64 %145, 2654435761
  %147 = add nuw nsw i64 %16, 1
  %148 = icmp eq i64 %147, %6
  br i1 %148, label %149, label %7, !llvm.loop !73

149:                                              ; preds = %114, %2
  %150 = phi i64 [ 2654435761, %2 ], [ %146, %114 ]
  %151 = phi i64 [ 2870177450012600261, %2 ], [ %142, %114 ]
  %152 = phi i64 [ 2246822519, %2 ], [ %138, %114 ]
  %153 = phi i64 [ -8796714831421723037, %2 ], [ %134, %114 ]
  %154 = phi i64 [ 1609587929392839161, %2 ], [ %130, %114 ]
  %155 = phi i64 [ -4417276706812531889, %2 ], [ %126, %114 ]
  %156 = phi i64 [ -7046029288634856825, %2 ], [ %122, %114 ]
  %157 = phi i64 [ 3266489917, %2 ], [ %118, %114 ]
  %158 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %158)
  %159 = and i64 %3, -1024
  %160 = lshr i64 %3, 6
  %161 = and i64 %160, 15
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 %159
  %163 = icmp eq i64 %161, 0
  br i1 %163, label %259, label %164

164:                                              ; preds = %149, %164
  %165 = phi i64 [ %256, %164 ], [ %150, %149 ]
  %166 = phi i64 [ %252, %164 ], [ %151, %149 ]
  %167 = phi i64 [ %236, %164 ], [ %152, %149 ]
  %168 = phi i64 [ %232, %164 ], [ %153, %149 ]
  %169 = phi i64 [ %216, %164 ], [ %154, %149 ]
  %170 = phi i64 [ %212, %164 ], [ %155, %149 ]
  %171 = phi i64 [ %196, %164 ], [ %156, %149 ]
  %172 = phi i64 [ %192, %164 ], [ %157, %149 ]
  %173 = phi i64 [ %257, %164 ], [ 0, %149 ]
  %174 = shl nuw nsw i64 %173, 6
  %175 = getelementptr inbounds nuw i8, ptr %162, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %176, i32 0, i32 3, i32 1)
  %177 = shl nuw nsw i64 %173, 3
  %178 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %177
  %179 = load i64, ptr %175, align 1
  %180 = load i64, ptr %178, align 8
  %181 = xor i64 %180, %179
  %182 = add i64 %171, %179
  %183 = lshr i64 %181, 32
  %184 = and i64 %181, 4294967295
  %185 = mul nuw i64 %184, %183
  %186 = add i64 %185, %172
  %187 = getelementptr inbounds nuw i8, ptr %175, i64 8
  %188 = load i64, ptr %187, align 1
  %189 = getelementptr inbounds nuw i8, ptr %178, i64 8
  %190 = load i64, ptr %189, align 8
  %191 = xor i64 %190, %188
  %192 = add i64 %186, %188
  %193 = lshr i64 %191, 32
  %194 = and i64 %191, 4294967295
  %195 = mul nuw i64 %194, %193
  %196 = add i64 %195, %182
  %197 = getelementptr inbounds nuw i8, ptr %175, i64 16
  %198 = load i64, ptr %197, align 1
  %199 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %200 = load i64, ptr %199, align 8
  %201 = xor i64 %200, %198
  %202 = add i64 %169, %198
  %203 = lshr i64 %201, 32
  %204 = and i64 %201, 4294967295
  %205 = mul nuw i64 %204, %203
  %206 = add i64 %205, %170
  %207 = getelementptr inbounds nuw i8, ptr %175, i64 24
  %208 = load i64, ptr %207, align 1
  %209 = getelementptr inbounds nuw i8, ptr %178, i64 24
  %210 = load i64, ptr %209, align 8
  %211 = xor i64 %210, %208
  %212 = add i64 %206, %208
  %213 = lshr i64 %211, 32
  %214 = and i64 %211, 4294967295
  %215 = mul nuw i64 %214, %213
  %216 = add i64 %215, %202
  %217 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %218 = load i64, ptr %217, align 1
  %219 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %220 = load i64, ptr %219, align 8
  %221 = xor i64 %220, %218
  %222 = add i64 %167, %218
  %223 = lshr i64 %221, 32
  %224 = and i64 %221, 4294967295
  %225 = mul nuw i64 %224, %223
  %226 = add i64 %225, %168
  %227 = getelementptr inbounds nuw i8, ptr %175, i64 40
  %228 = load i64, ptr %227, align 1
  %229 = getelementptr inbounds nuw i8, ptr %178, i64 40
  %230 = load i64, ptr %229, align 8
  %231 = xor i64 %230, %228
  %232 = add i64 %226, %228
  %233 = lshr i64 %231, 32
  %234 = and i64 %231, 4294967295
  %235 = mul nuw i64 %234, %233
  %236 = add i64 %235, %222
  %237 = getelementptr inbounds nuw i8, ptr %175, i64 48
  %238 = load i64, ptr %237, align 1
  %239 = getelementptr inbounds nuw i8, ptr %178, i64 48
  %240 = load i64, ptr %239, align 8
  %241 = xor i64 %240, %238
  %242 = add i64 %165, %238
  %243 = lshr i64 %241, 32
  %244 = and i64 %241, 4294967295
  %245 = mul nuw i64 %244, %243
  %246 = add i64 %245, %166
  %247 = getelementptr inbounds nuw i8, ptr %175, i64 56
  %248 = load i64, ptr %247, align 1
  %249 = getelementptr inbounds nuw i8, ptr %178, i64 56
  %250 = load i64, ptr %249, align 8
  %251 = xor i64 %250, %248
  %252 = add i64 %246, %248
  %253 = lshr i64 %251, 32
  %254 = and i64 %251, 4294967295
  %255 = mul nuw i64 %254, %253
  %256 = add i64 %255, %242
  %257 = add nuw nsw i64 %173, 1
  %258 = icmp eq i64 %257, %161
  br i1 %258, label %259, label %164, !llvm.loop !72

259:                                              ; preds = %164, %149
  %260 = phi i64 [ %150, %149 ], [ %256, %164 ]
  %261 = phi i64 [ %151, %149 ], [ %252, %164 ]
  %262 = phi i64 [ %152, %149 ], [ %236, %164 ]
  %263 = phi i64 [ %153, %149 ], [ %232, %164 ]
  %264 = phi i64 [ %154, %149 ], [ %216, %164 ]
  %265 = phi i64 [ %155, %149 ], [ %212, %164 ]
  %266 = phi i64 [ %156, %149 ], [ %196, %164 ]
  %267 = phi i64 [ %157, %149 ], [ %192, %164 ]
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %269 = getelementptr inbounds i8, ptr %268, i64 -64
  %270 = load i64, ptr %269, align 1
  %271 = xor i64 %270, -1556992608276218209
  %272 = add i64 %266, %270
  %273 = lshr i64 %271, 32
  %274 = and i64 %271, 4294967295
  %275 = mul nuw i64 %274, %273
  %276 = add i64 %275, %267
  %277 = getelementptr inbounds i8, ptr %268, i64 -56
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, -4196251135427498811
  %280 = add i64 %276, %278
  %281 = lshr i64 %279, 32
  %282 = and i64 %279, 4294967295
  %283 = mul nuw i64 %282, %281
  %284 = add i64 %283, %272
  %285 = getelementptr inbounds i8, ptr %268, i64 -48
  %286 = load i64, ptr %285, align 1
  %287 = xor i64 %286, 1723580219865931905
  %288 = add i64 %264, %286
  %289 = lshr i64 %287, 32
  %290 = and i64 %287, 4294967295
  %291 = mul nuw i64 %290, %289
  %292 = add i64 %291, %265
  %293 = getelementptr inbounds i8, ptr %268, i64 -40
  %294 = load i64, ptr %293, align 1
  %295 = xor i64 %294, -3221803331004277491
  %296 = add i64 %292, %294
  %297 = lshr i64 %295, 32
  %298 = and i64 %295, 4294967295
  %299 = mul nuw i64 %298, %297
  %300 = add i64 %299, %288
  %301 = getelementptr inbounds i8, ptr %268, i64 -32
  %302 = load i64, ptr %301, align 1
  %303 = xor i64 %302, 3143064850383918358
  %304 = add i64 %262, %302
  %305 = lshr i64 %303, 32
  %306 = and i64 %303, 4294967295
  %307 = mul nuw i64 %306, %305
  %308 = add i64 %307, %263
  %309 = getelementptr inbounds i8, ptr %268, i64 -24
  %310 = load i64, ptr %309, align 1
  %311 = xor i64 %310, -8071399103737053674
  %312 = add i64 %308, %310
  %313 = lshr i64 %311, 32
  %314 = and i64 %311, 4294967295
  %315 = mul nuw i64 %314, %313
  %316 = add i64 %315, %304
  %317 = getelementptr inbounds i8, ptr %268, i64 -16
  %318 = load i64, ptr %317, align 1
  %319 = xor i64 %318, 5030012605302946040
  %320 = add i64 %260, %318
  %321 = lshr i64 %319, 32
  %322 = and i64 %319, 4294967295
  %323 = mul nuw i64 %322, %321
  %324 = add i64 %323, %261
  %325 = getelementptr inbounds i8, ptr %268, i64 -8
  %326 = load i64, ptr %325, align 1
  %327 = xor i64 %326, -5825401622958753077
  %328 = add i64 %324, %326
  %329 = lshr i64 %327, 32
  %330 = and i64 %327, 4294967295
  %331 = mul nuw i64 %330, %329
  %332 = add i64 %331, %320
  %333 = mul i64 %1, -7046029288634856825
  %334 = xor i64 %280, 7914194659941938988
  %335 = xor i64 %284, -6611157965513653271
  %336 = zext i64 %334 to i128
  %337 = zext i64 %335 to i128
  %338 = mul nuw i128 %337, %336
  %339 = lshr i128 %338, 64
  %340 = xor i128 %339, %338
  %341 = trunc i128 %340 to i64
  %342 = add i64 %333, %341
  %343 = xor i64 %296, -1839215637059881052
  %344 = xor i64 %300, -3433288310154277810
  %345 = zext i64 %343 to i128
  %346 = zext i64 %344 to i128
  %347 = mul nuw i128 %346, %345
  %348 = lshr i128 %347, 64
  %349 = xor i128 %348, %347
  %350 = trunc i128 %349 to i64
  %351 = add i64 %342, %350
  %352 = xor i64 %312, 5046485836271438973
  %353 = xor i64 %316, -8055285457383852172
  %354 = zext i64 %352 to i128
  %355 = zext i64 %353 to i128
  %356 = mul nuw i128 %355, %354
  %357 = lshr i128 %356, 64
  %358 = xor i128 %357, %356
  %359 = trunc i128 %358 to i64
  %360 = add i64 %351, %359
  %361 = xor i64 %328, 5920048007935066598
  %362 = xor i64 %332, 7336514198459093435
  %363 = zext i64 %361 to i128
  %364 = zext i64 %362 to i128
  %365 = mul nuw i128 %364, %363
  %366 = lshr i128 %365, 64
  %367 = xor i128 %366, %365
  %368 = trunc i128 %367 to i64
  %369 = add i64 %360, %368
  %370 = lshr i64 %369, 37
  %371 = xor i64 %370, %369
  %372 = mul i64 %371, 1609587791953885689
  %373 = lshr i64 %372, 32
  %374 = xor i64 %373, %372
  ret i64 %374
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_update_regular(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %756

7:                                                ; preds = %3
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %10 = load i64, ptr %9, align 16, !alias.scope !107, !noalias !104
  %11 = add i64 %10, %2
  store i64 %11, ptr %9, align 16, !alias.scope !107, !noalias !104
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %13 = load i32, ptr %12, align 64, !alias.scope !107, !noalias !104
  %14 = icmp ult i32 %13, 257
  tail call void @llvm.assume(i1 %14)
  %15 = sub nuw nsw i32 256, %13
  %16 = zext nneg i32 %15 to i64
  %17 = icmp ugt i64 %2, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %20 = zext nneg i32 %13 to i64
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %1, i64 %2, i1 false), !alias.scope !109
  %22 = trunc nuw nsw i64 %2 to i32
  %23 = load i32, ptr %12, align 64, !alias.scope !107, !noalias !104
  %24 = add i32 %23, %22
  store i32 %24, ptr %12, align 64, !alias.scope !107, !noalias !104
  br label %756

25:                                               ; preds = %7
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %28 = load ptr, ptr %27, align 8, !alias.scope !107, !noalias !104
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %31 = select i1 %29, ptr %30, ptr %28
  %32 = icmp eq i32 %13, 0
  br i1 %32, label %389, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %35 = zext nneg i32 %13 to i64
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr nonnull align 1 %1, i64 %16, i1 false), !alias.scope !109
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %40 = load i64, ptr %39, align 8, !alias.scope !107, !noalias !104
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %42 = load i64, ptr %41, align 32, !alias.scope !107, !noalias !104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %43 = load i64, ptr %38, align 8, !alias.scope !113, !noalias !115
  %44 = shl i64 %43, 3
  %45 = getelementptr inbounds nuw i8, ptr %31, i64 %44
  %46 = sub i64 %40, %43
  %47 = icmp ugt i64 %46, 4
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %47, label %49, label %67

49:                                               ; preds = %33
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %51 = load i64, ptr %50, align 8, !alias.scope !118, !noalias !121
  %52 = load i64, ptr %48, align 8, !alias.scope !118, !noalias !121
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = load i64, ptr %53, align 8, !alias.scope !118, !noalias !121
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %56 = load i64, ptr %55, align 8, !alias.scope !118, !noalias !121
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %58 = load i64, ptr %57, align 8, !alias.scope !118, !noalias !121
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %60 = load i64, ptr %59, align 8, !alias.scope !118, !noalias !121
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %62 = load i64, ptr %61, align 8, !alias.scope !118, !noalias !121
  %63 = load i64, ptr %0, align 8, !alias.scope !118, !noalias !121
  %64 = ptrtoint ptr %0 to i64
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 0
  br label %270

67:                                               ; preds = %33
  %68 = getelementptr inbounds nuw i8, ptr %31, i64 %42
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %82 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %84 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %86 = getelementptr inbounds nuw i8, ptr %68, i64 24
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %88 = getelementptr inbounds nuw i8, ptr %68, i64 32
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %90 = getelementptr inbounds nuw i8, ptr %68, i64 40
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %92 = getelementptr inbounds nuw i8, ptr %68, i64 48
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %94 = getelementptr inbounds nuw i8, ptr %68, i64 56
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %96

96:                                               ; preds = %67, %215
  %97 = phi i64 [ %266, %215 ], [ 4, %67 ]
  %98 = phi ptr [ %265, %215 ], [ %34, %67 ]
  %99 = phi ptr [ %31, %215 ], [ %45, %67 ]
  %100 = phi i64 [ %40, %215 ], [ %46, %67 ]
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load i64, ptr %0, align 8, !alias.scope !124, !noalias !127
  %104 = load i64, ptr %75, align 8, !alias.scope !124, !noalias !127
  %105 = load i64, ptr %76, align 8, !alias.scope !124, !noalias !127
  %106 = load i64, ptr %77, align 8, !alias.scope !124, !noalias !127
  %107 = load i64, ptr %78, align 8, !alias.scope !124, !noalias !127
  %108 = load i64, ptr %79, align 8, !alias.scope !124, !noalias !127
  %109 = load i64, ptr %80, align 8, !alias.scope !124, !noalias !127
  %110 = load i64, ptr %81, align 8, !alias.scope !124, !noalias !127
  br label %215

111:                                              ; preds = %96
  %112 = load i64, ptr %69, align 8, !alias.scope !129, !noalias !132
  %113 = load i64, ptr %48, align 8, !alias.scope !129, !noalias !132
  %114 = load i64, ptr %70, align 8, !alias.scope !129, !noalias !132
  %115 = load i64, ptr %71, align 8, !alias.scope !129, !noalias !132
  %116 = load i64, ptr %72, align 8, !alias.scope !129, !noalias !132
  %117 = load i64, ptr %73, align 8, !alias.scope !129, !noalias !132
  %118 = load i64, ptr %74, align 8, !alias.scope !129, !noalias !132
  %119 = load i64, ptr %0, align 8, !alias.scope !129, !noalias !132
  br label %120

120:                                              ; preds = %111, %120
  %121 = phi i64 [ %119, %111 ], [ %148, %120 ]
  %122 = phi i64 [ %118, %111 ], [ %152, %120 ]
  %123 = phi i64 [ %117, %111 ], [ %208, %120 ]
  %124 = phi i64 [ %116, %111 ], [ %212, %120 ]
  %125 = phi i64 [ %115, %111 ], [ %188, %120 ]
  %126 = phi i64 [ %114, %111 ], [ %192, %120 ]
  %127 = phi i64 [ %113, %111 ], [ %168, %120 ]
  %128 = phi i64 [ %112, %111 ], [ %172, %120 ]
  %129 = phi i64 [ 0, %111 ], [ %213, %120 ]
  %130 = shl i64 %129, 6
  %131 = getelementptr inbounds nuw i8, ptr %98, i64 %130
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %132, i32 0, i32 3, i32 1), !noalias !113
  %133 = shl i64 %129, 3
  %134 = getelementptr inbounds nuw i8, ptr %99, i64 %133
  %135 = load i64, ptr %131, align 1
  %136 = load i64, ptr %134, align 1
  %137 = xor i64 %136, %135
  %138 = add i64 %122, %135
  store i64 %138, ptr %74, align 8, !alias.scope !129, !noalias !132
  %139 = lshr i64 %137, 32
  %140 = and i64 %137, 4294967295
  %141 = mul nuw i64 %140, %139
  %142 = add i64 %141, %121
  store i64 %142, ptr %0, align 8, !alias.scope !129, !noalias !132
  %143 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %144 = load i64, ptr %143, align 1
  %145 = getelementptr inbounds nuw i8, ptr %134, i64 8
  %146 = load i64, ptr %145, align 1
  %147 = xor i64 %146, %144
  %148 = add i64 %142, %144
  store i64 %148, ptr %0, align 8, !alias.scope !129, !noalias !132
  %149 = lshr i64 %147, 32
  %150 = and i64 %147, 4294967295
  %151 = mul nuw i64 %150, %149
  %152 = add i64 %151, %138
  store i64 %152, ptr %74, align 8, !alias.scope !129, !noalias !132
  %153 = getelementptr inbounds nuw i8, ptr %131, i64 16
  %154 = load i64, ptr %153, align 1
  %155 = getelementptr inbounds nuw i8, ptr %134, i64 16
  %156 = load i64, ptr %155, align 1
  %157 = xor i64 %156, %154
  %158 = add i64 %128, %154
  store i64 %158, ptr %69, align 8, !alias.scope !129, !noalias !132
  %159 = lshr i64 %157, 32
  %160 = and i64 %157, 4294967295
  %161 = mul nuw i64 %160, %159
  %162 = add i64 %161, %127
  store i64 %162, ptr %48, align 8, !alias.scope !129, !noalias !132
  %163 = getelementptr inbounds nuw i8, ptr %131, i64 24
  %164 = load i64, ptr %163, align 1
  %165 = getelementptr inbounds nuw i8, ptr %134, i64 24
  %166 = load i64, ptr %165, align 1
  %167 = xor i64 %166, %164
  %168 = add i64 %162, %164
  store i64 %168, ptr %48, align 8, !alias.scope !129, !noalias !132
  %169 = lshr i64 %167, 32
  %170 = and i64 %167, 4294967295
  %171 = mul nuw i64 %170, %169
  %172 = add i64 %171, %158
  store i64 %172, ptr %69, align 8, !alias.scope !129, !noalias !132
  %173 = getelementptr inbounds nuw i8, ptr %131, i64 32
  %174 = load i64, ptr %173, align 1
  %175 = getelementptr inbounds nuw i8, ptr %134, i64 32
  %176 = load i64, ptr %175, align 1
  %177 = xor i64 %176, %174
  %178 = add i64 %126, %174
  store i64 %178, ptr %70, align 8, !alias.scope !129, !noalias !132
  %179 = lshr i64 %177, 32
  %180 = and i64 %177, 4294967295
  %181 = mul nuw i64 %180, %179
  %182 = add i64 %181, %125
  store i64 %182, ptr %71, align 8, !alias.scope !129, !noalias !132
  %183 = getelementptr inbounds nuw i8, ptr %131, i64 40
  %184 = load i64, ptr %183, align 1
  %185 = getelementptr inbounds nuw i8, ptr %134, i64 40
  %186 = load i64, ptr %185, align 1
  %187 = xor i64 %186, %184
  %188 = add i64 %182, %184
  store i64 %188, ptr %71, align 8, !alias.scope !129, !noalias !132
  %189 = lshr i64 %187, 32
  %190 = and i64 %187, 4294967295
  %191 = mul nuw i64 %190, %189
  %192 = add i64 %191, %178
  store i64 %192, ptr %70, align 8, !alias.scope !129, !noalias !132
  %193 = getelementptr inbounds nuw i8, ptr %131, i64 48
  %194 = load i64, ptr %193, align 1
  %195 = getelementptr inbounds nuw i8, ptr %134, i64 48
  %196 = load i64, ptr %195, align 1
  %197 = xor i64 %196, %194
  %198 = add i64 %124, %194
  store i64 %198, ptr %72, align 8, !alias.scope !129, !noalias !132
  %199 = lshr i64 %197, 32
  %200 = and i64 %197, 4294967295
  %201 = mul nuw i64 %200, %199
  %202 = add i64 %201, %123
  store i64 %202, ptr %73, align 8, !alias.scope !129, !noalias !132
  %203 = getelementptr inbounds nuw i8, ptr %131, i64 56
  %204 = load i64, ptr %203, align 1
  %205 = getelementptr inbounds nuw i8, ptr %134, i64 56
  %206 = load i64, ptr %205, align 1
  %207 = xor i64 %206, %204
  %208 = add i64 %202, %204
  store i64 %208, ptr %73, align 8, !alias.scope !129, !noalias !132
  %209 = lshr i64 %207, 32
  %210 = and i64 %207, 4294967295
  %211 = mul nuw i64 %210, %209
  %212 = add i64 %211, %198
  store i64 %212, ptr %72, align 8, !alias.scope !129, !noalias !132
  %213 = add nuw i64 %129, 1
  %214 = icmp eq i64 %213, %100
  br i1 %214, label %215, label %120, !llvm.loop !72

215:                                              ; preds = %120, %102
  %216 = phi i64 [ %110, %102 ], [ %212, %120 ]
  %217 = phi i64 [ %109, %102 ], [ %208, %120 ]
  %218 = phi i64 [ %108, %102 ], [ %192, %120 ]
  %219 = phi i64 [ %107, %102 ], [ %188, %120 ]
  %220 = phi i64 [ %106, %102 ], [ %172, %120 ]
  %221 = phi i64 [ %105, %102 ], [ %168, %120 ]
  %222 = phi i64 [ %104, %102 ], [ %152, %120 ]
  %223 = phi i64 [ %103, %102 ], [ %148, %120 ]
  %224 = load i64, ptr %68, align 1
  %225 = lshr i64 %223, 47
  %226 = xor i64 %224, %225
  %227 = xor i64 %226, %223
  %228 = mul i64 %227, 2654435761
  store i64 %228, ptr %0, align 8, !alias.scope !124, !noalias !127
  %229 = load i64, ptr %82, align 1
  %230 = lshr i64 %222, 47
  %231 = xor i64 %229, %230
  %232 = xor i64 %231, %222
  %233 = mul i64 %232, 2654435761
  store i64 %233, ptr %83, align 8, !alias.scope !124, !noalias !127
  %234 = load i64, ptr %84, align 1
  %235 = lshr i64 %221, 47
  %236 = xor i64 %234, %235
  %237 = xor i64 %236, %221
  %238 = mul i64 %237, 2654435761
  store i64 %238, ptr %85, align 8, !alias.scope !124, !noalias !127
  %239 = load i64, ptr %86, align 1
  %240 = lshr i64 %220, 47
  %241 = xor i64 %239, %240
  %242 = xor i64 %241, %220
  %243 = mul i64 %242, 2654435761
  store i64 %243, ptr %87, align 8, !alias.scope !124, !noalias !127
  %244 = load i64, ptr %88, align 1
  %245 = lshr i64 %219, 47
  %246 = xor i64 %244, %245
  %247 = xor i64 %246, %219
  %248 = mul i64 %247, 2654435761
  store i64 %248, ptr %89, align 8, !alias.scope !124, !noalias !127
  %249 = load i64, ptr %90, align 1
  %250 = lshr i64 %218, 47
  %251 = xor i64 %249, %250
  %252 = xor i64 %251, %218
  %253 = mul i64 %252, 2654435761
  store i64 %253, ptr %91, align 8, !alias.scope !124, !noalias !127
  %254 = load i64, ptr %92, align 1
  %255 = lshr i64 %217, 47
  %256 = xor i64 %254, %255
  %257 = xor i64 %256, %217
  %258 = mul i64 %257, 2654435761
  store i64 %258, ptr %93, align 8, !alias.scope !124, !noalias !127
  %259 = load i64, ptr %94, align 1
  %260 = lshr i64 %216, 47
  %261 = xor i64 %259, %260
  %262 = xor i64 %261, %216
  %263 = mul i64 %262, 2654435761
  store i64 %263, ptr %95, align 8, !alias.scope !124, !noalias !127
  %264 = shl i64 %100, 6
  %265 = getelementptr inbounds nuw i8, ptr %98, i64 %264
  %266 = sub i64 %97, %100
  %267 = icmp ult i64 %266, %40
  br i1 %267, label %268, label %96, !llvm.loop !85

268:                                              ; preds = %215
  store i64 0, ptr %38, align 8, !alias.scope !113, !noalias !115
  %269 = icmp eq i64 %266, 0
  br i1 %269, label %388, label %270

270:                                              ; preds = %49, %268
  %271 = phi i1 [ %66, %49 ], [ true, %268 ]
  %272 = phi i64 [ %63, %49 ], [ %228, %268 ]
  %273 = phi i64 [ %62, %49 ], [ %233, %268 ]
  %274 = phi i64 [ %60, %49 ], [ %258, %268 ]
  %275 = phi i64 [ %58, %49 ], [ %263, %268 ]
  %276 = phi i64 [ %56, %49 ], [ %248, %268 ]
  %277 = phi i64 [ %54, %49 ], [ %253, %268 ]
  %278 = phi i64 [ %52, %49 ], [ %238, %268 ]
  %279 = phi i64 [ %51, %49 ], [ %243, %268 ]
  %280 = phi ptr [ %45, %49 ], [ %31, %268 ]
  %281 = phi ptr [ %34, %49 ], [ %265, %268 ]
  %282 = phi i64 [ 4, %49 ], [ %266, %268 ]
  tail call void @llvm.assume(i1 %271)
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %290

290:                                              ; preds = %270, %290
  %291 = phi i64 [ %272, %270 ], [ %318, %290 ]
  %292 = phi i64 [ %273, %270 ], [ %322, %290 ]
  %293 = phi i64 [ %274, %270 ], [ %378, %290 ]
  %294 = phi i64 [ %275, %270 ], [ %382, %290 ]
  %295 = phi i64 [ %276, %270 ], [ %358, %290 ]
  %296 = phi i64 [ %277, %270 ], [ %362, %290 ]
  %297 = phi i64 [ %278, %270 ], [ %338, %290 ]
  %298 = phi i64 [ %279, %270 ], [ %342, %290 ]
  %299 = phi i64 [ 0, %270 ], [ %383, %290 ]
  %300 = shl i64 %299, 6
  %301 = getelementptr inbounds nuw i8, ptr %281, i64 %300
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %302, i32 0, i32 3, i32 1), !noalias !113
  %303 = shl i64 %299, 3
  %304 = getelementptr inbounds nuw i8, ptr %280, i64 %303
  %305 = load i64, ptr %301, align 1
  %306 = load i64, ptr %304, align 1
  %307 = xor i64 %306, %305
  %308 = add i64 %292, %305
  store i64 %308, ptr %289, align 8, !alias.scope !118, !noalias !121
  %309 = lshr i64 %307, 32
  %310 = and i64 %307, 4294967295
  %311 = mul nuw i64 %310, %309
  %312 = add i64 %311, %291
  store i64 %312, ptr %0, align 8, !alias.scope !118, !noalias !121
  %313 = getelementptr inbounds nuw i8, ptr %301, i64 8
  %314 = load i64, ptr %313, align 1
  %315 = getelementptr inbounds nuw i8, ptr %304, i64 8
  %316 = load i64, ptr %315, align 1
  %317 = xor i64 %316, %314
  %318 = add i64 %312, %314
  store i64 %318, ptr %0, align 8, !alias.scope !118, !noalias !121
  %319 = lshr i64 %317, 32
  %320 = and i64 %317, 4294967295
  %321 = mul nuw i64 %320, %319
  %322 = add i64 %321, %308
  store i64 %322, ptr %289, align 8, !alias.scope !118, !noalias !121
  %323 = getelementptr inbounds nuw i8, ptr %301, i64 16
  %324 = load i64, ptr %323, align 1
  %325 = getelementptr inbounds nuw i8, ptr %304, i64 16
  %326 = load i64, ptr %325, align 1
  %327 = xor i64 %326, %324
  %328 = add i64 %298, %324
  store i64 %328, ptr %283, align 8, !alias.scope !118, !noalias !121
  %329 = lshr i64 %327, 32
  %330 = and i64 %327, 4294967295
  %331 = mul nuw i64 %330, %329
  %332 = add i64 %331, %297
  store i64 %332, ptr %284, align 8, !alias.scope !118, !noalias !121
  %333 = getelementptr inbounds nuw i8, ptr %301, i64 24
  %334 = load i64, ptr %333, align 1
  %335 = getelementptr inbounds nuw i8, ptr %304, i64 24
  %336 = load i64, ptr %335, align 1
  %337 = xor i64 %336, %334
  %338 = add i64 %332, %334
  store i64 %338, ptr %284, align 8, !alias.scope !118, !noalias !121
  %339 = lshr i64 %337, 32
  %340 = and i64 %337, 4294967295
  %341 = mul nuw i64 %340, %339
  %342 = add i64 %341, %328
  store i64 %342, ptr %283, align 8, !alias.scope !118, !noalias !121
  %343 = getelementptr inbounds nuw i8, ptr %301, i64 32
  %344 = load i64, ptr %343, align 1
  %345 = getelementptr inbounds nuw i8, ptr %304, i64 32
  %346 = load i64, ptr %345, align 1
  %347 = xor i64 %346, %344
  %348 = add i64 %296, %344
  store i64 %348, ptr %285, align 8, !alias.scope !118, !noalias !121
  %349 = lshr i64 %347, 32
  %350 = and i64 %347, 4294967295
  %351 = mul nuw i64 %350, %349
  %352 = add i64 %351, %295
  store i64 %352, ptr %286, align 8, !alias.scope !118, !noalias !121
  %353 = getelementptr inbounds nuw i8, ptr %301, i64 40
  %354 = load i64, ptr %353, align 1
  %355 = getelementptr inbounds nuw i8, ptr %304, i64 40
  %356 = load i64, ptr %355, align 1
  %357 = xor i64 %356, %354
  %358 = add i64 %352, %354
  store i64 %358, ptr %286, align 8, !alias.scope !118, !noalias !121
  %359 = lshr i64 %357, 32
  %360 = and i64 %357, 4294967295
  %361 = mul nuw i64 %360, %359
  %362 = add i64 %361, %348
  store i64 %362, ptr %285, align 8, !alias.scope !118, !noalias !121
  %363 = getelementptr inbounds nuw i8, ptr %301, i64 48
  %364 = load i64, ptr %363, align 1
  %365 = getelementptr inbounds nuw i8, ptr %304, i64 48
  %366 = load i64, ptr %365, align 1
  %367 = xor i64 %366, %364
  %368 = add i64 %294, %364
  store i64 %368, ptr %287, align 8, !alias.scope !118, !noalias !121
  %369 = lshr i64 %367, 32
  %370 = and i64 %367, 4294967295
  %371 = mul nuw i64 %370, %369
  %372 = add i64 %371, %293
  store i64 %372, ptr %288, align 8, !alias.scope !118, !noalias !121
  %373 = getelementptr inbounds nuw i8, ptr %301, i64 56
  %374 = load i64, ptr %373, align 1
  %375 = getelementptr inbounds nuw i8, ptr %304, i64 56
  %376 = load i64, ptr %375, align 1
  %377 = xor i64 %376, %374
  %378 = add i64 %372, %374
  store i64 %378, ptr %288, align 8, !alias.scope !118, !noalias !121
  %379 = lshr i64 %377, 32
  %380 = and i64 %377, 4294967295
  %381 = mul nuw i64 %380, %379
  %382 = add i64 %381, %368
  store i64 %382, ptr %287, align 8, !alias.scope !118, !noalias !121
  %383 = add nuw i64 %299, 1
  %384 = icmp eq i64 %383, %282
  br i1 %384, label %385, label %290, !llvm.loop !72

385:                                              ; preds = %290
  %386 = load i64, ptr %38, align 8, !alias.scope !113, !noalias !115
  %387 = add i64 %386, %282
  store i64 %387, ptr %38, align 8, !alias.scope !113, !noalias !115
  br label %388

388:                                              ; preds = %268, %385
  store i32 0, ptr %12, align 64, !alias.scope !107, !noalias !104
  br label %389

389:                                              ; preds = %388, %25
  %390 = phi ptr [ %37, %388 ], [ %1, %25 ]
  %391 = icmp ult ptr %390, %26
  tail call void @llvm.assume(i1 %391)
  %392 = ptrtoint ptr %26 to i64
  %393 = ptrtoint ptr %390 to i64
  %394 = sub i64 %392, %393
  %395 = icmp sgt i64 %394, 256
  br i1 %395, label %396, label %748

396:                                              ; preds = %389
  %397 = getelementptr inbounds i8, ptr %26, i64 -1
  %398 = ptrtoint ptr %397 to i64
  %399 = sub i64 %398, %393
  %400 = lshr i64 %399, 6
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %403 = load i64, ptr %402, align 8, !alias.scope !107, !noalias !104
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %405 = load i64, ptr %404, align 32, !alias.scope !107, !noalias !104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %406 = load i64, ptr %401, align 8, !alias.scope !138, !noalias !140
  %407 = shl i64 %406, 3
  %408 = getelementptr inbounds nuw i8, ptr %31, i64 %407
  %409 = sub i64 %403, %406
  %410 = icmp ult i64 %400, %409
  br i1 %410, label %616, label %411

411:                                              ; preds = %396
  %412 = getelementptr inbounds nuw i8, ptr %31, i64 %405
  %413 = ptrtoint ptr %0 to i64
  %414 = and i64 %413, 7
  %415 = icmp eq i64 %414, 0
  tail call void @llvm.assume(i1 %415)
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %430 = getelementptr inbounds nuw i8, ptr %412, i64 8
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %432 = getelementptr inbounds nuw i8, ptr %412, i64 16
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %434 = getelementptr inbounds nuw i8, ptr %412, i64 24
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %436 = getelementptr inbounds nuw i8, ptr %412, i64 32
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %438 = getelementptr inbounds nuw i8, ptr %412, i64 40
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %440 = getelementptr inbounds nuw i8, ptr %412, i64 48
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %442 = getelementptr inbounds nuw i8, ptr %412, i64 56
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %444

444:                                              ; preds = %411, %562
  %445 = phi i64 [ %613, %562 ], [ %400, %411 ]
  %446 = phi ptr [ %612, %562 ], [ %390, %411 ]
  %447 = phi ptr [ %31, %562 ], [ %408, %411 ]
  %448 = phi i64 [ %403, %562 ], [ %409, %411 ]
  %449 = icmp eq i64 %448, 0
  %450 = load i64, ptr %0, align 8, !alias.scope !135, !noalias !143
  br i1 %449, label %451, label %459

451:                                              ; preds = %444
  %452 = load i64, ptr %423, align 8, !alias.scope !144, !noalias !147
  %453 = load i64, ptr %424, align 8, !alias.scope !144, !noalias !147
  %454 = load i64, ptr %425, align 8, !alias.scope !144, !noalias !147
  %455 = load i64, ptr %426, align 8, !alias.scope !144, !noalias !147
  %456 = load i64, ptr %427, align 8, !alias.scope !144, !noalias !147
  %457 = load i64, ptr %428, align 8, !alias.scope !144, !noalias !147
  %458 = load i64, ptr %429, align 8, !alias.scope !144, !noalias !147
  br label %562

459:                                              ; preds = %444
  %460 = load i64, ptr %416, align 8, !alias.scope !149, !noalias !152
  %461 = load i64, ptr %417, align 8, !alias.scope !149, !noalias !152
  %462 = load i64, ptr %418, align 8, !alias.scope !149, !noalias !152
  %463 = load i64, ptr %419, align 8, !alias.scope !149, !noalias !152
  %464 = load i64, ptr %420, align 8, !alias.scope !149, !noalias !152
  %465 = load i64, ptr %421, align 8, !alias.scope !149, !noalias !152
  %466 = load i64, ptr %422, align 8, !alias.scope !149, !noalias !152
  br label %467

467:                                              ; preds = %459, %467
  %468 = phi i64 [ %450, %459 ], [ %495, %467 ]
  %469 = phi i64 [ %466, %459 ], [ %499, %467 ]
  %470 = phi i64 [ %465, %459 ], [ %555, %467 ]
  %471 = phi i64 [ %464, %459 ], [ %559, %467 ]
  %472 = phi i64 [ %463, %459 ], [ %535, %467 ]
  %473 = phi i64 [ %462, %459 ], [ %539, %467 ]
  %474 = phi i64 [ %461, %459 ], [ %515, %467 ]
  %475 = phi i64 [ %460, %459 ], [ %519, %467 ]
  %476 = phi i64 [ 0, %459 ], [ %560, %467 ]
  %477 = shl i64 %476, 6
  %478 = getelementptr inbounds nuw i8, ptr %446, i64 %477
  %479 = getelementptr inbounds nuw i8, ptr %478, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %479, i32 0, i32 3, i32 1), !noalias !138
  %480 = shl i64 %476, 3
  %481 = getelementptr inbounds nuw i8, ptr %447, i64 %480
  %482 = load i64, ptr %478, align 1
  %483 = load i64, ptr %481, align 1
  %484 = xor i64 %483, %482
  %485 = add i64 %469, %482
  store i64 %485, ptr %422, align 8, !alias.scope !149, !noalias !152
  %486 = lshr i64 %484, 32
  %487 = and i64 %484, 4294967295
  %488 = mul nuw i64 %487, %486
  %489 = add i64 %488, %468
  store i64 %489, ptr %0, align 8, !alias.scope !149, !noalias !152
  %490 = getelementptr inbounds nuw i8, ptr %478, i64 8
  %491 = load i64, ptr %490, align 1
  %492 = getelementptr inbounds nuw i8, ptr %481, i64 8
  %493 = load i64, ptr %492, align 1
  %494 = xor i64 %493, %491
  %495 = add i64 %489, %491
  store i64 %495, ptr %0, align 8, !alias.scope !149, !noalias !152
  %496 = lshr i64 %494, 32
  %497 = and i64 %494, 4294967295
  %498 = mul nuw i64 %497, %496
  %499 = add i64 %498, %485
  store i64 %499, ptr %422, align 8, !alias.scope !149, !noalias !152
  %500 = getelementptr inbounds nuw i8, ptr %478, i64 16
  %501 = load i64, ptr %500, align 1
  %502 = getelementptr inbounds nuw i8, ptr %481, i64 16
  %503 = load i64, ptr %502, align 1
  %504 = xor i64 %503, %501
  %505 = add i64 %475, %501
  store i64 %505, ptr %416, align 8, !alias.scope !149, !noalias !152
  %506 = lshr i64 %504, 32
  %507 = and i64 %504, 4294967295
  %508 = mul nuw i64 %507, %506
  %509 = add i64 %508, %474
  store i64 %509, ptr %417, align 8, !alias.scope !149, !noalias !152
  %510 = getelementptr inbounds nuw i8, ptr %478, i64 24
  %511 = load i64, ptr %510, align 1
  %512 = getelementptr inbounds nuw i8, ptr %481, i64 24
  %513 = load i64, ptr %512, align 1
  %514 = xor i64 %513, %511
  %515 = add i64 %509, %511
  store i64 %515, ptr %417, align 8, !alias.scope !149, !noalias !152
  %516 = lshr i64 %514, 32
  %517 = and i64 %514, 4294967295
  %518 = mul nuw i64 %517, %516
  %519 = add i64 %518, %505
  store i64 %519, ptr %416, align 8, !alias.scope !149, !noalias !152
  %520 = getelementptr inbounds nuw i8, ptr %478, i64 32
  %521 = load i64, ptr %520, align 1
  %522 = getelementptr inbounds nuw i8, ptr %481, i64 32
  %523 = load i64, ptr %522, align 1
  %524 = xor i64 %523, %521
  %525 = add i64 %473, %521
  store i64 %525, ptr %418, align 8, !alias.scope !149, !noalias !152
  %526 = lshr i64 %524, 32
  %527 = and i64 %524, 4294967295
  %528 = mul nuw i64 %527, %526
  %529 = add i64 %528, %472
  store i64 %529, ptr %419, align 8, !alias.scope !149, !noalias !152
  %530 = getelementptr inbounds nuw i8, ptr %478, i64 40
  %531 = load i64, ptr %530, align 1
  %532 = getelementptr inbounds nuw i8, ptr %481, i64 40
  %533 = load i64, ptr %532, align 1
  %534 = xor i64 %533, %531
  %535 = add i64 %529, %531
  store i64 %535, ptr %419, align 8, !alias.scope !149, !noalias !152
  %536 = lshr i64 %534, 32
  %537 = and i64 %534, 4294967295
  %538 = mul nuw i64 %537, %536
  %539 = add i64 %538, %525
  store i64 %539, ptr %418, align 8, !alias.scope !149, !noalias !152
  %540 = getelementptr inbounds nuw i8, ptr %478, i64 48
  %541 = load i64, ptr %540, align 1
  %542 = getelementptr inbounds nuw i8, ptr %481, i64 48
  %543 = load i64, ptr %542, align 1
  %544 = xor i64 %543, %541
  %545 = add i64 %471, %541
  store i64 %545, ptr %420, align 8, !alias.scope !149, !noalias !152
  %546 = lshr i64 %544, 32
  %547 = and i64 %544, 4294967295
  %548 = mul nuw i64 %547, %546
  %549 = add i64 %548, %470
  store i64 %549, ptr %421, align 8, !alias.scope !149, !noalias !152
  %550 = getelementptr inbounds nuw i8, ptr %478, i64 56
  %551 = load i64, ptr %550, align 1
  %552 = getelementptr inbounds nuw i8, ptr %481, i64 56
  %553 = load i64, ptr %552, align 1
  %554 = xor i64 %553, %551
  %555 = add i64 %549, %551
  store i64 %555, ptr %421, align 8, !alias.scope !149, !noalias !152
  %556 = lshr i64 %554, 32
  %557 = and i64 %554, 4294967295
  %558 = mul nuw i64 %557, %556
  %559 = add i64 %558, %545
  store i64 %559, ptr %420, align 8, !alias.scope !149, !noalias !152
  %560 = add nuw i64 %476, 1
  %561 = icmp eq i64 %560, %448
  br i1 %561, label %562, label %467, !llvm.loop !72

562:                                              ; preds = %467, %451
  %563 = phi i64 [ %450, %451 ], [ %495, %467 ]
  %564 = phi i64 [ %458, %451 ], [ %559, %467 ]
  %565 = phi i64 [ %457, %451 ], [ %555, %467 ]
  %566 = phi i64 [ %456, %451 ], [ %539, %467 ]
  %567 = phi i64 [ %455, %451 ], [ %535, %467 ]
  %568 = phi i64 [ %454, %451 ], [ %519, %467 ]
  %569 = phi i64 [ %453, %451 ], [ %515, %467 ]
  %570 = phi i64 [ %452, %451 ], [ %499, %467 ]
  %571 = load i64, ptr %412, align 1
  %572 = lshr i64 %563, 47
  %573 = xor i64 %571, %572
  %574 = xor i64 %573, %563
  %575 = mul i64 %574, 2654435761
  store i64 %575, ptr %0, align 8, !alias.scope !144, !noalias !147
  %576 = load i64, ptr %430, align 1
  %577 = lshr i64 %570, 47
  %578 = xor i64 %576, %577
  %579 = xor i64 %578, %570
  %580 = mul i64 %579, 2654435761
  store i64 %580, ptr %431, align 8, !alias.scope !144, !noalias !147
  %581 = load i64, ptr %432, align 1
  %582 = lshr i64 %569, 47
  %583 = xor i64 %581, %582
  %584 = xor i64 %583, %569
  %585 = mul i64 %584, 2654435761
  store i64 %585, ptr %433, align 8, !alias.scope !144, !noalias !147
  %586 = load i64, ptr %434, align 1
  %587 = lshr i64 %568, 47
  %588 = xor i64 %586, %587
  %589 = xor i64 %588, %568
  %590 = mul i64 %589, 2654435761
  store i64 %590, ptr %435, align 8, !alias.scope !144, !noalias !147
  %591 = load i64, ptr %436, align 1
  %592 = lshr i64 %567, 47
  %593 = xor i64 %591, %592
  %594 = xor i64 %593, %567
  %595 = mul i64 %594, 2654435761
  store i64 %595, ptr %437, align 8, !alias.scope !144, !noalias !147
  %596 = load i64, ptr %438, align 1
  %597 = lshr i64 %566, 47
  %598 = xor i64 %596, %597
  %599 = xor i64 %598, %566
  %600 = mul i64 %599, 2654435761
  store i64 %600, ptr %439, align 8, !alias.scope !144, !noalias !147
  %601 = load i64, ptr %440, align 1
  %602 = lshr i64 %565, 47
  %603 = xor i64 %601, %602
  %604 = xor i64 %603, %565
  %605 = mul i64 %604, 2654435761
  store i64 %605, ptr %441, align 8, !alias.scope !144, !noalias !147
  %606 = load i64, ptr %442, align 1
  %607 = lshr i64 %564, 47
  %608 = xor i64 %606, %607
  %609 = xor i64 %608, %564
  %610 = mul i64 %609, 2654435761
  store i64 %610, ptr %443, align 8, !alias.scope !144, !noalias !147
  %611 = shl i64 %448, 6
  %612 = getelementptr inbounds nuw i8, ptr %446, i64 %611
  %613 = sub i64 %445, %448
  %614 = icmp ult i64 %613, %403
  br i1 %614, label %615, label %444, !llvm.loop !85

615:                                              ; preds = %562
  store i64 0, ptr %401, align 8, !alias.scope !138, !noalias !140
  br label %616

616:                                              ; preds = %615, %396
  %617 = phi i64 [ %613, %615 ], [ %400, %396 ]
  %618 = phi ptr [ %612, %615 ], [ %390, %396 ]
  %619 = phi ptr [ %31, %615 ], [ %408, %396 ]
  %620 = icmp eq i64 %617, 0
  br i1 %620, label %740, label %621

621:                                              ; preds = %616
  %622 = ptrtoint ptr %0 to i64
  %623 = and i64 %622, 7
  %624 = icmp eq i64 %623, 0
  tail call void @llvm.assume(i1 %624)
  %625 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %626 = load i64, ptr %625, align 8, !alias.scope !155, !noalias !158
  %627 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %628 = load i64, ptr %627, align 8, !alias.scope !155, !noalias !158
  %629 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %630 = load i64, ptr %629, align 8, !alias.scope !155, !noalias !158
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %632 = load i64, ptr %631, align 8, !alias.scope !155, !noalias !158
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %634 = load i64, ptr %633, align 8, !alias.scope !155, !noalias !158
  %635 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %636 = load i64, ptr %635, align 8, !alias.scope !155, !noalias !158
  %637 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %638 = load i64, ptr %637, align 8, !alias.scope !155, !noalias !158
  %639 = load i64, ptr %0, align 8, !alias.scope !155, !noalias !158
  br label %640

640:                                              ; preds = %621, %640
  %641 = phi i64 [ %639, %621 ], [ %668, %640 ]
  %642 = phi i64 [ %638, %621 ], [ %672, %640 ]
  %643 = phi i64 [ %636, %621 ], [ %728, %640 ]
  %644 = phi i64 [ %634, %621 ], [ %732, %640 ]
  %645 = phi i64 [ %632, %621 ], [ %708, %640 ]
  %646 = phi i64 [ %630, %621 ], [ %712, %640 ]
  %647 = phi i64 [ %628, %621 ], [ %688, %640 ]
  %648 = phi i64 [ %626, %621 ], [ %692, %640 ]
  %649 = phi i64 [ 0, %621 ], [ %733, %640 ]
  %650 = shl i64 %649, 6
  %651 = getelementptr inbounds nuw i8, ptr %618, i64 %650
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %652, i32 0, i32 3, i32 1), !noalias !138
  %653 = shl i64 %649, 3
  %654 = getelementptr inbounds nuw i8, ptr %619, i64 %653
  %655 = load i64, ptr %651, align 1
  %656 = load i64, ptr %654, align 1
  %657 = xor i64 %656, %655
  %658 = add i64 %642, %655
  store i64 %658, ptr %637, align 8, !alias.scope !155, !noalias !158
  %659 = lshr i64 %657, 32
  %660 = and i64 %657, 4294967295
  %661 = mul nuw i64 %660, %659
  %662 = add i64 %661, %641
  store i64 %662, ptr %0, align 8, !alias.scope !155, !noalias !158
  %663 = getelementptr inbounds nuw i8, ptr %651, i64 8
  %664 = load i64, ptr %663, align 1
  %665 = getelementptr inbounds nuw i8, ptr %654, i64 8
  %666 = load i64, ptr %665, align 1
  %667 = xor i64 %666, %664
  %668 = add i64 %662, %664
  store i64 %668, ptr %0, align 8, !alias.scope !155, !noalias !158
  %669 = lshr i64 %667, 32
  %670 = and i64 %667, 4294967295
  %671 = mul nuw i64 %670, %669
  %672 = add i64 %671, %658
  store i64 %672, ptr %637, align 8, !alias.scope !155, !noalias !158
  %673 = getelementptr inbounds nuw i8, ptr %651, i64 16
  %674 = load i64, ptr %673, align 1
  %675 = getelementptr inbounds nuw i8, ptr %654, i64 16
  %676 = load i64, ptr %675, align 1
  %677 = xor i64 %676, %674
  %678 = add i64 %648, %674
  store i64 %678, ptr %625, align 8, !alias.scope !155, !noalias !158
  %679 = lshr i64 %677, 32
  %680 = and i64 %677, 4294967295
  %681 = mul nuw i64 %680, %679
  %682 = add i64 %681, %647
  store i64 %682, ptr %627, align 8, !alias.scope !155, !noalias !158
  %683 = getelementptr inbounds nuw i8, ptr %651, i64 24
  %684 = load i64, ptr %683, align 1
  %685 = getelementptr inbounds nuw i8, ptr %654, i64 24
  %686 = load i64, ptr %685, align 1
  %687 = xor i64 %686, %684
  %688 = add i64 %682, %684
  store i64 %688, ptr %627, align 8, !alias.scope !155, !noalias !158
  %689 = lshr i64 %687, 32
  %690 = and i64 %687, 4294967295
  %691 = mul nuw i64 %690, %689
  %692 = add i64 %691, %678
  store i64 %692, ptr %625, align 8, !alias.scope !155, !noalias !158
  %693 = getelementptr inbounds nuw i8, ptr %651, i64 32
  %694 = load i64, ptr %693, align 1
  %695 = getelementptr inbounds nuw i8, ptr %654, i64 32
  %696 = load i64, ptr %695, align 1
  %697 = xor i64 %696, %694
  %698 = add i64 %646, %694
  store i64 %698, ptr %629, align 8, !alias.scope !155, !noalias !158
  %699 = lshr i64 %697, 32
  %700 = and i64 %697, 4294967295
  %701 = mul nuw i64 %700, %699
  %702 = add i64 %701, %645
  store i64 %702, ptr %631, align 8, !alias.scope !155, !noalias !158
  %703 = getelementptr inbounds nuw i8, ptr %651, i64 40
  %704 = load i64, ptr %703, align 1
  %705 = getelementptr inbounds nuw i8, ptr %654, i64 40
  %706 = load i64, ptr %705, align 1
  %707 = xor i64 %706, %704
  %708 = add i64 %702, %704
  store i64 %708, ptr %631, align 8, !alias.scope !155, !noalias !158
  %709 = lshr i64 %707, 32
  %710 = and i64 %707, 4294967295
  %711 = mul nuw i64 %710, %709
  %712 = add i64 %711, %698
  store i64 %712, ptr %629, align 8, !alias.scope !155, !noalias !158
  %713 = getelementptr inbounds nuw i8, ptr %651, i64 48
  %714 = load i64, ptr %713, align 1
  %715 = getelementptr inbounds nuw i8, ptr %654, i64 48
  %716 = load i64, ptr %715, align 1
  %717 = xor i64 %716, %714
  %718 = add i64 %644, %714
  store i64 %718, ptr %633, align 8, !alias.scope !155, !noalias !158
  %719 = lshr i64 %717, 32
  %720 = and i64 %717, 4294967295
  %721 = mul nuw i64 %720, %719
  %722 = add i64 %721, %643
  store i64 %722, ptr %635, align 8, !alias.scope !155, !noalias !158
  %723 = getelementptr inbounds nuw i8, ptr %651, i64 56
  %724 = load i64, ptr %723, align 1
  %725 = getelementptr inbounds nuw i8, ptr %654, i64 56
  %726 = load i64, ptr %725, align 1
  %727 = xor i64 %726, %724
  %728 = add i64 %722, %724
  store i64 %728, ptr %635, align 8, !alias.scope !155, !noalias !158
  %729 = lshr i64 %727, 32
  %730 = and i64 %727, 4294967295
  %731 = mul nuw i64 %730, %729
  %732 = add i64 %731, %718
  store i64 %732, ptr %633, align 8, !alias.scope !155, !noalias !158
  %733 = add nuw i64 %649, 1
  %734 = icmp eq i64 %733, %617
  br i1 %734, label %735, label %640, !llvm.loop !72

735:                                              ; preds = %640
  %736 = shl i64 %617, 6
  %737 = getelementptr inbounds nuw i8, ptr %618, i64 %736
  %738 = load i64, ptr %401, align 8, !alias.scope !138, !noalias !140
  %739 = add i64 %738, %617
  store i64 %739, ptr %401, align 8, !alias.scope !138, !noalias !140
  br label %740

740:                                              ; preds = %616, %735
  %741 = phi ptr [ %737, %735 ], [ %618, %616 ]
  %742 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %743 = getelementptr inbounds i8, ptr %741, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %742, ptr noundef nonnull align 1 dereferenceable(64) %743, i64 64, i1 false)
  %744 = load i32, ptr %12, align 64, !alias.scope !107, !noalias !104
  %745 = ptrtoint ptr %741 to i64
  %746 = sub i64 %392, %745
  %747 = icmp eq i32 %744, 0
  br label %748

748:                                              ; preds = %740, %389
  %749 = phi i64 [ %746, %740 ], [ %394, %389 ]
  %750 = phi i1 [ %747, %740 ], [ true, %389 ]
  %751 = phi ptr [ %741, %740 ], [ %390, %389 ]
  %752 = icmp ult ptr %751, %26
  tail call void @llvm.assume(i1 %752)
  %753 = icmp slt i64 %749, 257
  tail call void @llvm.assume(i1 %753)
  tail call void @llvm.assume(i1 %750)
  %754 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %754, ptr align 1 %751, i64 %749, i1 false)
  %755 = trunc i64 %749 to i32
  store i32 %755, ptr %12, align 64, !alias.scope !107, !noalias !104
  br label %756

756:                                              ; preds = %5, %18, %748
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH3_64bits_withSecret(ptr nocapture noundef readonly %0, i64 noundef range(i64 0, 4294967296) %1, ptr nocapture noundef nonnull readonly %2, i64 noundef %3) unnamed_addr #12 {
  %5 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 %1, 17
  br i1 %6, label %7, label %117

7:                                                ; preds = %4
  %8 = icmp samesign ugt i64 %1, 8
  br i1 %8, label %9, label %42, !prof !58

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %12 = load i64, ptr %11, align 1
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %14 = load i64, ptr %13, align 1
  %15 = xor i64 %14, %12
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = load i64, ptr %0, align 1
  %22 = xor i64 %15, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %24 = getelementptr inbounds i8, ptr %23, i64 -8
  %25 = load i64, ptr %24, align 1
  %26 = xor i64 %20, %25
  %27 = tail call noundef i64 @llvm.bswap.i64(i64 %22)
  %28 = add i64 %27, %1
  %29 = add i64 %28, %26
  %30 = zext i64 %22 to i128
  %31 = zext i64 %26 to i128
  %32 = mul nuw i128 %31, %30
  %33 = lshr i128 %32, 64
  %34 = xor i128 %33, %32
  %35 = trunc i128 %34 to i64
  %36 = add i64 %29, %35
  %37 = lshr i64 %36, 37
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, 1609587791953885689
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  br label %707

42:                                               ; preds = %7
  %43 = icmp samesign ugt i64 %1, 3
  br i1 %43, label %44, label %71, !prof !58

44:                                               ; preds = %42
  %45 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %45)
  %46 = load i32, ptr %0, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %48 = getelementptr inbounds i8, ptr %47, i64 -4
  %49 = load i32, ptr %48, align 1
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %51 = load i64, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %53 = load i64, ptr %52, align 1
  %54 = xor i64 %53, %51
  %55 = zext i32 %49 to i64
  %56 = zext i32 %46 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %55
  %59 = xor i64 %54, %58
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 49)
  %61 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 24)
  %62 = xor i64 %60, %61
  %63 = xor i64 %62, %59
  %64 = mul i64 %63, -6939452855193903323
  %65 = lshr i64 %64, 35
  %66 = add nuw nsw i64 %65, %1
  %67 = xor i64 %66, %64
  %68 = mul i64 %67, -6939452855193903323
  %69 = lshr i64 %68, 28
  %70 = xor i64 %69, %68
  br label %707

71:                                               ; preds = %42
  %72 = icmp eq i64 %1, 0
  br i1 %72, label %103, label %73

73:                                               ; preds = %71
  %74 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %74)
  %75 = load i8, ptr %0, align 1
  %76 = lshr i64 %1, 1
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr i8, ptr %0, i64 %1
  %80 = getelementptr i8, ptr %79, i64 -1
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %75 to i64
  %83 = shl nuw nsw i64 %82, 16
  %84 = zext i8 %78 to i64
  %85 = shl nuw nsw i64 %84, 24
  %86 = or disjoint i64 %85, %83
  %87 = zext i8 %81 to i64
  %88 = or disjoint i64 %86, %87
  %89 = shl nuw nsw i64 %1, 8
  %90 = or disjoint i64 %88, %89
  %91 = load i32, ptr %2, align 1
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %93 = load i32, ptr %92, align 1
  %94 = xor i32 %93, %91
  %95 = zext i32 %94 to i64
  %96 = xor i64 %90, %95
  %97 = mul i64 %96, -4417276706812531889
  %98 = lshr i64 %97, 29
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587929392839161
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %707

103:                                              ; preds = %71
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %105 = load i64, ptr %104, align 1
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %107 = load i64, ptr %106, align 1
  %108 = xor i64 %107, %105
  %109 = lshr i64 %108, 33
  %110 = xor i64 %109, %108
  %111 = mul i64 %110, -4417276706812531889
  %112 = lshr i64 %111, 29
  %113 = xor i64 %112, %111
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  br label %707

117:                                              ; preds = %4
  %118 = icmp samesign ult i64 %1, 129
  br i1 %118, label %119, label %276

119:                                              ; preds = %117
  %120 = mul i64 %1, -7046029288634856825
  %121 = icmp samesign ugt i64 %1, 32
  br i1 %121, label %122, label %236

122:                                              ; preds = %119
  %123 = icmp samesign ugt i64 %1, 64
  br i1 %123, label %124, label %199

124:                                              ; preds = %122
  %125 = icmp samesign ugt i64 %1, 96
  br i1 %125, label %126, label %162

126:                                              ; preds = %124
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %129 = load i64, ptr %127, align 1
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %131 = load i64, ptr %130, align 1
  %132 = load i64, ptr %128, align 1
  %133 = xor i64 %132, %129
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %135 = load i64, ptr %134, align 1
  %136 = xor i64 %135, %131
  %137 = zext i64 %133 to i128
  %138 = zext i64 %136 to i128
  %139 = mul nuw i128 %138, %137
  %140 = lshr i128 %139, 64
  %141 = xor i128 %140, %139
  %142 = trunc i128 %141 to i64
  %143 = add i64 %120, %142
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %145 = getelementptr inbounds i8, ptr %144, i64 -64
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %147 = load i64, ptr %145, align 1
  %148 = getelementptr inbounds i8, ptr %144, i64 -56
  %149 = load i64, ptr %148, align 1
  %150 = load i64, ptr %146, align 1
  %151 = xor i64 %150, %147
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %153 = load i64, ptr %152, align 1
  %154 = xor i64 %153, %149
  %155 = zext i64 %151 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %143, %160
  br label %162

162:                                              ; preds = %126, %124
  %163 = phi i64 [ %161, %126 ], [ %120, %124 ]
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %166 = load i64, ptr %164, align 1
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %168 = load i64, ptr %167, align 1
  %169 = load i64, ptr %165, align 1
  %170 = xor i64 %169, %166
  %171 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %172 = load i64, ptr %171, align 1
  %173 = xor i64 %172, %168
  %174 = zext i64 %170 to i128
  %175 = zext i64 %173 to i128
  %176 = mul nuw i128 %175, %174
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %163, %179
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %182 = getelementptr inbounds i8, ptr %181, i64 -48
  %183 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %184 = load i64, ptr %182, align 1
  %185 = getelementptr inbounds i8, ptr %181, i64 -40
  %186 = load i64, ptr %185, align 1
  %187 = load i64, ptr %183, align 1
  %188 = xor i64 %187, %184
  %189 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %190 = load i64, ptr %189, align 1
  %191 = xor i64 %190, %186
  %192 = zext i64 %188 to i128
  %193 = zext i64 %191 to i128
  %194 = mul nuw i128 %193, %192
  %195 = lshr i128 %194, 64
  %196 = xor i128 %195, %194
  %197 = trunc i128 %196 to i64
  %198 = add i64 %180, %197
  br label %199

199:                                              ; preds = %162, %122
  %200 = phi i64 [ %198, %162 ], [ %120, %122 ]
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %202 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %203 = load i64, ptr %201, align 1
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %205 = load i64, ptr %204, align 1
  %206 = load i64, ptr %202, align 1
  %207 = xor i64 %206, %203
  %208 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %209 = load i64, ptr %208, align 1
  %210 = xor i64 %209, %205
  %211 = zext i64 %207 to i128
  %212 = zext i64 %210 to i128
  %213 = mul nuw i128 %212, %211
  %214 = lshr i128 %213, 64
  %215 = xor i128 %214, %213
  %216 = trunc i128 %215 to i64
  %217 = add i64 %200, %216
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %219 = getelementptr inbounds i8, ptr %218, i64 -32
  %220 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %221 = load i64, ptr %219, align 1
  %222 = getelementptr inbounds i8, ptr %218, i64 -24
  %223 = load i64, ptr %222, align 1
  %224 = load i64, ptr %220, align 1
  %225 = xor i64 %224, %221
  %226 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %227 = load i64, ptr %226, align 1
  %228 = xor i64 %227, %223
  %229 = zext i64 %225 to i128
  %230 = zext i64 %228 to i128
  %231 = mul nuw i128 %230, %229
  %232 = lshr i128 %231, 64
  %233 = xor i128 %232, %231
  %234 = trunc i128 %233 to i64
  %235 = add i64 %217, %234
  br label %236

236:                                              ; preds = %119, %199
  %237 = phi i64 [ %235, %199 ], [ %120, %119 ]
  %238 = load i64, ptr %0, align 1
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %240 = load i64, ptr %239, align 1
  %241 = load i64, ptr %2, align 1
  %242 = xor i64 %241, %238
  %243 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %244 = load i64, ptr %243, align 1
  %245 = xor i64 %244, %240
  %246 = zext i64 %242 to i128
  %247 = zext i64 %245 to i128
  %248 = mul nuw i128 %247, %246
  %249 = lshr i128 %248, 64
  %250 = xor i128 %249, %248
  %251 = trunc i128 %250 to i64
  %252 = add i64 %237, %251
  %253 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %254 = getelementptr inbounds i8, ptr %253, i64 -16
  %255 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %256 = load i64, ptr %254, align 1
  %257 = getelementptr inbounds i8, ptr %253, i64 -8
  %258 = load i64, ptr %257, align 1
  %259 = load i64, ptr %255, align 1
  %260 = xor i64 %259, %256
  %261 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %262 = load i64, ptr %261, align 1
  %263 = xor i64 %262, %258
  %264 = zext i64 %260 to i128
  %265 = zext i64 %263 to i128
  %266 = mul nuw i128 %265, %264
  %267 = lshr i128 %266, 64
  %268 = xor i128 %267, %266
  %269 = trunc i128 %268 to i64
  %270 = add i64 %252, %269
  %271 = lshr i64 %270, 37
  %272 = xor i64 %271, %270
  %273 = mul i64 %272, 1609587791953885689
  %274 = lshr i64 %273, 32
  %275 = xor i64 %274, %273
  br label %707

276:                                              ; preds = %117
  %277 = icmp samesign ult i64 %1, 241
  br i1 %277, label %278, label %280

278:                                              ; preds = %276
  %279 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, ptr noundef nonnull %2, i64 noundef 0) #33
  br label %707

280:                                              ; preds = %276
  %281 = add i64 %3, -64
  %282 = lshr i64 %281, 3
  %283 = shl i64 %282, 6
  %284 = add nsw i64 %1, -1
  %285 = udiv i64 %284, %283
  %286 = urem i64 %284, %283
  %287 = icmp ugt i64 %283, %284
  br i1 %287, label %448, label %288

288:                                              ; preds = %280
  %289 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %290 = getelementptr inbounds i8, ptr %289, i64 -64
  %291 = load i64, ptr %290, align 1
  %292 = getelementptr inbounds i8, ptr %289, i64 -56
  %293 = load i64, ptr %292, align 1
  %294 = getelementptr inbounds i8, ptr %289, i64 -48
  %295 = load i64, ptr %294, align 1
  %296 = getelementptr inbounds i8, ptr %289, i64 -40
  %297 = load i64, ptr %296, align 1
  %298 = getelementptr inbounds i8, ptr %289, i64 -32
  %299 = load i64, ptr %298, align 1
  %300 = getelementptr inbounds i8, ptr %289, i64 -24
  %301 = load i64, ptr %300, align 1
  %302 = getelementptr inbounds i8, ptr %289, i64 -16
  %303 = load i64, ptr %302, align 1
  %304 = getelementptr inbounds i8, ptr %289, i64 -8
  %305 = load i64, ptr %304, align 1
  br label %306

306:                                              ; preds = %288, %413
  %307 = phi i64 [ 2654435761, %288 ], [ %445, %413 ]
  %308 = phi i64 [ 2870177450012600261, %288 ], [ %441, %413 ]
  %309 = phi i64 [ 2246822519, %288 ], [ %437, %413 ]
  %310 = phi i64 [ -8796714831421723037, %288 ], [ %433, %413 ]
  %311 = phi i64 [ 1609587929392839161, %288 ], [ %429, %413 ]
  %312 = phi i64 [ -4417276706812531889, %288 ], [ %425, %413 ]
  %313 = phi i64 [ -7046029288634856825, %288 ], [ %421, %413 ]
  %314 = phi i64 [ 3266489917, %288 ], [ %417, %413 ]
  %315 = phi i64 [ 0, %288 ], [ %446, %413 ]
  %316 = mul i64 %315, %283
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 %316
  br label %318

318:                                              ; preds = %306, %318
  %319 = phi i64 [ %307, %306 ], [ %410, %318 ]
  %320 = phi i64 [ %308, %306 ], [ %406, %318 ]
  %321 = phi i64 [ %309, %306 ], [ %390, %318 ]
  %322 = phi i64 [ %310, %306 ], [ %386, %318 ]
  %323 = phi i64 [ %311, %306 ], [ %370, %318 ]
  %324 = phi i64 [ %312, %306 ], [ %366, %318 ]
  %325 = phi i64 [ %313, %306 ], [ %350, %318 ]
  %326 = phi i64 [ %314, %306 ], [ %346, %318 ]
  %327 = phi i64 [ 0, %306 ], [ %411, %318 ]
  %328 = shl i64 %327, 6
  %329 = getelementptr inbounds nuw i8, ptr %317, i64 %328
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %330, i32 0, i32 3, i32 1)
  %331 = shl i64 %327, 3
  %332 = getelementptr inbounds nuw i8, ptr %2, i64 %331
  %333 = load i64, ptr %329, align 1
  %334 = load i64, ptr %332, align 1
  %335 = xor i64 %334, %333
  %336 = add i64 %325, %333
  %337 = lshr i64 %335, 32
  %338 = and i64 %335, 4294967295
  %339 = mul nuw i64 %338, %337
  %340 = add i64 %339, %326
  %341 = getelementptr inbounds nuw i8, ptr %329, i64 8
  %342 = load i64, ptr %341, align 1
  %343 = getelementptr inbounds nuw i8, ptr %332, i64 8
  %344 = load i64, ptr %343, align 1
  %345 = xor i64 %344, %342
  %346 = add i64 %340, %342
  %347 = lshr i64 %345, 32
  %348 = and i64 %345, 4294967295
  %349 = mul nuw i64 %348, %347
  %350 = add i64 %349, %336
  %351 = getelementptr inbounds nuw i8, ptr %329, i64 16
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %332, i64 16
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = add i64 %323, %352
  %357 = lshr i64 %355, 32
  %358 = and i64 %355, 4294967295
  %359 = mul nuw i64 %358, %357
  %360 = add i64 %359, %324
  %361 = getelementptr inbounds nuw i8, ptr %329, i64 24
  %362 = load i64, ptr %361, align 1
  %363 = getelementptr inbounds nuw i8, ptr %332, i64 24
  %364 = load i64, ptr %363, align 1
  %365 = xor i64 %364, %362
  %366 = add i64 %360, %362
  %367 = lshr i64 %365, 32
  %368 = and i64 %365, 4294967295
  %369 = mul nuw i64 %368, %367
  %370 = add i64 %369, %356
  %371 = getelementptr inbounds nuw i8, ptr %329, i64 32
  %372 = load i64, ptr %371, align 1
  %373 = getelementptr inbounds nuw i8, ptr %332, i64 32
  %374 = load i64, ptr %373, align 1
  %375 = xor i64 %374, %372
  %376 = add i64 %321, %372
  %377 = lshr i64 %375, 32
  %378 = and i64 %375, 4294967295
  %379 = mul nuw i64 %378, %377
  %380 = add i64 %379, %322
  %381 = getelementptr inbounds nuw i8, ptr %329, i64 40
  %382 = load i64, ptr %381, align 1
  %383 = getelementptr inbounds nuw i8, ptr %332, i64 40
  %384 = load i64, ptr %383, align 1
  %385 = xor i64 %384, %382
  %386 = add i64 %380, %382
  %387 = lshr i64 %385, 32
  %388 = and i64 %385, 4294967295
  %389 = mul nuw i64 %388, %387
  %390 = add i64 %389, %376
  %391 = getelementptr inbounds nuw i8, ptr %329, i64 48
  %392 = load i64, ptr %391, align 1
  %393 = getelementptr inbounds nuw i8, ptr %332, i64 48
  %394 = load i64, ptr %393, align 1
  %395 = xor i64 %394, %392
  %396 = add i64 %319, %392
  %397 = lshr i64 %395, 32
  %398 = and i64 %395, 4294967295
  %399 = mul nuw i64 %398, %397
  %400 = add i64 %399, %320
  %401 = getelementptr inbounds nuw i8, ptr %329, i64 56
  %402 = load i64, ptr %401, align 1
  %403 = getelementptr inbounds nuw i8, ptr %332, i64 56
  %404 = load i64, ptr %403, align 1
  %405 = xor i64 %404, %402
  %406 = add i64 %400, %402
  %407 = lshr i64 %405, 32
  %408 = and i64 %405, 4294967295
  %409 = mul nuw i64 %408, %407
  %410 = add i64 %409, %396
  %411 = add nuw nsw i64 %327, 1
  %412 = icmp eq i64 %411, %282
  br i1 %412, label %413, label %318, !llvm.loop !72

413:                                              ; preds = %318
  %414 = lshr i64 %346, 47
  %415 = xor i64 %291, %414
  %416 = xor i64 %415, %346
  %417 = mul i64 %416, 2654435761
  %418 = lshr i64 %350, 47
  %419 = xor i64 %293, %418
  %420 = xor i64 %419, %350
  %421 = mul i64 %420, 2654435761
  %422 = lshr i64 %366, 47
  %423 = xor i64 %295, %422
  %424 = xor i64 %423, %366
  %425 = mul i64 %424, 2654435761
  %426 = lshr i64 %370, 47
  %427 = xor i64 %297, %426
  %428 = xor i64 %427, %370
  %429 = mul i64 %428, 2654435761
  %430 = lshr i64 %386, 47
  %431 = xor i64 %299, %430
  %432 = xor i64 %431, %386
  %433 = mul i64 %432, 2654435761
  %434 = lshr i64 %390, 47
  %435 = xor i64 %301, %434
  %436 = xor i64 %435, %390
  %437 = mul i64 %436, 2654435761
  %438 = lshr i64 %406, 47
  %439 = xor i64 %303, %438
  %440 = xor i64 %439, %406
  %441 = mul i64 %440, 2654435761
  %442 = lshr i64 %410, 47
  %443 = xor i64 %305, %442
  %444 = xor i64 %443, %410
  %445 = mul i64 %444, 2654435761
  %446 = add nuw i64 %315, 1
  %447 = icmp ult i64 %446, %285
  br i1 %447, label %306, label %448, !llvm.loop !73

448:                                              ; preds = %413, %280
  %449 = phi i64 [ 2654435761, %280 ], [ %445, %413 ]
  %450 = phi i64 [ 2870177450012600261, %280 ], [ %441, %413 ]
  %451 = phi i64 [ 2246822519, %280 ], [ %437, %413 ]
  %452 = phi i64 [ -8796714831421723037, %280 ], [ %433, %413 ]
  %453 = phi i64 [ 1609587929392839161, %280 ], [ %429, %413 ]
  %454 = phi i64 [ -4417276706812531889, %280 ], [ %425, %413 ]
  %455 = phi i64 [ -7046029288634856825, %280 ], [ %421, %413 ]
  %456 = phi i64 [ 3266489917, %280 ], [ %417, %413 ]
  %457 = mul i64 %285, %283
  %458 = lshr i64 %286, 6
  %459 = lshr i64 %3, 3
  %460 = icmp samesign ule i64 %458, %459
  tail call void @llvm.assume(i1 %460)
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 %457
  %462 = icmp ult i64 %286, 64
  br i1 %462, label %558, label %463

463:                                              ; preds = %448, %463
  %464 = phi i64 [ %555, %463 ], [ %449, %448 ]
  %465 = phi i64 [ %551, %463 ], [ %450, %448 ]
  %466 = phi i64 [ %535, %463 ], [ %451, %448 ]
  %467 = phi i64 [ %531, %463 ], [ %452, %448 ]
  %468 = phi i64 [ %515, %463 ], [ %453, %448 ]
  %469 = phi i64 [ %511, %463 ], [ %454, %448 ]
  %470 = phi i64 [ %495, %463 ], [ %455, %448 ]
  %471 = phi i64 [ %491, %463 ], [ %456, %448 ]
  %472 = phi i64 [ %556, %463 ], [ 0, %448 ]
  %473 = shl i64 %472, 6
  %474 = getelementptr inbounds nuw i8, ptr %461, i64 %473
  %475 = getelementptr inbounds nuw i8, ptr %474, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %475, i32 0, i32 3, i32 1)
  %476 = shl i64 %472, 3
  %477 = getelementptr inbounds nuw i8, ptr %2, i64 %476
  %478 = load i64, ptr %474, align 1
  %479 = load i64, ptr %477, align 1
  %480 = xor i64 %479, %478
  %481 = add i64 %470, %478
  %482 = lshr i64 %480, 32
  %483 = and i64 %480, 4294967295
  %484 = mul nuw i64 %483, %482
  %485 = add i64 %484, %471
  %486 = getelementptr inbounds nuw i8, ptr %474, i64 8
  %487 = load i64, ptr %486, align 1
  %488 = getelementptr inbounds nuw i8, ptr %477, i64 8
  %489 = load i64, ptr %488, align 1
  %490 = xor i64 %489, %487
  %491 = add i64 %485, %487
  %492 = lshr i64 %490, 32
  %493 = and i64 %490, 4294967295
  %494 = mul nuw i64 %493, %492
  %495 = add i64 %494, %481
  %496 = getelementptr inbounds nuw i8, ptr %474, i64 16
  %497 = load i64, ptr %496, align 1
  %498 = getelementptr inbounds nuw i8, ptr %477, i64 16
  %499 = load i64, ptr %498, align 1
  %500 = xor i64 %499, %497
  %501 = add i64 %468, %497
  %502 = lshr i64 %500, 32
  %503 = and i64 %500, 4294967295
  %504 = mul nuw i64 %503, %502
  %505 = add i64 %504, %469
  %506 = getelementptr inbounds nuw i8, ptr %474, i64 24
  %507 = load i64, ptr %506, align 1
  %508 = getelementptr inbounds nuw i8, ptr %477, i64 24
  %509 = load i64, ptr %508, align 1
  %510 = xor i64 %509, %507
  %511 = add i64 %505, %507
  %512 = lshr i64 %510, 32
  %513 = and i64 %510, 4294967295
  %514 = mul nuw i64 %513, %512
  %515 = add i64 %514, %501
  %516 = getelementptr inbounds nuw i8, ptr %474, i64 32
  %517 = load i64, ptr %516, align 1
  %518 = getelementptr inbounds nuw i8, ptr %477, i64 32
  %519 = load i64, ptr %518, align 1
  %520 = xor i64 %519, %517
  %521 = add i64 %466, %517
  %522 = lshr i64 %520, 32
  %523 = and i64 %520, 4294967295
  %524 = mul nuw i64 %523, %522
  %525 = add i64 %524, %467
  %526 = getelementptr inbounds nuw i8, ptr %474, i64 40
  %527 = load i64, ptr %526, align 1
  %528 = getelementptr inbounds nuw i8, ptr %477, i64 40
  %529 = load i64, ptr %528, align 1
  %530 = xor i64 %529, %527
  %531 = add i64 %525, %527
  %532 = lshr i64 %530, 32
  %533 = and i64 %530, 4294967295
  %534 = mul nuw i64 %533, %532
  %535 = add i64 %534, %521
  %536 = getelementptr inbounds nuw i8, ptr %474, i64 48
  %537 = load i64, ptr %536, align 1
  %538 = getelementptr inbounds nuw i8, ptr %477, i64 48
  %539 = load i64, ptr %538, align 1
  %540 = xor i64 %539, %537
  %541 = add i64 %464, %537
  %542 = lshr i64 %540, 32
  %543 = and i64 %540, 4294967295
  %544 = mul nuw i64 %543, %542
  %545 = add i64 %544, %465
  %546 = getelementptr inbounds nuw i8, ptr %474, i64 56
  %547 = load i64, ptr %546, align 1
  %548 = getelementptr inbounds nuw i8, ptr %477, i64 56
  %549 = load i64, ptr %548, align 1
  %550 = xor i64 %549, %547
  %551 = add i64 %545, %547
  %552 = lshr i64 %550, 32
  %553 = and i64 %550, 4294967295
  %554 = mul nuw i64 %553, %552
  %555 = add i64 %554, %541
  %556 = add nuw nsw i64 %472, 1
  %557 = icmp samesign ult i64 %556, %458
  br i1 %557, label %463, label %558, !llvm.loop !72

558:                                              ; preds = %463, %448
  %559 = phi i64 [ %449, %448 ], [ %555, %463 ]
  %560 = phi i64 [ %450, %448 ], [ %551, %463 ]
  %561 = phi i64 [ %451, %448 ], [ %535, %463 ]
  %562 = phi i64 [ %452, %448 ], [ %531, %463 ]
  %563 = phi i64 [ %453, %448 ], [ %515, %463 ]
  %564 = phi i64 [ %454, %448 ], [ %511, %463 ]
  %565 = phi i64 [ %455, %448 ], [ %495, %463 ]
  %566 = phi i64 [ %456, %448 ], [ %491, %463 ]
  %567 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %568 = getelementptr inbounds i8, ptr %567, i64 -64
  %569 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %570 = getelementptr inbounds i8, ptr %569, i64 -71
  %571 = load i64, ptr %568, align 1
  %572 = load i64, ptr %570, align 1
  %573 = xor i64 %572, %571
  %574 = add i64 %565, %571
  %575 = lshr i64 %573, 32
  %576 = and i64 %573, 4294967295
  %577 = mul nuw i64 %576, %575
  %578 = add i64 %577, %566
  %579 = getelementptr inbounds i8, ptr %567, i64 -56
  %580 = load i64, ptr %579, align 1
  %581 = getelementptr inbounds i8, ptr %569, i64 -63
  %582 = load i64, ptr %581, align 1
  %583 = xor i64 %582, %580
  %584 = add i64 %578, %580
  %585 = lshr i64 %583, 32
  %586 = and i64 %583, 4294967295
  %587 = mul nuw i64 %586, %585
  %588 = add i64 %587, %574
  %589 = getelementptr inbounds i8, ptr %567, i64 -48
  %590 = load i64, ptr %589, align 1
  %591 = getelementptr inbounds i8, ptr %569, i64 -55
  %592 = load i64, ptr %591, align 1
  %593 = xor i64 %592, %590
  %594 = add i64 %563, %590
  %595 = lshr i64 %593, 32
  %596 = and i64 %593, 4294967295
  %597 = mul nuw i64 %596, %595
  %598 = add i64 %597, %564
  %599 = getelementptr inbounds i8, ptr %567, i64 -40
  %600 = load i64, ptr %599, align 1
  %601 = getelementptr inbounds i8, ptr %569, i64 -47
  %602 = load i64, ptr %601, align 1
  %603 = xor i64 %602, %600
  %604 = add i64 %598, %600
  %605 = lshr i64 %603, 32
  %606 = and i64 %603, 4294967295
  %607 = mul nuw i64 %606, %605
  %608 = add i64 %607, %594
  %609 = getelementptr inbounds i8, ptr %567, i64 -32
  %610 = load i64, ptr %609, align 1
  %611 = getelementptr inbounds i8, ptr %569, i64 -39
  %612 = load i64, ptr %611, align 1
  %613 = xor i64 %612, %610
  %614 = add i64 %561, %610
  %615 = lshr i64 %613, 32
  %616 = and i64 %613, 4294967295
  %617 = mul nuw i64 %616, %615
  %618 = add i64 %617, %562
  %619 = getelementptr inbounds i8, ptr %567, i64 -24
  %620 = load i64, ptr %619, align 1
  %621 = getelementptr inbounds i8, ptr %569, i64 -31
  %622 = load i64, ptr %621, align 1
  %623 = xor i64 %622, %620
  %624 = add i64 %618, %620
  %625 = lshr i64 %623, 32
  %626 = and i64 %623, 4294967295
  %627 = mul nuw i64 %626, %625
  %628 = add i64 %627, %614
  %629 = getelementptr inbounds i8, ptr %567, i64 -16
  %630 = load i64, ptr %629, align 1
  %631 = getelementptr inbounds i8, ptr %569, i64 -23
  %632 = load i64, ptr %631, align 1
  %633 = xor i64 %632, %630
  %634 = add i64 %559, %630
  %635 = lshr i64 %633, 32
  %636 = and i64 %633, 4294967295
  %637 = mul nuw i64 %636, %635
  %638 = add i64 %637, %560
  %639 = getelementptr inbounds i8, ptr %567, i64 -8
  %640 = load i64, ptr %639, align 1
  %641 = getelementptr inbounds i8, ptr %569, i64 -15
  %642 = load i64, ptr %641, align 1
  %643 = xor i64 %642, %640
  %644 = add i64 %638, %640
  %645 = lshr i64 %643, 32
  %646 = and i64 %643, 4294967295
  %647 = mul nuw i64 %646, %645
  %648 = add i64 %647, %634
  %649 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %650 = mul i64 %1, -7046029288634856825
  %651 = load i64, ptr %649, align 1, !alias.scope !161, !noalias !166
  %652 = xor i64 %651, %584
  %653 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %654 = load i64, ptr %653, align 1, !alias.scope !161, !noalias !166
  %655 = xor i64 %654, %588
  %656 = zext i64 %652 to i128
  %657 = zext i64 %655 to i128
  %658 = mul nuw i128 %657, %656
  %659 = lshr i128 %658, 64
  %660 = xor i128 %659, %658
  %661 = trunc i128 %660 to i64
  %662 = add i64 %650, %661
  %663 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %664 = load i64, ptr %663, align 1, !alias.scope !161, !noalias !166
  %665 = xor i64 %664, %604
  %666 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %667 = load i64, ptr %666, align 1, !alias.scope !161, !noalias !166
  %668 = xor i64 %667, %608
  %669 = zext i64 %665 to i128
  %670 = zext i64 %668 to i128
  %671 = mul nuw i128 %670, %669
  %672 = lshr i128 %671, 64
  %673 = xor i128 %672, %671
  %674 = trunc i128 %673 to i64
  %675 = add i64 %662, %674
  %676 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %677 = load i64, ptr %676, align 1, !alias.scope !161, !noalias !166
  %678 = xor i64 %677, %624
  %679 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %680 = load i64, ptr %679, align 1, !alias.scope !161, !noalias !166
  %681 = xor i64 %680, %628
  %682 = zext i64 %678 to i128
  %683 = zext i64 %681 to i128
  %684 = mul nuw i128 %683, %682
  %685 = lshr i128 %684, 64
  %686 = xor i128 %685, %684
  %687 = trunc i128 %686 to i64
  %688 = add i64 %675, %687
  %689 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %690 = load i64, ptr %689, align 1, !alias.scope !161, !noalias !166
  %691 = xor i64 %690, %644
  %692 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %693 = load i64, ptr %692, align 1, !alias.scope !161, !noalias !166
  %694 = xor i64 %693, %648
  %695 = zext i64 %691 to i128
  %696 = zext i64 %694 to i128
  %697 = mul nuw i128 %696, %695
  %698 = lshr i128 %697, 64
  %699 = xor i128 %698, %697
  %700 = trunc i128 %699 to i64
  %701 = add i64 %688, %700
  %702 = lshr i64 %701, 37
  %703 = xor i64 %702, %701
  %704 = mul i64 %703, 1609587791953885689
  %705 = lshr i64 %704, 32
  %706 = xor i64 %705, %704
  br label %707

707:                                              ; preds = %103, %73, %44, %9, %236, %278, %558
  %708 = phi i64 [ %275, %236 ], [ %279, %278 ], [ %706, %558 ], [ %41, %9 ], [ %70, %44 ], [ %102, %73 ], [ %116, %103 ]
  ret i64 %708
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef readonly %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %2) unnamed_addr #20 {
  %4 = icmp samesign ult i64 %1, 17
  br i1 %4, label %5, label %162

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %51

7:                                                ; preds = %5
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = sub i64 6455697860950631241, %2
  %10 = add i64 %2, -4466874330221494952
  %11 = load i64, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = xor i64 %11, %9
  %16 = xor i64 %15, %14
  %17 = zext i64 %16 to i128
  %18 = mul nuw i128 %17, 11400714785074694791
  %19 = trunc i128 %18 to i64
  %20 = lshr i128 %18, 64
  %21 = trunc nuw i128 %20 to i64
  %22 = shl nuw nsw i64 %1, 54
  %23 = add nsw i64 %22, -18014398509481984
  %24 = add i64 %23, %19
  %25 = xor i64 %14, %10
  %26 = and i64 %25, 4294967295
  %27 = mul nuw i64 %26, 2246822518
  %28 = add i64 %27, %25
  %29 = add i64 %28, %21
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %29)
  %31 = xor i64 %30, %24
  %32 = zext i64 %31 to i128
  %33 = mul nuw i128 %32, 14029467366897019727
  %34 = trunc i128 %33 to i64
  %35 = lshr i128 %33, 64
  %36 = trunc nuw i128 %35 to i64
  %37 = mul i64 %29, -4417276706812531889
  %38 = add i64 %37, %36
  %39 = lshr i64 %34, 37
  %40 = xor i64 %39, %34
  %41 = mul i64 %40, 1609587791953885689
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  %44 = lshr i64 %38, 37
  %45 = xor i64 %44, %38
  %46 = mul i64 %45, 1609587791953885689
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  %49 = insertvalue { i64, i64 } poison, i64 %43, 0
  %50 = insertvalue { i64, i64 } %49, i64 %48, 1
  br label %345

51:                                               ; preds = %5
  %52 = icmp samesign ugt i64 %1, 3
  br i1 %52, label %53, label %94

53:                                               ; preds = %51
  %54 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %54)
  %55 = trunc i64 %2 to i32
  %56 = tail call noundef i32 @llvm.bswap.i32(i32 %55)
  %57 = zext i32 %56 to i64
  %58 = shl nuw i64 %57, 32
  %59 = xor i64 %58, %2
  %60 = load i32, ptr %0, align 1
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %62 = getelementptr inbounds i8, ptr %61, i64 -4
  %63 = load i32, ptr %62, align 1
  %64 = zext i32 %60 to i64
  %65 = zext i32 %63 to i64
  %66 = shl nuw i64 %65, 32
  %67 = or disjoint i64 %66, %64
  %68 = add i64 %59, -4255862940314790740
  %69 = xor i64 %67, %68
  %70 = shl nuw nsw i64 %1, 2
  %71 = add nuw nsw i64 %70, -7046029288634856825
  %72 = zext i64 %69 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %72, %73
  %75 = trunc i128 %74 to i64
  %76 = lshr i128 %74, 64
  %77 = trunc nuw i128 %76 to i64
  %78 = shl i64 %75, 1
  %79 = add i64 %78, %77
  %80 = lshr i64 %79, 3
  %81 = xor i64 %80, %75
  %82 = lshr i64 %81, 35
  %83 = xor i64 %82, %81
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 28
  %86 = xor i64 %85, %84
  %87 = lshr i64 %79, 37
  %88 = xor i64 %87, %79
  %89 = mul i64 %88, 1609587791953885689
  %90 = lshr i64 %89, 32
  %91 = xor i64 %90, %89
  %92 = insertvalue { i64, i64 } poison, i64 %86, 0
  %93 = insertvalue { i64, i64 } %92, i64 %91, 1
  br label %345

94:                                               ; preds = %51
  %95 = icmp eq i64 %1, 0
  br i1 %95, label %141, label %96

96:                                               ; preds = %94
  %97 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %97)
  %98 = load i8, ptr %0, align 1
  %99 = lshr i64 %1, 1
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr i8, ptr %0, i64 %1
  %103 = getelementptr i8, ptr %102, i64 -1
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %98 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = zext i8 %101 to i32
  %108 = shl nuw i32 %107, 24
  %109 = or disjoint i32 %108, %106
  %110 = zext i8 %104 to i32
  %111 = or disjoint i32 %109, %110
  %112 = trunc nuw nsw i64 %1 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = or disjoint i32 %111, %113
  %115 = tail call noundef i32 @llvm.bswap.i32(i32 %114)
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = add i64 %2, 2267503259
  %118 = sub i64 808198283, %2
  %119 = zext i32 %114 to i64
  %120 = zext nneg i32 %116 to i64
  %121 = lshr i64 %117, 33
  %122 = xor i64 %121, %119
  %123 = xor i64 %122, %117
  %124 = mul i64 %123, -4417276706812531889
  %125 = lshr i64 %124, 29
  %126 = xor i64 %125, %124
  %127 = mul i64 %126, 1609587929392839161
  %128 = lshr i64 %127, 32
  %129 = xor i64 %128, %127
  %130 = lshr i64 %118, 33
  %131 = xor i64 %130, %120
  %132 = xor i64 %131, %118
  %133 = mul i64 %132, -4417276706812531889
  %134 = lshr i64 %133, 29
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, 1609587929392839161
  %137 = lshr i64 %136, 32
  %138 = xor i64 %137, %136
  %139 = insertvalue { i64, i64 } poison, i64 %129, 0
  %140 = insertvalue { i64, i64 } %139, i64 %138, 1
  br label %345

141:                                              ; preds = %94
  %142 = xor i64 %2, 7507096552062056628
  %143 = lshr i64 %142, 33
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, -4417276706812531889
  %146 = lshr i64 %145, 29
  %147 = xor i64 %146, %145
  %148 = mul i64 %147, 1609587929392839161
  %149 = lshr i64 %148, 32
  %150 = xor i64 %149, %148
  %151 = xor i64 %2, -7613947547284439735
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  %160 = insertvalue { i64, i64 } poison, i64 %150, 0
  %161 = insertvalue { i64, i64 } %160, i64 %159, 1
  br label %345

162:                                              ; preds = %3
  %163 = icmp samesign ult i64 %1, 129
  br i1 %163, label %164, label %339

164:                                              ; preds = %162
  %165 = mul i64 %1, -7046029288634856825
  %166 = icmp samesign ugt i64 %1, 32
  br i1 %166, label %167, label %282

167:                                              ; preds = %164
  %168 = icmp samesign ugt i64 %1, 64
  br i1 %168, label %169, label %244

169:                                              ; preds = %167
  %170 = icmp samesign ugt i64 %1, 96
  br i1 %170, label %171, label %206

171:                                              ; preds = %169
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %174 = getelementptr inbounds i8, ptr %173, i64 -64
  %175 = load i64, ptr %172, align 1
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %177 = load i64, ptr %176, align 1
  %178 = add i64 %2, 4554437623014685352
  %179 = xor i64 %175, %178
  %180 = sub i64 2111919702937427193, %2
  %181 = xor i64 %177, %180
  %182 = zext i64 %179 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %165, %187
  %189 = load i64, ptr %174, align 1
  %190 = getelementptr inbounds i8, ptr %173, i64 -56
  %191 = load i64, ptr %190, align 1
  %192 = add i64 %191, %189
  %193 = xor i64 %188, %192
  %194 = add i64 %2, 3556072174620004746
  %195 = xor i64 %189, %194
  %196 = sub i64 7238261902898274248, %2
  %197 = xor i64 %191, %196
  %198 = zext i64 %195 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %177, %175
  %205 = xor i64 %204, %203
  br label %206

206:                                              ; preds = %171, %169
  %207 = phi i64 [ %193, %171 ], [ %165, %169 ]
  %208 = phi i64 [ %205, %171 ], [ 0, %169 ]
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %211 = getelementptr inbounds i8, ptr %210, i64 -48
  %212 = load i64, ptr %209, align 1
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %214 = load i64, ptr %213, align 1
  %215 = add i64 %2, -3818837453329782724
  %216 = xor i64 %212, %215
  %217 = sub i64 -6688317018830679928, %2
  %218 = xor i64 %214, %217
  %219 = zext i64 %216 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %207, %224
  %226 = load i64, ptr %211, align 1
  %227 = getelementptr inbounds i8, ptr %210, i64 -40
  %228 = load i64, ptr %227, align 1
  %229 = add i64 %228, %226
  %230 = xor i64 %225, %229
  %231 = add i64 %2, 5690594596133299313
  %232 = xor i64 %226, %231
  %233 = sub i64 -2833645246901970632, %2
  %234 = xor i64 %228, %233
  %235 = zext i64 %232 to i128
  %236 = zext i64 %234 to i128
  %237 = mul nuw i128 %236, %235
  %238 = lshr i128 %237, 64
  %239 = xor i128 %238, %237
  %240 = trunc i128 %239 to i64
  %241 = add i64 %208, %240
  %242 = add i64 %214, %212
  %243 = xor i64 %241, %242
  br label %244

244:                                              ; preds = %206, %167
  %245 = phi i64 [ %230, %206 ], [ %165, %167 ]
  %246 = phi i64 [ %243, %206 ], [ 0, %167 ]
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %249 = getelementptr inbounds i8, ptr %248, i64 -32
  %250 = load i64, ptr %247, align 1
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %252 = load i64, ptr %251, align 1
  %253 = add i64 %2, 8711581037947681227
  %254 = xor i64 %250, %253
  %255 = sub i64 2410270004345854594, %2
  %256 = xor i64 %252, %255
  %257 = zext i64 %254 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %245, %262
  %264 = load i64, ptr %249, align 1
  %265 = getelementptr inbounds i8, ptr %248, i64 -24
  %266 = load i64, ptr %265, align 1
  %267 = add i64 %266, %264
  %268 = xor i64 %263, %267
  %269 = add i64 %2, -8204357891075471176
  %270 = xor i64 %264, %269
  %271 = sub i64 5487137525590930912, %2
  %272 = xor i64 %266, %271
  %273 = zext i64 %270 to i128
  %274 = zext i64 %272 to i128
  %275 = mul nuw i128 %274, %273
  %276 = lshr i128 %275, 64
  %277 = xor i128 %276, %275
  %278 = trunc i128 %277 to i64
  %279 = add i64 %246, %278
  %280 = add i64 %252, %250
  %281 = xor i64 %279, %280
  br label %282

282:                                              ; preds = %164, %244
  %283 = phi i64 [ %268, %244 ], [ %165, %164 ]
  %284 = phi i64 [ %281, %244 ], [ 0, %164 ]
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %286 = getelementptr inbounds i8, ptr %285, i64 -16
  %287 = load i64, ptr %0, align 1
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %289 = load i64, ptr %288, align 1
  %290 = add i64 %2, -4734510112055689544
  %291 = xor i64 %287, %290
  %292 = sub i64 2066345149520216444, %2
  %293 = xor i64 %289, %292
  %294 = zext i64 %291 to i128
  %295 = zext i64 %293 to i128
  %296 = mul nuw i128 %295, %294
  %297 = lshr i128 %296, 64
  %298 = xor i128 %297, %296
  %299 = trunc i128 %298 to i64
  %300 = add i64 %283, %299
  %301 = load i64, ptr %286, align 1
  %302 = getelementptr inbounds i8, ptr %285, i64 -8
  %303 = load i64, ptr %302, align 1
  %304 = add i64 %303, %301
  %305 = xor i64 %300, %304
  %306 = add i64 %2, -2623469361688619810
  %307 = xor i64 %301, %306
  %308 = sub i64 2262974939099578482, %2
  %309 = xor i64 %303, %308
  %310 = zext i64 %307 to i128
  %311 = zext i64 %309 to i128
  %312 = mul nuw i128 %311, %310
  %313 = lshr i128 %312, 64
  %314 = xor i128 %313, %312
  %315 = trunc i128 %314 to i64
  %316 = add i64 %284, %315
  %317 = add i64 %289, %287
  %318 = xor i64 %316, %317
  %319 = add i64 %318, %305
  %320 = mul i64 %305, -7046029288634856825
  %321 = mul i64 %318, -8796714831421723037
  %322 = sub i64 %1, %2
  %323 = mul i64 %322, -4417276706812531889
  %324 = add i64 %320, %323
  %325 = add i64 %324, %321
  %326 = lshr i64 %319, 37
  %327 = xor i64 %326, %319
  %328 = mul i64 %327, 1609587791953885689
  %329 = lshr i64 %328, 32
  %330 = xor i64 %329, %328
  %331 = lshr i64 %325, 37
  %332 = xor i64 %331, %325
  %333 = mul i64 %332, 1609587791953885689
  %334 = lshr i64 %333, 32
  %335 = xor i64 %334, %333
  %336 = sub i64 0, %335
  %337 = insertvalue { i64, i64 } poison, i64 %330, 0
  %338 = insertvalue { i64, i64 } %337, i64 %336, 1
  br label %345

339:                                              ; preds = %162
  %340 = icmp samesign ult i64 %1, 241
  br i1 %340, label %341, label %343

341:                                              ; preds = %339
  %342 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #33
  br label %345

343:                                              ; preds = %339
  %344 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %2) #29
  br label %345

345:                                              ; preds = %141, %96, %53, %7, %282, %341, %343
  %346 = phi { i64, i64 } [ %338, %282 ], [ %342, %341 ], [ %344, %343 ], [ %50, %7 ], [ %93, %53 ], [ %140, %96 ], [ %161, %141 ]
  ret { i64, i64 } %346
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecretandSeed(ptr nocapture noundef readonly %0, i64 noundef range(i64 0, 4294967296) %1, ptr nocapture noundef nonnull readonly %2, i64 noundef range(i64 147, 193) %3, i64 noundef %4) unnamed_addr #20 {
  %6 = alloca [8 x i64], align 8
  %7 = icmp samesign ult i64 %1, 241
  br i1 %7, label %8, label %346

8:                                                ; preds = %5
  %9 = icmp samesign ult i64 %1, 17
  br i1 %9, label %10, label %167

10:                                               ; preds = %8
  %11 = icmp samesign ugt i64 %1, 8
  br i1 %11, label %12, label %56

12:                                               ; preds = %10
  %13 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %13)
  %14 = sub i64 6455697860950631241, %4
  %15 = add i64 %4, -4466874330221494952
  %16 = load i64, ptr %0, align 1
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %18 = getelementptr inbounds i8, ptr %17, i64 -8
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %16, %14
  %21 = xor i64 %20, %19
  %22 = zext i64 %21 to i128
  %23 = mul nuw i128 %22, 11400714785074694791
  %24 = trunc i128 %23 to i64
  %25 = lshr i128 %23, 64
  %26 = trunc nuw i128 %25 to i64
  %27 = shl nuw nsw i64 %1, 54
  %28 = add nsw i64 %27, -18014398509481984
  %29 = add i64 %28, %24
  %30 = xor i64 %19, %15
  %31 = and i64 %30, 4294967295
  %32 = mul nuw i64 %31, 2246822518
  %33 = add i64 %32, %30
  %34 = add i64 %33, %26
  %35 = tail call noundef i64 @llvm.bswap.i64(i64 %34)
  %36 = xor i64 %35, %29
  %37 = zext i64 %36 to i128
  %38 = mul nuw i128 %37, 14029467366897019727
  %39 = trunc i128 %38 to i64
  %40 = lshr i128 %38, 64
  %41 = trunc nuw i128 %40 to i64
  %42 = mul i64 %34, -4417276706812531889
  %43 = add i64 %42, %41
  %44 = lshr i64 %39, 37
  %45 = xor i64 %44, %39
  %46 = mul i64 %45, 1609587791953885689
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  %49 = lshr i64 %43, 37
  %50 = xor i64 %49, %43
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  %54 = insertvalue { i64, i64 } poison, i64 %48, 0
  %55 = insertvalue { i64, i64 } %54, i64 %53, 1
  br label %745

56:                                               ; preds = %10
  %57 = icmp samesign ugt i64 %1, 3
  br i1 %57, label %58, label %99

58:                                               ; preds = %56
  %59 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %4 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %4
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = zext i32 %65 to i64
  %70 = zext i32 %68 to i64
  %71 = shl nuw i64 %70, 32
  %72 = or disjoint i64 %71, %69
  %73 = add i64 %64, -4255862940314790740
  %74 = xor i64 %72, %73
  %75 = shl nuw nsw i64 %1, 2
  %76 = add nuw nsw i64 %75, -7046029288634856825
  %77 = zext i64 %74 to i128
  %78 = zext i64 %76 to i128
  %79 = mul nuw i128 %77, %78
  %80 = trunc i128 %79 to i64
  %81 = lshr i128 %79, 64
  %82 = trunc nuw i128 %81 to i64
  %83 = shl i64 %80, 1
  %84 = add i64 %83, %82
  %85 = lshr i64 %84, 3
  %86 = xor i64 %85, %80
  %87 = lshr i64 %86, 35
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -6939452855193903323
  %90 = lshr i64 %89, 28
  %91 = xor i64 %90, %89
  %92 = lshr i64 %84, 37
  %93 = xor i64 %92, %84
  %94 = mul i64 %93, 1609587791953885689
  %95 = lshr i64 %94, 32
  %96 = xor i64 %95, %94
  %97 = insertvalue { i64, i64 } poison, i64 %91, 0
  %98 = insertvalue { i64, i64 } %97, i64 %96, 1
  br label %745

99:                                               ; preds = %56
  %100 = icmp eq i64 %1, 0
  br i1 %100, label %146, label %101

101:                                              ; preds = %99
  %102 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %102)
  %103 = load i8, ptr %0, align 1
  %104 = lshr i64 %1, 1
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 %104
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr i8, ptr %0, i64 %1
  %108 = getelementptr i8, ptr %107, i64 -1
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %103 to i32
  %111 = shl nuw nsw i32 %110, 16
  %112 = zext i8 %106 to i32
  %113 = shl nuw i32 %112, 24
  %114 = or disjoint i32 %113, %111
  %115 = zext i8 %109 to i32
  %116 = or disjoint i32 %114, %115
  %117 = trunc nuw nsw i64 %1 to i32
  %118 = shl nuw nsw i32 %117, 8
  %119 = or disjoint i32 %116, %118
  %120 = tail call noundef i32 @llvm.bswap.i32(i32 %119)
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 13)
  %122 = add i64 %4, 2267503259
  %123 = sub i64 808198283, %4
  %124 = zext i32 %119 to i64
  %125 = zext nneg i32 %121 to i64
  %126 = lshr i64 %122, 33
  %127 = xor i64 %126, %124
  %128 = xor i64 %127, %122
  %129 = mul i64 %128, -4417276706812531889
  %130 = lshr i64 %129, 29
  %131 = xor i64 %130, %129
  %132 = mul i64 %131, 1609587929392839161
  %133 = lshr i64 %132, 32
  %134 = xor i64 %133, %132
  %135 = lshr i64 %123, 33
  %136 = xor i64 %135, %125
  %137 = xor i64 %136, %123
  %138 = mul i64 %137, -4417276706812531889
  %139 = lshr i64 %138, 29
  %140 = xor i64 %139, %138
  %141 = mul i64 %140, 1609587929392839161
  %142 = lshr i64 %141, 32
  %143 = xor i64 %142, %141
  %144 = insertvalue { i64, i64 } poison, i64 %134, 0
  %145 = insertvalue { i64, i64 } %144, i64 %143, 1
  br label %745

146:                                              ; preds = %99
  %147 = xor i64 %4, 7507096552062056628
  %148 = lshr i64 %147, 33
  %149 = xor i64 %148, %147
  %150 = mul i64 %149, -4417276706812531889
  %151 = lshr i64 %150, 29
  %152 = xor i64 %151, %150
  %153 = mul i64 %152, 1609587929392839161
  %154 = lshr i64 %153, 32
  %155 = xor i64 %154, %153
  %156 = xor i64 %4, -7613947547284439735
  %157 = lshr i64 %156, 33
  %158 = xor i64 %157, %156
  %159 = mul i64 %158, -4417276706812531889
  %160 = lshr i64 %159, 29
  %161 = xor i64 %160, %159
  %162 = mul i64 %161, 1609587929392839161
  %163 = lshr i64 %162, 32
  %164 = xor i64 %163, %162
  %165 = insertvalue { i64, i64 } poison, i64 %155, 0
  %166 = insertvalue { i64, i64 } %165, i64 %164, 1
  br label %745

167:                                              ; preds = %8
  %168 = icmp samesign ult i64 %1, 129
  br i1 %168, label %169, label %344

169:                                              ; preds = %167
  %170 = mul i64 %1, -7046029288634856825
  %171 = icmp samesign ugt i64 %1, 32
  br i1 %171, label %172, label %287

172:                                              ; preds = %169
  %173 = icmp samesign ugt i64 %1, 64
  br i1 %173, label %174, label %249

174:                                              ; preds = %172
  %175 = icmp samesign ugt i64 %1, 96
  br i1 %175, label %176, label %211

176:                                              ; preds = %174
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %179 = getelementptr inbounds i8, ptr %178, i64 -64
  %180 = load i64, ptr %177, align 1
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %182 = load i64, ptr %181, align 1
  %183 = add i64 %4, 4554437623014685352
  %184 = xor i64 %180, %183
  %185 = sub i64 2111919702937427193, %4
  %186 = xor i64 %182, %185
  %187 = zext i64 %184 to i128
  %188 = zext i64 %186 to i128
  %189 = mul nuw i128 %188, %187
  %190 = lshr i128 %189, 64
  %191 = xor i128 %190, %189
  %192 = trunc i128 %191 to i64
  %193 = add i64 %170, %192
  %194 = load i64, ptr %179, align 1
  %195 = getelementptr inbounds i8, ptr %178, i64 -56
  %196 = load i64, ptr %195, align 1
  %197 = add i64 %196, %194
  %198 = xor i64 %193, %197
  %199 = add i64 %4, 3556072174620004746
  %200 = xor i64 %194, %199
  %201 = sub i64 7238261902898274248, %4
  %202 = xor i64 %196, %201
  %203 = zext i64 %200 to i128
  %204 = zext i64 %202 to i128
  %205 = mul nuw i128 %204, %203
  %206 = lshr i128 %205, 64
  %207 = xor i128 %206, %205
  %208 = trunc i128 %207 to i64
  %209 = add i64 %182, %180
  %210 = xor i64 %209, %208
  br label %211

211:                                              ; preds = %176, %174
  %212 = phi i64 [ %198, %176 ], [ %170, %174 ]
  %213 = phi i64 [ %210, %176 ], [ 0, %174 ]
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %216 = getelementptr inbounds i8, ptr %215, i64 -48
  %217 = load i64, ptr %214, align 1
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %219 = load i64, ptr %218, align 1
  %220 = add i64 %4, -3818837453329782724
  %221 = xor i64 %217, %220
  %222 = sub i64 -6688317018830679928, %4
  %223 = xor i64 %219, %222
  %224 = zext i64 %221 to i128
  %225 = zext i64 %223 to i128
  %226 = mul nuw i128 %225, %224
  %227 = lshr i128 %226, 64
  %228 = xor i128 %227, %226
  %229 = trunc i128 %228 to i64
  %230 = add i64 %212, %229
  %231 = load i64, ptr %216, align 1
  %232 = getelementptr inbounds i8, ptr %215, i64 -40
  %233 = load i64, ptr %232, align 1
  %234 = add i64 %233, %231
  %235 = xor i64 %230, %234
  %236 = add i64 %4, 5690594596133299313
  %237 = xor i64 %231, %236
  %238 = sub i64 -2833645246901970632, %4
  %239 = xor i64 %233, %238
  %240 = zext i64 %237 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %213, %245
  %247 = add i64 %219, %217
  %248 = xor i64 %246, %247
  br label %249

249:                                              ; preds = %211, %172
  %250 = phi i64 [ %235, %211 ], [ %170, %172 ]
  %251 = phi i64 [ %248, %211 ], [ 0, %172 ]
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %253 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %254 = getelementptr inbounds i8, ptr %253, i64 -32
  %255 = load i64, ptr %252, align 1
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %257 = load i64, ptr %256, align 1
  %258 = add i64 %4, 8711581037947681227
  %259 = xor i64 %255, %258
  %260 = sub i64 2410270004345854594, %4
  %261 = xor i64 %257, %260
  %262 = zext i64 %259 to i128
  %263 = zext i64 %261 to i128
  %264 = mul nuw i128 %263, %262
  %265 = lshr i128 %264, 64
  %266 = xor i128 %265, %264
  %267 = trunc i128 %266 to i64
  %268 = add i64 %250, %267
  %269 = load i64, ptr %254, align 1
  %270 = getelementptr inbounds i8, ptr %253, i64 -24
  %271 = load i64, ptr %270, align 1
  %272 = add i64 %271, %269
  %273 = xor i64 %268, %272
  %274 = add i64 %4, -8204357891075471176
  %275 = xor i64 %269, %274
  %276 = sub i64 5487137525590930912, %4
  %277 = xor i64 %271, %276
  %278 = zext i64 %275 to i128
  %279 = zext i64 %277 to i128
  %280 = mul nuw i128 %279, %278
  %281 = lshr i128 %280, 64
  %282 = xor i128 %281, %280
  %283 = trunc i128 %282 to i64
  %284 = add i64 %251, %283
  %285 = add i64 %257, %255
  %286 = xor i64 %284, %285
  br label %287

287:                                              ; preds = %169, %249
  %288 = phi i64 [ %273, %249 ], [ %170, %169 ]
  %289 = phi i64 [ %286, %249 ], [ 0, %169 ]
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %291 = getelementptr inbounds i8, ptr %290, i64 -16
  %292 = load i64, ptr %0, align 1
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %294 = load i64, ptr %293, align 1
  %295 = add i64 %4, -4734510112055689544
  %296 = xor i64 %292, %295
  %297 = sub i64 2066345149520216444, %4
  %298 = xor i64 %294, %297
  %299 = zext i64 %296 to i128
  %300 = zext i64 %298 to i128
  %301 = mul nuw i128 %300, %299
  %302 = lshr i128 %301, 64
  %303 = xor i128 %302, %301
  %304 = trunc i128 %303 to i64
  %305 = add i64 %288, %304
  %306 = load i64, ptr %291, align 1
  %307 = getelementptr inbounds i8, ptr %290, i64 -8
  %308 = load i64, ptr %307, align 1
  %309 = add i64 %308, %306
  %310 = xor i64 %305, %309
  %311 = add i64 %4, -2623469361688619810
  %312 = xor i64 %306, %311
  %313 = sub i64 2262974939099578482, %4
  %314 = xor i64 %308, %313
  %315 = zext i64 %312 to i128
  %316 = zext i64 %314 to i128
  %317 = mul nuw i128 %316, %315
  %318 = lshr i128 %317, 64
  %319 = xor i128 %318, %317
  %320 = trunc i128 %319 to i64
  %321 = add i64 %289, %320
  %322 = add i64 %294, %292
  %323 = xor i64 %321, %322
  %324 = add i64 %323, %310
  %325 = mul i64 %310, -7046029288634856825
  %326 = mul i64 %323, -8796714831421723037
  %327 = sub i64 %1, %4
  %328 = mul i64 %327, -4417276706812531889
  %329 = add i64 %325, %328
  %330 = add i64 %329, %326
  %331 = lshr i64 %324, 37
  %332 = xor i64 %331, %324
  %333 = mul i64 %332, 1609587791953885689
  %334 = lshr i64 %333, 32
  %335 = xor i64 %334, %333
  %336 = lshr i64 %330, 37
  %337 = xor i64 %336, %330
  %338 = mul i64 %337, 1609587791953885689
  %339 = lshr i64 %338, 32
  %340 = xor i64 %339, %338
  %341 = sub i64 0, %340
  %342 = insertvalue { i64, i64 } poison, i64 %335, 0
  %343 = insertvalue { i64, i64 } %342, i64 %341, 1
  br label %745

344:                                              ; preds = %167
  %345 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %4) #33
  br label %745

346:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #29, !noalias !169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !169
  %347 = add nsw i64 %3, -64
  %348 = lshr i64 %347, 3
  %349 = shl nuw nsw i64 %348, 6
  %350 = add nsw i64 %1, -1
  %351 = trunc i64 %350 to i32
  %352 = trunc nuw nsw i64 %349 to i32
  %353 = udiv i32 %351, %352
  %354 = zext nneg i32 %353 to i64
  %355 = icmp ugt i32 %352, %351
  br i1 %355, label %525, label %356

356:                                              ; preds = %346
  %357 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %358 = getelementptr inbounds i8, ptr %357, i64 -64
  %359 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %360 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %361 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %362 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %363 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %364 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %365 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %366 = load i64, ptr %358, align 1
  %367 = getelementptr inbounds i8, ptr %357, i64 -56
  %368 = load i64, ptr %367, align 1
  %369 = getelementptr inbounds i8, ptr %357, i64 -48
  %370 = load i64, ptr %369, align 1
  %371 = getelementptr inbounds i8, ptr %357, i64 -40
  %372 = load i64, ptr %371, align 1
  %373 = getelementptr inbounds i8, ptr %357, i64 -32
  %374 = load i64, ptr %373, align 1
  %375 = getelementptr inbounds i8, ptr %357, i64 -24
  %376 = load i64, ptr %375, align 1
  %377 = getelementptr inbounds i8, ptr %357, i64 -16
  %378 = load i64, ptr %377, align 1
  %379 = getelementptr inbounds i8, ptr %357, i64 -8
  %380 = load i64, ptr %379, align 1
  %381 = tail call i64 @llvm.umax.i64(i64 %354, i64 1)
  br label %382

382:                                              ; preds = %356, %489
  %383 = phi i64 [ %493, %489 ], [ 3266489917, %356 ]
  %384 = phi i64 [ %497, %489 ], [ -7046029288634856825, %356 ]
  %385 = phi i64 [ %517, %489 ], [ 2870177450012600261, %356 ]
  %386 = phi i64 [ %521, %489 ], [ 2654435761, %356 ]
  %387 = phi i64 [ %509, %489 ], [ -8796714831421723037, %356 ]
  %388 = phi i64 [ %513, %489 ], [ 2246822519, %356 ]
  %389 = phi i64 [ %501, %489 ], [ -4417276706812531889, %356 ]
  %390 = phi i64 [ %505, %489 ], [ 1609587929392839161, %356 ]
  %391 = phi i64 [ %522, %489 ], [ 0, %356 ]
  %392 = mul nuw nsw i64 %391, %349
  %393 = getelementptr inbounds nuw i8, ptr %0, i64 %392
  br label %394

394:                                              ; preds = %382, %394
  %395 = phi i64 [ %383, %382 ], [ %422, %394 ]
  %396 = phi i64 [ %384, %382 ], [ %426, %394 ]
  %397 = phi i64 [ %385, %382 ], [ %482, %394 ]
  %398 = phi i64 [ %386, %382 ], [ %486, %394 ]
  %399 = phi i64 [ %387, %382 ], [ %462, %394 ]
  %400 = phi i64 [ %388, %382 ], [ %466, %394 ]
  %401 = phi i64 [ %389, %382 ], [ %442, %394 ]
  %402 = phi i64 [ %390, %382 ], [ %446, %394 ]
  %403 = phi i64 [ 0, %382 ], [ %487, %394 ]
  %404 = shl i64 %403, 6
  %405 = getelementptr inbounds nuw i8, ptr %393, i64 %404
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %406, i32 0, i32 3, i32 1)
  %407 = shl i64 %403, 3
  %408 = getelementptr inbounds nuw i8, ptr %2, i64 %407
  %409 = load i64, ptr %405, align 1
  %410 = load i64, ptr %408, align 1
  %411 = xor i64 %410, %409
  %412 = add i64 %396, %409
  %413 = lshr i64 %411, 32
  %414 = and i64 %411, 4294967295
  %415 = mul nuw i64 %414, %413
  %416 = add i64 %415, %395
  %417 = getelementptr inbounds nuw i8, ptr %405, i64 8
  %418 = load i64, ptr %417, align 1
  %419 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %420 = load i64, ptr %419, align 1
  %421 = xor i64 %420, %418
  %422 = add i64 %416, %418
  %423 = lshr i64 %421, 32
  %424 = and i64 %421, 4294967295
  %425 = mul nuw i64 %424, %423
  %426 = add i64 %425, %412
  %427 = getelementptr inbounds nuw i8, ptr %405, i64 16
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds nuw i8, ptr %408, i64 16
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %428
  %432 = add i64 %402, %428
  %433 = lshr i64 %431, 32
  %434 = and i64 %431, 4294967295
  %435 = mul nuw i64 %434, %433
  %436 = add i64 %435, %401
  %437 = getelementptr inbounds nuw i8, ptr %405, i64 24
  %438 = load i64, ptr %437, align 1
  %439 = getelementptr inbounds nuw i8, ptr %408, i64 24
  %440 = load i64, ptr %439, align 1
  %441 = xor i64 %440, %438
  %442 = add i64 %436, %438
  %443 = lshr i64 %441, 32
  %444 = and i64 %441, 4294967295
  %445 = mul nuw i64 %444, %443
  %446 = add i64 %445, %432
  %447 = getelementptr inbounds nuw i8, ptr %405, i64 32
  %448 = load i64, ptr %447, align 1
  %449 = getelementptr inbounds nuw i8, ptr %408, i64 32
  %450 = load i64, ptr %449, align 1
  %451 = xor i64 %450, %448
  %452 = add i64 %400, %448
  %453 = lshr i64 %451, 32
  %454 = and i64 %451, 4294967295
  %455 = mul nuw i64 %454, %453
  %456 = add i64 %455, %399
  %457 = getelementptr inbounds nuw i8, ptr %405, i64 40
  %458 = load i64, ptr %457, align 1
  %459 = getelementptr inbounds nuw i8, ptr %408, i64 40
  %460 = load i64, ptr %459, align 1
  %461 = xor i64 %460, %458
  %462 = add i64 %456, %458
  %463 = lshr i64 %461, 32
  %464 = and i64 %461, 4294967295
  %465 = mul nuw i64 %464, %463
  %466 = add i64 %465, %452
  %467 = getelementptr inbounds nuw i8, ptr %405, i64 48
  %468 = load i64, ptr %467, align 1
  %469 = getelementptr inbounds nuw i8, ptr %408, i64 48
  %470 = load i64, ptr %469, align 1
  %471 = xor i64 %470, %468
  %472 = add i64 %398, %468
  %473 = lshr i64 %471, 32
  %474 = and i64 %471, 4294967295
  %475 = mul nuw i64 %474, %473
  %476 = add i64 %475, %397
  %477 = getelementptr inbounds nuw i8, ptr %405, i64 56
  %478 = load i64, ptr %477, align 1
  %479 = getelementptr inbounds nuw i8, ptr %408, i64 56
  %480 = load i64, ptr %479, align 1
  %481 = xor i64 %480, %478
  %482 = add i64 %476, %478
  %483 = lshr i64 %481, 32
  %484 = and i64 %481, 4294967295
  %485 = mul nuw i64 %484, %483
  %486 = add i64 %485, %472
  %487 = add nuw nsw i64 %403, 1
  %488 = icmp eq i64 %487, %348
  br i1 %488, label %489, label %394, !llvm.loop !72

489:                                              ; preds = %394
  %490 = lshr i64 %422, 47
  %491 = xor i64 %366, %490
  %492 = xor i64 %491, %422
  %493 = mul i64 %492, 2654435761
  %494 = lshr i64 %426, 47
  %495 = xor i64 %368, %494
  %496 = xor i64 %495, %426
  %497 = mul i64 %496, 2654435761
  %498 = lshr i64 %442, 47
  %499 = xor i64 %370, %498
  %500 = xor i64 %499, %442
  %501 = mul i64 %500, 2654435761
  %502 = lshr i64 %446, 47
  %503 = xor i64 %372, %502
  %504 = xor i64 %503, %446
  %505 = mul i64 %504, 2654435761
  %506 = lshr i64 %462, 47
  %507 = xor i64 %374, %506
  %508 = xor i64 %507, %462
  %509 = mul i64 %508, 2654435761
  %510 = lshr i64 %466, 47
  %511 = xor i64 %376, %510
  %512 = xor i64 %511, %466
  %513 = mul i64 %512, 2654435761
  %514 = lshr i64 %482, 47
  %515 = xor i64 %378, %514
  %516 = xor i64 %515, %482
  %517 = mul i64 %516, 2654435761
  %518 = lshr i64 %486, 47
  %519 = xor i64 %380, %518
  %520 = xor i64 %519, %486
  %521 = mul i64 %520, 2654435761
  %522 = add nuw nsw i64 %391, 1
  %523 = icmp eq i64 %522, %381
  br i1 %523, label %524, label %382, !llvm.loop !73

524:                                              ; preds = %489
  store i64 %493, ptr %6, align 8, !noalias !169
  store i64 %497, ptr %359, align 8, !noalias !169
  store i64 %501, ptr %361, align 8, !noalias !169
  store i64 %505, ptr %360, align 8, !noalias !169
  store i64 %509, ptr %363, align 8, !noalias !169
  store i64 %513, ptr %362, align 8, !noalias !169
  store i64 %517, ptr %365, align 8, !noalias !169
  store i64 %521, ptr %364, align 8, !noalias !169
  br label %525

525:                                              ; preds = %524, %346
  %526 = phi i64 [ 3266489917, %346 ], [ %493, %524 ]
  %527 = phi i64 [ -7046029288634856825, %346 ], [ %497, %524 ]
  %528 = phi i64 [ 2870177450012600261, %346 ], [ %517, %524 ]
  %529 = phi i64 [ 2654435761, %346 ], [ %521, %524 ]
  %530 = phi i64 [ -8796714831421723037, %346 ], [ %509, %524 ]
  %531 = phi i64 [ 2246822519, %346 ], [ %513, %524 ]
  %532 = phi i64 [ -4417276706812531889, %346 ], [ %501, %524 ]
  %533 = phi i64 [ 1609587929392839161, %346 ], [ %505, %524 ]
  %534 = mul nuw nsw i64 %349, %354
  %535 = sub nsw i64 %350, %534
  %536 = lshr i64 %535, 6
  %537 = lshr i64 %3, 3
  %538 = icmp samesign ule i64 %536, %537
  tail call void @llvm.assume(i1 %538)
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 %534
  %540 = icmp ult i64 %535, 64
  br i1 %540, label %646, label %541

541:                                              ; preds = %525
  %542 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %543 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %544 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %545 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %546 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %547 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %548 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %549 = tail call i64 @llvm.umax.i64(i64 %536, i64 1)
  br label %550

550:                                              ; preds = %541, %550
  %551 = phi i64 [ %578, %550 ], [ %526, %541 ]
  %552 = phi i64 [ %582, %550 ], [ %527, %541 ]
  %553 = phi i64 [ %638, %550 ], [ %528, %541 ]
  %554 = phi i64 [ %642, %550 ], [ %529, %541 ]
  %555 = phi i64 [ %618, %550 ], [ %530, %541 ]
  %556 = phi i64 [ %622, %550 ], [ %531, %541 ]
  %557 = phi i64 [ %598, %550 ], [ %532, %541 ]
  %558 = phi i64 [ %602, %550 ], [ %533, %541 ]
  %559 = phi i64 [ %643, %550 ], [ 0, %541 ]
  %560 = shl i64 %559, 6
  %561 = getelementptr inbounds nuw i8, ptr %539, i64 %560
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %562, i32 0, i32 3, i32 1)
  %563 = shl i64 %559, 3
  %564 = getelementptr inbounds nuw i8, ptr %2, i64 %563
  %565 = load i64, ptr %561, align 1
  %566 = load i64, ptr %564, align 1
  %567 = xor i64 %566, %565
  %568 = add i64 %552, %565
  %569 = lshr i64 %567, 32
  %570 = and i64 %567, 4294967295
  %571 = mul nuw i64 %570, %569
  %572 = add i64 %571, %551
  %573 = getelementptr inbounds nuw i8, ptr %561, i64 8
  %574 = load i64, ptr %573, align 1
  %575 = getelementptr inbounds nuw i8, ptr %564, i64 8
  %576 = load i64, ptr %575, align 1
  %577 = xor i64 %576, %574
  %578 = add i64 %572, %574
  %579 = lshr i64 %577, 32
  %580 = and i64 %577, 4294967295
  %581 = mul nuw i64 %580, %579
  %582 = add i64 %581, %568
  %583 = getelementptr inbounds nuw i8, ptr %561, i64 16
  %584 = load i64, ptr %583, align 1
  %585 = getelementptr inbounds nuw i8, ptr %564, i64 16
  %586 = load i64, ptr %585, align 1
  %587 = xor i64 %586, %584
  %588 = add i64 %558, %584
  %589 = lshr i64 %587, 32
  %590 = and i64 %587, 4294967295
  %591 = mul nuw i64 %590, %589
  %592 = add i64 %591, %557
  %593 = getelementptr inbounds nuw i8, ptr %561, i64 24
  %594 = load i64, ptr %593, align 1
  %595 = getelementptr inbounds nuw i8, ptr %564, i64 24
  %596 = load i64, ptr %595, align 1
  %597 = xor i64 %596, %594
  %598 = add i64 %592, %594
  %599 = lshr i64 %597, 32
  %600 = and i64 %597, 4294967295
  %601 = mul nuw i64 %600, %599
  %602 = add i64 %601, %588
  %603 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %604 = load i64, ptr %603, align 1
  %605 = getelementptr inbounds nuw i8, ptr %564, i64 32
  %606 = load i64, ptr %605, align 1
  %607 = xor i64 %606, %604
  %608 = add i64 %556, %604
  %609 = lshr i64 %607, 32
  %610 = and i64 %607, 4294967295
  %611 = mul nuw i64 %610, %609
  %612 = add i64 %611, %555
  %613 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %614 = load i64, ptr %613, align 1
  %615 = getelementptr inbounds nuw i8, ptr %564, i64 40
  %616 = load i64, ptr %615, align 1
  %617 = xor i64 %616, %614
  %618 = add i64 %612, %614
  %619 = lshr i64 %617, 32
  %620 = and i64 %617, 4294967295
  %621 = mul nuw i64 %620, %619
  %622 = add i64 %621, %608
  %623 = getelementptr inbounds nuw i8, ptr %561, i64 48
  %624 = load i64, ptr %623, align 1
  %625 = getelementptr inbounds nuw i8, ptr %564, i64 48
  %626 = load i64, ptr %625, align 1
  %627 = xor i64 %626, %624
  %628 = add i64 %554, %624
  %629 = lshr i64 %627, 32
  %630 = and i64 %627, 4294967295
  %631 = mul nuw i64 %630, %629
  %632 = add i64 %631, %553
  %633 = getelementptr inbounds nuw i8, ptr %561, i64 56
  %634 = load i64, ptr %633, align 1
  %635 = getelementptr inbounds nuw i8, ptr %564, i64 56
  %636 = load i64, ptr %635, align 1
  %637 = xor i64 %636, %634
  %638 = add i64 %632, %634
  %639 = lshr i64 %637, 32
  %640 = and i64 %637, 4294967295
  %641 = mul nuw i64 %640, %639
  %642 = add i64 %641, %628
  %643 = add nuw nsw i64 %559, 1
  %644 = icmp eq i64 %643, %549
  br i1 %644, label %645, label %550, !llvm.loop !72

645:                                              ; preds = %550
  store i64 %578, ptr %6, align 8, !alias.scope !176, !noalias !179
  store i64 %582, ptr %542, align 8, !alias.scope !176, !noalias !179
  store i64 %598, ptr %544, align 8, !alias.scope !176, !noalias !179
  store i64 %602, ptr %543, align 8, !alias.scope !176, !noalias !179
  store i64 %618, ptr %546, align 8, !alias.scope !176, !noalias !179
  store i64 %622, ptr %545, align 8, !alias.scope !176, !noalias !179
  store i64 %638, ptr %548, align 8, !alias.scope !176, !noalias !179
  store i64 %642, ptr %547, align 8, !alias.scope !176, !noalias !179
  br label %646

646:                                              ; preds = %645, %525
  %647 = phi i64 [ %528, %525 ], [ %638, %645 ]
  %648 = phi i64 [ %529, %525 ], [ %642, %645 ]
  %649 = phi i64 [ %530, %525 ], [ %618, %645 ]
  %650 = phi i64 [ %531, %525 ], [ %622, %645 ]
  %651 = phi i64 [ %532, %525 ], [ %598, %645 ]
  %652 = phi i64 [ %533, %525 ], [ %602, %645 ]
  %653 = phi i64 [ %526, %525 ], [ %578, %645 ]
  %654 = phi i64 [ %527, %525 ], [ %582, %645 ]
  %655 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %656 = getelementptr inbounds i8, ptr %655, i64 -64
  %657 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %658 = getelementptr inbounds i8, ptr %657, i64 -71
  %659 = load i64, ptr %656, align 1
  %660 = load i64, ptr %658, align 1
  %661 = xor i64 %660, %659
  %662 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %663 = add i64 %654, %659
  %664 = lshr i64 %661, 32
  %665 = and i64 %661, 4294967295
  %666 = mul nuw i64 %665, %664
  %667 = add i64 %666, %653
  %668 = getelementptr inbounds i8, ptr %655, i64 -56
  %669 = load i64, ptr %668, align 1
  %670 = getelementptr inbounds i8, ptr %657, i64 -63
  %671 = load i64, ptr %670, align 1
  %672 = xor i64 %671, %669
  %673 = add i64 %667, %669
  store i64 %673, ptr %6, align 8, !alias.scope !182, !noalias !185
  %674 = lshr i64 %672, 32
  %675 = and i64 %672, 4294967295
  %676 = mul nuw i64 %675, %674
  %677 = add i64 %676, %663
  store i64 %677, ptr %662, align 8, !alias.scope !182, !noalias !185
  %678 = getelementptr inbounds i8, ptr %655, i64 -48
  %679 = load i64, ptr %678, align 1
  %680 = getelementptr inbounds i8, ptr %657, i64 -55
  %681 = load i64, ptr %680, align 1
  %682 = xor i64 %681, %679
  %683 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %684 = add i64 %652, %679
  %685 = lshr i64 %682, 32
  %686 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %687 = and i64 %682, 4294967295
  %688 = mul nuw i64 %687, %685
  %689 = add i64 %688, %651
  %690 = getelementptr inbounds i8, ptr %655, i64 -40
  %691 = load i64, ptr %690, align 1
  %692 = getelementptr inbounds i8, ptr %657, i64 -47
  %693 = load i64, ptr %692, align 1
  %694 = xor i64 %693, %691
  %695 = add i64 %689, %691
  store i64 %695, ptr %686, align 8, !alias.scope !182, !noalias !185
  %696 = lshr i64 %694, 32
  %697 = and i64 %694, 4294967295
  %698 = mul nuw i64 %697, %696
  %699 = add i64 %698, %684
  store i64 %699, ptr %683, align 8, !alias.scope !182, !noalias !185
  %700 = getelementptr inbounds i8, ptr %655, i64 -32
  %701 = load i64, ptr %700, align 1
  %702 = getelementptr inbounds i8, ptr %657, i64 -39
  %703 = load i64, ptr %702, align 1
  %704 = xor i64 %703, %701
  %705 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %706 = add i64 %650, %701
  %707 = lshr i64 %704, 32
  %708 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %709 = and i64 %704, 4294967295
  %710 = mul nuw i64 %709, %707
  %711 = add i64 %710, %649
  %712 = getelementptr inbounds i8, ptr %655, i64 -24
  %713 = load i64, ptr %712, align 1
  %714 = getelementptr inbounds i8, ptr %657, i64 -31
  %715 = load i64, ptr %714, align 1
  %716 = xor i64 %715, %713
  %717 = add i64 %711, %713
  store i64 %717, ptr %708, align 8, !alias.scope !182, !noalias !185
  %718 = lshr i64 %716, 32
  %719 = and i64 %716, 4294967295
  %720 = mul nuw i64 %719, %718
  %721 = add i64 %720, %706
  store i64 %721, ptr %705, align 8, !alias.scope !182, !noalias !185
  %722 = getelementptr inbounds i8, ptr %655, i64 -16
  %723 = load i64, ptr %722, align 1
  %724 = getelementptr inbounds i8, ptr %657, i64 -23
  %725 = load i64, ptr %724, align 1
  %726 = xor i64 %725, %723
  %727 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %728 = add i64 %648, %723
  %729 = lshr i64 %726, 32
  %730 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %731 = and i64 %726, 4294967295
  %732 = mul nuw i64 %731, %729
  %733 = add i64 %732, %647
  %734 = getelementptr inbounds i8, ptr %655, i64 -8
  %735 = load i64, ptr %734, align 1
  %736 = getelementptr inbounds i8, ptr %657, i64 -15
  %737 = load i64, ptr %736, align 1
  %738 = xor i64 %737, %735
  %739 = add i64 %733, %735
  store i64 %739, ptr %730, align 8, !alias.scope !182, !noalias !185
  %740 = lshr i64 %738, 32
  %741 = and i64 %738, 4294967295
  %742 = mul nuw i64 %741, %740
  %743 = add i64 %742, %728
  store i64 %743, ptr %727, align 8, !alias.scope !182, !noalias !185
  %744 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %6, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #29, !noalias !169
  br label %745

745:                                              ; preds = %344, %287, %12, %58, %101, %146, %646
  %746 = phi { i64, i64 } [ %744, %646 ], [ %343, %287 ], [ %345, %344 ], [ %55, %12 ], [ %98, %58 ], [ %145, %101 ], [ %166, %146 ]
  ret { i64, i64 } %746
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read) uwtable
define internal fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef nonnull readonly %0) unnamed_addr #21 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca [8 x i64], align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %8 = select i1 %6, ptr %7, ptr %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %10 = load i64, ptr %9, align 16
  %11 = icmp ugt i64 %10, 240
  br i1 %11, label %12, label %463

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 64 dereferenceable(64) %0, i64 64, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %14 = load i32, ptr %13, align 64
  %15 = icmp ugt i32 %14, 63
  br i1 %15, label %16, label %353

16:                                               ; preds = %12
  %17 = add i32 %14, -1
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %25 = shl i64 %21, 3
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 %25
  %27 = sub i64 %23, %21
  %28 = icmp ugt i64 %27, %19
  br i1 %28, label %233, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %31 = load i64, ptr %30, align 32
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %47 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %49 = getelementptr inbounds nuw i8, ptr %32, i64 16
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %51 = getelementptr inbounds nuw i8, ptr %32, i64 24
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %53 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %55 = getelementptr inbounds nuw i8, ptr %32, i64 40
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %57 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %59 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %61

61:                                               ; preds = %29, %180
  %62 = phi i64 [ %231, %180 ], [ %19, %29 ]
  %63 = phi ptr [ %230, %180 ], [ %24, %29 ]
  %64 = phi ptr [ %8, %180 ], [ %26, %29 ]
  %65 = phi i64 [ %23, %180 ], [ %27, %29 ]
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i64, ptr %3, align 8, !alias.scope !188, !noalias !193
  %69 = load i64, ptr %40, align 8, !alias.scope !188, !noalias !193
  %70 = load i64, ptr %41, align 8, !alias.scope !188, !noalias !193
  %71 = load i64, ptr %42, align 8, !alias.scope !188, !noalias !193
  %72 = load i64, ptr %43, align 8, !alias.scope !188, !noalias !193
  %73 = load i64, ptr %44, align 8, !alias.scope !188, !noalias !193
  %74 = load i64, ptr %45, align 8, !alias.scope !188, !noalias !193
  %75 = load i64, ptr %46, align 8, !alias.scope !188, !noalias !193
  br label %180

76:                                               ; preds = %61
  %77 = load i64, ptr %33, align 8, !alias.scope !198, !noalias !201
  %78 = load i64, ptr %34, align 8, !alias.scope !198, !noalias !201
  %79 = load i64, ptr %35, align 8, !alias.scope !198, !noalias !201
  %80 = load i64, ptr %36, align 8, !alias.scope !198, !noalias !201
  %81 = load i64, ptr %37, align 8, !alias.scope !198, !noalias !201
  %82 = load i64, ptr %38, align 8, !alias.scope !198, !noalias !201
  %83 = load i64, ptr %39, align 8, !alias.scope !198, !noalias !201
  %84 = load i64, ptr %3, align 8, !alias.scope !198, !noalias !201
  br label %85

85:                                               ; preds = %76, %85
  %86 = phi i64 [ %113, %85 ], [ %84, %76 ]
  %87 = phi i64 [ %117, %85 ], [ %83, %76 ]
  %88 = phi i64 [ %173, %85 ], [ %82, %76 ]
  %89 = phi i64 [ %177, %85 ], [ %81, %76 ]
  %90 = phi i64 [ %153, %85 ], [ %80, %76 ]
  %91 = phi i64 [ %157, %85 ], [ %79, %76 ]
  %92 = phi i64 [ %133, %85 ], [ %78, %76 ]
  %93 = phi i64 [ %137, %85 ], [ %77, %76 ]
  %94 = phi i64 [ %178, %85 ], [ 0, %76 ]
  %95 = shl i64 %94, 6
  %96 = getelementptr inbounds nuw i8, ptr %63, i64 %95
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %97, i32 0, i32 3, i32 1), !noalias !204
  %98 = shl i64 %94, 3
  %99 = getelementptr inbounds nuw i8, ptr %64, i64 %98
  %100 = load i64, ptr %96, align 1
  %101 = load i64, ptr %99, align 1
  %102 = xor i64 %101, %100
  %103 = add i64 %87, %100
  store i64 %103, ptr %39, align 8, !alias.scope !198, !noalias !201
  %104 = lshr i64 %102, 32
  %105 = and i64 %102, 4294967295
  %106 = mul nuw i64 %105, %104
  %107 = add i64 %106, %86
  store i64 %107, ptr %3, align 8, !alias.scope !198, !noalias !201
  %108 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %109 = load i64, ptr %108, align 1
  %110 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %111 = load i64, ptr %110, align 1
  %112 = xor i64 %111, %109
  %113 = add i64 %107, %109
  store i64 %113, ptr %3, align 8, !alias.scope !198, !noalias !201
  %114 = lshr i64 %112, 32
  %115 = and i64 %112, 4294967295
  %116 = mul nuw i64 %115, %114
  %117 = add i64 %116, %103
  store i64 %117, ptr %39, align 8, !alias.scope !198, !noalias !201
  %118 = getelementptr inbounds nuw i8, ptr %96, i64 16
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %99, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = add i64 %93, %119
  store i64 %123, ptr %33, align 8, !alias.scope !198, !noalias !201
  %124 = lshr i64 %122, 32
  %125 = and i64 %122, 4294967295
  %126 = mul nuw i64 %125, %124
  %127 = add i64 %126, %92
  store i64 %127, ptr %34, align 8, !alias.scope !198, !noalias !201
  %128 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %99, i64 24
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %131, %129
  %133 = add i64 %127, %129
  store i64 %133, ptr %34, align 8, !alias.scope !198, !noalias !201
  %134 = lshr i64 %132, 32
  %135 = and i64 %132, 4294967295
  %136 = mul nuw i64 %135, %134
  %137 = add i64 %136, %123
  store i64 %137, ptr %33, align 8, !alias.scope !198, !noalias !201
  %138 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %139 = load i64, ptr %138, align 1
  %140 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %141 = load i64, ptr %140, align 1
  %142 = xor i64 %141, %139
  %143 = add i64 %91, %139
  store i64 %143, ptr %35, align 8, !alias.scope !198, !noalias !201
  %144 = lshr i64 %142, 32
  %145 = and i64 %142, 4294967295
  %146 = mul nuw i64 %145, %144
  %147 = add i64 %146, %90
  store i64 %147, ptr %36, align 8, !alias.scope !198, !noalias !201
  %148 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %149 = load i64, ptr %148, align 1
  %150 = getelementptr inbounds nuw i8, ptr %99, i64 40
  %151 = load i64, ptr %150, align 1
  %152 = xor i64 %151, %149
  %153 = add i64 %147, %149
  store i64 %153, ptr %36, align 8, !alias.scope !198, !noalias !201
  %154 = lshr i64 %152, 32
  %155 = and i64 %152, 4294967295
  %156 = mul nuw i64 %155, %154
  %157 = add i64 %156, %143
  store i64 %157, ptr %35, align 8, !alias.scope !198, !noalias !201
  %158 = getelementptr inbounds nuw i8, ptr %96, i64 48
  %159 = load i64, ptr %158, align 1
  %160 = getelementptr inbounds nuw i8, ptr %99, i64 48
  %161 = load i64, ptr %160, align 1
  %162 = xor i64 %161, %159
  %163 = add i64 %89, %159
  store i64 %163, ptr %37, align 8, !alias.scope !198, !noalias !201
  %164 = lshr i64 %162, 32
  %165 = and i64 %162, 4294967295
  %166 = mul nuw i64 %165, %164
  %167 = add i64 %166, %88
  store i64 %167, ptr %38, align 8, !alias.scope !198, !noalias !201
  %168 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %169 = load i64, ptr %168, align 1
  %170 = getelementptr inbounds nuw i8, ptr %99, i64 56
  %171 = load i64, ptr %170, align 1
  %172 = xor i64 %171, %169
  %173 = add i64 %167, %169
  store i64 %173, ptr %38, align 8, !alias.scope !198, !noalias !201
  %174 = lshr i64 %172, 32
  %175 = and i64 %172, 4294967295
  %176 = mul nuw i64 %175, %174
  %177 = add i64 %176, %163
  store i64 %177, ptr %37, align 8, !alias.scope !198, !noalias !201
  %178 = add nuw i64 %94, 1
  %179 = icmp eq i64 %178, %65
  br i1 %179, label %180, label %85, !llvm.loop !72

180:                                              ; preds = %85, %67
  %181 = phi i64 [ %75, %67 ], [ %177, %85 ]
  %182 = phi i64 [ %74, %67 ], [ %173, %85 ]
  %183 = phi i64 [ %73, %67 ], [ %157, %85 ]
  %184 = phi i64 [ %72, %67 ], [ %153, %85 ]
  %185 = phi i64 [ %71, %67 ], [ %137, %85 ]
  %186 = phi i64 [ %70, %67 ], [ %133, %85 ]
  %187 = phi i64 [ %69, %67 ], [ %117, %85 ]
  %188 = phi i64 [ %68, %67 ], [ %113, %85 ]
  %189 = load i64, ptr %32, align 1
  %190 = lshr i64 %188, 47
  %191 = xor i64 %189, %190
  %192 = xor i64 %191, %188
  %193 = mul i64 %192, 2654435761
  store i64 %193, ptr %3, align 8, !alias.scope !188, !noalias !193
  %194 = load i64, ptr %47, align 1
  %195 = lshr i64 %187, 47
  %196 = xor i64 %194, %195
  %197 = xor i64 %196, %187
  %198 = mul i64 %197, 2654435761
  store i64 %198, ptr %48, align 8, !alias.scope !188, !noalias !193
  %199 = load i64, ptr %49, align 1
  %200 = lshr i64 %186, 47
  %201 = xor i64 %199, %200
  %202 = xor i64 %201, %186
  %203 = mul i64 %202, 2654435761
  store i64 %203, ptr %50, align 8, !alias.scope !188, !noalias !193
  %204 = load i64, ptr %51, align 1
  %205 = lshr i64 %185, 47
  %206 = xor i64 %204, %205
  %207 = xor i64 %206, %185
  %208 = mul i64 %207, 2654435761
  store i64 %208, ptr %52, align 8, !alias.scope !188, !noalias !193
  %209 = load i64, ptr %53, align 1
  %210 = lshr i64 %184, 47
  %211 = xor i64 %209, %210
  %212 = xor i64 %211, %184
  %213 = mul i64 %212, 2654435761
  store i64 %213, ptr %54, align 8, !alias.scope !188, !noalias !193
  %214 = load i64, ptr %55, align 1
  %215 = lshr i64 %183, 47
  %216 = xor i64 %214, %215
  %217 = xor i64 %216, %183
  %218 = mul i64 %217, 2654435761
  store i64 %218, ptr %56, align 8, !alias.scope !188, !noalias !193
  %219 = load i64, ptr %57, align 1
  %220 = lshr i64 %182, 47
  %221 = xor i64 %219, %220
  %222 = xor i64 %221, %182
  %223 = mul i64 %222, 2654435761
  store i64 %223, ptr %58, align 8, !alias.scope !188, !noalias !193
  %224 = load i64, ptr %59, align 1
  %225 = lshr i64 %181, 47
  %226 = xor i64 %224, %225
  %227 = xor i64 %226, %181
  %228 = mul i64 %227, 2654435761
  store i64 %228, ptr %60, align 8, !alias.scope !188, !noalias !193
  %229 = shl i64 %65, 6
  %230 = getelementptr inbounds nuw i8, ptr %63, i64 %229
  %231 = sub i64 %62, %65
  %232 = icmp ult i64 %231, %23
  br i1 %232, label %233, label %61, !llvm.loop !85

233:                                              ; preds = %180, %16
  %234 = phi i64 [ %19, %16 ], [ %231, %180 ]
  %235 = phi ptr [ %24, %16 ], [ %230, %180 ]
  %236 = phi ptr [ %26, %16 ], [ %8, %180 ]
  %237 = icmp eq i64 %234, 0
  br i1 %237, label %349, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %240 = load i64, ptr %239, align 8, !alias.scope !205, !noalias !208
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %242 = load i64, ptr %241, align 8, !alias.scope !205, !noalias !208
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %244 = load i64, ptr %243, align 8, !alias.scope !205, !noalias !208
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %246 = load i64, ptr %245, align 8, !alias.scope !205, !noalias !208
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %248 = load i64, ptr %247, align 8, !alias.scope !205, !noalias !208
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %250 = load i64, ptr %249, align 8, !alias.scope !205, !noalias !208
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %252 = load i64, ptr %251, align 8, !alias.scope !205, !noalias !208
  %253 = load i64, ptr %3, align 8, !alias.scope !205, !noalias !208
  br label %254

254:                                              ; preds = %238, %254
  %255 = phi i64 [ %282, %254 ], [ %253, %238 ]
  %256 = phi i64 [ %286, %254 ], [ %252, %238 ]
  %257 = phi i64 [ %342, %254 ], [ %250, %238 ]
  %258 = phi i64 [ %346, %254 ], [ %248, %238 ]
  %259 = phi i64 [ %322, %254 ], [ %246, %238 ]
  %260 = phi i64 [ %326, %254 ], [ %244, %238 ]
  %261 = phi i64 [ %302, %254 ], [ %242, %238 ]
  %262 = phi i64 [ %306, %254 ], [ %240, %238 ]
  %263 = phi i64 [ %347, %254 ], [ 0, %238 ]
  %264 = shl i64 %263, 6
  %265 = getelementptr inbounds nuw i8, ptr %235, i64 %264
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %266, i32 0, i32 3, i32 1), !noalias !204
  %267 = shl i64 %263, 3
  %268 = getelementptr inbounds nuw i8, ptr %236, i64 %267
  %269 = load i64, ptr %265, align 1
  %270 = load i64, ptr %268, align 1
  %271 = xor i64 %270, %269
  %272 = add i64 %256, %269
  store i64 %272, ptr %251, align 8, !alias.scope !205, !noalias !208
  %273 = lshr i64 %271, 32
  %274 = and i64 %271, 4294967295
  %275 = mul nuw i64 %274, %273
  %276 = add i64 %275, %255
  store i64 %276, ptr %3, align 8, !alias.scope !205, !noalias !208
  %277 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %278 = load i64, ptr %277, align 1
  %279 = getelementptr inbounds nuw i8, ptr %268, i64 8
  %280 = load i64, ptr %279, align 1
  %281 = xor i64 %280, %278
  %282 = add i64 %276, %278
  store i64 %282, ptr %3, align 8, !alias.scope !205, !noalias !208
  %283 = lshr i64 %281, 32
  %284 = and i64 %281, 4294967295
  %285 = mul nuw i64 %284, %283
  %286 = add i64 %285, %272
  store i64 %286, ptr %251, align 8, !alias.scope !205, !noalias !208
  %287 = getelementptr inbounds nuw i8, ptr %265, i64 16
  %288 = load i64, ptr %287, align 1
  %289 = getelementptr inbounds nuw i8, ptr %268, i64 16
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %288
  %292 = add i64 %262, %288
  store i64 %292, ptr %239, align 8, !alias.scope !205, !noalias !208
  %293 = lshr i64 %291, 32
  %294 = and i64 %291, 4294967295
  %295 = mul nuw i64 %294, %293
  %296 = add i64 %295, %261
  store i64 %296, ptr %241, align 8, !alias.scope !205, !noalias !208
  %297 = getelementptr inbounds nuw i8, ptr %265, i64 24
  %298 = load i64, ptr %297, align 1
  %299 = getelementptr inbounds nuw i8, ptr %268, i64 24
  %300 = load i64, ptr %299, align 1
  %301 = xor i64 %300, %298
  %302 = add i64 %296, %298
  store i64 %302, ptr %241, align 8, !alias.scope !205, !noalias !208
  %303 = lshr i64 %301, 32
  %304 = and i64 %301, 4294967295
  %305 = mul nuw i64 %304, %303
  %306 = add i64 %305, %292
  store i64 %306, ptr %239, align 8, !alias.scope !205, !noalias !208
  %307 = getelementptr inbounds nuw i8, ptr %265, i64 32
  %308 = load i64, ptr %307, align 1
  %309 = getelementptr inbounds nuw i8, ptr %268, i64 32
  %310 = load i64, ptr %309, align 1
  %311 = xor i64 %310, %308
  %312 = add i64 %260, %308
  store i64 %312, ptr %243, align 8, !alias.scope !205, !noalias !208
  %313 = lshr i64 %311, 32
  %314 = and i64 %311, 4294967295
  %315 = mul nuw i64 %314, %313
  %316 = add i64 %315, %259
  store i64 %316, ptr %245, align 8, !alias.scope !205, !noalias !208
  %317 = getelementptr inbounds nuw i8, ptr %265, i64 40
  %318 = load i64, ptr %317, align 1
  %319 = getelementptr inbounds nuw i8, ptr %268, i64 40
  %320 = load i64, ptr %319, align 1
  %321 = xor i64 %320, %318
  %322 = add i64 %316, %318
  store i64 %322, ptr %245, align 8, !alias.scope !205, !noalias !208
  %323 = lshr i64 %321, 32
  %324 = and i64 %321, 4294967295
  %325 = mul nuw i64 %324, %323
  %326 = add i64 %325, %312
  store i64 %326, ptr %243, align 8, !alias.scope !205, !noalias !208
  %327 = getelementptr inbounds nuw i8, ptr %265, i64 48
  %328 = load i64, ptr %327, align 1
  %329 = getelementptr inbounds nuw i8, ptr %268, i64 48
  %330 = load i64, ptr %329, align 1
  %331 = xor i64 %330, %328
  %332 = add i64 %258, %328
  store i64 %332, ptr %247, align 8, !alias.scope !205, !noalias !208
  %333 = lshr i64 %331, 32
  %334 = and i64 %331, 4294967295
  %335 = mul nuw i64 %334, %333
  %336 = add i64 %335, %257
  store i64 %336, ptr %249, align 8, !alias.scope !205, !noalias !208
  %337 = getelementptr inbounds nuw i8, ptr %265, i64 56
  %338 = load i64, ptr %337, align 1
  %339 = getelementptr inbounds nuw i8, ptr %268, i64 56
  %340 = load i64, ptr %339, align 1
  %341 = xor i64 %340, %338
  %342 = add i64 %336, %338
  store i64 %342, ptr %249, align 8, !alias.scope !205, !noalias !208
  %343 = lshr i64 %341, 32
  %344 = and i64 %341, 4294967295
  %345 = mul nuw i64 %344, %343
  %346 = add i64 %345, %332
  store i64 %346, ptr %247, align 8, !alias.scope !205, !noalias !208
  %347 = add nuw i64 %263, 1
  %348 = icmp eq i64 %347, %234
  br i1 %348, label %349, label %254, !llvm.loop !72

349:                                              ; preds = %254, %233
  %350 = zext i32 %14 to i64
  %351 = getelementptr inbounds nuw i8, ptr %24, i64 %350
  %352 = getelementptr inbounds i8, ptr %351, i64 -64
  br label %362

353:                                              ; preds = %12
  %354 = sub nuw nsw i32 64, %14
  %355 = zext nneg i32 %354 to i64
  %356 = icmp ne i32 %14, 0
  tail call void @llvm.assume(i1 %356)
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %358 = sub nsw i64 0, %355
  %359 = getelementptr inbounds i8, ptr %13, i64 %358
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %359, i64 %355, i1 false)
  %360 = getelementptr inbounds nuw i8, ptr %2, i64 %355
  %361 = zext nneg i32 %14 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %360, ptr nonnull align 64 %357, i64 %361, i1 false)
  br label %362

362:                                              ; preds = %353, %349
  %363 = phi ptr [ %352, %349 ], [ %2, %353 ]
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %365 = load i64, ptr %364, align 32
  %366 = getelementptr inbounds nuw i8, ptr %8, i64 %365
  %367 = getelementptr inbounds i8, ptr %366, i64 -7
  %368 = load i64, ptr %363, align 1
  %369 = load i64, ptr %367, align 1
  %370 = xor i64 %369, %368
  %371 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %372 = load i64, ptr %371, align 8, !alias.scope !211, !noalias !214
  %373 = add i64 %372, %368
  store i64 %373, ptr %371, align 8, !alias.scope !211, !noalias !214
  %374 = lshr i64 %370, 32
  %375 = load i64, ptr %3, align 8, !alias.scope !211, !noalias !214
  %376 = and i64 %370, 4294967295
  %377 = mul nuw i64 %376, %374
  %378 = add i64 %377, %375
  store i64 %378, ptr %3, align 8, !alias.scope !211, !noalias !214
  %379 = getelementptr inbounds nuw i8, ptr %363, i64 8
  %380 = load i64, ptr %379, align 1
  %381 = getelementptr inbounds nuw i8, ptr %366, i64 1
  %382 = load i64, ptr %381, align 1
  %383 = xor i64 %382, %380
  %384 = add i64 %378, %380
  store i64 %384, ptr %3, align 8, !alias.scope !211, !noalias !214
  %385 = lshr i64 %383, 32
  %386 = and i64 %383, 4294967295
  %387 = mul nuw i64 %386, %385
  %388 = add i64 %387, %373
  store i64 %388, ptr %371, align 8, !alias.scope !211, !noalias !214
  %389 = getelementptr inbounds nuw i8, ptr %363, i64 16
  %390 = load i64, ptr %389, align 1
  %391 = getelementptr inbounds nuw i8, ptr %366, i64 9
  %392 = load i64, ptr %391, align 1
  %393 = xor i64 %392, %390
  %394 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %395 = load i64, ptr %394, align 8, !alias.scope !211, !noalias !214
  %396 = add i64 %395, %390
  store i64 %396, ptr %394, align 8, !alias.scope !211, !noalias !214
  %397 = lshr i64 %393, 32
  %398 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %399 = load i64, ptr %398, align 8, !alias.scope !211, !noalias !214
  %400 = and i64 %393, 4294967295
  %401 = mul nuw i64 %400, %397
  %402 = add i64 %401, %399
  store i64 %402, ptr %398, align 8, !alias.scope !211, !noalias !214
  %403 = getelementptr inbounds nuw i8, ptr %363, i64 24
  %404 = load i64, ptr %403, align 1
  %405 = getelementptr inbounds nuw i8, ptr %366, i64 17
  %406 = load i64, ptr %405, align 1
  %407 = xor i64 %406, %404
  %408 = add i64 %402, %404
  store i64 %408, ptr %398, align 8, !alias.scope !211, !noalias !214
  %409 = lshr i64 %407, 32
  %410 = and i64 %407, 4294967295
  %411 = mul nuw i64 %410, %409
  %412 = add i64 %411, %396
  store i64 %412, ptr %394, align 8, !alias.scope !211, !noalias !214
  %413 = getelementptr inbounds nuw i8, ptr %363, i64 32
  %414 = load i64, ptr %413, align 1
  %415 = getelementptr inbounds nuw i8, ptr %366, i64 25
  %416 = load i64, ptr %415, align 1
  %417 = xor i64 %416, %414
  %418 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %419 = load i64, ptr %418, align 8, !alias.scope !211, !noalias !214
  %420 = add i64 %419, %414
  store i64 %420, ptr %418, align 8, !alias.scope !211, !noalias !214
  %421 = lshr i64 %417, 32
  %422 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %423 = load i64, ptr %422, align 8, !alias.scope !211, !noalias !214
  %424 = and i64 %417, 4294967295
  %425 = mul nuw i64 %424, %421
  %426 = add i64 %425, %423
  store i64 %426, ptr %422, align 8, !alias.scope !211, !noalias !214
  %427 = getelementptr inbounds nuw i8, ptr %363, i64 40
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds nuw i8, ptr %366, i64 33
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %428
  %432 = add i64 %426, %428
  store i64 %432, ptr %422, align 8, !alias.scope !211, !noalias !214
  %433 = lshr i64 %431, 32
  %434 = and i64 %431, 4294967295
  %435 = mul nuw i64 %434, %433
  %436 = add i64 %435, %420
  store i64 %436, ptr %418, align 8, !alias.scope !211, !noalias !214
  %437 = getelementptr inbounds nuw i8, ptr %363, i64 48
  %438 = load i64, ptr %437, align 1
  %439 = getelementptr inbounds nuw i8, ptr %366, i64 41
  %440 = load i64, ptr %439, align 1
  %441 = xor i64 %440, %438
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %443 = load i64, ptr %442, align 8, !alias.scope !211, !noalias !214
  %444 = add i64 %443, %438
  store i64 %444, ptr %442, align 8, !alias.scope !211, !noalias !214
  %445 = lshr i64 %441, 32
  %446 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %447 = load i64, ptr %446, align 8, !alias.scope !211, !noalias !214
  %448 = and i64 %441, 4294967295
  %449 = mul nuw i64 %448, %445
  %450 = add i64 %449, %447
  store i64 %450, ptr %446, align 8, !alias.scope !211, !noalias !214
  %451 = getelementptr inbounds nuw i8, ptr %363, i64 56
  %452 = load i64, ptr %451, align 1
  %453 = getelementptr inbounds nuw i8, ptr %366, i64 49
  %454 = load i64, ptr %453, align 1
  %455 = xor i64 %454, %452
  %456 = add i64 %450, %452
  store i64 %456, ptr %446, align 8, !alias.scope !211, !noalias !214
  %457 = lshr i64 %455, 32
  %458 = and i64 %455, 4294967295
  %459 = mul nuw i64 %458, %457
  %460 = add i64 %459, %444
  store i64 %460, ptr %442, align 8, !alias.scope !211, !noalias !214
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #29
  %461 = add nuw i64 %365, 64
  %462 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %3, ptr noundef nonnull %8, i64 noundef %461, i64 noundef %10) #33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #29
  br label %477

463:                                              ; preds = %1
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %465 = load i32, ptr %464, align 4
  %466 = icmp eq i32 %465, 0
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %466, label %472, label %468

468:                                              ; preds = %463
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %470 = load i64, ptr %469, align 8
  %471 = tail call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef nonnull %467, i64 noundef %10, i64 noundef %470) #33
  br label %477

472:                                              ; preds = %463
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %474 = load i64, ptr %473, align 32
  %475 = add i64 %474, 64
  %476 = tail call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecret(ptr nocapture noundef nonnull %467, i64 noundef %10, ptr nocapture noundef %8, i64 noundef %475) #33
  br label %477

477:                                              ; preds = %472, %468, %362
  %478 = phi { i64, i64 } [ %462, %362 ], [ %471, %468 ], [ %476, %472 ]
  ret { i64, i64 } %478
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #22 {
  %4 = alloca [8 x i64], align 8
  %5 = alloca [192 x i8], align 8
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %7, label %363

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #29, !noalias !217
  %8 = add i64 %1, -1
  %9 = icmp ult i64 %8, 1024
  br i1 %9, label %162, label %10

10:                                               ; preds = %7
  %11 = lshr i64 %8, 10
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %19

19:                                               ; preds = %10, %126
  %20 = phi i64 [ %130, %126 ], [ 3266489917, %10 ]
  %21 = phi i64 [ %134, %126 ], [ -7046029288634856825, %10 ]
  %22 = phi i64 [ %154, %126 ], [ 2870177450012600261, %10 ]
  %23 = phi i64 [ %158, %126 ], [ 2654435761, %10 ]
  %24 = phi i64 [ %146, %126 ], [ -8796714831421723037, %10 ]
  %25 = phi i64 [ %150, %126 ], [ 2246822519, %10 ]
  %26 = phi i64 [ %138, %126 ], [ -4417276706812531889, %10 ]
  %27 = phi i64 [ %142, %126 ], [ 1609587929392839161, %10 ]
  %28 = phi i64 [ %159, %126 ], [ 0, %10 ]
  %29 = shl i64 %28, 10
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 %29
  br label %31

31:                                               ; preds = %19, %31
  %32 = phi i64 [ %20, %19 ], [ %59, %31 ]
  %33 = phi i64 [ %21, %19 ], [ %63, %31 ]
  %34 = phi i64 [ %22, %19 ], [ %119, %31 ]
  %35 = phi i64 [ %23, %19 ], [ %123, %31 ]
  %36 = phi i64 [ %24, %19 ], [ %99, %31 ]
  %37 = phi i64 [ %25, %19 ], [ %103, %31 ]
  %38 = phi i64 [ %26, %19 ], [ %79, %31 ]
  %39 = phi i64 [ %27, %19 ], [ %83, %31 ]
  %40 = phi i64 [ 0, %19 ], [ %124, %31 ]
  %41 = shl nuw nsw i64 %40, 6
  %42 = getelementptr inbounds nuw i8, ptr %30, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %43, i32 0, i32 3, i32 1)
  %44 = shl nuw nsw i64 %40, 3
  %45 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %44
  %46 = load i64, ptr %42, align 1
  %47 = load i64, ptr %45, align 8
  %48 = xor i64 %47, %46
  %49 = add i64 %33, %46
  %50 = lshr i64 %48, 32
  %51 = and i64 %48, 4294967295
  %52 = mul nuw i64 %51, %50
  %53 = add i64 %52, %32
  %54 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %55 = load i64, ptr %54, align 1
  %56 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %57 = load i64, ptr %56, align 8
  %58 = xor i64 %57, %55
  %59 = add i64 %53, %55
  %60 = lshr i64 %58, 32
  %61 = and i64 %58, 4294967295
  %62 = mul nuw i64 %61, %60
  %63 = add i64 %62, %49
  %64 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %65 = load i64, ptr %64, align 1
  %66 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %67 = load i64, ptr %66, align 8
  %68 = xor i64 %67, %65
  %69 = add i64 %39, %65
  %70 = lshr i64 %68, 32
  %71 = and i64 %68, 4294967295
  %72 = mul nuw i64 %71, %70
  %73 = add i64 %72, %38
  %74 = getelementptr inbounds nuw i8, ptr %42, i64 24
  %75 = load i64, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %45, i64 24
  %77 = load i64, ptr %76, align 8
  %78 = xor i64 %77, %75
  %79 = add i64 %73, %75
  %80 = lshr i64 %78, 32
  %81 = and i64 %78, 4294967295
  %82 = mul nuw i64 %81, %80
  %83 = add i64 %82, %69
  %84 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %85 = load i64, ptr %84, align 1
  %86 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %87 = load i64, ptr %86, align 8
  %88 = xor i64 %87, %85
  %89 = add i64 %37, %85
  %90 = lshr i64 %88, 32
  %91 = and i64 %88, 4294967295
  %92 = mul nuw i64 %91, %90
  %93 = add i64 %92, %36
  %94 = getelementptr inbounds nuw i8, ptr %42, i64 40
  %95 = load i64, ptr %94, align 1
  %96 = getelementptr inbounds nuw i8, ptr %45, i64 40
  %97 = load i64, ptr %96, align 8
  %98 = xor i64 %97, %95
  %99 = add i64 %93, %95
  %100 = lshr i64 %98, 32
  %101 = and i64 %98, 4294967295
  %102 = mul nuw i64 %101, %100
  %103 = add i64 %102, %89
  %104 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %105 = load i64, ptr %104, align 1
  %106 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %107 = load i64, ptr %106, align 8
  %108 = xor i64 %107, %105
  %109 = add i64 %35, %105
  %110 = lshr i64 %108, 32
  %111 = and i64 %108, 4294967295
  %112 = mul nuw i64 %111, %110
  %113 = add i64 %112, %34
  %114 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %117 = load i64, ptr %116, align 8
  %118 = xor i64 %117, %115
  %119 = add i64 %113, %115
  %120 = lshr i64 %118, 32
  %121 = and i64 %118, 4294967295
  %122 = mul nuw i64 %121, %120
  %123 = add i64 %122, %109
  %124 = add nuw nsw i64 %40, 1
  %125 = icmp eq i64 %124, 16
  br i1 %125, label %126, label %31, !llvm.loop !72

126:                                              ; preds = %31
  %127 = lshr i64 %59, 47
  %128 = xor i64 %127, %59
  %129 = xor i64 %128, -4329134394285701654
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %63, 47
  %132 = xor i64 %131, %63
  %133 = xor i64 %132, -1485321483350670907
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %79, 47
  %136 = xor i64 %135, %79
  %137 = xor i64 %136, 5321830579834785047
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %83, 47
  %140 = xor i64 %139, %83
  %141 = xor i64 %140, -7032137544937171245
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %99, 47
  %144 = xor i64 %143, %99
  %145 = xor i64 %144, -242834301215959509
  %146 = mul i64 %145, 2654435761
  %147 = lshr i64 %103, 47
  %148 = xor i64 %147, %103
  %149 = xor i64 %148, -3588858202114426737
  %150 = mul i64 %149, 2654435761
  %151 = lshr i64 %119, 47
  %152 = xor i64 %151, %119
  %153 = xor i64 %152, 2883454493032893253
  %154 = mul i64 %153, 2654435761
  %155 = lshr i64 %123, 47
  %156 = xor i64 %155, %123
  %157 = xor i64 %156, 9097354517224871855
  %158 = mul i64 %157, 2654435761
  %159 = add nuw nsw i64 %28, 1
  %160 = icmp eq i64 %159, %11
  br i1 %160, label %161, label %19, !llvm.loop !73

161:                                              ; preds = %126
  store i64 %130, ptr %4, align 8, !noalias !217
  store i64 %134, ptr %12, align 8, !noalias !217
  store i64 %138, ptr %14, align 8, !noalias !217
  store i64 %142, ptr %13, align 8, !noalias !217
  store i64 %146, ptr %16, align 8, !noalias !217
  store i64 %150, ptr %15, align 8, !noalias !217
  store i64 %154, ptr %18, align 8, !noalias !217
  store i64 %158, ptr %17, align 8, !noalias !217
  br label %162

162:                                              ; preds = %161, %7
  %163 = phi i64 [ 3266489917, %7 ], [ %130, %161 ]
  %164 = phi i64 [ -7046029288634856825, %7 ], [ %134, %161 ]
  %165 = phi i64 [ 2870177450012600261, %7 ], [ %154, %161 ]
  %166 = phi i64 [ 2654435761, %7 ], [ %158, %161 ]
  %167 = phi i64 [ -8796714831421723037, %7 ], [ %146, %161 ]
  %168 = phi i64 [ 2246822519, %7 ], [ %150, %161 ]
  %169 = phi i64 [ -4417276706812531889, %7 ], [ %138, %161 ]
  %170 = phi i64 [ 1609587929392839161, %7 ], [ %142, %161 ]
  %171 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %171)
  %172 = and i64 %8, -1024
  %173 = lshr i64 %8, 6
  %174 = and i64 %173, 15
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 %172
  %176 = icmp eq i64 %174, 0
  br i1 %176, label %281, label %177

177:                                              ; preds = %162
  %178 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %179 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %180 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %181 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %182 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %183 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %184 = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %185

185:                                              ; preds = %177, %185
  %186 = phi i64 [ %213, %185 ], [ %163, %177 ]
  %187 = phi i64 [ %217, %185 ], [ %164, %177 ]
  %188 = phi i64 [ %273, %185 ], [ %165, %177 ]
  %189 = phi i64 [ %277, %185 ], [ %166, %177 ]
  %190 = phi i64 [ %253, %185 ], [ %167, %177 ]
  %191 = phi i64 [ %257, %185 ], [ %168, %177 ]
  %192 = phi i64 [ %233, %185 ], [ %169, %177 ]
  %193 = phi i64 [ %237, %185 ], [ %170, %177 ]
  %194 = phi i64 [ %278, %185 ], [ 0, %177 ]
  %195 = shl nuw nsw i64 %194, 6
  %196 = getelementptr inbounds nuw i8, ptr %175, i64 %195
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %197, i32 0, i32 3, i32 1)
  %198 = shl nuw nsw i64 %194, 3
  %199 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %198
  %200 = load i64, ptr %196, align 1
  %201 = load i64, ptr %199, align 8
  %202 = xor i64 %201, %200
  %203 = add i64 %187, %200
  %204 = lshr i64 %202, 32
  %205 = and i64 %202, 4294967295
  %206 = mul nuw i64 %205, %204
  %207 = add i64 %206, %186
  %208 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %209 = load i64, ptr %208, align 1
  %210 = getelementptr inbounds nuw i8, ptr %199, i64 8
  %211 = load i64, ptr %210, align 8
  %212 = xor i64 %211, %209
  %213 = add i64 %207, %209
  %214 = lshr i64 %212, 32
  %215 = and i64 %212, 4294967295
  %216 = mul nuw i64 %215, %214
  %217 = add i64 %216, %203
  %218 = getelementptr inbounds nuw i8, ptr %196, i64 16
  %219 = load i64, ptr %218, align 1
  %220 = getelementptr inbounds nuw i8, ptr %199, i64 16
  %221 = load i64, ptr %220, align 8
  %222 = xor i64 %221, %219
  %223 = add i64 %193, %219
  %224 = lshr i64 %222, 32
  %225 = and i64 %222, 4294967295
  %226 = mul nuw i64 %225, %224
  %227 = add i64 %226, %192
  %228 = getelementptr inbounds nuw i8, ptr %196, i64 24
  %229 = load i64, ptr %228, align 1
  %230 = getelementptr inbounds nuw i8, ptr %199, i64 24
  %231 = load i64, ptr %230, align 8
  %232 = xor i64 %231, %229
  %233 = add i64 %227, %229
  %234 = lshr i64 %232, 32
  %235 = and i64 %232, 4294967295
  %236 = mul nuw i64 %235, %234
  %237 = add i64 %236, %223
  %238 = getelementptr inbounds nuw i8, ptr %196, i64 32
  %239 = load i64, ptr %238, align 1
  %240 = getelementptr inbounds nuw i8, ptr %199, i64 32
  %241 = load i64, ptr %240, align 8
  %242 = xor i64 %241, %239
  %243 = add i64 %191, %239
  %244 = lshr i64 %242, 32
  %245 = and i64 %242, 4294967295
  %246 = mul nuw i64 %245, %244
  %247 = add i64 %246, %190
  %248 = getelementptr inbounds nuw i8, ptr %196, i64 40
  %249 = load i64, ptr %248, align 1
  %250 = getelementptr inbounds nuw i8, ptr %199, i64 40
  %251 = load i64, ptr %250, align 8
  %252 = xor i64 %251, %249
  %253 = add i64 %247, %249
  %254 = lshr i64 %252, 32
  %255 = and i64 %252, 4294967295
  %256 = mul nuw i64 %255, %254
  %257 = add i64 %256, %243
  %258 = getelementptr inbounds nuw i8, ptr %196, i64 48
  %259 = load i64, ptr %258, align 1
  %260 = getelementptr inbounds nuw i8, ptr %199, i64 48
  %261 = load i64, ptr %260, align 8
  %262 = xor i64 %261, %259
  %263 = add i64 %189, %259
  %264 = lshr i64 %262, 32
  %265 = and i64 %262, 4294967295
  %266 = mul nuw i64 %265, %264
  %267 = add i64 %266, %188
  %268 = getelementptr inbounds nuw i8, ptr %196, i64 56
  %269 = load i64, ptr %268, align 1
  %270 = getelementptr inbounds nuw i8, ptr %199, i64 56
  %271 = load i64, ptr %270, align 8
  %272 = xor i64 %271, %269
  %273 = add i64 %267, %269
  %274 = lshr i64 %272, 32
  %275 = and i64 %272, 4294967295
  %276 = mul nuw i64 %275, %274
  %277 = add i64 %276, %263
  %278 = add nuw nsw i64 %194, 1
  %279 = icmp eq i64 %278, %174
  br i1 %279, label %280, label %185, !llvm.loop !72

280:                                              ; preds = %185
  store i64 %213, ptr %4, align 8, !alias.scope !221, !noalias !224
  store i64 %217, ptr %178, align 8, !alias.scope !221, !noalias !224
  store i64 %233, ptr %180, align 8, !alias.scope !221, !noalias !224
  store i64 %237, ptr %179, align 8, !alias.scope !221, !noalias !224
  store i64 %253, ptr %182, align 8, !alias.scope !221, !noalias !224
  store i64 %257, ptr %181, align 8, !alias.scope !221, !noalias !224
  store i64 %273, ptr %184, align 8, !alias.scope !221, !noalias !224
  store i64 %277, ptr %183, align 8, !alias.scope !221, !noalias !224
  br label %281

281:                                              ; preds = %280, %162
  %282 = phi i64 [ %165, %162 ], [ %273, %280 ]
  %283 = phi i64 [ %166, %162 ], [ %277, %280 ]
  %284 = phi i64 [ %167, %162 ], [ %253, %280 ]
  %285 = phi i64 [ %168, %162 ], [ %257, %280 ]
  %286 = phi i64 [ %169, %162 ], [ %233, %280 ]
  %287 = phi i64 [ %170, %162 ], [ %237, %280 ]
  %288 = phi i64 [ %163, %162 ], [ %213, %280 ]
  %289 = phi i64 [ %164, %162 ], [ %217, %280 ]
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %291 = getelementptr inbounds i8, ptr %290, i64 -64
  %292 = load i64, ptr %291, align 1
  %293 = xor i64 %292, -1556992608276218209
  %294 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %295 = add i64 %289, %292
  %296 = lshr i64 %293, 32
  %297 = and i64 %293, 4294967295
  %298 = mul nuw i64 %297, %296
  %299 = add i64 %298, %288
  %300 = getelementptr inbounds i8, ptr %290, i64 -56
  %301 = load i64, ptr %300, align 1
  %302 = xor i64 %301, -4196251135427498811
  %303 = add i64 %299, %301
  store i64 %303, ptr %4, align 8, !alias.scope !227, !noalias !230
  %304 = lshr i64 %302, 32
  %305 = and i64 %302, 4294967295
  %306 = mul nuw i64 %305, %304
  %307 = add i64 %306, %295
  store i64 %307, ptr %294, align 8, !alias.scope !227, !noalias !230
  %308 = getelementptr inbounds i8, ptr %290, i64 -48
  %309 = load i64, ptr %308, align 1
  %310 = xor i64 %309, 1723580219865931905
  %311 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %312 = add i64 %287, %309
  %313 = lshr i64 %310, 32
  %314 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %315 = and i64 %310, 4294967295
  %316 = mul nuw i64 %315, %313
  %317 = add i64 %316, %286
  %318 = getelementptr inbounds i8, ptr %290, i64 -40
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, -3221803331004277491
  %321 = add i64 %317, %319
  store i64 %321, ptr %314, align 8, !alias.scope !227, !noalias !230
  %322 = lshr i64 %320, 32
  %323 = and i64 %320, 4294967295
  %324 = mul nuw i64 %323, %322
  %325 = add i64 %324, %312
  store i64 %325, ptr %311, align 8, !alias.scope !227, !noalias !230
  %326 = getelementptr inbounds i8, ptr %290, i64 -32
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %327, 3143064850383918358
  %329 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %330 = add i64 %285, %327
  %331 = lshr i64 %328, 32
  %332 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %333 = and i64 %328, 4294967295
  %334 = mul nuw i64 %333, %331
  %335 = add i64 %334, %284
  %336 = getelementptr inbounds i8, ptr %290, i64 -24
  %337 = load i64, ptr %336, align 1
  %338 = xor i64 %337, -8071399103737053674
  %339 = add i64 %335, %337
  store i64 %339, ptr %332, align 8, !alias.scope !227, !noalias !230
  %340 = lshr i64 %338, 32
  %341 = and i64 %338, 4294967295
  %342 = mul nuw i64 %341, %340
  %343 = add i64 %342, %330
  store i64 %343, ptr %329, align 8, !alias.scope !227, !noalias !230
  %344 = getelementptr inbounds i8, ptr %290, i64 -16
  %345 = load i64, ptr %344, align 1
  %346 = xor i64 %345, 5030012605302946040
  %347 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %348 = add i64 %283, %345
  %349 = lshr i64 %346, 32
  %350 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %351 = and i64 %346, 4294967295
  %352 = mul nuw i64 %351, %349
  %353 = add i64 %352, %282
  %354 = getelementptr inbounds i8, ptr %290, i64 -8
  %355 = load i64, ptr %354, align 1
  %356 = xor i64 %355, -5825401622958753077
  %357 = add i64 %353, %355
  store i64 %357, ptr %350, align 8, !alias.scope !227, !noalias !230
  %358 = lshr i64 %356, 32
  %359 = and i64 %356, 4294967295
  %360 = mul nuw i64 %359, %358
  %361 = add i64 %360, %348
  store i64 %361, ptr %347, align 8, !alias.scope !227, !noalias !230
  %362 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %4, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192, i64 noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #29, !noalias !217
  br label %876

363:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #29, !noalias !233
  %364 = add i64 %2, -4734510112055689544
  %365 = sub i64 2066345149520216444, %2
  store i64 %364, ptr %5, align 8, !noalias !233
  %366 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %365, ptr %366, align 8, !noalias !233
  %367 = add i64 %2, -2623469361688619810
  %368 = sub i64 2262974939099578482, %2
  %369 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %367, ptr %369, align 8, !noalias !233
  %370 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %368, ptr %370, align 8, !noalias !233
  %371 = add i64 %2, 8711581037947681227
  %372 = sub i64 2410270004345854594, %2
  %373 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %371, ptr %373, align 8, !noalias !233
  %374 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %372, ptr %374, align 8, !noalias !233
  %375 = add i64 %2, -8204357891075471176
  %376 = sub i64 5487137525590930912, %2
  %377 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %375, ptr %377, align 8, !noalias !233
  %378 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %376, ptr %378, align 8, !noalias !233
  %379 = add i64 %2, -3818837453329782724
  %380 = sub i64 -6688317018830679928, %2
  %381 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %379, ptr %381, align 8, !noalias !233
  %382 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %380, ptr %382, align 8, !noalias !233
  %383 = add i64 %2, 5690594596133299313
  %384 = sub i64 -2833645246901970632, %2
  %385 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %383, ptr %385, align 8, !noalias !233
  %386 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %384, ptr %386, align 8, !noalias !233
  %387 = add i64 %2, 4554437623014685352
  %388 = sub i64 2111919702937427193, %2
  %389 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %387, ptr %389, align 8, !noalias !233
  %390 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %388, ptr %390, align 8, !noalias !233
  %391 = add i64 %2, 3556072174620004746
  %392 = sub i64 7238261902898274248, %2
  %393 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %391, ptr %393, align 8, !noalias !233
  %394 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %392, ptr %394, align 8, !noalias !233
  %395 = add i64 %2, -4329134394285701654
  %396 = sub i64 -1485321483350670907, %2
  %397 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %395, ptr %397, align 8, !noalias !233
  %398 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %396, ptr %398, align 8, !noalias !233
  %399 = add i64 %2, 5321830579834785047
  %400 = sub i64 -7032137544937171245, %2
  %401 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %399, ptr %401, align 8, !noalias !233
  %402 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %400, ptr %402, align 8, !noalias !233
  %403 = add i64 %2, -242834301215959509
  %404 = sub i64 -3588858202114426737, %2
  %405 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %403, ptr %405, align 8, !noalias !233
  %406 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %404, ptr %406, align 8, !noalias !233
  %407 = add i64 %2, 2883454493032893253
  %408 = sub i64 9097354517224871855, %2
  %409 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %407, ptr %409, align 8, !noalias !233
  %410 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %408, ptr %410, align 8, !noalias !233
  %411 = add i64 %1, -1
  %412 = icmp ult i64 %411, 1024
  br i1 %412, label %557, label %413

413:                                              ; preds = %363
  %414 = lshr i64 %411, 10
  br label %415

415:                                              ; preds = %413, %522
  %416 = phi i64 [ 2654435761, %413 ], [ %554, %522 ]
  %417 = phi i64 [ 2870177450012600261, %413 ], [ %550, %522 ]
  %418 = phi i64 [ 2246822519, %413 ], [ %546, %522 ]
  %419 = phi i64 [ -8796714831421723037, %413 ], [ %542, %522 ]
  %420 = phi i64 [ 1609587929392839161, %413 ], [ %538, %522 ]
  %421 = phi i64 [ -4417276706812531889, %413 ], [ %534, %522 ]
  %422 = phi i64 [ -7046029288634856825, %413 ], [ %530, %522 ]
  %423 = phi i64 [ 3266489917, %413 ], [ %526, %522 ]
  %424 = phi i64 [ 0, %413 ], [ %555, %522 ]
  %425 = shl i64 %424, 10
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 %425
  br label %427

427:                                              ; preds = %415, %427
  %428 = phi i64 [ %416, %415 ], [ %519, %427 ]
  %429 = phi i64 [ %417, %415 ], [ %515, %427 ]
  %430 = phi i64 [ %418, %415 ], [ %499, %427 ]
  %431 = phi i64 [ %419, %415 ], [ %495, %427 ]
  %432 = phi i64 [ %420, %415 ], [ %479, %427 ]
  %433 = phi i64 [ %421, %415 ], [ %475, %427 ]
  %434 = phi i64 [ %422, %415 ], [ %459, %427 ]
  %435 = phi i64 [ %423, %415 ], [ %455, %427 ]
  %436 = phi i64 [ 0, %415 ], [ %520, %427 ]
  %437 = shl nuw nsw i64 %436, 6
  %438 = getelementptr inbounds nuw i8, ptr %426, i64 %437
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %439, i32 0, i32 3, i32 1)
  %440 = shl nuw nsw i64 %436, 3
  %441 = getelementptr inbounds nuw i8, ptr %5, i64 %440
  %442 = load i64, ptr %438, align 1
  %443 = load i64, ptr %441, align 8
  %444 = xor i64 %443, %442
  %445 = add i64 %434, %442
  %446 = lshr i64 %444, 32
  %447 = and i64 %444, 4294967295
  %448 = mul nuw i64 %447, %446
  %449 = add i64 %448, %435
  %450 = getelementptr inbounds nuw i8, ptr %438, i64 8
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %441, i64 8
  %453 = load i64, ptr %452, align 8
  %454 = xor i64 %453, %451
  %455 = add i64 %449, %451
  %456 = lshr i64 %454, 32
  %457 = and i64 %454, 4294967295
  %458 = mul nuw i64 %457, %456
  %459 = add i64 %458, %445
  %460 = getelementptr inbounds nuw i8, ptr %438, i64 16
  %461 = load i64, ptr %460, align 1
  %462 = getelementptr inbounds nuw i8, ptr %441, i64 16
  %463 = load i64, ptr %462, align 8
  %464 = xor i64 %463, %461
  %465 = add i64 %432, %461
  %466 = lshr i64 %464, 32
  %467 = and i64 %464, 4294967295
  %468 = mul nuw i64 %467, %466
  %469 = add i64 %468, %433
  %470 = getelementptr inbounds nuw i8, ptr %438, i64 24
  %471 = load i64, ptr %470, align 1
  %472 = getelementptr inbounds nuw i8, ptr %441, i64 24
  %473 = load i64, ptr %472, align 8
  %474 = xor i64 %473, %471
  %475 = add i64 %469, %471
  %476 = lshr i64 %474, 32
  %477 = and i64 %474, 4294967295
  %478 = mul nuw i64 %477, %476
  %479 = add i64 %478, %465
  %480 = getelementptr inbounds nuw i8, ptr %438, i64 32
  %481 = load i64, ptr %480, align 1
  %482 = getelementptr inbounds nuw i8, ptr %441, i64 32
  %483 = load i64, ptr %482, align 8
  %484 = xor i64 %483, %481
  %485 = add i64 %430, %481
  %486 = lshr i64 %484, 32
  %487 = and i64 %484, 4294967295
  %488 = mul nuw i64 %487, %486
  %489 = add i64 %488, %431
  %490 = getelementptr inbounds nuw i8, ptr %438, i64 40
  %491 = load i64, ptr %490, align 1
  %492 = getelementptr inbounds nuw i8, ptr %441, i64 40
  %493 = load i64, ptr %492, align 8
  %494 = xor i64 %493, %491
  %495 = add i64 %489, %491
  %496 = lshr i64 %494, 32
  %497 = and i64 %494, 4294967295
  %498 = mul nuw i64 %497, %496
  %499 = add i64 %498, %485
  %500 = getelementptr inbounds nuw i8, ptr %438, i64 48
  %501 = load i64, ptr %500, align 1
  %502 = getelementptr inbounds nuw i8, ptr %441, i64 48
  %503 = load i64, ptr %502, align 8
  %504 = xor i64 %503, %501
  %505 = add i64 %428, %501
  %506 = lshr i64 %504, 32
  %507 = and i64 %504, 4294967295
  %508 = mul nuw i64 %507, %506
  %509 = add i64 %508, %429
  %510 = getelementptr inbounds nuw i8, ptr %438, i64 56
  %511 = load i64, ptr %510, align 1
  %512 = getelementptr inbounds nuw i8, ptr %441, i64 56
  %513 = load i64, ptr %512, align 8
  %514 = xor i64 %513, %511
  %515 = add i64 %509, %511
  %516 = lshr i64 %514, 32
  %517 = and i64 %514, 4294967295
  %518 = mul nuw i64 %517, %516
  %519 = add i64 %518, %505
  %520 = add nuw nsw i64 %436, 1
  %521 = icmp eq i64 %520, 16
  br i1 %521, label %522, label %427, !llvm.loop !72

522:                                              ; preds = %427
  %523 = lshr i64 %455, 47
  %524 = xor i64 %395, %523
  %525 = xor i64 %524, %455
  %526 = mul i64 %525, 2654435761
  %527 = lshr i64 %459, 47
  %528 = xor i64 %396, %527
  %529 = xor i64 %528, %459
  %530 = mul i64 %529, 2654435761
  %531 = lshr i64 %475, 47
  %532 = xor i64 %399, %531
  %533 = xor i64 %532, %475
  %534 = mul i64 %533, 2654435761
  %535 = lshr i64 %479, 47
  %536 = xor i64 %400, %535
  %537 = xor i64 %536, %479
  %538 = mul i64 %537, 2654435761
  %539 = lshr i64 %495, 47
  %540 = xor i64 %403, %539
  %541 = xor i64 %540, %495
  %542 = mul i64 %541, 2654435761
  %543 = lshr i64 %499, 47
  %544 = xor i64 %404, %543
  %545 = xor i64 %544, %499
  %546 = mul i64 %545, 2654435761
  %547 = lshr i64 %515, 47
  %548 = xor i64 %407, %547
  %549 = xor i64 %548, %515
  %550 = mul i64 %549, 2654435761
  %551 = lshr i64 %519, 47
  %552 = xor i64 %408, %551
  %553 = xor i64 %552, %519
  %554 = mul i64 %553, 2654435761
  %555 = add nuw nsw i64 %424, 1
  %556 = icmp eq i64 %555, %414
  br i1 %556, label %557, label %415, !llvm.loop !73

557:                                              ; preds = %522, %363
  %558 = phi i64 [ 2654435761, %363 ], [ %554, %522 ]
  %559 = phi i64 [ 2870177450012600261, %363 ], [ %550, %522 ]
  %560 = phi i64 [ 2246822519, %363 ], [ %546, %522 ]
  %561 = phi i64 [ -8796714831421723037, %363 ], [ %542, %522 ]
  %562 = phi i64 [ 1609587929392839161, %363 ], [ %538, %522 ]
  %563 = phi i64 [ -4417276706812531889, %363 ], [ %534, %522 ]
  %564 = phi i64 [ -7046029288634856825, %363 ], [ %530, %522 ]
  %565 = phi i64 [ 3266489917, %363 ], [ %526, %522 ]
  %566 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %566)
  %567 = and i64 %411, -1024
  %568 = lshr i64 %411, 6
  %569 = and i64 %568, 15
  %570 = getelementptr inbounds nuw i8, ptr %0, i64 %567
  %571 = icmp eq i64 %569, 0
  br i1 %571, label %667, label %572

572:                                              ; preds = %557, %572
  %573 = phi i64 [ %664, %572 ], [ %558, %557 ]
  %574 = phi i64 [ %660, %572 ], [ %559, %557 ]
  %575 = phi i64 [ %644, %572 ], [ %560, %557 ]
  %576 = phi i64 [ %640, %572 ], [ %561, %557 ]
  %577 = phi i64 [ %624, %572 ], [ %562, %557 ]
  %578 = phi i64 [ %620, %572 ], [ %563, %557 ]
  %579 = phi i64 [ %604, %572 ], [ %564, %557 ]
  %580 = phi i64 [ %600, %572 ], [ %565, %557 ]
  %581 = phi i64 [ %665, %572 ], [ 0, %557 ]
  %582 = shl nuw nsw i64 %581, 6
  %583 = getelementptr inbounds nuw i8, ptr %570, i64 %582
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %584, i32 0, i32 3, i32 1)
  %585 = shl nuw nsw i64 %581, 3
  %586 = getelementptr inbounds nuw i8, ptr %5, i64 %585
  %587 = load i64, ptr %583, align 1
  %588 = load i64, ptr %586, align 8
  %589 = xor i64 %588, %587
  %590 = add i64 %579, %587
  %591 = lshr i64 %589, 32
  %592 = and i64 %589, 4294967295
  %593 = mul nuw i64 %592, %591
  %594 = add i64 %593, %580
  %595 = getelementptr inbounds nuw i8, ptr %583, i64 8
  %596 = load i64, ptr %595, align 1
  %597 = getelementptr inbounds nuw i8, ptr %586, i64 8
  %598 = load i64, ptr %597, align 8
  %599 = xor i64 %598, %596
  %600 = add i64 %594, %596
  %601 = lshr i64 %599, 32
  %602 = and i64 %599, 4294967295
  %603 = mul nuw i64 %602, %601
  %604 = add i64 %603, %590
  %605 = getelementptr inbounds nuw i8, ptr %583, i64 16
  %606 = load i64, ptr %605, align 1
  %607 = getelementptr inbounds nuw i8, ptr %586, i64 16
  %608 = load i64, ptr %607, align 8
  %609 = xor i64 %608, %606
  %610 = add i64 %577, %606
  %611 = lshr i64 %609, 32
  %612 = and i64 %609, 4294967295
  %613 = mul nuw i64 %612, %611
  %614 = add i64 %613, %578
  %615 = getelementptr inbounds nuw i8, ptr %583, i64 24
  %616 = load i64, ptr %615, align 1
  %617 = getelementptr inbounds nuw i8, ptr %586, i64 24
  %618 = load i64, ptr %617, align 8
  %619 = xor i64 %618, %616
  %620 = add i64 %614, %616
  %621 = lshr i64 %619, 32
  %622 = and i64 %619, 4294967295
  %623 = mul nuw i64 %622, %621
  %624 = add i64 %623, %610
  %625 = getelementptr inbounds nuw i8, ptr %583, i64 32
  %626 = load i64, ptr %625, align 1
  %627 = getelementptr inbounds nuw i8, ptr %586, i64 32
  %628 = load i64, ptr %627, align 8
  %629 = xor i64 %628, %626
  %630 = add i64 %575, %626
  %631 = lshr i64 %629, 32
  %632 = and i64 %629, 4294967295
  %633 = mul nuw i64 %632, %631
  %634 = add i64 %633, %576
  %635 = getelementptr inbounds nuw i8, ptr %583, i64 40
  %636 = load i64, ptr %635, align 1
  %637 = getelementptr inbounds nuw i8, ptr %586, i64 40
  %638 = load i64, ptr %637, align 8
  %639 = xor i64 %638, %636
  %640 = add i64 %634, %636
  %641 = lshr i64 %639, 32
  %642 = and i64 %639, 4294967295
  %643 = mul nuw i64 %642, %641
  %644 = add i64 %643, %630
  %645 = getelementptr inbounds nuw i8, ptr %583, i64 48
  %646 = load i64, ptr %645, align 1
  %647 = getelementptr inbounds nuw i8, ptr %586, i64 48
  %648 = load i64, ptr %647, align 8
  %649 = xor i64 %648, %646
  %650 = add i64 %573, %646
  %651 = lshr i64 %649, 32
  %652 = and i64 %649, 4294967295
  %653 = mul nuw i64 %652, %651
  %654 = add i64 %653, %574
  %655 = getelementptr inbounds nuw i8, ptr %583, i64 56
  %656 = load i64, ptr %655, align 1
  %657 = getelementptr inbounds nuw i8, ptr %586, i64 56
  %658 = load i64, ptr %657, align 8
  %659 = xor i64 %658, %656
  %660 = add i64 %654, %656
  %661 = lshr i64 %659, 32
  %662 = and i64 %659, 4294967295
  %663 = mul nuw i64 %662, %661
  %664 = add i64 %663, %650
  %665 = add nuw nsw i64 %581, 1
  %666 = icmp eq i64 %665, %569
  br i1 %666, label %667, label %572, !llvm.loop !72

667:                                              ; preds = %572, %557
  %668 = phi i64 [ %558, %557 ], [ %664, %572 ]
  %669 = phi i64 [ %559, %557 ], [ %660, %572 ]
  %670 = phi i64 [ %560, %557 ], [ %644, %572 ]
  %671 = phi i64 [ %561, %557 ], [ %640, %572 ]
  %672 = phi i64 [ %562, %557 ], [ %624, %572 ]
  %673 = phi i64 [ %563, %557 ], [ %620, %572 ]
  %674 = phi i64 [ %564, %557 ], [ %604, %572 ]
  %675 = phi i64 [ %565, %557 ], [ %600, %572 ]
  %676 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %677 = getelementptr inbounds i8, ptr %676, i64 -64
  %678 = getelementptr inbounds nuw i8, ptr %5, i64 121
  %679 = load i64, ptr %677, align 1
  %680 = load i64, ptr %678, align 1
  %681 = xor i64 %680, %679
  %682 = add i64 %674, %679
  %683 = lshr i64 %681, 32
  %684 = and i64 %681, 4294967295
  %685 = mul nuw i64 %684, %683
  %686 = add i64 %685, %675
  %687 = getelementptr inbounds i8, ptr %676, i64 -56
  %688 = load i64, ptr %687, align 1
  %689 = getelementptr inbounds nuw i8, ptr %5, i64 129
  %690 = load i64, ptr %689, align 1
  %691 = xor i64 %690, %688
  %692 = add i64 %686, %688
  %693 = lshr i64 %691, 32
  %694 = and i64 %691, 4294967295
  %695 = mul nuw i64 %694, %693
  %696 = add i64 %695, %682
  %697 = getelementptr inbounds i8, ptr %676, i64 -48
  %698 = load i64, ptr %697, align 1
  %699 = getelementptr inbounds nuw i8, ptr %5, i64 137
  %700 = load i64, ptr %699, align 1
  %701 = xor i64 %700, %698
  %702 = add i64 %672, %698
  %703 = lshr i64 %701, 32
  %704 = and i64 %701, 4294967295
  %705 = mul nuw i64 %704, %703
  %706 = add i64 %705, %673
  %707 = getelementptr inbounds i8, ptr %676, i64 -40
  %708 = load i64, ptr %707, align 1
  %709 = getelementptr inbounds nuw i8, ptr %5, i64 145
  %710 = load i64, ptr %709, align 1
  %711 = xor i64 %710, %708
  %712 = add i64 %706, %708
  %713 = lshr i64 %711, 32
  %714 = and i64 %711, 4294967295
  %715 = mul nuw i64 %714, %713
  %716 = add i64 %715, %702
  %717 = getelementptr inbounds i8, ptr %676, i64 -32
  %718 = load i64, ptr %717, align 1
  %719 = getelementptr inbounds nuw i8, ptr %5, i64 153
  %720 = load i64, ptr %719, align 1
  %721 = xor i64 %720, %718
  %722 = add i64 %670, %718
  %723 = lshr i64 %721, 32
  %724 = and i64 %721, 4294967295
  %725 = mul nuw i64 %724, %723
  %726 = add i64 %725, %671
  %727 = getelementptr inbounds i8, ptr %676, i64 -24
  %728 = load i64, ptr %727, align 1
  %729 = getelementptr inbounds nuw i8, ptr %5, i64 161
  %730 = load i64, ptr %729, align 1
  %731 = xor i64 %730, %728
  %732 = add i64 %726, %728
  %733 = lshr i64 %731, 32
  %734 = and i64 %731, 4294967295
  %735 = mul nuw i64 %734, %733
  %736 = add i64 %735, %722
  %737 = getelementptr inbounds i8, ptr %676, i64 -16
  %738 = load i64, ptr %737, align 1
  %739 = getelementptr inbounds nuw i8, ptr %5, i64 169
  %740 = load i64, ptr %739, align 1
  %741 = xor i64 %740, %738
  %742 = add i64 %668, %738
  %743 = lshr i64 %741, 32
  %744 = and i64 %741, 4294967295
  %745 = mul nuw i64 %744, %743
  %746 = add i64 %745, %669
  %747 = getelementptr inbounds i8, ptr %676, i64 -8
  %748 = load i64, ptr %747, align 1
  %749 = getelementptr inbounds nuw i8, ptr %5, i64 177
  %750 = load i64, ptr %749, align 1
  %751 = xor i64 %750, %748
  %752 = add i64 %746, %748
  %753 = lshr i64 %751, 32
  %754 = and i64 %751, 4294967295
  %755 = mul nuw i64 %754, %753
  %756 = add i64 %755, %742
  %757 = getelementptr inbounds nuw i8, ptr %5, i64 11
  %758 = mul i64 %1, -7046029288634856825
  %759 = load i64, ptr %757, align 1, !alias.scope !236, !noalias !243
  %760 = xor i64 %759, %692
  %761 = getelementptr inbounds nuw i8, ptr %5, i64 19
  %762 = load i64, ptr %761, align 1, !alias.scope !236, !noalias !243
  %763 = xor i64 %762, %696
  %764 = zext i64 %760 to i128
  %765 = zext i64 %763 to i128
  %766 = mul nuw i128 %765, %764
  %767 = lshr i128 %766, 64
  %768 = xor i128 %767, %766
  %769 = trunc i128 %768 to i64
  %770 = add i64 %758, %769
  %771 = getelementptr inbounds nuw i8, ptr %5, i64 27
  %772 = load i64, ptr %771, align 1, !alias.scope !236, !noalias !243
  %773 = xor i64 %772, %712
  %774 = getelementptr inbounds nuw i8, ptr %5, i64 35
  %775 = load i64, ptr %774, align 1, !alias.scope !236, !noalias !243
  %776 = xor i64 %775, %716
  %777 = zext i64 %773 to i128
  %778 = zext i64 %776 to i128
  %779 = mul nuw i128 %778, %777
  %780 = lshr i128 %779, 64
  %781 = xor i128 %780, %779
  %782 = trunc i128 %781 to i64
  %783 = add i64 %770, %782
  %784 = getelementptr inbounds nuw i8, ptr %5, i64 43
  %785 = load i64, ptr %784, align 1, !alias.scope !236, !noalias !243
  %786 = xor i64 %785, %732
  %787 = getelementptr inbounds nuw i8, ptr %5, i64 51
  %788 = load i64, ptr %787, align 1, !alias.scope !236, !noalias !243
  %789 = xor i64 %788, %736
  %790 = zext i64 %786 to i128
  %791 = zext i64 %789 to i128
  %792 = mul nuw i128 %791, %790
  %793 = lshr i128 %792, 64
  %794 = xor i128 %793, %792
  %795 = trunc i128 %794 to i64
  %796 = add i64 %783, %795
  %797 = getelementptr inbounds nuw i8, ptr %5, i64 59
  %798 = load i64, ptr %797, align 1, !alias.scope !236, !noalias !243
  %799 = xor i64 %798, %752
  %800 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %801 = load i64, ptr %800, align 1, !alias.scope !236, !noalias !243
  %802 = xor i64 %801, %756
  %803 = zext i64 %799 to i128
  %804 = zext i64 %802 to i128
  %805 = mul nuw i128 %804, %803
  %806 = lshr i128 %805, 64
  %807 = xor i128 %806, %805
  %808 = trunc i128 %807 to i64
  %809 = add i64 %796, %808
  %810 = lshr i64 %809, 37
  %811 = xor i64 %810, %809
  %812 = mul i64 %811, 1609587791953885689
  %813 = lshr i64 %812, 32
  %814 = xor i64 %813, %812
  %815 = getelementptr inbounds nuw i8, ptr %5, i64 117
  %816 = mul i64 %1, -4417276706812531889
  %817 = xor i64 %816, -1
  %818 = load i64, ptr %815, align 1, !alias.scope !247, !noalias !250
  %819 = xor i64 %818, %692
  %820 = getelementptr inbounds nuw i8, ptr %5, i64 125
  %821 = load i64, ptr %820, align 1, !alias.scope !247, !noalias !250
  %822 = xor i64 %821, %696
  %823 = zext i64 %819 to i128
  %824 = zext i64 %822 to i128
  %825 = mul nuw i128 %824, %823
  %826 = lshr i128 %825, 64
  %827 = xor i128 %826, %825
  %828 = trunc i128 %827 to i64
  %829 = add i64 %828, %817
  %830 = getelementptr inbounds nuw i8, ptr %5, i64 133
  %831 = load i64, ptr %830, align 1, !alias.scope !247, !noalias !250
  %832 = xor i64 %831, %712
  %833 = getelementptr inbounds nuw i8, ptr %5, i64 141
  %834 = load i64, ptr %833, align 1, !alias.scope !247, !noalias !250
  %835 = xor i64 %834, %716
  %836 = zext i64 %832 to i128
  %837 = zext i64 %835 to i128
  %838 = mul nuw i128 %837, %836
  %839 = lshr i128 %838, 64
  %840 = xor i128 %839, %838
  %841 = trunc i128 %840 to i64
  %842 = add i64 %829, %841
  %843 = getelementptr inbounds nuw i8, ptr %5, i64 149
  %844 = load i64, ptr %843, align 1, !alias.scope !247, !noalias !250
  %845 = xor i64 %844, %732
  %846 = getelementptr inbounds nuw i8, ptr %5, i64 157
  %847 = load i64, ptr %846, align 1, !alias.scope !247, !noalias !250
  %848 = xor i64 %847, %736
  %849 = zext i64 %845 to i128
  %850 = zext i64 %848 to i128
  %851 = mul nuw i128 %850, %849
  %852 = lshr i128 %851, 64
  %853 = xor i128 %852, %851
  %854 = trunc i128 %853 to i64
  %855 = add i64 %842, %854
  %856 = getelementptr inbounds nuw i8, ptr %5, i64 165
  %857 = load i64, ptr %856, align 1, !alias.scope !247, !noalias !250
  %858 = xor i64 %857, %752
  %859 = getelementptr inbounds nuw i8, ptr %5, i64 173
  %860 = load i64, ptr %859, align 1, !alias.scope !247, !noalias !250
  %861 = xor i64 %860, %756
  %862 = zext i64 %858 to i128
  %863 = zext i64 %861 to i128
  %864 = mul nuw i128 %863, %862
  %865 = lshr i128 %864, 64
  %866 = xor i128 %865, %864
  %867 = trunc i128 %866 to i64
  %868 = add i64 %855, %867
  %869 = lshr i64 %868, 37
  %870 = xor i64 %869, %868
  %871 = mul i64 %870, 1609587791953885689
  %872 = lshr i64 %871, 32
  %873 = xor i64 %872, %871
  %874 = insertvalue { i64, i64 } poison, i64 %814, 0
  %875 = insertvalue { i64, i64 } %874, i64 %873, 1
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #29, !noalias !233
  br label %876

876:                                              ; preds = %281, %667
  %877 = phi { i64, i64 } [ %362, %281 ], [ %875, %667 ]
  ret { i64, i64 } %877
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #23 {
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
  br i1 %225, label %313, label %226, !llvm.loop !252

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
  br i1 %269, label %313, label %270, !llvm.loop !252

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noalias nocapture noundef nonnull readonly %0, ptr noalias nocapture noundef readonly %1, i64 noundef range(i64 75, 0) %2, i64 noundef %3) unnamed_addr #24 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %6 = mul i64 %3, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %7 = load i64, ptr %0, align 8, !alias.scope !263, !noalias !266
  %8 = load i64, ptr %5, align 1, !alias.scope !268, !noalias !269
  %9 = xor i64 %8, %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 8, !alias.scope !263, !noalias !266
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %13 = load i64, ptr %12, align 1, !alias.scope !268, !noalias !269
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
  %24 = load i64, ptr %22, align 8, !alias.scope !263, !noalias !266
  %25 = load i64, ptr %23, align 1, !alias.scope !268, !noalias !269
  %26 = xor i64 %25, %24
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 8, !alias.scope !263, !noalias !266
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 35
  %30 = load i64, ptr %29, align 1, !alias.scope !268, !noalias !269
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
  %41 = load i64, ptr %39, align 8, !alias.scope !263, !noalias !266
  %42 = load i64, ptr %40, align 1, !alias.scope !268, !noalias !269
  %43 = xor i64 %42, %41
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %45 = load i64, ptr %44, align 8, !alias.scope !263, !noalias !266
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 51
  %47 = load i64, ptr %46, align 1, !alias.scope !268, !noalias !269
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
  %58 = load i64, ptr %56, align 8, !alias.scope !263, !noalias !266
  %59 = load i64, ptr %57, align 1, !alias.scope !268, !noalias !269
  %60 = xor i64 %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !263, !noalias !266
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 67
  %64 = load i64, ptr %63, align 1, !alias.scope !268, !noalias !269
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
  %82 = load i64, ptr %79, align 1, !alias.scope !270, !noalias !273
  %83 = xor i64 %82, %7
  %84 = getelementptr inbounds i8, ptr %78, i64 -67
  %85 = load i64, ptr %84, align 1, !alias.scope !270, !noalias !273
  %86 = xor i64 %85, %11
  %87 = zext i64 %83 to i128
  %88 = zext i64 %86 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %92, %81
  %94 = getelementptr inbounds i8, ptr %78, i64 -59
  %95 = load i64, ptr %94, align 1, !alias.scope !270, !noalias !273
  %96 = xor i64 %95, %24
  %97 = getelementptr inbounds i8, ptr %78, i64 -51
  %98 = load i64, ptr %97, align 1, !alias.scope !270, !noalias !273
  %99 = xor i64 %98, %28
  %100 = zext i64 %96 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %93, %105
  %107 = getelementptr inbounds i8, ptr %78, i64 -43
  %108 = load i64, ptr %107, align 1, !alias.scope !270, !noalias !273
  %109 = xor i64 %108, %41
  %110 = getelementptr inbounds i8, ptr %78, i64 -35
  %111 = load i64, ptr %110, align 1, !alias.scope !270, !noalias !273
  %112 = xor i64 %111, %45
  %113 = zext i64 %109 to i128
  %114 = zext i64 %112 to i128
  %115 = mul nuw i128 %114, %113
  %116 = lshr i128 %115, 64
  %117 = xor i128 %116, %115
  %118 = trunc i128 %117 to i64
  %119 = add i64 %106, %118
  %120 = getelementptr inbounds i8, ptr %78, i64 -27
  %121 = load i64, ptr %120, align 1, !alias.scope !270, !noalias !273
  %122 = xor i64 %121, %58
  %123 = getelementptr inbounds i8, ptr %78, i64 -19
  %124 = load i64, ptr %123, align 1, !alias.scope !270, !noalias !273
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #18 {
  %3 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #29, !noalias !275
  %4 = add i64 %1, -1
  %5 = icmp ult i64 %4, 1024
  br i1 %5, label %158, label %6

6:                                                ; preds = %2
  %7 = lshr i64 %4, 10
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %15

15:                                               ; preds = %6, %122
  %16 = phi i64 [ %126, %122 ], [ 3266489917, %6 ]
  %17 = phi i64 [ %130, %122 ], [ -7046029288634856825, %6 ]
  %18 = phi i64 [ %150, %122 ], [ 2870177450012600261, %6 ]
  %19 = phi i64 [ %154, %122 ], [ 2654435761, %6 ]
  %20 = phi i64 [ %142, %122 ], [ -8796714831421723037, %6 ]
  %21 = phi i64 [ %146, %122 ], [ 2246822519, %6 ]
  %22 = phi i64 [ %134, %122 ], [ -4417276706812531889, %6 ]
  %23 = phi i64 [ %138, %122 ], [ 1609587929392839161, %6 ]
  %24 = phi i64 [ %155, %122 ], [ 0, %6 ]
  %25 = shl i64 %24, 10
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  br label %27

27:                                               ; preds = %15, %27
  %28 = phi i64 [ %16, %15 ], [ %55, %27 ]
  %29 = phi i64 [ %17, %15 ], [ %59, %27 ]
  %30 = phi i64 [ %18, %15 ], [ %115, %27 ]
  %31 = phi i64 [ %19, %15 ], [ %119, %27 ]
  %32 = phi i64 [ %20, %15 ], [ %95, %27 ]
  %33 = phi i64 [ %21, %15 ], [ %99, %27 ]
  %34 = phi i64 [ %22, %15 ], [ %75, %27 ]
  %35 = phi i64 [ %23, %15 ], [ %79, %27 ]
  %36 = phi i64 [ 0, %15 ], [ %120, %27 ]
  %37 = shl nuw nsw i64 %36, 6
  %38 = getelementptr inbounds nuw i8, ptr %26, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %39, i32 0, i32 3, i32 1)
  %40 = shl nuw nsw i64 %36, 3
  %41 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %40
  %42 = load i64, ptr %38, align 1
  %43 = load i64, ptr %41, align 8
  %44 = xor i64 %43, %42
  %45 = add i64 %29, %42
  %46 = lshr i64 %44, 32
  %47 = and i64 %44, 4294967295
  %48 = mul nuw i64 %47, %46
  %49 = add i64 %48, %28
  %50 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %51 = load i64, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %53 = load i64, ptr %52, align 8
  %54 = xor i64 %53, %51
  %55 = add i64 %49, %51
  %56 = lshr i64 %54, 32
  %57 = and i64 %54, 4294967295
  %58 = mul nuw i64 %57, %56
  %59 = add i64 %58, %45
  %60 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %61 = load i64, ptr %60, align 1
  %62 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %63 = load i64, ptr %62, align 8
  %64 = xor i64 %63, %61
  %65 = add i64 %35, %61
  %66 = lshr i64 %64, 32
  %67 = and i64 %64, 4294967295
  %68 = mul nuw i64 %67, %66
  %69 = add i64 %68, %34
  %70 = getelementptr inbounds nuw i8, ptr %38, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %41, i64 24
  %73 = load i64, ptr %72, align 8
  %74 = xor i64 %73, %71
  %75 = add i64 %69, %71
  %76 = lshr i64 %74, 32
  %77 = and i64 %74, 4294967295
  %78 = mul nuw i64 %77, %76
  %79 = add i64 %78, %65
  %80 = getelementptr inbounds nuw i8, ptr %38, i64 32
  %81 = load i64, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %83 = load i64, ptr %82, align 8
  %84 = xor i64 %83, %81
  %85 = add i64 %33, %81
  %86 = lshr i64 %84, 32
  %87 = and i64 %84, 4294967295
  %88 = mul nuw i64 %87, %86
  %89 = add i64 %88, %32
  %90 = getelementptr inbounds nuw i8, ptr %38, i64 40
  %91 = load i64, ptr %90, align 1
  %92 = getelementptr inbounds nuw i8, ptr %41, i64 40
  %93 = load i64, ptr %92, align 8
  %94 = xor i64 %93, %91
  %95 = add i64 %89, %91
  %96 = lshr i64 %94, 32
  %97 = and i64 %94, 4294967295
  %98 = mul nuw i64 %97, %96
  %99 = add i64 %98, %85
  %100 = getelementptr inbounds nuw i8, ptr %38, i64 48
  %101 = load i64, ptr %100, align 1
  %102 = getelementptr inbounds nuw i8, ptr %41, i64 48
  %103 = load i64, ptr %102, align 8
  %104 = xor i64 %103, %101
  %105 = add i64 %31, %101
  %106 = lshr i64 %104, 32
  %107 = and i64 %104, 4294967295
  %108 = mul nuw i64 %107, %106
  %109 = add i64 %108, %30
  %110 = getelementptr inbounds nuw i8, ptr %38, i64 56
  %111 = load i64, ptr %110, align 1
  %112 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %113 = load i64, ptr %112, align 8
  %114 = xor i64 %113, %111
  %115 = add i64 %109, %111
  %116 = lshr i64 %114, 32
  %117 = and i64 %114, 4294967295
  %118 = mul nuw i64 %117, %116
  %119 = add i64 %118, %105
  %120 = add nuw nsw i64 %36, 1
  %121 = icmp eq i64 %120, 16
  br i1 %121, label %122, label %27, !llvm.loop !72

122:                                              ; preds = %27
  %123 = lshr i64 %55, 47
  %124 = xor i64 %123, %55
  %125 = xor i64 %124, -4329134394285701654
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %59, 47
  %128 = xor i64 %127, %59
  %129 = xor i64 %128, -1485321483350670907
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %75, 47
  %132 = xor i64 %131, %75
  %133 = xor i64 %132, 5321830579834785047
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %79, 47
  %136 = xor i64 %135, %79
  %137 = xor i64 %136, -7032137544937171245
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %95, 47
  %140 = xor i64 %139, %95
  %141 = xor i64 %140, -242834301215959509
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %99, 47
  %144 = xor i64 %143, %99
  %145 = xor i64 %144, -3588858202114426737
  %146 = mul i64 %145, 2654435761
  %147 = lshr i64 %115, 47
  %148 = xor i64 %147, %115
  %149 = xor i64 %148, 2883454493032893253
  %150 = mul i64 %149, 2654435761
  %151 = lshr i64 %119, 47
  %152 = xor i64 %151, %119
  %153 = xor i64 %152, 9097354517224871855
  %154 = mul i64 %153, 2654435761
  %155 = add nuw nsw i64 %24, 1
  %156 = icmp eq i64 %155, %7
  br i1 %156, label %157, label %15, !llvm.loop !73

157:                                              ; preds = %122
  store i64 %126, ptr %3, align 8, !noalias !275
  store i64 %130, ptr %8, align 8, !noalias !275
  store i64 %134, ptr %10, align 8, !noalias !275
  store i64 %138, ptr %9, align 8, !noalias !275
  store i64 %142, ptr %12, align 8, !noalias !275
  store i64 %146, ptr %11, align 8, !noalias !275
  store i64 %150, ptr %14, align 8, !noalias !275
  store i64 %154, ptr %13, align 8, !noalias !275
  br label %158

158:                                              ; preds = %157, %2
  %159 = phi i64 [ 3266489917, %2 ], [ %126, %157 ]
  %160 = phi i64 [ -7046029288634856825, %2 ], [ %130, %157 ]
  %161 = phi i64 [ 2870177450012600261, %2 ], [ %150, %157 ]
  %162 = phi i64 [ 2654435761, %2 ], [ %154, %157 ]
  %163 = phi i64 [ -8796714831421723037, %2 ], [ %142, %157 ]
  %164 = phi i64 [ 2246822519, %2 ], [ %146, %157 ]
  %165 = phi i64 [ -4417276706812531889, %2 ], [ %134, %157 ]
  %166 = phi i64 [ 1609587929392839161, %2 ], [ %138, %157 ]
  %167 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %167)
  %168 = and i64 %4, -1024
  %169 = lshr i64 %4, 6
  %170 = and i64 %169, 15
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 %168
  %172 = icmp eq i64 %170, 0
  br i1 %172, label %277, label %173

173:                                              ; preds = %158
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %175 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %176 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %177 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %181

181:                                              ; preds = %173, %181
  %182 = phi i64 [ %209, %181 ], [ %159, %173 ]
  %183 = phi i64 [ %213, %181 ], [ %160, %173 ]
  %184 = phi i64 [ %269, %181 ], [ %161, %173 ]
  %185 = phi i64 [ %273, %181 ], [ %162, %173 ]
  %186 = phi i64 [ %249, %181 ], [ %163, %173 ]
  %187 = phi i64 [ %253, %181 ], [ %164, %173 ]
  %188 = phi i64 [ %229, %181 ], [ %165, %173 ]
  %189 = phi i64 [ %233, %181 ], [ %166, %173 ]
  %190 = phi i64 [ %274, %181 ], [ 0, %173 ]
  %191 = shl nuw nsw i64 %190, 6
  %192 = getelementptr inbounds nuw i8, ptr %171, i64 %191
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %193, i32 0, i32 3, i32 1)
  %194 = shl nuw nsw i64 %190, 3
  %195 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %194
  %196 = load i64, ptr %192, align 1
  %197 = load i64, ptr %195, align 8
  %198 = xor i64 %197, %196
  %199 = add i64 %183, %196
  %200 = lshr i64 %198, 32
  %201 = and i64 %198, 4294967295
  %202 = mul nuw i64 %201, %200
  %203 = add i64 %202, %182
  %204 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %205 = load i64, ptr %204, align 1
  %206 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %207 = load i64, ptr %206, align 8
  %208 = xor i64 %207, %205
  %209 = add i64 %203, %205
  %210 = lshr i64 %208, 32
  %211 = and i64 %208, 4294967295
  %212 = mul nuw i64 %211, %210
  %213 = add i64 %212, %199
  %214 = getelementptr inbounds nuw i8, ptr %192, i64 16
  %215 = load i64, ptr %214, align 1
  %216 = getelementptr inbounds nuw i8, ptr %195, i64 16
  %217 = load i64, ptr %216, align 8
  %218 = xor i64 %217, %215
  %219 = add i64 %189, %215
  %220 = lshr i64 %218, 32
  %221 = and i64 %218, 4294967295
  %222 = mul nuw i64 %221, %220
  %223 = add i64 %222, %188
  %224 = getelementptr inbounds nuw i8, ptr %192, i64 24
  %225 = load i64, ptr %224, align 1
  %226 = getelementptr inbounds nuw i8, ptr %195, i64 24
  %227 = load i64, ptr %226, align 8
  %228 = xor i64 %227, %225
  %229 = add i64 %223, %225
  %230 = lshr i64 %228, 32
  %231 = and i64 %228, 4294967295
  %232 = mul nuw i64 %231, %230
  %233 = add i64 %232, %219
  %234 = getelementptr inbounds nuw i8, ptr %192, i64 32
  %235 = load i64, ptr %234, align 1
  %236 = getelementptr inbounds nuw i8, ptr %195, i64 32
  %237 = load i64, ptr %236, align 8
  %238 = xor i64 %237, %235
  %239 = add i64 %187, %235
  %240 = lshr i64 %238, 32
  %241 = and i64 %238, 4294967295
  %242 = mul nuw i64 %241, %240
  %243 = add i64 %242, %186
  %244 = getelementptr inbounds nuw i8, ptr %192, i64 40
  %245 = load i64, ptr %244, align 1
  %246 = getelementptr inbounds nuw i8, ptr %195, i64 40
  %247 = load i64, ptr %246, align 8
  %248 = xor i64 %247, %245
  %249 = add i64 %243, %245
  %250 = lshr i64 %248, 32
  %251 = and i64 %248, 4294967295
  %252 = mul nuw i64 %251, %250
  %253 = add i64 %252, %239
  %254 = getelementptr inbounds nuw i8, ptr %192, i64 48
  %255 = load i64, ptr %254, align 1
  %256 = getelementptr inbounds nuw i8, ptr %195, i64 48
  %257 = load i64, ptr %256, align 8
  %258 = xor i64 %257, %255
  %259 = add i64 %185, %255
  %260 = lshr i64 %258, 32
  %261 = and i64 %258, 4294967295
  %262 = mul nuw i64 %261, %260
  %263 = add i64 %262, %184
  %264 = getelementptr inbounds nuw i8, ptr %192, i64 56
  %265 = load i64, ptr %264, align 1
  %266 = getelementptr inbounds nuw i8, ptr %195, i64 56
  %267 = load i64, ptr %266, align 8
  %268 = xor i64 %267, %265
  %269 = add i64 %263, %265
  %270 = lshr i64 %268, 32
  %271 = and i64 %268, 4294967295
  %272 = mul nuw i64 %271, %270
  %273 = add i64 %272, %259
  %274 = add nuw nsw i64 %190, 1
  %275 = icmp eq i64 %274, %170
  br i1 %275, label %276, label %181, !llvm.loop !72

276:                                              ; preds = %181
  store i64 %209, ptr %3, align 8, !alias.scope !279, !noalias !282
  store i64 %213, ptr %174, align 8, !alias.scope !279, !noalias !282
  store i64 %229, ptr %176, align 8, !alias.scope !279, !noalias !282
  store i64 %233, ptr %175, align 8, !alias.scope !279, !noalias !282
  store i64 %249, ptr %178, align 8, !alias.scope !279, !noalias !282
  store i64 %253, ptr %177, align 8, !alias.scope !279, !noalias !282
  store i64 %269, ptr %180, align 8, !alias.scope !279, !noalias !282
  store i64 %273, ptr %179, align 8, !alias.scope !279, !noalias !282
  br label %277

277:                                              ; preds = %276, %158
  %278 = phi i64 [ %161, %158 ], [ %269, %276 ]
  %279 = phi i64 [ %162, %158 ], [ %273, %276 ]
  %280 = phi i64 [ %163, %158 ], [ %249, %276 ]
  %281 = phi i64 [ %164, %158 ], [ %253, %276 ]
  %282 = phi i64 [ %165, %158 ], [ %229, %276 ]
  %283 = phi i64 [ %166, %158 ], [ %233, %276 ]
  %284 = phi i64 [ %159, %158 ], [ %209, %276 ]
  %285 = phi i64 [ %160, %158 ], [ %213, %276 ]
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %287 = getelementptr inbounds i8, ptr %286, i64 -64
  %288 = load i64, ptr %287, align 1
  %289 = xor i64 %288, -1556992608276218209
  %290 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %291 = add i64 %285, %288
  %292 = lshr i64 %289, 32
  %293 = and i64 %289, 4294967295
  %294 = mul nuw i64 %293, %292
  %295 = add i64 %294, %284
  %296 = getelementptr inbounds i8, ptr %286, i64 -56
  %297 = load i64, ptr %296, align 1
  %298 = xor i64 %297, -4196251135427498811
  %299 = add i64 %295, %297
  store i64 %299, ptr %3, align 8, !alias.scope !285, !noalias !288
  %300 = lshr i64 %298, 32
  %301 = and i64 %298, 4294967295
  %302 = mul nuw i64 %301, %300
  %303 = add i64 %302, %291
  store i64 %303, ptr %290, align 8, !alias.scope !285, !noalias !288
  %304 = getelementptr inbounds i8, ptr %286, i64 -48
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %305, 1723580219865931905
  %307 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %308 = add i64 %283, %305
  %309 = lshr i64 %306, 32
  %310 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %311 = and i64 %306, 4294967295
  %312 = mul nuw i64 %311, %309
  %313 = add i64 %312, %282
  %314 = getelementptr inbounds i8, ptr %286, i64 -40
  %315 = load i64, ptr %314, align 1
  %316 = xor i64 %315, -3221803331004277491
  %317 = add i64 %313, %315
  store i64 %317, ptr %310, align 8, !alias.scope !285, !noalias !288
  %318 = lshr i64 %316, 32
  %319 = and i64 %316, 4294967295
  %320 = mul nuw i64 %319, %318
  %321 = add i64 %320, %308
  store i64 %321, ptr %307, align 8, !alias.scope !285, !noalias !288
  %322 = getelementptr inbounds i8, ptr %286, i64 -32
  %323 = load i64, ptr %322, align 1
  %324 = xor i64 %323, 3143064850383918358
  %325 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %326 = add i64 %281, %323
  %327 = lshr i64 %324, 32
  %328 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %329 = and i64 %324, 4294967295
  %330 = mul nuw i64 %329, %327
  %331 = add i64 %330, %280
  %332 = getelementptr inbounds i8, ptr %286, i64 -24
  %333 = load i64, ptr %332, align 1
  %334 = xor i64 %333, -8071399103737053674
  %335 = add i64 %331, %333
  store i64 %335, ptr %328, align 8, !alias.scope !285, !noalias !288
  %336 = lshr i64 %334, 32
  %337 = and i64 %334, 4294967295
  %338 = mul nuw i64 %337, %336
  %339 = add i64 %338, %326
  store i64 %339, ptr %325, align 8, !alias.scope !285, !noalias !288
  %340 = getelementptr inbounds i8, ptr %286, i64 -16
  %341 = load i64, ptr %340, align 1
  %342 = xor i64 %341, 5030012605302946040
  %343 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %344 = add i64 %279, %341
  %345 = lshr i64 %342, 32
  %346 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %347 = and i64 %342, 4294967295
  %348 = mul nuw i64 %347, %345
  %349 = add i64 %348, %278
  %350 = getelementptr inbounds i8, ptr %286, i64 -8
  %351 = load i64, ptr %350, align 1
  %352 = xor i64 %351, -5825401622958753077
  %353 = add i64 %349, %351
  store i64 %353, ptr %346, align 8, !alias.scope !285, !noalias !288
  %354 = lshr i64 %352, 32
  %355 = and i64 %352, 4294967295
  %356 = mul nuw i64 %355, %354
  %357 = add i64 %356, %344
  store i64 %357, ptr %343, align 8, !alias.scope !285, !noalias !288
  %358 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %3, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192, i64 noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #29, !noalias !275
  ret { i64, i64 } %358
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecret(ptr nocapture noundef readonly %0, i64 noundef range(i64 0, 4294967296) %1, ptr nocapture noundef nonnull readonly %2, i64 noundef %3) unnamed_addr #20 {
  %5 = alloca [8 x i64], align 8
  %6 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %6)
  %7 = icmp samesign ult i64 %1, 17
  br i1 %7, label %8, label %183

8:                                                ; preds = %4
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %62

10:                                               ; preds = %8
  %11 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %11)
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %15 = load i64, ptr %14, align 1
  %16 = xor i64 %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %20 = load i64, ptr %19, align 1
  %21 = xor i64 %20, %18
  %22 = load i64, ptr %0, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %24 = getelementptr inbounds i8, ptr %23, i64 -8
  %25 = load i64, ptr %24, align 1
  %26 = xor i64 %16, %22
  %27 = xor i64 %26, %25
  %28 = zext i64 %27 to i128
  %29 = mul nuw i128 %28, 11400714785074694791
  %30 = trunc i128 %29 to i64
  %31 = lshr i128 %29, 64
  %32 = trunc nuw i128 %31 to i64
  %33 = shl nuw nsw i64 %1, 54
  %34 = add nsw i64 %33, -18014398509481984
  %35 = add i64 %34, %30
  %36 = xor i64 %21, %25
  %37 = and i64 %36, 4294967295
  %38 = mul nuw i64 %37, 2246822518
  %39 = add i64 %38, %36
  %40 = add i64 %39, %32
  %41 = tail call noundef i64 @llvm.bswap.i64(i64 %40)
  %42 = xor i64 %41, %35
  %43 = zext i64 %42 to i128
  %44 = mul nuw i128 %43, 14029467366897019727
  %45 = trunc i128 %44 to i64
  %46 = lshr i128 %44, 64
  %47 = trunc nuw i128 %46 to i64
  %48 = mul i64 %40, -4417276706812531889
  %49 = add i64 %48, %47
  %50 = lshr i64 %45, 37
  %51 = xor i64 %50, %45
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  %55 = lshr i64 %49, 37
  %56 = xor i64 %55, %49
  %57 = mul i64 %56, 1609587791953885689
  %58 = lshr i64 %57, 32
  %59 = xor i64 %58, %57
  %60 = insertvalue { i64, i64 } poison, i64 %54, 0
  %61 = insertvalue { i64, i64 } %60, i64 %59, 1
  br label %772

62:                                               ; preds = %8
  %63 = icmp samesign ugt i64 %1, 3
  br i1 %63, label %64, label %104

64:                                               ; preds = %62
  %65 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %65)
  %66 = load i32, ptr %0, align 1
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %68 = getelementptr inbounds i8, ptr %67, i64 -4
  %69 = load i32, ptr %68, align 1
  %70 = zext i32 %66 to i64
  %71 = zext i32 %69 to i64
  %72 = shl nuw i64 %71, 32
  %73 = or disjoint i64 %72, %70
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %75 = load i64, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %77 = load i64, ptr %76, align 1
  %78 = xor i64 %77, %75
  %79 = xor i64 %78, %73
  %80 = shl nuw nsw i64 %1, 2
  %81 = add nuw nsw i64 %80, -7046029288634856825
  %82 = zext i64 %79 to i128
  %83 = zext i64 %81 to i128
  %84 = mul nuw i128 %82, %83
  %85 = trunc i128 %84 to i64
  %86 = lshr i128 %84, 64
  %87 = trunc nuw i128 %86 to i64
  %88 = shl i64 %85, 1
  %89 = add i64 %88, %87
  %90 = lshr i64 %89, 3
  %91 = xor i64 %90, %85
  %92 = lshr i64 %91, 35
  %93 = xor i64 %92, %91
  %94 = mul i64 %93, -6939452855193903323
  %95 = lshr i64 %94, 28
  %96 = xor i64 %95, %94
  %97 = lshr i64 %89, 37
  %98 = xor i64 %97, %89
  %99 = mul i64 %98, 1609587791953885689
  %100 = lshr i64 %99, 32
  %101 = xor i64 %100, %99
  %102 = insertvalue { i64, i64 } poison, i64 %96, 0
  %103 = insertvalue { i64, i64 } %102, i64 %101, 1
  br label %772

104:                                              ; preds = %62
  %105 = icmp eq i64 %1, 0
  br i1 %105, label %154, label %106

106:                                              ; preds = %104
  %107 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %107)
  %108 = load i8, ptr %0, align 1
  %109 = lshr i64 %1, 1
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 %109
  %111 = load i8, ptr %110, align 1
  %112 = getelementptr i8, ptr %0, i64 %1
  %113 = getelementptr i8, ptr %112, i64 -1
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %108 to i32
  %116 = shl nuw nsw i32 %115, 16
  %117 = zext i8 %111 to i32
  %118 = shl nuw i32 %117, 24
  %119 = or disjoint i32 %118, %116
  %120 = zext i8 %114 to i32
  %121 = or disjoint i32 %119, %120
  %122 = trunc nuw nsw i64 %1 to i32
  %123 = shl nuw nsw i32 %122, 8
  %124 = or disjoint i32 %121, %123
  %125 = tail call noundef i32 @llvm.bswap.i32(i32 %124)
  %126 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 13)
  %127 = load i32, ptr %2, align 1
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %129 = load i32, ptr %128, align 1
  %130 = xor i32 %129, %127
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %132 = load i32, ptr %131, align 1
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %134 = load i32, ptr %133, align 1
  %135 = xor i32 %134, %132
  %136 = xor i32 %130, %124
  %137 = zext i32 %136 to i64
  %138 = xor i32 %135, %126
  %139 = zext i32 %138 to i64
  %140 = mul i64 %137, -4417276706812531889
  %141 = lshr i64 %140, 29
  %142 = xor i64 %141, %140
  %143 = mul i64 %142, 1609587929392839161
  %144 = lshr i64 %143, 32
  %145 = xor i64 %144, %143
  %146 = mul i64 %139, -4417276706812531889
  %147 = lshr i64 %146, 29
  %148 = xor i64 %147, %146
  %149 = mul i64 %148, 1609587929392839161
  %150 = lshr i64 %149, 32
  %151 = xor i64 %150, %149
  %152 = insertvalue { i64, i64 } poison, i64 %145, 0
  %153 = insertvalue { i64, i64 } %152, i64 %151, 1
  br label %772

154:                                              ; preds = %104
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %156 = load i64, ptr %155, align 1
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %158 = load i64, ptr %157, align 1
  %159 = xor i64 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %161 = load i64, ptr %160, align 1
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %163 = load i64, ptr %162, align 1
  %164 = xor i64 %163, %161
  %165 = lshr i64 %159, 33
  %166 = xor i64 %165, %159
  %167 = mul i64 %166, -4417276706812531889
  %168 = lshr i64 %167, 29
  %169 = xor i64 %168, %167
  %170 = mul i64 %169, 1609587929392839161
  %171 = lshr i64 %170, 32
  %172 = xor i64 %171, %170
  %173 = lshr i64 %164, 33
  %174 = xor i64 %173, %164
  %175 = mul i64 %174, -4417276706812531889
  %176 = lshr i64 %175, 29
  %177 = xor i64 %176, %175
  %178 = mul i64 %177, 1609587929392839161
  %179 = lshr i64 %178, 32
  %180 = xor i64 %179, %178
  %181 = insertvalue { i64, i64 } poison, i64 %172, 0
  %182 = insertvalue { i64, i64 } %181, i64 %180, 1
  br label %772

183:                                              ; preds = %4
  %184 = icmp samesign ult i64 %1, 129
  br i1 %184, label %185, label %374

185:                                              ; preds = %183
  %186 = mul i64 %1, -7046029288634856825
  %187 = icmp samesign ugt i64 %1, 32
  br i1 %187, label %188, label %315

188:                                              ; preds = %185
  %189 = icmp samesign ugt i64 %1, 64
  br i1 %189, label %190, label %273

190:                                              ; preds = %188
  %191 = icmp samesign ugt i64 %1, 96
  br i1 %191, label %192, label %231

192:                                              ; preds = %190
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %195 = getelementptr inbounds i8, ptr %194, i64 -64
  %196 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %197 = load i64, ptr %193, align 1
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %199 = load i64, ptr %198, align 1
  %200 = load i64, ptr %196, align 1
  %201 = xor i64 %200, %197
  %202 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %203 = load i64, ptr %202, align 1
  %204 = xor i64 %203, %199
  %205 = zext i64 %201 to i128
  %206 = zext i64 %204 to i128
  %207 = mul nuw i128 %206, %205
  %208 = lshr i128 %207, 64
  %209 = xor i128 %208, %207
  %210 = trunc i128 %209 to i64
  %211 = add i64 %186, %210
  %212 = load i64, ptr %195, align 1
  %213 = getelementptr inbounds i8, ptr %194, i64 -56
  %214 = load i64, ptr %213, align 1
  %215 = add i64 %214, %212
  %216 = xor i64 %211, %215
  %217 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %218 = load i64, ptr %217, align 1
  %219 = xor i64 %218, %212
  %220 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %221 = load i64, ptr %220, align 1
  %222 = xor i64 %221, %214
  %223 = zext i64 %219 to i128
  %224 = zext i64 %222 to i128
  %225 = mul nuw i128 %224, %223
  %226 = lshr i128 %225, 64
  %227 = xor i128 %226, %225
  %228 = trunc i128 %227 to i64
  %229 = add i64 %199, %197
  %230 = xor i64 %229, %228
  br label %231

231:                                              ; preds = %192, %190
  %232 = phi i64 [ %216, %192 ], [ %186, %190 ]
  %233 = phi i64 [ %230, %192 ], [ 0, %190 ]
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %236 = getelementptr inbounds i8, ptr %235, i64 -48
  %237 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %238 = load i64, ptr %234, align 1
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %240 = load i64, ptr %239, align 1
  %241 = load i64, ptr %237, align 1
  %242 = xor i64 %241, %238
  %243 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %244 = load i64, ptr %243, align 1
  %245 = xor i64 %244, %240
  %246 = zext i64 %242 to i128
  %247 = zext i64 %245 to i128
  %248 = mul nuw i128 %247, %246
  %249 = lshr i128 %248, 64
  %250 = xor i128 %249, %248
  %251 = trunc i128 %250 to i64
  %252 = add i64 %232, %251
  %253 = load i64, ptr %236, align 1
  %254 = getelementptr inbounds i8, ptr %235, i64 -40
  %255 = load i64, ptr %254, align 1
  %256 = add i64 %255, %253
  %257 = xor i64 %252, %256
  %258 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %259 = load i64, ptr %258, align 1
  %260 = xor i64 %259, %253
  %261 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %262 = load i64, ptr %261, align 1
  %263 = xor i64 %262, %255
  %264 = zext i64 %260 to i128
  %265 = zext i64 %263 to i128
  %266 = mul nuw i128 %265, %264
  %267 = lshr i128 %266, 64
  %268 = xor i128 %267, %266
  %269 = trunc i128 %268 to i64
  %270 = add i64 %233, %269
  %271 = add i64 %240, %238
  %272 = xor i64 %270, %271
  br label %273

273:                                              ; preds = %231, %188
  %274 = phi i64 [ %257, %231 ], [ %186, %188 ]
  %275 = phi i64 [ %272, %231 ], [ 0, %188 ]
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %278 = getelementptr inbounds i8, ptr %277, i64 -32
  %279 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %280 = load i64, ptr %276, align 1
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %282 = load i64, ptr %281, align 1
  %283 = load i64, ptr %279, align 1
  %284 = xor i64 %283, %280
  %285 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %286 = load i64, ptr %285, align 1
  %287 = xor i64 %286, %282
  %288 = zext i64 %284 to i128
  %289 = zext i64 %287 to i128
  %290 = mul nuw i128 %289, %288
  %291 = lshr i128 %290, 64
  %292 = xor i128 %291, %290
  %293 = trunc i128 %292 to i64
  %294 = add i64 %274, %293
  %295 = load i64, ptr %278, align 1
  %296 = getelementptr inbounds i8, ptr %277, i64 -24
  %297 = load i64, ptr %296, align 1
  %298 = add i64 %297, %295
  %299 = xor i64 %294, %298
  %300 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %301 = load i64, ptr %300, align 1
  %302 = xor i64 %301, %295
  %303 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %304 = load i64, ptr %303, align 1
  %305 = xor i64 %304, %297
  %306 = zext i64 %302 to i128
  %307 = zext i64 %305 to i128
  %308 = mul nuw i128 %307, %306
  %309 = lshr i128 %308, 64
  %310 = xor i128 %309, %308
  %311 = trunc i128 %310 to i64
  %312 = add i64 %275, %311
  %313 = add i64 %282, %280
  %314 = xor i64 %312, %313
  br label %315

315:                                              ; preds = %185, %273
  %316 = phi i64 [ %299, %273 ], [ %186, %185 ]
  %317 = phi i64 [ %314, %273 ], [ 0, %185 ]
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %319 = getelementptr inbounds i8, ptr %318, i64 -16
  %320 = load i64, ptr %0, align 1
  %321 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %322 = load i64, ptr %321, align 1
  %323 = load i64, ptr %2, align 1
  %324 = xor i64 %323, %320
  %325 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %326 = load i64, ptr %325, align 1
  %327 = xor i64 %326, %322
  %328 = zext i64 %324 to i128
  %329 = zext i64 %327 to i128
  %330 = mul nuw i128 %329, %328
  %331 = lshr i128 %330, 64
  %332 = xor i128 %331, %330
  %333 = trunc i128 %332 to i64
  %334 = add i64 %316, %333
  %335 = load i64, ptr %319, align 1
  %336 = getelementptr inbounds i8, ptr %318, i64 -8
  %337 = load i64, ptr %336, align 1
  %338 = add i64 %337, %335
  %339 = xor i64 %334, %338
  %340 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %341 = load i64, ptr %340, align 1
  %342 = xor i64 %341, %335
  %343 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %344 = load i64, ptr %343, align 1
  %345 = xor i64 %344, %337
  %346 = zext i64 %342 to i128
  %347 = zext i64 %345 to i128
  %348 = mul nuw i128 %347, %346
  %349 = lshr i128 %348, 64
  %350 = xor i128 %349, %348
  %351 = trunc i128 %350 to i64
  %352 = add i64 %317, %351
  %353 = add i64 %322, %320
  %354 = xor i64 %352, %353
  %355 = add i64 %354, %339
  %356 = mul i64 %339, -7046029288634856825
  %357 = mul i64 %354, -8796714831421723037
  %358 = mul i64 %1, -4417276706812531889
  %359 = add i64 %356, %358
  %360 = add i64 %359, %357
  %361 = lshr i64 %355, 37
  %362 = xor i64 %361, %355
  %363 = mul i64 %362, 1609587791953885689
  %364 = lshr i64 %363, 32
  %365 = xor i64 %364, %363
  %366 = lshr i64 %360, 37
  %367 = xor i64 %366, %360
  %368 = mul i64 %367, 1609587791953885689
  %369 = lshr i64 %368, 32
  %370 = xor i64 %369, %368
  %371 = sub i64 0, %370
  %372 = insertvalue { i64, i64 } poison, i64 %365, 0
  %373 = insertvalue { i64, i64 } %372, i64 %371, 1
  br label %772

374:                                              ; preds = %183
  %375 = icmp samesign ult i64 %1, 241
  br i1 %375, label %376, label %378

376:                                              ; preds = %374
  %377 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, ptr noundef nonnull %2, i64 noundef 0) #33
  br label %772

378:                                              ; preds = %374
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #29, !noalias !291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !291
  %379 = add i64 %3, -64
  %380 = lshr i64 %379, 3
  %381 = shl i64 %380, 6
  %382 = add nsw i64 %1, -1
  %383 = udiv i64 %382, %381
  %384 = urem i64 %382, %381
  %385 = icmp ugt i64 %381, %382
  br i1 %385, label %554, label %386

386:                                              ; preds = %378
  %387 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %388 = getelementptr inbounds i8, ptr %387, i64 -64
  %389 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %390 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %391 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %392 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %393 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %394 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %395 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %396 = load i64, ptr %388, align 1
  %397 = getelementptr inbounds i8, ptr %387, i64 -56
  %398 = load i64, ptr %397, align 1
  %399 = getelementptr inbounds i8, ptr %387, i64 -48
  %400 = load i64, ptr %399, align 1
  %401 = getelementptr inbounds i8, ptr %387, i64 -40
  %402 = load i64, ptr %401, align 1
  %403 = getelementptr inbounds i8, ptr %387, i64 -32
  %404 = load i64, ptr %403, align 1
  %405 = getelementptr inbounds i8, ptr %387, i64 -24
  %406 = load i64, ptr %405, align 1
  %407 = getelementptr inbounds i8, ptr %387, i64 -16
  %408 = load i64, ptr %407, align 1
  %409 = getelementptr inbounds i8, ptr %387, i64 -8
  %410 = load i64, ptr %409, align 1
  br label %411

411:                                              ; preds = %386, %518
  %412 = phi i64 [ %522, %518 ], [ 3266489917, %386 ]
  %413 = phi i64 [ %526, %518 ], [ -7046029288634856825, %386 ]
  %414 = phi i64 [ %546, %518 ], [ 2870177450012600261, %386 ]
  %415 = phi i64 [ %550, %518 ], [ 2654435761, %386 ]
  %416 = phi i64 [ %538, %518 ], [ -8796714831421723037, %386 ]
  %417 = phi i64 [ %542, %518 ], [ 2246822519, %386 ]
  %418 = phi i64 [ %530, %518 ], [ -4417276706812531889, %386 ]
  %419 = phi i64 [ %534, %518 ], [ 1609587929392839161, %386 ]
  %420 = phi i64 [ %551, %518 ], [ 0, %386 ]
  %421 = mul i64 %420, %381
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 %421
  br label %423

423:                                              ; preds = %411, %423
  %424 = phi i64 [ %412, %411 ], [ %451, %423 ]
  %425 = phi i64 [ %413, %411 ], [ %455, %423 ]
  %426 = phi i64 [ %414, %411 ], [ %511, %423 ]
  %427 = phi i64 [ %415, %411 ], [ %515, %423 ]
  %428 = phi i64 [ %416, %411 ], [ %491, %423 ]
  %429 = phi i64 [ %417, %411 ], [ %495, %423 ]
  %430 = phi i64 [ %418, %411 ], [ %471, %423 ]
  %431 = phi i64 [ %419, %411 ], [ %475, %423 ]
  %432 = phi i64 [ 0, %411 ], [ %516, %423 ]
  %433 = shl i64 %432, 6
  %434 = getelementptr inbounds nuw i8, ptr %422, i64 %433
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %435, i32 0, i32 3, i32 1)
  %436 = shl i64 %432, 3
  %437 = getelementptr inbounds nuw i8, ptr %2, i64 %436
  %438 = load i64, ptr %434, align 1
  %439 = load i64, ptr %437, align 1
  %440 = xor i64 %439, %438
  %441 = add i64 %425, %438
  %442 = lshr i64 %440, 32
  %443 = and i64 %440, 4294967295
  %444 = mul nuw i64 %443, %442
  %445 = add i64 %444, %424
  %446 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %447 = load i64, ptr %446, align 1
  %448 = getelementptr inbounds nuw i8, ptr %437, i64 8
  %449 = load i64, ptr %448, align 1
  %450 = xor i64 %449, %447
  %451 = add i64 %445, %447
  %452 = lshr i64 %450, 32
  %453 = and i64 %450, 4294967295
  %454 = mul nuw i64 %453, %452
  %455 = add i64 %454, %441
  %456 = getelementptr inbounds nuw i8, ptr %434, i64 16
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %437, i64 16
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = add i64 %431, %457
  %462 = lshr i64 %460, 32
  %463 = and i64 %460, 4294967295
  %464 = mul nuw i64 %463, %462
  %465 = add i64 %464, %430
  %466 = getelementptr inbounds nuw i8, ptr %434, i64 24
  %467 = load i64, ptr %466, align 1
  %468 = getelementptr inbounds nuw i8, ptr %437, i64 24
  %469 = load i64, ptr %468, align 1
  %470 = xor i64 %469, %467
  %471 = add i64 %465, %467
  %472 = lshr i64 %470, 32
  %473 = and i64 %470, 4294967295
  %474 = mul nuw i64 %473, %472
  %475 = add i64 %474, %461
  %476 = getelementptr inbounds nuw i8, ptr %434, i64 32
  %477 = load i64, ptr %476, align 1
  %478 = getelementptr inbounds nuw i8, ptr %437, i64 32
  %479 = load i64, ptr %478, align 1
  %480 = xor i64 %479, %477
  %481 = add i64 %429, %477
  %482 = lshr i64 %480, 32
  %483 = and i64 %480, 4294967295
  %484 = mul nuw i64 %483, %482
  %485 = add i64 %484, %428
  %486 = getelementptr inbounds nuw i8, ptr %434, i64 40
  %487 = load i64, ptr %486, align 1
  %488 = getelementptr inbounds nuw i8, ptr %437, i64 40
  %489 = load i64, ptr %488, align 1
  %490 = xor i64 %489, %487
  %491 = add i64 %485, %487
  %492 = lshr i64 %490, 32
  %493 = and i64 %490, 4294967295
  %494 = mul nuw i64 %493, %492
  %495 = add i64 %494, %481
  %496 = getelementptr inbounds nuw i8, ptr %434, i64 48
  %497 = load i64, ptr %496, align 1
  %498 = getelementptr inbounds nuw i8, ptr %437, i64 48
  %499 = load i64, ptr %498, align 1
  %500 = xor i64 %499, %497
  %501 = add i64 %427, %497
  %502 = lshr i64 %500, 32
  %503 = and i64 %500, 4294967295
  %504 = mul nuw i64 %503, %502
  %505 = add i64 %504, %426
  %506 = getelementptr inbounds nuw i8, ptr %434, i64 56
  %507 = load i64, ptr %506, align 1
  %508 = getelementptr inbounds nuw i8, ptr %437, i64 56
  %509 = load i64, ptr %508, align 1
  %510 = xor i64 %509, %507
  %511 = add i64 %505, %507
  %512 = lshr i64 %510, 32
  %513 = and i64 %510, 4294967295
  %514 = mul nuw i64 %513, %512
  %515 = add i64 %514, %501
  %516 = add nuw nsw i64 %432, 1
  %517 = icmp eq i64 %516, %380
  br i1 %517, label %518, label %423, !llvm.loop !72

518:                                              ; preds = %423
  %519 = lshr i64 %451, 47
  %520 = xor i64 %396, %519
  %521 = xor i64 %520, %451
  %522 = mul i64 %521, 2654435761
  %523 = lshr i64 %455, 47
  %524 = xor i64 %398, %523
  %525 = xor i64 %524, %455
  %526 = mul i64 %525, 2654435761
  %527 = lshr i64 %471, 47
  %528 = xor i64 %400, %527
  %529 = xor i64 %528, %471
  %530 = mul i64 %529, 2654435761
  %531 = lshr i64 %475, 47
  %532 = xor i64 %402, %531
  %533 = xor i64 %532, %475
  %534 = mul i64 %533, 2654435761
  %535 = lshr i64 %491, 47
  %536 = xor i64 %404, %535
  %537 = xor i64 %536, %491
  %538 = mul i64 %537, 2654435761
  %539 = lshr i64 %495, 47
  %540 = xor i64 %406, %539
  %541 = xor i64 %540, %495
  %542 = mul i64 %541, 2654435761
  %543 = lshr i64 %511, 47
  %544 = xor i64 %408, %543
  %545 = xor i64 %544, %511
  %546 = mul i64 %545, 2654435761
  %547 = lshr i64 %515, 47
  %548 = xor i64 %410, %547
  %549 = xor i64 %548, %515
  %550 = mul i64 %549, 2654435761
  %551 = add nuw i64 %420, 1
  %552 = icmp ult i64 %551, %383
  br i1 %552, label %411, label %553, !llvm.loop !73

553:                                              ; preds = %518
  store i64 %522, ptr %5, align 8, !noalias !291
  store i64 %526, ptr %389, align 8, !noalias !291
  store i64 %530, ptr %391, align 8, !noalias !291
  store i64 %534, ptr %390, align 8, !noalias !291
  store i64 %538, ptr %393, align 8, !noalias !291
  store i64 %542, ptr %392, align 8, !noalias !291
  store i64 %546, ptr %395, align 8, !noalias !291
  store i64 %550, ptr %394, align 8, !noalias !291
  br label %554

554:                                              ; preds = %553, %378
  %555 = phi i64 [ 3266489917, %378 ], [ %522, %553 ]
  %556 = phi i64 [ -7046029288634856825, %378 ], [ %526, %553 ]
  %557 = phi i64 [ 2870177450012600261, %378 ], [ %546, %553 ]
  %558 = phi i64 [ 2654435761, %378 ], [ %550, %553 ]
  %559 = phi i64 [ -8796714831421723037, %378 ], [ %538, %553 ]
  %560 = phi i64 [ 2246822519, %378 ], [ %542, %553 ]
  %561 = phi i64 [ -4417276706812531889, %378 ], [ %530, %553 ]
  %562 = phi i64 [ 1609587929392839161, %378 ], [ %534, %553 ]
  %563 = mul i64 %383, %381
  %564 = lshr i64 %384, 6
  %565 = lshr i64 %3, 3
  %566 = icmp samesign ule i64 %564, %565
  tail call void @llvm.assume(i1 %566)
  %567 = getelementptr inbounds nuw i8, ptr %0, i64 %563
  %568 = icmp ult i64 %384, 64
  br i1 %568, label %673, label %569

569:                                              ; preds = %554
  %570 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %571 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %572 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %573 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %574 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %575 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %576 = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %577

577:                                              ; preds = %569, %577
  %578 = phi i64 [ %605, %577 ], [ %555, %569 ]
  %579 = phi i64 [ %609, %577 ], [ %556, %569 ]
  %580 = phi i64 [ %665, %577 ], [ %557, %569 ]
  %581 = phi i64 [ %669, %577 ], [ %558, %569 ]
  %582 = phi i64 [ %645, %577 ], [ %559, %569 ]
  %583 = phi i64 [ %649, %577 ], [ %560, %569 ]
  %584 = phi i64 [ %625, %577 ], [ %561, %569 ]
  %585 = phi i64 [ %629, %577 ], [ %562, %569 ]
  %586 = phi i64 [ %670, %577 ], [ 0, %569 ]
  %587 = shl i64 %586, 6
  %588 = getelementptr inbounds nuw i8, ptr %567, i64 %587
  %589 = getelementptr inbounds nuw i8, ptr %588, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %589, i32 0, i32 3, i32 1)
  %590 = shl i64 %586, 3
  %591 = getelementptr inbounds nuw i8, ptr %2, i64 %590
  %592 = load i64, ptr %588, align 1
  %593 = load i64, ptr %591, align 1
  %594 = xor i64 %593, %592
  %595 = add i64 %579, %592
  %596 = lshr i64 %594, 32
  %597 = and i64 %594, 4294967295
  %598 = mul nuw i64 %597, %596
  %599 = add i64 %598, %578
  %600 = getelementptr inbounds nuw i8, ptr %588, i64 8
  %601 = load i64, ptr %600, align 1
  %602 = getelementptr inbounds nuw i8, ptr %591, i64 8
  %603 = load i64, ptr %602, align 1
  %604 = xor i64 %603, %601
  %605 = add i64 %599, %601
  %606 = lshr i64 %604, 32
  %607 = and i64 %604, 4294967295
  %608 = mul nuw i64 %607, %606
  %609 = add i64 %608, %595
  %610 = getelementptr inbounds nuw i8, ptr %588, i64 16
  %611 = load i64, ptr %610, align 1
  %612 = getelementptr inbounds nuw i8, ptr %591, i64 16
  %613 = load i64, ptr %612, align 1
  %614 = xor i64 %613, %611
  %615 = add i64 %585, %611
  %616 = lshr i64 %614, 32
  %617 = and i64 %614, 4294967295
  %618 = mul nuw i64 %617, %616
  %619 = add i64 %618, %584
  %620 = getelementptr inbounds nuw i8, ptr %588, i64 24
  %621 = load i64, ptr %620, align 1
  %622 = getelementptr inbounds nuw i8, ptr %591, i64 24
  %623 = load i64, ptr %622, align 1
  %624 = xor i64 %623, %621
  %625 = add i64 %619, %621
  %626 = lshr i64 %624, 32
  %627 = and i64 %624, 4294967295
  %628 = mul nuw i64 %627, %626
  %629 = add i64 %628, %615
  %630 = getelementptr inbounds nuw i8, ptr %588, i64 32
  %631 = load i64, ptr %630, align 1
  %632 = getelementptr inbounds nuw i8, ptr %591, i64 32
  %633 = load i64, ptr %632, align 1
  %634 = xor i64 %633, %631
  %635 = add i64 %583, %631
  %636 = lshr i64 %634, 32
  %637 = and i64 %634, 4294967295
  %638 = mul nuw i64 %637, %636
  %639 = add i64 %638, %582
  %640 = getelementptr inbounds nuw i8, ptr %588, i64 40
  %641 = load i64, ptr %640, align 1
  %642 = getelementptr inbounds nuw i8, ptr %591, i64 40
  %643 = load i64, ptr %642, align 1
  %644 = xor i64 %643, %641
  %645 = add i64 %639, %641
  %646 = lshr i64 %644, 32
  %647 = and i64 %644, 4294967295
  %648 = mul nuw i64 %647, %646
  %649 = add i64 %648, %635
  %650 = getelementptr inbounds nuw i8, ptr %588, i64 48
  %651 = load i64, ptr %650, align 1
  %652 = getelementptr inbounds nuw i8, ptr %591, i64 48
  %653 = load i64, ptr %652, align 1
  %654 = xor i64 %653, %651
  %655 = add i64 %581, %651
  %656 = lshr i64 %654, 32
  %657 = and i64 %654, 4294967295
  %658 = mul nuw i64 %657, %656
  %659 = add i64 %658, %580
  %660 = getelementptr inbounds nuw i8, ptr %588, i64 56
  %661 = load i64, ptr %660, align 1
  %662 = getelementptr inbounds nuw i8, ptr %591, i64 56
  %663 = load i64, ptr %662, align 1
  %664 = xor i64 %663, %661
  %665 = add i64 %659, %661
  %666 = lshr i64 %664, 32
  %667 = and i64 %664, 4294967295
  %668 = mul nuw i64 %667, %666
  %669 = add i64 %668, %655
  %670 = add nuw nsw i64 %586, 1
  %671 = icmp samesign ult i64 %670, %564
  br i1 %671, label %577, label %672, !llvm.loop !72

672:                                              ; preds = %577
  store i64 %605, ptr %5, align 8, !alias.scope !298, !noalias !301
  store i64 %609, ptr %570, align 8, !alias.scope !298, !noalias !301
  store i64 %625, ptr %572, align 8, !alias.scope !298, !noalias !301
  store i64 %629, ptr %571, align 8, !alias.scope !298, !noalias !301
  store i64 %645, ptr %574, align 8, !alias.scope !298, !noalias !301
  store i64 %649, ptr %573, align 8, !alias.scope !298, !noalias !301
  store i64 %665, ptr %576, align 8, !alias.scope !298, !noalias !301
  store i64 %669, ptr %575, align 8, !alias.scope !298, !noalias !301
  br label %673

673:                                              ; preds = %672, %554
  %674 = phi i64 [ %557, %554 ], [ %665, %672 ]
  %675 = phi i64 [ %558, %554 ], [ %669, %672 ]
  %676 = phi i64 [ %559, %554 ], [ %645, %672 ]
  %677 = phi i64 [ %560, %554 ], [ %649, %672 ]
  %678 = phi i64 [ %561, %554 ], [ %625, %672 ]
  %679 = phi i64 [ %562, %554 ], [ %629, %672 ]
  %680 = phi i64 [ %555, %554 ], [ %605, %672 ]
  %681 = phi i64 [ %556, %554 ], [ %609, %672 ]
  %682 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %683 = getelementptr inbounds i8, ptr %682, i64 -64
  %684 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %685 = getelementptr inbounds i8, ptr %684, i64 -71
  %686 = load i64, ptr %683, align 1
  %687 = load i64, ptr %685, align 1
  %688 = xor i64 %687, %686
  %689 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %690 = add i64 %681, %686
  %691 = lshr i64 %688, 32
  %692 = and i64 %688, 4294967295
  %693 = mul nuw i64 %692, %691
  %694 = add i64 %693, %680
  %695 = getelementptr inbounds i8, ptr %682, i64 -56
  %696 = load i64, ptr %695, align 1
  %697 = getelementptr inbounds i8, ptr %684, i64 -63
  %698 = load i64, ptr %697, align 1
  %699 = xor i64 %698, %696
  %700 = add i64 %694, %696
  store i64 %700, ptr %5, align 8, !alias.scope !304, !noalias !307
  %701 = lshr i64 %699, 32
  %702 = and i64 %699, 4294967295
  %703 = mul nuw i64 %702, %701
  %704 = add i64 %703, %690
  store i64 %704, ptr %689, align 8, !alias.scope !304, !noalias !307
  %705 = getelementptr inbounds i8, ptr %682, i64 -48
  %706 = load i64, ptr %705, align 1
  %707 = getelementptr inbounds i8, ptr %684, i64 -55
  %708 = load i64, ptr %707, align 1
  %709 = xor i64 %708, %706
  %710 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %711 = add i64 %679, %706
  %712 = lshr i64 %709, 32
  %713 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %714 = and i64 %709, 4294967295
  %715 = mul nuw i64 %714, %712
  %716 = add i64 %715, %678
  %717 = getelementptr inbounds i8, ptr %682, i64 -40
  %718 = load i64, ptr %717, align 1
  %719 = getelementptr inbounds i8, ptr %684, i64 -47
  %720 = load i64, ptr %719, align 1
  %721 = xor i64 %720, %718
  %722 = add i64 %716, %718
  store i64 %722, ptr %713, align 8, !alias.scope !304, !noalias !307
  %723 = lshr i64 %721, 32
  %724 = and i64 %721, 4294967295
  %725 = mul nuw i64 %724, %723
  %726 = add i64 %725, %711
  store i64 %726, ptr %710, align 8, !alias.scope !304, !noalias !307
  %727 = getelementptr inbounds i8, ptr %682, i64 -32
  %728 = load i64, ptr %727, align 1
  %729 = getelementptr inbounds i8, ptr %684, i64 -39
  %730 = load i64, ptr %729, align 1
  %731 = xor i64 %730, %728
  %732 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %733 = add i64 %677, %728
  %734 = lshr i64 %731, 32
  %735 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %736 = and i64 %731, 4294967295
  %737 = mul nuw i64 %736, %734
  %738 = add i64 %737, %676
  %739 = getelementptr inbounds i8, ptr %682, i64 -24
  %740 = load i64, ptr %739, align 1
  %741 = getelementptr inbounds i8, ptr %684, i64 -31
  %742 = load i64, ptr %741, align 1
  %743 = xor i64 %742, %740
  %744 = add i64 %738, %740
  store i64 %744, ptr %735, align 8, !alias.scope !304, !noalias !307
  %745 = lshr i64 %743, 32
  %746 = and i64 %743, 4294967295
  %747 = mul nuw i64 %746, %745
  %748 = add i64 %747, %733
  store i64 %748, ptr %732, align 8, !alias.scope !304, !noalias !307
  %749 = getelementptr inbounds i8, ptr %682, i64 -16
  %750 = load i64, ptr %749, align 1
  %751 = getelementptr inbounds i8, ptr %684, i64 -23
  %752 = load i64, ptr %751, align 1
  %753 = xor i64 %752, %750
  %754 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %755 = add i64 %675, %750
  %756 = lshr i64 %753, 32
  %757 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %758 = and i64 %753, 4294967295
  %759 = mul nuw i64 %758, %756
  %760 = add i64 %759, %674
  %761 = getelementptr inbounds i8, ptr %682, i64 -8
  %762 = load i64, ptr %761, align 1
  %763 = getelementptr inbounds i8, ptr %684, i64 -15
  %764 = load i64, ptr %763, align 1
  %765 = xor i64 %764, %762
  %766 = add i64 %760, %762
  store i64 %766, ptr %757, align 8, !alias.scope !304, !noalias !307
  %767 = lshr i64 %765, 32
  %768 = and i64 %765, 4294967295
  %769 = mul nuw i64 %768, %767
  %770 = add i64 %769, %755
  store i64 %770, ptr %754, align 8, !alias.scope !304, !noalias !307
  %771 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %5, ptr noundef nonnull %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %1) #33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #29, !noalias !291
  br label %772

772:                                              ; preds = %154, %106, %64, %10, %315, %376, %673
  %773 = phi { i64, i64 } [ %373, %315 ], [ %377, %376 ], [ %771, %673 ], [ %61, %10 ], [ %103, %64 ], [ %153, %106 ], [ %182, %154 ]
  ret { i64, i64 } %773
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { inlinehint mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { inlinehint mustprogress nofree nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #19 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #22 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind memory(none) }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{i64 2148229369}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH32_consumeLong: argument 0"}
!17 = distinct !{!17, !"XXH32_consumeLong"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"XXH32_consumeLong: argument 1"}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH32_consumeLong: argument 0"}
!24 = distinct !{!24, !"XXH32_consumeLong"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"XXH32_consumeLong: argument 1"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"XXH32_consumeLong: argument 0"}
!29 = distinct !{!29, !"XXH32_consumeLong"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"XXH32_consumeLong: argument 1"}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !6}
!36 = !{i64 2148242700}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !6}
!41 = !{!42}
!42 = distinct !{!42, !43, !"XXH64_consumeLong: argument 0"}
!43 = distinct !{!43, !"XXH64_consumeLong"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"XXH64_consumeLong: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"XXH64_consumeLong: argument 0"}
!48 = distinct !{!48, !"XXH64_consumeLong"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"XXH64_consumeLong: argument 1"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"XXH64_consumeLong: argument 0"}
!53 = distinct !{!53, !"XXH64_consumeLong"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"XXH64_consumeLong: argument 1"}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6}
!67 = distinct !{!67, !6}
!68 = distinct !{!68, !6}
!69 = distinct !{!69, !6}
!70 = distinct !{!70, !6}
!71 = distinct !{!71, !8}
!72 = distinct !{!72, !6}
!73 = distinct !{!73, !6}
!74 = !{!75, !77}
!75 = distinct !{!75, !76, !"XXH3_mergeAccs: argument 1"}
!76 = distinct !{!76, !"XXH3_mergeAccs"}
!77 = distinct !{!77, !78, !"XXH3_finalizeLong_64b: argument 1"}
!78 = distinct !{!78, !"XXH3_finalizeLong_64b"}
!79 = !{!80, !81}
!80 = distinct !{!80, !76, !"XXH3_mergeAccs: argument 0"}
!81 = distinct !{!81, !78, !"XXH3_finalizeLong_64b: argument 0"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"XXH3_consumeStripes: argument 1"}
!84 = distinct !{!84, !"XXH3_consumeStripes"}
!85 = distinct !{!85, !6}
!86 = !{!87, !89}
!87 = distinct !{!87, !88, !"XXH3_mergeAccs: argument 1"}
!88 = distinct !{!88, !"XXH3_mergeAccs"}
!89 = distinct !{!89, !90, !"XXH3_finalizeLong_64b: argument 1"}
!90 = distinct !{!90, !"XXH3_finalizeLong_64b"}
!91 = !{!92, !93}
!92 = distinct !{!92, !88, !"XXH3_mergeAccs: argument 0"}
!93 = distinct !{!93, !90, !"XXH3_finalizeLong_64b: argument 0"}
!94 = !{!95, !97}
!95 = distinct !{!95, !96, !"XXH3_mergeAccs: argument 1"}
!96 = distinct !{!96, !"XXH3_mergeAccs"}
!97 = distinct !{!97, !98, !"XXH3_finalizeLong_64b: argument 1"}
!98 = distinct !{!98, !"XXH3_finalizeLong_64b"}
!99 = !{!100, !101}
!100 = distinct !{!100, !96, !"XXH3_mergeAccs: argument 0"}
!101 = distinct !{!101, !98, !"XXH3_finalizeLong_64b: argument 0"}
!102 = !{i64 2152235023}
!103 = distinct !{!103, !6}
!104 = !{!105}
!105 = distinct !{!105, !106, !"XXH3_update: argument 1"}
!106 = distinct !{!106, !"XXH3_update"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"XXH3_update: argument 0"}
!109 = !{!108, !105}
!110 = !{!111}
!111 = distinct !{!111, !112, !"XXH3_consumeStripes: argument 0"}
!112 = distinct !{!112, !"XXH3_consumeStripes"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"XXH3_consumeStripes: argument 1"}
!115 = !{!111, !116, !117}
!116 = distinct !{!116, !112, !"XXH3_consumeStripes: argument 2"}
!117 = distinct !{!117, !112, !"XXH3_consumeStripes: argument 3"}
!118 = !{!119, !111}
!119 = distinct !{!119, !120, !"XXH3_scalarRound: argument 0"}
!120 = distinct !{!120, !"XXH3_scalarRound"}
!121 = !{!122, !123, !114, !116, !117}
!122 = distinct !{!122, !120, !"XXH3_scalarRound: argument 1"}
!123 = distinct !{!123, !120, !"XXH3_scalarRound: argument 2"}
!124 = !{!125, !111}
!125 = distinct !{!125, !126, !"XXH3_scalarScrambleRound: argument 0"}
!126 = distinct !{!126, !"XXH3_scalarScrambleRound"}
!127 = !{!128, !114, !116, !117}
!128 = distinct !{!128, !126, !"XXH3_scalarScrambleRound: argument 1"}
!129 = !{!130, !111}
!130 = distinct !{!130, !131, !"XXH3_scalarRound: argument 0"}
!131 = distinct !{!131, !"XXH3_scalarRound"}
!132 = !{!133, !134, !114, !116, !117}
!133 = distinct !{!133, !131, !"XXH3_scalarRound: argument 1"}
!134 = distinct !{!134, !131, !"XXH3_scalarRound: argument 2"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"XXH3_consumeStripes: argument 0"}
!137 = distinct !{!137, !"XXH3_consumeStripes"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"XXH3_consumeStripes: argument 1"}
!140 = !{!136, !141, !142}
!141 = distinct !{!141, !137, !"XXH3_consumeStripes: argument 2"}
!142 = distinct !{!142, !137, !"XXH3_consumeStripes: argument 3"}
!143 = !{!139, !141, !142}
!144 = !{!145, !136}
!145 = distinct !{!145, !146, !"XXH3_scalarScrambleRound: argument 0"}
!146 = distinct !{!146, !"XXH3_scalarScrambleRound"}
!147 = !{!148, !139, !141, !142}
!148 = distinct !{!148, !146, !"XXH3_scalarScrambleRound: argument 1"}
!149 = !{!150, !136}
!150 = distinct !{!150, !151, !"XXH3_scalarRound: argument 0"}
!151 = distinct !{!151, !"XXH3_scalarRound"}
!152 = !{!153, !154, !139, !141, !142}
!153 = distinct !{!153, !151, !"XXH3_scalarRound: argument 1"}
!154 = distinct !{!154, !151, !"XXH3_scalarRound: argument 2"}
!155 = !{!156, !136}
!156 = distinct !{!156, !157, !"XXH3_scalarRound: argument 0"}
!157 = distinct !{!157, !"XXH3_scalarRound"}
!158 = !{!159, !160, !139, !141, !142}
!159 = distinct !{!159, !157, !"XXH3_scalarRound: argument 1"}
!160 = distinct !{!160, !157, !"XXH3_scalarRound: argument 2"}
!161 = !{!162, !164}
!162 = distinct !{!162, !163, !"XXH3_mergeAccs: argument 1"}
!163 = distinct !{!163, !"XXH3_mergeAccs"}
!164 = distinct !{!164, !165, !"XXH3_finalizeLong_64b: argument 1"}
!165 = distinct !{!165, !"XXH3_finalizeLong_64b"}
!166 = !{!167, !168}
!167 = distinct !{!167, !163, !"XXH3_mergeAccs: argument 0"}
!168 = distinct !{!168, !165, !"XXH3_finalizeLong_64b: argument 0"}
!169 = !{!170, !172, !173, !175}
!170 = distinct !{!170, !171, !"XXH3_hashLong_128b_internal: argument 0"}
!171 = distinct !{!171, !"XXH3_hashLong_128b_internal"}
!172 = distinct !{!172, !171, !"XXH3_hashLong_128b_internal: argument 1"}
!173 = distinct !{!173, !174, !"XXH3_hashLong_128b_withSecret: argument 0"}
!174 = distinct !{!174, !"XXH3_hashLong_128b_withSecret"}
!175 = distinct !{!175, !174, !"XXH3_hashLong_128b_withSecret: argument 1"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"XXH3_scalarRound: argument 0"}
!178 = distinct !{!178, !"XXH3_scalarRound"}
!179 = !{!180, !181, !170, !172, !173, !175}
!180 = distinct !{!180, !178, !"XXH3_scalarRound: argument 1"}
!181 = distinct !{!181, !178, !"XXH3_scalarRound: argument 2"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"XXH3_scalarRound: argument 0"}
!184 = distinct !{!184, !"XXH3_scalarRound"}
!185 = !{!186, !187, !170, !172, !173, !175}
!186 = distinct !{!186, !184, !"XXH3_scalarRound: argument 1"}
!187 = distinct !{!187, !184, !"XXH3_scalarRound: argument 2"}
!188 = !{!189, !191}
!189 = distinct !{!189, !190, !"XXH3_scalarScrambleRound: argument 0"}
!190 = distinct !{!190, !"XXH3_scalarScrambleRound"}
!191 = distinct !{!191, !192, !"XXH3_consumeStripes: argument 0"}
!192 = distinct !{!192, !"XXH3_consumeStripes"}
!193 = !{!194, !195, !196, !197}
!194 = distinct !{!194, !190, !"XXH3_scalarScrambleRound: argument 1"}
!195 = distinct !{!195, !192, !"XXH3_consumeStripes: argument 1"}
!196 = distinct !{!196, !192, !"XXH3_consumeStripes: argument 2"}
!197 = distinct !{!197, !192, !"XXH3_consumeStripes: argument 3"}
!198 = !{!199, !191}
!199 = distinct !{!199, !200, !"XXH3_scalarRound: argument 0"}
!200 = distinct !{!200, !"XXH3_scalarRound"}
!201 = !{!202, !203, !195, !196, !197}
!202 = distinct !{!202, !200, !"XXH3_scalarRound: argument 1"}
!203 = distinct !{!203, !200, !"XXH3_scalarRound: argument 2"}
!204 = !{!195}
!205 = !{!206, !191}
!206 = distinct !{!206, !207, !"XXH3_scalarRound: argument 0"}
!207 = distinct !{!207, !"XXH3_scalarRound"}
!208 = !{!209, !210, !195, !196, !197}
!209 = distinct !{!209, !207, !"XXH3_scalarRound: argument 1"}
!210 = distinct !{!210, !207, !"XXH3_scalarRound: argument 2"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"XXH3_scalarRound: argument 0"}
!213 = distinct !{!213, !"XXH3_scalarRound"}
!214 = !{!215, !216}
!215 = distinct !{!215, !213, !"XXH3_scalarRound: argument 1"}
!216 = distinct !{!216, !213, !"XXH3_scalarRound: argument 2"}
!217 = !{!218, !220}
!218 = distinct !{!218, !219, !"XXH3_hashLong_128b_internal: argument 0"}
!219 = distinct !{!219, !"XXH3_hashLong_128b_internal"}
!220 = distinct !{!220, !219, !"XXH3_hashLong_128b_internal: argument 1"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"XXH3_scalarRound: argument 0"}
!223 = distinct !{!223, !"XXH3_scalarRound"}
!224 = !{!225, !226, !218, !220}
!225 = distinct !{!225, !223, !"XXH3_scalarRound: argument 1"}
!226 = distinct !{!226, !223, !"XXH3_scalarRound: argument 2"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"XXH3_scalarRound: argument 0"}
!229 = distinct !{!229, !"XXH3_scalarRound"}
!230 = !{!231, !232, !218, !220}
!231 = distinct !{!231, !229, !"XXH3_scalarRound: argument 1"}
!232 = distinct !{!232, !229, !"XXH3_scalarRound: argument 2"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!235 = distinct !{!235, !"XXH3_hashLong_128b_withSeed_internal"}
!236 = !{!237, !239, !241}
!237 = distinct !{!237, !238, !"XXH3_mergeAccs: argument 1"}
!238 = distinct !{!238, !"XXH3_mergeAccs"}
!239 = distinct !{!239, !240, !"XXH3_finalizeLong_64b: argument 1"}
!240 = distinct !{!240, !"XXH3_finalizeLong_64b"}
!241 = distinct !{!241, !242, !"XXH3_finalizeLong_128b: argument 1"}
!242 = distinct !{!242, !"XXH3_finalizeLong_128b"}
!243 = !{!244, !245, !246}
!244 = distinct !{!244, !238, !"XXH3_mergeAccs: argument 0"}
!245 = distinct !{!245, !240, !"XXH3_finalizeLong_64b: argument 0"}
!246 = distinct !{!246, !242, !"XXH3_finalizeLong_128b: argument 0"}
!247 = !{!248, !241}
!248 = distinct !{!248, !249, !"XXH3_mergeAccs: argument 1"}
!249 = distinct !{!249, !"XXH3_mergeAccs"}
!250 = !{!251, !246}
!251 = distinct !{!251, !249, !"XXH3_mergeAccs: argument 0"}
!252 = distinct !{!252, !6}
!253 = !{!254}
!254 = distinct !{!254, !255, !"XXH3_finalizeLong_64b: argument 0"}
!255 = distinct !{!255, !"XXH3_finalizeLong_64b"}
!256 = !{!257}
!257 = distinct !{!257, !255, !"XXH3_finalizeLong_64b: argument 1"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"XXH3_mergeAccs: argument 0"}
!260 = distinct !{!260, !"XXH3_mergeAccs"}
!261 = !{!262}
!262 = distinct !{!262, !260, !"XXH3_mergeAccs: argument 1"}
!263 = !{!264, !259, !254}
!264 = distinct !{!264, !265, !"XXH3_mix2Accs: argument 0"}
!265 = distinct !{!265, !"XXH3_mix2Accs"}
!266 = !{!267, !262, !257}
!267 = distinct !{!267, !265, !"XXH3_mix2Accs: argument 1"}
!268 = !{!262, !257}
!269 = !{!259, !254}
!270 = !{!271}
!271 = distinct !{!271, !272, !"XXH3_mergeAccs: argument 1"}
!272 = distinct !{!272, !"XXH3_mergeAccs"}
!273 = !{!274}
!274 = distinct !{!274, !272, !"XXH3_mergeAccs: argument 0"}
!275 = !{!276, !278}
!276 = distinct !{!276, !277, !"XXH3_hashLong_128b_internal: argument 0"}
!277 = distinct !{!277, !"XXH3_hashLong_128b_internal"}
!278 = distinct !{!278, !277, !"XXH3_hashLong_128b_internal: argument 1"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"XXH3_scalarRound: argument 0"}
!281 = distinct !{!281, !"XXH3_scalarRound"}
!282 = !{!283, !284, !276, !278}
!283 = distinct !{!283, !281, !"XXH3_scalarRound: argument 1"}
!284 = distinct !{!284, !281, !"XXH3_scalarRound: argument 2"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"XXH3_scalarRound: argument 0"}
!287 = distinct !{!287, !"XXH3_scalarRound"}
!288 = !{!289, !290, !276, !278}
!289 = distinct !{!289, !287, !"XXH3_scalarRound: argument 1"}
!290 = distinct !{!290, !287, !"XXH3_scalarRound: argument 2"}
!291 = !{!292, !294, !295, !297}
!292 = distinct !{!292, !293, !"XXH3_hashLong_128b_internal: argument 0"}
!293 = distinct !{!293, !"XXH3_hashLong_128b_internal"}
!294 = distinct !{!294, !293, !"XXH3_hashLong_128b_internal: argument 1"}
!295 = distinct !{!295, !296, !"XXH3_hashLong_128b_withSecret: argument 0"}
!296 = distinct !{!296, !"XXH3_hashLong_128b_withSecret"}
!297 = distinct !{!297, !296, !"XXH3_hashLong_128b_withSecret: argument 1"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"XXH3_scalarRound: argument 0"}
!300 = distinct !{!300, !"XXH3_scalarRound"}
!301 = !{!302, !303, !292, !294, !295, !297}
!302 = distinct !{!302, !300, !"XXH3_scalarRound: argument 1"}
!303 = distinct !{!303, !300, !"XXH3_scalarRound: argument 2"}
!304 = !{!305}
!305 = distinct !{!305, !306, !"XXH3_scalarRound: argument 0"}
!306 = distinct !{!306, !"XXH3_scalarRound"}
!307 = !{!308, !309, !292, !294, !295, !297}
!308 = distinct !{!308, !306, !"XXH3_scalarRound: argument 1"}
!309 = distinct !{!309, !306, !"XXH3_scalarRound: argument 2"}
