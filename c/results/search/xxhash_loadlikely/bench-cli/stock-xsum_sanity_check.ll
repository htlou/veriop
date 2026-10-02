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
  br label %71

68:                                               ; preds = %961
  %69 = getelementptr i8, ptr %7, i64 -31
  %70 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  br label %1014

71:                                               ; preds = %61, %961
  %72 = phi i64 [ 0, %61 ], [ %963, %961 ]
  %73 = phi i32 [ %67, %61 ], [ %962, %961 ]
  %74 = getelementptr inbounds nuw [8 x %struct.XSUM_testdata32_t], ptr @XSUM_XXH32_testdata, i64 0, i64 %72
  %75 = call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #30
  %76 = load i32, ptr %74, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds nuw i8, ptr %74, i64 4
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %76, 0
  %83 = select i1 %82, ptr null, ptr %7
  %84 = icmp eq ptr %75, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 285, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH32) #28
  unreachable

86:                                               ; preds = %71
  br i1 %82, label %142, label %87

87:                                               ; preds = %86
  %88 = icmp ugt i32 %76, 15
  br i1 %88, label %89, label %139

89:                                               ; preds = %87
  %90 = add i32 %79, 606290984
  %91 = add i32 %79, -2048144777
  %92 = add i32 %79, 1640531535
  %93 = getelementptr i8, ptr %66, i64 %77
  br label %94

94:                                               ; preds = %94, %89
  %95 = phi i32 [ %92, %89 ], [ %126, %94 ]
  %96 = phi i32 [ %79, %89 ], [ %119, %94 ]
  %97 = phi i32 [ %91, %89 ], [ %112, %94 ]
  %98 = phi i32 [ %90, %89 ], [ %105, %94 ]
  %99 = phi ptr [ %7, %89 ], [ %127, %94 ]
  %100 = load i32, ptr %99, align 1
  %101 = mul i32 %100, -2048144777
  %102 = add i32 %101, %98
  %103 = call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 13)
  %104 = mul i32 %103, -1640531535
  %105 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %104) #31, !srcloc !9
  %106 = getelementptr inbounds nuw i8, ptr %99, i64 4
  %107 = load i32, ptr %106, align 1
  %108 = mul i32 %107, -2048144777
  %109 = add i32 %108, %97
  %110 = call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 13)
  %111 = mul i32 %110, -1640531535
  %112 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %111) #31, !srcloc !9
  %113 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %114 = load i32, ptr %113, align 1
  %115 = mul i32 %114, -2048144777
  %116 = add i32 %115, %96
  %117 = call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 13)
  %118 = mul i32 %117, -1640531535
  %119 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %118) #31, !srcloc !9
  %120 = getelementptr inbounds nuw i8, ptr %99, i64 12
  %121 = load i32, ptr %120, align 1
  %122 = mul i32 %121, -2048144777
  %123 = add i32 %122, %95
  %124 = call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 13)
  %125 = mul i32 %124, -1640531535
  %126 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %125) #31, !srcloc !9
  %127 = getelementptr inbounds nuw i8, ptr %99, i64 16
  %128 = icmp ult ptr %127, %93
  br i1 %128, label %94, label %129, !llvm.loop !10

129:                                              ; preds = %94
  %130 = call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 1)
  %131 = call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 7)
  %132 = call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 12)
  %133 = call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 18)
  %134 = add i32 %130, %76
  %135 = add i32 %134, %131
  %136 = add i32 %135, %132
  %137 = add i32 %136, %133
  %138 = and i64 %77, 15
  br label %144

139:                                              ; preds = %87
  %140 = add i32 %79, 374761393
  %141 = add i32 %140, %76
  br label %144

142:                                              ; preds = %86
  %143 = add i32 %79, 374761393
  br label %323

144:                                              ; preds = %139, %129
  %145 = phi i64 [ %138, %129 ], [ %77, %139 ]
  %146 = phi i32 [ %137, %129 ], [ %141, %139 ]
  %147 = phi ptr [ %127, %129 ], [ %7, %139 ]
  %148 = icmp samesign ugt i64 %145, 3
  br i1 %148, label %149, label %178

149:                                              ; preds = %144
  %150 = add nsw i64 %145, -4
  %151 = lshr i64 %150, 2
  %152 = add nuw nsw i64 %151, 1
  %153 = and i64 %152, 7
  %154 = and i64 %150, 28
  %155 = icmp eq i64 %154, 28
  br i1 %155, label %170, label %156

156:                                              ; preds = %149, %156
  %157 = phi i32 [ %166, %156 ], [ %146, %149 ]
  %158 = phi i64 [ %167, %156 ], [ %145, %149 ]
  %159 = phi ptr [ %164, %156 ], [ %147, %149 ]
  %160 = phi i64 [ %168, %156 ], [ 0, %149 ]
  %161 = load i32, ptr %159, align 1
  %162 = mul i32 %161, -1028477379
  %163 = add i32 %162, %157
  %164 = getelementptr inbounds nuw i8, ptr %159, i64 4
  %165 = call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 17)
  %166 = mul i32 %165, 668265263
  %167 = add nsw i64 %158, -4
  %168 = add i64 %160, 1
  %169 = icmp eq i64 %168, %153
  br i1 %169, label %170, label %156, !llvm.loop !11

170:                                              ; preds = %156, %149
  %171 = phi i32 [ %146, %149 ], [ %166, %156 ]
  %172 = phi i64 [ %145, %149 ], [ %167, %156 ]
  %173 = phi ptr [ %147, %149 ], [ %164, %156 ]
  %174 = phi ptr [ poison, %149 ], [ %164, %156 ]
  %175 = phi i32 [ poison, %149 ], [ %166, %156 ]
  %176 = phi i64 [ poison, %149 ], [ %167, %156 ]
  %177 = icmp ult i64 %150, 28
  br i1 %177, label %178, label %207

178:                                              ; preds = %170, %207, %144
  %179 = phi ptr [ %147, %144 ], [ %174, %170 ], [ %256, %207 ]
  %180 = phi i64 [ %145, %144 ], [ %176, %170 ], [ %259, %207 ]
  %181 = phi i32 [ %146, %144 ], [ %175, %170 ], [ %258, %207 ]
  %182 = icmp eq i64 %180, 0
  br i1 %182, label %323, label %183

183:                                              ; preds = %178
  %184 = and i64 %180, 7
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %201, label %186

186:                                              ; preds = %183, %186
  %187 = phi i32 [ %197, %186 ], [ %181, %183 ]
  %188 = phi i64 [ %198, %186 ], [ %180, %183 ]
  %189 = phi ptr [ %191, %186 ], [ %179, %183 ]
  %190 = phi i64 [ %199, %186 ], [ 0, %183 ]
  %191 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %192 = load i8, ptr %189, align 1
  %193 = zext i8 %192 to i32
  %194 = mul i32 %193, 374761393
  %195 = add i32 %194, %187
  %196 = call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 11)
  %197 = mul i32 %196, -1640531535
  %198 = add nsw i64 %188, -1
  %199 = add i64 %190, 1
  %200 = icmp eq i64 %199, %184
  br i1 %200, label %201, label %186, !llvm.loop !12

201:                                              ; preds = %186, %183
  %202 = phi i32 [ poison, %183 ], [ %197, %186 ]
  %203 = phi i32 [ %181, %183 ], [ %197, %186 ]
  %204 = phi i64 [ %180, %183 ], [ %198, %186 ]
  %205 = phi ptr [ %179, %183 ], [ %191, %186 ]
  %206 = icmp ult i64 %180, 8
  br i1 %206, label %323, label %261

207:                                              ; preds = %170, %207
  %208 = phi i32 [ %258, %207 ], [ %171, %170 ]
  %209 = phi i64 [ %259, %207 ], [ %172, %170 ]
  %210 = phi ptr [ %256, %207 ], [ %173, %170 ]
  %211 = load i32, ptr %210, align 1
  %212 = mul i32 %211, -1028477379
  %213 = add i32 %212, %208
  %214 = getelementptr inbounds nuw i8, ptr %210, i64 4
  %215 = call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 17)
  %216 = mul i32 %215, 668265263
  %217 = load i32, ptr %214, align 1
  %218 = mul i32 %217, -1028477379
  %219 = add i32 %218, %216
  %220 = getelementptr inbounds nuw i8, ptr %210, i64 8
  %221 = call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 17)
  %222 = mul i32 %221, 668265263
  %223 = load i32, ptr %220, align 1
  %224 = mul i32 %223, -1028477379
  %225 = add i32 %224, %222
  %226 = getelementptr inbounds nuw i8, ptr %210, i64 12
  %227 = call i32 @llvm.fshl.i32(i32 %225, i32 %225, i32 17)
  %228 = mul i32 %227, 668265263
  %229 = load i32, ptr %226, align 1
  %230 = mul i32 %229, -1028477379
  %231 = add i32 %230, %228
  %232 = getelementptr inbounds nuw i8, ptr %210, i64 16
  %233 = call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 17)
  %234 = mul i32 %233, 668265263
  %235 = load i32, ptr %232, align 1
  %236 = mul i32 %235, -1028477379
  %237 = add i32 %236, %234
  %238 = getelementptr inbounds nuw i8, ptr %210, i64 20
  %239 = call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 17)
  %240 = mul i32 %239, 668265263
  %241 = load i32, ptr %238, align 1
  %242 = mul i32 %241, -1028477379
  %243 = add i32 %242, %240
  %244 = getelementptr inbounds nuw i8, ptr %210, i64 24
  %245 = call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 17)
  %246 = mul i32 %245, 668265263
  %247 = load i32, ptr %244, align 1
  %248 = mul i32 %247, -1028477379
  %249 = add i32 %248, %246
  %250 = getelementptr inbounds nuw i8, ptr %210, i64 28
  %251 = call i32 @llvm.fshl.i32(i32 %249, i32 %249, i32 17)
  %252 = mul i32 %251, 668265263
  %253 = load i32, ptr %250, align 1
  %254 = mul i32 %253, -1028477379
  %255 = add i32 %254, %252
  %256 = getelementptr inbounds nuw i8, ptr %210, i64 32
  %257 = call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 17)
  %258 = mul i32 %257, 668265263
  %259 = add nsw i64 %209, -32
  %260 = icmp ugt i64 %259, 3
  br i1 %260, label %207, label %178, !llvm.loop !13

261:                                              ; preds = %201, %261
  %262 = phi i32 [ %320, %261 ], [ %203, %201 ]
  %263 = phi i64 [ %321, %261 ], [ %204, %201 ]
  %264 = phi ptr [ %314, %261 ], [ %205, %201 ]
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 1
  %266 = load i8, ptr %264, align 1
  %267 = zext i8 %266 to i32
  %268 = mul i32 %267, 374761393
  %269 = add i32 %268, %262
  %270 = call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 11)
  %271 = mul i32 %270, -1640531535
  %272 = getelementptr inbounds nuw i8, ptr %264, i64 2
  %273 = load i8, ptr %265, align 1
  %274 = zext i8 %273 to i32
  %275 = mul i32 %274, 374761393
  %276 = add i32 %275, %271
  %277 = call i32 @llvm.fshl.i32(i32 %276, i32 %276, i32 11)
  %278 = mul i32 %277, -1640531535
  %279 = getelementptr inbounds nuw i8, ptr %264, i64 3
  %280 = load i8, ptr %272, align 1
  %281 = zext i8 %280 to i32
  %282 = mul i32 %281, 374761393
  %283 = add i32 %282, %278
  %284 = call i32 @llvm.fshl.i32(i32 %283, i32 %283, i32 11)
  %285 = mul i32 %284, -1640531535
  %286 = getelementptr inbounds nuw i8, ptr %264, i64 4
  %287 = load i8, ptr %279, align 1
  %288 = zext i8 %287 to i32
  %289 = mul i32 %288, 374761393
  %290 = add i32 %289, %285
  %291 = call i32 @llvm.fshl.i32(i32 %290, i32 %290, i32 11)
  %292 = mul i32 %291, -1640531535
  %293 = getelementptr inbounds nuw i8, ptr %264, i64 5
  %294 = load i8, ptr %286, align 1
  %295 = zext i8 %294 to i32
  %296 = mul i32 %295, 374761393
  %297 = add i32 %296, %292
  %298 = call i32 @llvm.fshl.i32(i32 %297, i32 %297, i32 11)
  %299 = mul i32 %298, -1640531535
  %300 = getelementptr inbounds nuw i8, ptr %264, i64 6
  %301 = load i8, ptr %293, align 1
  %302 = zext i8 %301 to i32
  %303 = mul i32 %302, 374761393
  %304 = add i32 %303, %299
  %305 = call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 11)
  %306 = mul i32 %305, -1640531535
  %307 = getelementptr inbounds nuw i8, ptr %264, i64 7
  %308 = load i8, ptr %300, align 1
  %309 = zext i8 %308 to i32
  %310 = mul i32 %309, 374761393
  %311 = add i32 %310, %306
  %312 = call i32 @llvm.fshl.i32(i32 %311, i32 %311, i32 11)
  %313 = mul i32 %312, -1640531535
  %314 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %315 = load i8, ptr %307, align 1
  %316 = zext i8 %315 to i32
  %317 = mul i32 %316, 374761393
  %318 = add i32 %317, %313
  %319 = call i32 @llvm.fshl.i32(i32 %318, i32 %318, i32 11)
  %320 = mul i32 %319, -1640531535
  %321 = add nsw i64 %263, -8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %261, !llvm.loop !14

323:                                              ; preds = %201, %261, %178, %142
  %324 = phi i32 [ %181, %178 ], [ %143, %142 ], [ %202, %201 ], [ %320, %261 ]
  %325 = lshr i32 %324, 15
  %326 = xor i32 %325, %324
  %327 = mul i32 %326, -2048144777
  %328 = lshr i32 %327, 13
  %329 = xor i32 %328, %327
  %330 = mul i32 %329, -1028477379
  %331 = lshr i32 %330, 16
  %332 = xor i32 %331, %330
  %333 = icmp eq i32 %332, %81
  br i1 %333, label %338, label %334

334:                                              ; preds = %323
  %335 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.8, i32 noundef %73) #29
  %336 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.9, i32 noundef %332, i32 noundef %81) #29
  %337 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

338:                                              ; preds = %323
  %339 = add nsw i32 %73, 1
  store i32 %339, ptr @XSUM_checkResult32.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %75, i8 0, i64 48, i1 false)
  %340 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %341 = add i32 %79, 606290984
  store i32 %341, ptr %340, align 4
  %342 = add i32 %79, -2048144777
  %343 = getelementptr inbounds nuw i8, ptr %75, i64 12
  store i32 %342, ptr %343, align 4
  %344 = getelementptr inbounds nuw i8, ptr %75, i64 16
  store i32 %79, ptr %344, align 4
  %345 = add i32 %79, 1640531535
  %346 = getelementptr inbounds nuw i8, ptr %75, i64 20
  store i32 %345, ptr %346, align 4
  br i1 %82, label %347, label %349

347:                                              ; preds = %338
  %348 = getelementptr inbounds nuw i8, ptr %75, i64 4
  br label %426

349:                                              ; preds = %338
  store i32 %76, ptr %75, align 4
  %350 = icmp ugt i32 %76, 15
  %351 = zext i1 %350 to i32
  %352 = getelementptr inbounds nuw i8, ptr %75, i64 4
  store i32 %351, ptr %352, align 4
  %353 = getelementptr inbounds nuw i8, ptr %75, i64 40
  %354 = icmp ult i32 %76, 16
  br i1 %354, label %355, label %359

355:                                              ; preds = %349
  %356 = getelementptr inbounds nuw i8, ptr %75, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %356, ptr nonnull align 16 %7, i64 range(i64 0, 4294967296) %77, i1 false)
  %357 = load i32, ptr %353, align 4
  %358 = add i32 %357, %76
  br label %405

359:                                              ; preds = %349
  %360 = getelementptr inbounds nuw i8, ptr %7, i64 %77
  %361 = ptrtoint ptr %360 to i64
  %362 = getelementptr inbounds i8, ptr %360, i64 -15
  br label %363

363:                                              ; preds = %363, %359
  %364 = phi i32 [ %345, %359 ], [ %395, %363 ]
  %365 = phi i32 [ %79, %359 ], [ %388, %363 ]
  %366 = phi i32 [ %342, %359 ], [ %381, %363 ]
  %367 = phi i32 [ %341, %359 ], [ %374, %363 ]
  %368 = phi ptr [ %7, %359 ], [ %396, %363 ]
  %369 = load i32, ptr %368, align 1
  %370 = mul i32 %369, -2048144777
  %371 = add i32 %370, %367
  %372 = call i32 @llvm.fshl.i32(i32 %371, i32 %371, i32 13)
  %373 = mul i32 %372, -1640531535
  %374 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %373) #31, !srcloc !9
  store i32 %374, ptr %340, align 4, !alias.scope !15, !noalias !18
  %375 = getelementptr inbounds nuw i8, ptr %368, i64 4
  %376 = load i32, ptr %375, align 1
  %377 = mul i32 %376, -2048144777
  %378 = add i32 %377, %366
  %379 = call i32 @llvm.fshl.i32(i32 %378, i32 %378, i32 13)
  %380 = mul i32 %379, -1640531535
  %381 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %380) #31, !srcloc !9
  store i32 %381, ptr %343, align 4, !alias.scope !15, !noalias !18
  %382 = getelementptr inbounds nuw i8, ptr %368, i64 8
  %383 = load i32, ptr %382, align 1
  %384 = mul i32 %383, -2048144777
  %385 = add i32 %384, %365
  %386 = call i32 @llvm.fshl.i32(i32 %385, i32 %385, i32 13)
  %387 = mul i32 %386, -1640531535
  %388 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %387) #31, !srcloc !9
  store i32 %388, ptr %344, align 4, !alias.scope !15, !noalias !18
  %389 = getelementptr inbounds nuw i8, ptr %368, i64 12
  %390 = load i32, ptr %389, align 1
  %391 = mul i32 %390, -2048144777
  %392 = add i32 %391, %364
  %393 = call i32 @llvm.fshl.i32(i32 %392, i32 %392, i32 13)
  %394 = mul i32 %393, -1640531535
  %395 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %394) #31, !srcloc !9
  store i32 %395, ptr %346, align 4, !alias.scope !15, !noalias !18
  %396 = getelementptr inbounds nuw i8, ptr %368, i64 16
  %397 = icmp ult ptr %396, %362
  br i1 %397, label %363, label %398, !llvm.loop !10

398:                                              ; preds = %363
  %399 = icmp ult ptr %396, %360
  br i1 %399, label %400, label %411

400:                                              ; preds = %398
  %401 = getelementptr inbounds nuw i8, ptr %75, i64 24
  %402 = ptrtoint ptr %396 to i64
  %403 = sub i64 %361, %402
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %401, ptr nonnull align 1 %396, i64 %403, i1 false)
  %404 = trunc i64 %403 to i32
  br label %405

405:                                              ; preds = %400, %355
  %406 = phi i32 [ %358, %355 ], [ %404, %400 ]
  %407 = phi i32 [ %345, %355 ], [ %395, %400 ]
  %408 = phi i32 [ %79, %355 ], [ %388, %400 ]
  %409 = phi i32 [ %342, %355 ], [ %381, %400 ]
  %410 = phi i32 [ %341, %355 ], [ %374, %400 ]
  store i32 %406, ptr %353, align 4
  br label %411

411:                                              ; preds = %405, %398
  %412 = phi i32 [ 0, %398 ], [ %406, %405 ]
  %413 = phi i32 [ %395, %398 ], [ %407, %405 ]
  %414 = phi i32 [ %388, %398 ], [ %408, %405 ]
  %415 = phi i32 [ %381, %398 ], [ %409, %405 ]
  %416 = phi i32 [ %374, %398 ], [ %410, %405 ]
  %417 = getelementptr inbounds nuw i8, ptr %75, i64 4
  br i1 %350, label %418, label %426

418:                                              ; preds = %411
  %419 = call i32 @llvm.fshl.i32(i32 %416, i32 %416, i32 1)
  %420 = call i32 @llvm.fshl.i32(i32 %415, i32 %415, i32 7)
  %421 = add i32 %420, %419
  %422 = call i32 @llvm.fshl.i32(i32 %414, i32 %414, i32 12)
  %423 = add i32 %421, %422
  %424 = call i32 @llvm.fshl.i32(i32 %413, i32 %413, i32 18)
  %425 = add i32 %423, %424
  br label %432

426:                                              ; preds = %347, %411
  %427 = phi ptr [ %348, %347 ], [ %417, %411 ]
  %428 = phi i32 [ %79, %347 ], [ %414, %411 ]
  %429 = phi i32 [ 0, %347 ], [ %76, %411 ]
  %430 = phi i32 [ 0, %347 ], [ %412, %411 ]
  %431 = add i32 %428, 374761393
  br label %432

432:                                              ; preds = %426, %418
  %433 = phi ptr [ %417, %418 ], [ %427, %426 ]
  %434 = phi i32 [ %76, %418 ], [ %429, %426 ]
  %435 = phi i32 [ %412, %418 ], [ %430, %426 ]
  %436 = phi i32 [ %425, %418 ], [ %431, %426 ]
  %437 = add i32 %434, %436
  %438 = getelementptr inbounds nuw i8, ptr %75, i64 24
  %439 = getelementptr inbounds nuw i8, ptr %75, i64 40
  %440 = and i32 %435, 15
  %441 = zext nneg i32 %440 to i64
  %442 = icmp samesign ugt i32 %440, 3
  br i1 %442, label %443, label %472

443:                                              ; preds = %432
  %444 = add nsw i64 %441, -4
  %445 = lshr i64 %444, 2
  %446 = add nuw nsw i64 %445, 1
  %447 = and i64 %446, 7
  %448 = and i64 %444, 28
  %449 = icmp eq i64 %448, 28
  br i1 %449, label %464, label %450

450:                                              ; preds = %443, %450
  %451 = phi i32 [ %460, %450 ], [ %437, %443 ]
  %452 = phi i64 [ %461, %450 ], [ %441, %443 ]
  %453 = phi ptr [ %458, %450 ], [ %438, %443 ]
  %454 = phi i64 [ %462, %450 ], [ 0, %443 ]
  %455 = load i32, ptr %453, align 1
  %456 = mul i32 %455, -1028477379
  %457 = add i32 %456, %451
  %458 = getelementptr inbounds nuw i8, ptr %453, i64 4
  %459 = call i32 @llvm.fshl.i32(i32 %457, i32 %457, i32 17)
  %460 = mul i32 %459, 668265263
  %461 = add nsw i64 %452, -4
  %462 = add i64 %454, 1
  %463 = icmp eq i64 %462, %447
  br i1 %463, label %464, label %450, !llvm.loop !20

464:                                              ; preds = %450, %443
  %465 = phi i32 [ %437, %443 ], [ %460, %450 ]
  %466 = phi i64 [ %441, %443 ], [ %461, %450 ]
  %467 = phi ptr [ %438, %443 ], [ %458, %450 ]
  %468 = phi ptr [ poison, %443 ], [ %458, %450 ]
  %469 = phi i32 [ poison, %443 ], [ %460, %450 ]
  %470 = phi i64 [ poison, %443 ], [ %461, %450 ]
  %471 = icmp ult i64 %444, 28
  br i1 %471, label %472, label %501

472:                                              ; preds = %464, %501, %432
  %473 = phi ptr [ %438, %432 ], [ %468, %464 ], [ %550, %501 ]
  %474 = phi i64 [ %441, %432 ], [ %470, %464 ], [ %553, %501 ]
  %475 = phi i32 [ %437, %432 ], [ %469, %464 ], [ %552, %501 ]
  %476 = icmp eq i64 %474, 0
  br i1 %476, label %617, label %477

477:                                              ; preds = %472
  %478 = and i64 %474, 7
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %495, label %480

480:                                              ; preds = %477, %480
  %481 = phi i32 [ %491, %480 ], [ %475, %477 ]
  %482 = phi i64 [ %492, %480 ], [ %474, %477 ]
  %483 = phi ptr [ %485, %480 ], [ %473, %477 ]
  %484 = phi i64 [ %493, %480 ], [ 0, %477 ]
  %485 = getelementptr inbounds nuw i8, ptr %483, i64 1
  %486 = load i8, ptr %483, align 1
  %487 = zext i8 %486 to i32
  %488 = mul i32 %487, 374761393
  %489 = add i32 %488, %481
  %490 = call i32 @llvm.fshl.i32(i32 %489, i32 %489, i32 11)
  %491 = mul i32 %490, -1640531535
  %492 = add nsw i64 %482, -1
  %493 = add i64 %484, 1
  %494 = icmp eq i64 %493, %478
  br i1 %494, label %495, label %480, !llvm.loop !21

495:                                              ; preds = %480, %477
  %496 = phi i32 [ poison, %477 ], [ %491, %480 ]
  %497 = phi i32 [ %475, %477 ], [ %491, %480 ]
  %498 = phi i64 [ %474, %477 ], [ %492, %480 ]
  %499 = phi ptr [ %473, %477 ], [ %485, %480 ]
  %500 = icmp ult i64 %474, 8
  br i1 %500, label %617, label %555

501:                                              ; preds = %464, %501
  %502 = phi i32 [ %552, %501 ], [ %465, %464 ]
  %503 = phi i64 [ %553, %501 ], [ %466, %464 ]
  %504 = phi ptr [ %550, %501 ], [ %467, %464 ]
  %505 = load i32, ptr %504, align 1
  %506 = mul i32 %505, -1028477379
  %507 = add i32 %506, %502
  %508 = getelementptr inbounds nuw i8, ptr %504, i64 4
  %509 = call i32 @llvm.fshl.i32(i32 %507, i32 %507, i32 17)
  %510 = mul i32 %509, 668265263
  %511 = load i32, ptr %508, align 1
  %512 = mul i32 %511, -1028477379
  %513 = add i32 %512, %510
  %514 = getelementptr inbounds nuw i8, ptr %504, i64 8
  %515 = call i32 @llvm.fshl.i32(i32 %513, i32 %513, i32 17)
  %516 = mul i32 %515, 668265263
  %517 = load i32, ptr %514, align 1
  %518 = mul i32 %517, -1028477379
  %519 = add i32 %518, %516
  %520 = getelementptr inbounds nuw i8, ptr %504, i64 12
  %521 = call i32 @llvm.fshl.i32(i32 %519, i32 %519, i32 17)
  %522 = mul i32 %521, 668265263
  %523 = load i32, ptr %520, align 1
  %524 = mul i32 %523, -1028477379
  %525 = add i32 %524, %522
  %526 = getelementptr inbounds nuw i8, ptr %504, i64 16
  %527 = call i32 @llvm.fshl.i32(i32 %525, i32 %525, i32 17)
  %528 = mul i32 %527, 668265263
  %529 = load i32, ptr %526, align 1
  %530 = mul i32 %529, -1028477379
  %531 = add i32 %530, %528
  %532 = getelementptr inbounds nuw i8, ptr %504, i64 20
  %533 = call i32 @llvm.fshl.i32(i32 %531, i32 %531, i32 17)
  %534 = mul i32 %533, 668265263
  %535 = load i32, ptr %532, align 1
  %536 = mul i32 %535, -1028477379
  %537 = add i32 %536, %534
  %538 = getelementptr inbounds nuw i8, ptr %504, i64 24
  %539 = call i32 @llvm.fshl.i32(i32 %537, i32 %537, i32 17)
  %540 = mul i32 %539, 668265263
  %541 = load i32, ptr %538, align 1
  %542 = mul i32 %541, -1028477379
  %543 = add i32 %542, %540
  %544 = getelementptr inbounds nuw i8, ptr %504, i64 28
  %545 = call i32 @llvm.fshl.i32(i32 %543, i32 %543, i32 17)
  %546 = mul i32 %545, 668265263
  %547 = load i32, ptr %544, align 1
  %548 = mul i32 %547, -1028477379
  %549 = add i32 %548, %546
  %550 = getelementptr inbounds nuw i8, ptr %504, i64 32
  %551 = call i32 @llvm.fshl.i32(i32 %549, i32 %549, i32 17)
  %552 = mul i32 %551, 668265263
  %553 = add nsw i64 %503, -32
  %554 = icmp ugt i64 %553, 3
  br i1 %554, label %501, label %472, !llvm.loop !13

555:                                              ; preds = %495, %555
  %556 = phi i32 [ %614, %555 ], [ %497, %495 ]
  %557 = phi i64 [ %615, %555 ], [ %498, %495 ]
  %558 = phi ptr [ %608, %555 ], [ %499, %495 ]
  %559 = getelementptr inbounds nuw i8, ptr %558, i64 1
  %560 = load i8, ptr %558, align 1
  %561 = zext i8 %560 to i32
  %562 = mul i32 %561, 374761393
  %563 = add i32 %562, %556
  %564 = call i32 @llvm.fshl.i32(i32 %563, i32 %563, i32 11)
  %565 = mul i32 %564, -1640531535
  %566 = getelementptr inbounds nuw i8, ptr %558, i64 2
  %567 = load i8, ptr %559, align 1
  %568 = zext i8 %567 to i32
  %569 = mul i32 %568, 374761393
  %570 = add i32 %569, %565
  %571 = call i32 @llvm.fshl.i32(i32 %570, i32 %570, i32 11)
  %572 = mul i32 %571, -1640531535
  %573 = getelementptr inbounds nuw i8, ptr %558, i64 3
  %574 = load i8, ptr %566, align 1
  %575 = zext i8 %574 to i32
  %576 = mul i32 %575, 374761393
  %577 = add i32 %576, %572
  %578 = call i32 @llvm.fshl.i32(i32 %577, i32 %577, i32 11)
  %579 = mul i32 %578, -1640531535
  %580 = getelementptr inbounds nuw i8, ptr %558, i64 4
  %581 = load i8, ptr %573, align 1
  %582 = zext i8 %581 to i32
  %583 = mul i32 %582, 374761393
  %584 = add i32 %583, %579
  %585 = call i32 @llvm.fshl.i32(i32 %584, i32 %584, i32 11)
  %586 = mul i32 %585, -1640531535
  %587 = getelementptr inbounds nuw i8, ptr %558, i64 5
  %588 = load i8, ptr %580, align 1
  %589 = zext i8 %588 to i32
  %590 = mul i32 %589, 374761393
  %591 = add i32 %590, %586
  %592 = call i32 @llvm.fshl.i32(i32 %591, i32 %591, i32 11)
  %593 = mul i32 %592, -1640531535
  %594 = getelementptr inbounds nuw i8, ptr %558, i64 6
  %595 = load i8, ptr %587, align 1
  %596 = zext i8 %595 to i32
  %597 = mul i32 %596, 374761393
  %598 = add i32 %597, %593
  %599 = call i32 @llvm.fshl.i32(i32 %598, i32 %598, i32 11)
  %600 = mul i32 %599, -1640531535
  %601 = getelementptr inbounds nuw i8, ptr %558, i64 7
  %602 = load i8, ptr %594, align 1
  %603 = zext i8 %602 to i32
  %604 = mul i32 %603, 374761393
  %605 = add i32 %604, %600
  %606 = call i32 @llvm.fshl.i32(i32 %605, i32 %605, i32 11)
  %607 = mul i32 %606, -1640531535
  %608 = getelementptr inbounds nuw i8, ptr %558, i64 8
  %609 = load i8, ptr %601, align 1
  %610 = zext i8 %609 to i32
  %611 = mul i32 %610, 374761393
  %612 = add i32 %611, %607
  %613 = call i32 @llvm.fshl.i32(i32 %612, i32 %612, i32 11)
  %614 = mul i32 %613, -1640531535
  %615 = add nsw i64 %557, -8
  %616 = icmp eq i64 %615, 0
  br i1 %616, label %617, label %555, !llvm.loop !14

617:                                              ; preds = %495, %555, %472
  %618 = phi i32 [ %475, %472 ], [ %496, %495 ], [ %614, %555 ]
  %619 = lshr i32 %618, 15
  %620 = xor i32 %619, %618
  %621 = mul i32 %620, -2048144777
  %622 = lshr i32 %621, 13
  %623 = xor i32 %622, %621
  %624 = mul i32 %623, -1028477379
  %625 = lshr i32 %624, 16
  %626 = xor i32 %625, %624
  %627 = icmp eq i32 %626, %81
  br i1 %627, label %632, label %628

628:                                              ; preds = %617
  %629 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.8, i32 noundef %339) #29
  %630 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.9, i32 noundef %626, i32 noundef %81) #29
  %631 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

632:                                              ; preds = %617
  %633 = add nsw i32 %73, 2
  store i32 %633, ptr @XSUM_checkResult32.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %75, i8 0, i64 48, i1 false)
  store i32 %341, ptr %340, align 4
  store i32 %342, ptr %343, align 4
  store i32 %79, ptr %344, align 4
  store i32 %345, ptr %346, align 4
  br i1 %82, label %759, label %634

634:                                              ; preds = %632
  %635 = getelementptr inbounds nuw i8, ptr %75, i64 28
  %636 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %637 = getelementptr inbounds nuw i8, ptr %75, i64 36
  br label %638

638:                                              ; preds = %634, %741
  %639 = phi i32 [ %742, %741 ], [ %345, %634 ]
  %640 = phi i32 [ %743, %741 ], [ %79, %634 ]
  %641 = phi i32 [ %744, %741 ], [ %342, %634 ]
  %642 = phi i32 [ %745, %741 ], [ %341, %634 ]
  %643 = phi i32 [ %746, %741 ], [ 0, %634 ]
  %644 = phi i32 [ %651, %741 ], [ 0, %634 ]
  %645 = phi i32 [ %648, %741 ], [ 0, %634 ]
  %646 = phi i64 [ %747, %741 ], [ 0, %634 ]
  %647 = getelementptr inbounds nuw i8, ptr %83, i64 %646
  %648 = add i32 %645, 1
  store i32 %648, ptr %75, align 4
  %649 = icmp ugt i32 %648, 15
  %650 = zext i1 %649 to i32
  %651 = or i32 %644, %650
  store i32 %651, ptr %433, align 4
  %652 = zext nneg i32 %643 to i64
  %653 = icmp ult i32 %643, 16
  call void @llvm.assume(i1 %653)
  %654 = icmp eq i32 %643, 15
  br i1 %654, label %659, label %655

655:                                              ; preds = %638
  %656 = getelementptr inbounds nuw i8, ptr %438, i64 %652
  %657 = load i8, ptr %647, align 1
  store i8 %657, ptr %656, align 1
  %658 = add nuw nsw i32 %643, 1
  br label %735

659:                                              ; preds = %638
  %660 = sub nuw nsw i64 16, %652
  %661 = getelementptr inbounds nuw i8, ptr %647, i64 1
  %662 = getelementptr inbounds nuw i8, ptr %438, i64 %652
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %662, ptr nonnull align 1 %647, i64 %660, i1 false)
  %663 = load i32, ptr %439, align 4
  %664 = zext i32 %663 to i64
  %665 = sub nsw i64 16, %664
  %666 = getelementptr i8, ptr %647, i64 %665
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %667 = load i32, ptr %438, align 4, !noalias !22
  %668 = mul i32 %667, -2048144777
  %669 = add i32 %668, %642
  %670 = call i32 @llvm.fshl.i32(i32 %669, i32 %669, i32 13)
  %671 = mul i32 %670, -1640531535
  %672 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %671) #31, !srcloc !9
  store i32 %672, ptr %340, align 4, !alias.scope !22, !noalias !25
  %673 = load i32, ptr %635, align 4, !noalias !22
  %674 = mul i32 %673, -2048144777
  %675 = add i32 %674, %641
  %676 = call i32 @llvm.fshl.i32(i32 %675, i32 %675, i32 13)
  %677 = mul i32 %676, -1640531535
  %678 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %677) #31, !srcloc !9
  store i32 %678, ptr %343, align 4, !alias.scope !22, !noalias !25
  %679 = load i32, ptr %636, align 4, !noalias !22
  %680 = mul i32 %679, -2048144777
  %681 = add i32 %680, %640
  %682 = call i32 @llvm.fshl.i32(i32 %681, i32 %681, i32 13)
  %683 = mul i32 %682, -1640531535
  %684 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %683) #31, !srcloc !9
  store i32 %684, ptr %344, align 4, !alias.scope !22, !noalias !25
  %685 = load i32, ptr %637, align 4, !noalias !22
  %686 = mul i32 %685, -2048144777
  %687 = add i32 %686, %639
  %688 = call i32 @llvm.fshl.i32(i32 %687, i32 %687, i32 13)
  %689 = mul i32 %688, -1640531535
  %690 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %689) #31, !srcloc !9
  store i32 %690, ptr %346, align 4, !alias.scope !22, !noalias !25
  store i32 0, ptr %439, align 4
  %691 = icmp ult i64 %665, 2
  call void @llvm.assume(i1 %691)
  %692 = ptrtoint ptr %661 to i64
  %693 = add nsw i64 %664, -31
  %694 = icmp ult i64 %693, -16
  br i1 %694, label %695, label %724

695:                                              ; preds = %659
  %696 = getelementptr i8, ptr %666, i64 16
  %697 = load i32, ptr %666, align 1
  %698 = mul i32 %697, -2048144777
  %699 = add i32 %698, %672
  %700 = call i32 @llvm.fshl.i32(i32 %699, i32 %699, i32 13)
  %701 = mul i32 %700, -1640531535
  %702 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %701) #31, !srcloc !9
  store i32 %702, ptr %340, align 4, !alias.scope !27, !noalias !30
  %703 = getelementptr inbounds nuw i8, ptr %666, i64 4
  %704 = load i32, ptr %703, align 1
  %705 = mul i32 %704, -2048144777
  %706 = add i32 %705, %678
  %707 = call i32 @llvm.fshl.i32(i32 %706, i32 %706, i32 13)
  %708 = mul i32 %707, -1640531535
  %709 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %708) #31, !srcloc !9
  store i32 %709, ptr %343, align 4, !alias.scope !27, !noalias !30
  %710 = getelementptr inbounds nuw i8, ptr %666, i64 8
  %711 = load i32, ptr %710, align 1
  %712 = mul i32 %711, -2048144777
  %713 = add i32 %712, %684
  %714 = call i32 @llvm.fshl.i32(i32 %713, i32 %713, i32 13)
  %715 = mul i32 %714, -1640531535
  %716 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %715) #31, !srcloc !9
  store i32 %716, ptr %344, align 4, !alias.scope !27, !noalias !30
  %717 = getelementptr inbounds nuw i8, ptr %666, i64 12
  %718 = load i32, ptr %717, align 1
  %719 = mul i32 %718, -2048144777
  %720 = add i32 %719, %690
  %721 = call i32 @llvm.fshl.i32(i32 %720, i32 %720, i32 13)
  %722 = mul i32 %721, -1640531535
  %723 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %722) #31, !srcloc !9
  store i32 %723, ptr %346, align 4, !alias.scope !27, !noalias !30
  br label %724

724:                                              ; preds = %695, %659
  %725 = phi i32 [ %690, %659 ], [ %723, %695 ]
  %726 = phi i32 [ %684, %659 ], [ %716, %695 ]
  %727 = phi i32 [ %678, %659 ], [ %709, %695 ]
  %728 = phi i32 [ %672, %659 ], [ %702, %695 ]
  %729 = phi ptr [ %666, %659 ], [ %696, %695 ]
  %730 = icmp ult ptr %729, %661
  br i1 %730, label %731, label %741

731:                                              ; preds = %724
  %732 = ptrtoint ptr %729 to i64
  %733 = sub i64 %692, %732
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %438, ptr align 1 %729, i64 %733, i1 false)
  %734 = trunc i64 %733 to i32
  br label %735

735:                                              ; preds = %731, %655
  %736 = phi i32 [ %658, %655 ], [ %734, %731 ]
  %737 = phi i32 [ %639, %655 ], [ %725, %731 ]
  %738 = phi i32 [ %640, %655 ], [ %726, %731 ]
  %739 = phi i32 [ %641, %655 ], [ %727, %731 ]
  %740 = phi i32 [ %642, %655 ], [ %728, %731 ]
  store i32 %736, ptr %439, align 4
  br label %741

741:                                              ; preds = %735, %724
  %742 = phi i32 [ %725, %724 ], [ %737, %735 ]
  %743 = phi i32 [ %726, %724 ], [ %738, %735 ]
  %744 = phi i32 [ %727, %724 ], [ %739, %735 ]
  %745 = phi i32 [ %728, %724 ], [ %740, %735 ]
  %746 = phi i32 [ 0, %724 ], [ %736, %735 ]
  %747 = add nuw nsw i64 %646, 1
  %748 = icmp eq i64 %747, %77
  br i1 %748, label %749, label %638, !llvm.loop !32

749:                                              ; preds = %741
  %750 = icmp eq i32 %651, 0
  br i1 %750, label %759, label %751

751:                                              ; preds = %749
  %752 = call i32 @llvm.fshl.i32(i32 %745, i32 %745, i32 1)
  %753 = call i32 @llvm.fshl.i32(i32 %744, i32 %744, i32 7)
  %754 = add i32 %753, %752
  %755 = call i32 @llvm.fshl.i32(i32 %743, i32 %743, i32 12)
  %756 = add i32 %754, %755
  %757 = call i32 @llvm.fshl.i32(i32 %742, i32 %742, i32 18)
  %758 = add i32 %756, %757
  br label %764

759:                                              ; preds = %749, %632
  %760 = phi i32 [ %746, %749 ], [ 0, %632 ]
  %761 = phi i32 [ %648, %749 ], [ 0, %632 ]
  %762 = phi i32 [ %743, %749 ], [ %79, %632 ]
  %763 = add i32 %762, 374761393
  br label %764

764:                                              ; preds = %759, %751
  %765 = phi i32 [ %746, %751 ], [ %760, %759 ]
  %766 = phi i32 [ %648, %751 ], [ %761, %759 ]
  %767 = phi i32 [ %758, %751 ], [ %763, %759 ]
  %768 = add i32 %766, %767
  %769 = and i32 %765, 15
  %770 = zext nneg i32 %769 to i64
  %771 = icmp samesign ugt i32 %769, 3
  br i1 %771, label %772, label %801

772:                                              ; preds = %764
  %773 = add nsw i64 %770, -4
  %774 = lshr i64 %773, 2
  %775 = add nuw nsw i64 %774, 1
  %776 = and i64 %775, 7
  %777 = and i64 %773, 28
  %778 = icmp eq i64 %777, 28
  br i1 %778, label %793, label %779

779:                                              ; preds = %772, %779
  %780 = phi i32 [ %789, %779 ], [ %768, %772 ]
  %781 = phi i64 [ %790, %779 ], [ %770, %772 ]
  %782 = phi ptr [ %787, %779 ], [ %438, %772 ]
  %783 = phi i64 [ %791, %779 ], [ 0, %772 ]
  %784 = load i32, ptr %782, align 1
  %785 = mul i32 %784, -1028477379
  %786 = add i32 %785, %780
  %787 = getelementptr inbounds nuw i8, ptr %782, i64 4
  %788 = call i32 @llvm.fshl.i32(i32 %786, i32 %786, i32 17)
  %789 = mul i32 %788, 668265263
  %790 = add nsw i64 %781, -4
  %791 = add i64 %783, 1
  %792 = icmp eq i64 %791, %776
  br i1 %792, label %793, label %779, !llvm.loop !33

793:                                              ; preds = %779, %772
  %794 = phi i32 [ %768, %772 ], [ %789, %779 ]
  %795 = phi i64 [ %770, %772 ], [ %790, %779 ]
  %796 = phi ptr [ %438, %772 ], [ %787, %779 ]
  %797 = phi ptr [ poison, %772 ], [ %787, %779 ]
  %798 = phi i32 [ poison, %772 ], [ %789, %779 ]
  %799 = phi i64 [ poison, %772 ], [ %790, %779 ]
  %800 = icmp ult i64 %773, 28
  br i1 %800, label %801, label %830

801:                                              ; preds = %793, %830, %764
  %802 = phi ptr [ %438, %764 ], [ %797, %793 ], [ %879, %830 ]
  %803 = phi i64 [ %770, %764 ], [ %799, %793 ], [ %882, %830 ]
  %804 = phi i32 [ %768, %764 ], [ %798, %793 ], [ %881, %830 ]
  %805 = icmp eq i64 %803, 0
  br i1 %805, label %946, label %806

806:                                              ; preds = %801
  %807 = and i64 %803, 7
  %808 = icmp eq i64 %807, 0
  br i1 %808, label %824, label %809

809:                                              ; preds = %806, %809
  %810 = phi i32 [ %820, %809 ], [ %804, %806 ]
  %811 = phi i64 [ %821, %809 ], [ %803, %806 ]
  %812 = phi ptr [ %814, %809 ], [ %802, %806 ]
  %813 = phi i64 [ %822, %809 ], [ 0, %806 ]
  %814 = getelementptr inbounds nuw i8, ptr %812, i64 1
  %815 = load i8, ptr %812, align 1
  %816 = zext i8 %815 to i32
  %817 = mul i32 %816, 374761393
  %818 = add i32 %817, %810
  %819 = call i32 @llvm.fshl.i32(i32 %818, i32 %818, i32 11)
  %820 = mul i32 %819, -1640531535
  %821 = add nsw i64 %811, -1
  %822 = add i64 %813, 1
  %823 = icmp eq i64 %822, %807
  br i1 %823, label %824, label %809, !llvm.loop !34

824:                                              ; preds = %809, %806
  %825 = phi i32 [ poison, %806 ], [ %820, %809 ]
  %826 = phi i32 [ %804, %806 ], [ %820, %809 ]
  %827 = phi i64 [ %803, %806 ], [ %821, %809 ]
  %828 = phi ptr [ %802, %806 ], [ %814, %809 ]
  %829 = icmp ult i64 %803, 8
  br i1 %829, label %946, label %884

830:                                              ; preds = %793, %830
  %831 = phi i32 [ %881, %830 ], [ %794, %793 ]
  %832 = phi i64 [ %882, %830 ], [ %795, %793 ]
  %833 = phi ptr [ %879, %830 ], [ %796, %793 ]
  %834 = load i32, ptr %833, align 1
  %835 = mul i32 %834, -1028477379
  %836 = add i32 %835, %831
  %837 = getelementptr inbounds nuw i8, ptr %833, i64 4
  %838 = call i32 @llvm.fshl.i32(i32 %836, i32 %836, i32 17)
  %839 = mul i32 %838, 668265263
  %840 = load i32, ptr %837, align 1
  %841 = mul i32 %840, -1028477379
  %842 = add i32 %841, %839
  %843 = getelementptr inbounds nuw i8, ptr %833, i64 8
  %844 = call i32 @llvm.fshl.i32(i32 %842, i32 %842, i32 17)
  %845 = mul i32 %844, 668265263
  %846 = load i32, ptr %843, align 1
  %847 = mul i32 %846, -1028477379
  %848 = add i32 %847, %845
  %849 = getelementptr inbounds nuw i8, ptr %833, i64 12
  %850 = call i32 @llvm.fshl.i32(i32 %848, i32 %848, i32 17)
  %851 = mul i32 %850, 668265263
  %852 = load i32, ptr %849, align 1
  %853 = mul i32 %852, -1028477379
  %854 = add i32 %853, %851
  %855 = getelementptr inbounds nuw i8, ptr %833, i64 16
  %856 = call i32 @llvm.fshl.i32(i32 %854, i32 %854, i32 17)
  %857 = mul i32 %856, 668265263
  %858 = load i32, ptr %855, align 1
  %859 = mul i32 %858, -1028477379
  %860 = add i32 %859, %857
  %861 = getelementptr inbounds nuw i8, ptr %833, i64 20
  %862 = call i32 @llvm.fshl.i32(i32 %860, i32 %860, i32 17)
  %863 = mul i32 %862, 668265263
  %864 = load i32, ptr %861, align 1
  %865 = mul i32 %864, -1028477379
  %866 = add i32 %865, %863
  %867 = getelementptr inbounds nuw i8, ptr %833, i64 24
  %868 = call i32 @llvm.fshl.i32(i32 %866, i32 %866, i32 17)
  %869 = mul i32 %868, 668265263
  %870 = load i32, ptr %867, align 1
  %871 = mul i32 %870, -1028477379
  %872 = add i32 %871, %869
  %873 = getelementptr inbounds nuw i8, ptr %833, i64 28
  %874 = call i32 @llvm.fshl.i32(i32 %872, i32 %872, i32 17)
  %875 = mul i32 %874, 668265263
  %876 = load i32, ptr %873, align 1
  %877 = mul i32 %876, -1028477379
  %878 = add i32 %877, %875
  %879 = getelementptr inbounds nuw i8, ptr %833, i64 32
  %880 = call i32 @llvm.fshl.i32(i32 %878, i32 %878, i32 17)
  %881 = mul i32 %880, 668265263
  %882 = add nsw i64 %832, -32
  %883 = icmp ugt i64 %882, 3
  br i1 %883, label %830, label %801, !llvm.loop !13

884:                                              ; preds = %824, %884
  %885 = phi i32 [ %943, %884 ], [ %826, %824 ]
  %886 = phi i64 [ %944, %884 ], [ %827, %824 ]
  %887 = phi ptr [ %937, %884 ], [ %828, %824 ]
  %888 = getelementptr inbounds nuw i8, ptr %887, i64 1
  %889 = load i8, ptr %887, align 1
  %890 = zext i8 %889 to i32
  %891 = mul i32 %890, 374761393
  %892 = add i32 %891, %885
  %893 = call i32 @llvm.fshl.i32(i32 %892, i32 %892, i32 11)
  %894 = mul i32 %893, -1640531535
  %895 = getelementptr inbounds nuw i8, ptr %887, i64 2
  %896 = load i8, ptr %888, align 1
  %897 = zext i8 %896 to i32
  %898 = mul i32 %897, 374761393
  %899 = add i32 %898, %894
  %900 = call i32 @llvm.fshl.i32(i32 %899, i32 %899, i32 11)
  %901 = mul i32 %900, -1640531535
  %902 = getelementptr inbounds nuw i8, ptr %887, i64 3
  %903 = load i8, ptr %895, align 1
  %904 = zext i8 %903 to i32
  %905 = mul i32 %904, 374761393
  %906 = add i32 %905, %901
  %907 = call i32 @llvm.fshl.i32(i32 %906, i32 %906, i32 11)
  %908 = mul i32 %907, -1640531535
  %909 = getelementptr inbounds nuw i8, ptr %887, i64 4
  %910 = load i8, ptr %902, align 1
  %911 = zext i8 %910 to i32
  %912 = mul i32 %911, 374761393
  %913 = add i32 %912, %908
  %914 = call i32 @llvm.fshl.i32(i32 %913, i32 %913, i32 11)
  %915 = mul i32 %914, -1640531535
  %916 = getelementptr inbounds nuw i8, ptr %887, i64 5
  %917 = load i8, ptr %909, align 1
  %918 = zext i8 %917 to i32
  %919 = mul i32 %918, 374761393
  %920 = add i32 %919, %915
  %921 = call i32 @llvm.fshl.i32(i32 %920, i32 %920, i32 11)
  %922 = mul i32 %921, -1640531535
  %923 = getelementptr inbounds nuw i8, ptr %887, i64 6
  %924 = load i8, ptr %916, align 1
  %925 = zext i8 %924 to i32
  %926 = mul i32 %925, 374761393
  %927 = add i32 %926, %922
  %928 = call i32 @llvm.fshl.i32(i32 %927, i32 %927, i32 11)
  %929 = mul i32 %928, -1640531535
  %930 = getelementptr inbounds nuw i8, ptr %887, i64 7
  %931 = load i8, ptr %923, align 1
  %932 = zext i8 %931 to i32
  %933 = mul i32 %932, 374761393
  %934 = add i32 %933, %929
  %935 = call i32 @llvm.fshl.i32(i32 %934, i32 %934, i32 11)
  %936 = mul i32 %935, -1640531535
  %937 = getelementptr inbounds nuw i8, ptr %887, i64 8
  %938 = load i8, ptr %930, align 1
  %939 = zext i8 %938 to i32
  %940 = mul i32 %939, 374761393
  %941 = add i32 %940, %936
  %942 = call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 11)
  %943 = mul i32 %942, -1640531535
  %944 = add nsw i64 %886, -8
  %945 = icmp eq i64 %944, 0
  br i1 %945, label %946, label %884, !llvm.loop !14

946:                                              ; preds = %824, %884, %801
  %947 = phi i32 [ %804, %801 ], [ %825, %824 ], [ %943, %884 ]
  %948 = lshr i32 %947, 15
  %949 = xor i32 %948, %947
  %950 = mul i32 %949, -2048144777
  %951 = lshr i32 %950, 13
  %952 = xor i32 %951, %950
  %953 = mul i32 %952, -1028477379
  %954 = lshr i32 %953, 16
  %955 = xor i32 %954, %953
  %956 = icmp eq i32 %955, %81
  br i1 %956, label %961, label %957

957:                                              ; preds = %946
  %958 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.8, i32 noundef %633) #29
  %959 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.9, i32 noundef %955, i32 noundef %81) #29
  %960 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

961:                                              ; preds = %946
  %962 = add nsw i32 %73, 3
  store i32 %962, ptr @XSUM_checkResult32.nbTests, align 4
  call void @free(ptr noundef nonnull %75) #29
  %963 = add nuw nsw i64 %72, 1
  %964 = icmp eq i64 %963, 8
  br i1 %964, label %68, label %71, !llvm.loop !35

965:                                              ; preds = %1506
  %966 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %967 = getelementptr inbounds nuw i8, ptr %5, i64 9
  %968 = getelementptr inbounds nuw i8, ptr %5, i64 17
  %969 = getelementptr inbounds nuw i8, ptr %5, i64 25
  %970 = getelementptr inbounds nuw i8, ptr %5, i64 33
  %971 = getelementptr inbounds nuw i8, ptr %5, i64 41
  %972 = getelementptr inbounds nuw i8, ptr %5, i64 49
  %973 = getelementptr inbounds nuw i8, ptr %5, i64 57
  %974 = getelementptr inbounds nuw i8, ptr %5, i64 65
  %975 = getelementptr inbounds nuw i8, ptr %5, i64 73
  %976 = getelementptr inbounds nuw i8, ptr %5, i64 81
  %977 = getelementptr inbounds nuw i8, ptr %5, i64 89
  %978 = getelementptr inbounds nuw i8, ptr %5, i64 97
  %979 = getelementptr inbounds nuw i8, ptr %5, i64 105
  %980 = getelementptr inbounds nuw i8, ptr %5, i64 113
  %981 = getelementptr inbounds nuw i8, ptr %5, i64 121
  %982 = getelementptr inbounds nuw i8, ptr %5, i64 129
  %983 = getelementptr inbounds nuw i8, ptr %5, i64 137
  %984 = getelementptr inbounds nuw i8, ptr %5, i64 145
  %985 = getelementptr inbounds nuw i8, ptr %5, i64 153
  %986 = getelementptr inbounds nuw i8, ptr %5, i64 161
  %987 = getelementptr inbounds nuw i8, ptr %5, i64 169
  %988 = getelementptr inbounds nuw i8, ptr %5, i64 177
  %989 = getelementptr inbounds nuw i8, ptr %5, i64 185
  %990 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %991 = getelementptr inbounds nuw i8, ptr %6, i64 9
  %992 = getelementptr inbounds nuw i8, ptr %6, i64 17
  %993 = getelementptr inbounds nuw i8, ptr %6, i64 25
  %994 = getelementptr inbounds nuw i8, ptr %6, i64 33
  %995 = getelementptr inbounds nuw i8, ptr %6, i64 41
  %996 = getelementptr inbounds nuw i8, ptr %6, i64 49
  %997 = getelementptr inbounds nuw i8, ptr %6, i64 57
  %998 = getelementptr inbounds nuw i8, ptr %6, i64 65
  %999 = getelementptr inbounds nuw i8, ptr %6, i64 73
  %1000 = getelementptr inbounds nuw i8, ptr %6, i64 81
  %1001 = getelementptr inbounds nuw i8, ptr %6, i64 89
  %1002 = getelementptr inbounds nuw i8, ptr %6, i64 97
  %1003 = getelementptr inbounds nuw i8, ptr %6, i64 105
  %1004 = getelementptr inbounds nuw i8, ptr %6, i64 113
  %1005 = getelementptr inbounds nuw i8, ptr %6, i64 121
  %1006 = getelementptr inbounds nuw i8, ptr %6, i64 129
  %1007 = getelementptr inbounds nuw i8, ptr %6, i64 137
  %1008 = getelementptr inbounds nuw i8, ptr %6, i64 145
  %1009 = getelementptr inbounds nuw i8, ptr %6, i64 153
  %1010 = getelementptr inbounds nuw i8, ptr %6, i64 161
  %1011 = getelementptr inbounds nuw i8, ptr %6, i64 169
  %1012 = getelementptr inbounds nuw i8, ptr %6, i64 177
  %1013 = getelementptr inbounds nuw i8, ptr %6, i64 185
  br label %1513

1014:                                             ; preds = %68, %1506
  %1015 = phi i64 [ 0, %68 ], [ %1508, %1506 ]
  %1016 = phi i32 [ %70, %68 ], [ %1507, %1506 ]
  %1017 = getelementptr inbounds nuw [9 x %struct.XSUM_testdata64_t], ptr @XSUM_XXH64_testdata, i64 0, i64 %1015
  %1018 = call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #30
  %1019 = load i32, ptr %1017, align 8
  %1020 = zext i32 %1019 to i64
  %1021 = getelementptr inbounds nuw i8, ptr %1017, i64 8
  %1022 = load i64, ptr %1021, align 8
  %1023 = getelementptr inbounds nuw i8, ptr %1017, i64 16
  %1024 = load i64, ptr %1023, align 8
  %1025 = icmp eq i32 %1019, 0
  %1026 = select i1 %1025, ptr null, ptr %7
  %1027 = icmp eq ptr %1018, null
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1014
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 315, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH64) #28
  unreachable

1029:                                             ; preds = %1014
  br i1 %1025, label %1104, label %1030

1030:                                             ; preds = %1029
  %1031 = icmp ugt i32 %1019, 31
  br i1 %1031, label %1032, label %1101

1032:                                             ; preds = %1030
  %1033 = add i64 %1022, 6983438078262162902
  %1034 = add i64 %1022, -4417276706812531889
  %1035 = add i64 %1022, 7046029288634856825
  %1036 = getelementptr i8, ptr %69, i64 %1020
  br label %1037

1037:                                             ; preds = %1037, %1032
  %1038 = phi i64 [ %1035, %1032 ], [ %1065, %1037 ]
  %1039 = phi i64 [ %1022, %1032 ], [ %1059, %1037 ]
  %1040 = phi i64 [ %1034, %1032 ], [ %1053, %1037 ]
  %1041 = phi i64 [ %1033, %1032 ], [ %1047, %1037 ]
  %1042 = phi ptr [ %7, %1032 ], [ %1066, %1037 ]
  %1043 = load i64, ptr %1042, align 1
  %1044 = mul i64 %1043, -4417276706812531889
  %1045 = add i64 %1044, %1041
  %1046 = call i64 @llvm.fshl.i64(i64 %1045, i64 %1045, i64 31)
  %1047 = mul i64 %1046, -7046029288634856825
  %1048 = getelementptr inbounds nuw i8, ptr %1042, i64 8
  %1049 = load i64, ptr %1048, align 1
  %1050 = mul i64 %1049, -4417276706812531889
  %1051 = add i64 %1050, %1040
  %1052 = call i64 @llvm.fshl.i64(i64 %1051, i64 %1051, i64 31)
  %1053 = mul i64 %1052, -7046029288634856825
  %1054 = getelementptr inbounds nuw i8, ptr %1042, i64 16
  %1055 = load i64, ptr %1054, align 1
  %1056 = mul i64 %1055, -4417276706812531889
  %1057 = add i64 %1056, %1039
  %1058 = call i64 @llvm.fshl.i64(i64 %1057, i64 %1057, i64 31)
  %1059 = mul i64 %1058, -7046029288634856825
  %1060 = getelementptr inbounds nuw i8, ptr %1042, i64 24
  %1061 = load i64, ptr %1060, align 1
  %1062 = mul i64 %1061, -4417276706812531889
  %1063 = add i64 %1062, %1038
  %1064 = call i64 @llvm.fshl.i64(i64 %1063, i64 %1063, i64 31)
  %1065 = mul i64 %1064, -7046029288634856825
  %1066 = getelementptr inbounds nuw i8, ptr %1042, i64 32
  %1067 = icmp ult ptr %1066, %1036
  br i1 %1067, label %1037, label %1068, !llvm.loop !36

1068:                                             ; preds = %1037
  %1069 = call i64 @llvm.fshl.i64(i64 %1047, i64 %1047, i64 1)
  %1070 = call i64 @llvm.fshl.i64(i64 %1053, i64 %1053, i64 7)
  %1071 = add i64 %1070, %1069
  %1072 = call i64 @llvm.fshl.i64(i64 %1059, i64 %1059, i64 12)
  %1073 = add i64 %1071, %1072
  %1074 = call i64 @llvm.fshl.i64(i64 %1065, i64 %1065, i64 18)
  %1075 = add i64 %1073, %1074
  %1076 = mul i64 %1046, -2381459717836149591
  %1077 = call i64 @llvm.fshl.i64(i64 %1076, i64 %1076, i64 31)
  %1078 = mul i64 %1077, -7046029288634856825
  %1079 = xor i64 %1075, %1078
  %1080 = mul i64 %1079, -7046029288634856825
  %1081 = add i64 %1080, -8796714831421723037
  %1082 = mul i64 %1052, -2381459717836149591
  %1083 = call i64 @llvm.fshl.i64(i64 %1082, i64 %1082, i64 31)
  %1084 = mul i64 %1083, -7046029288634856825
  %1085 = xor i64 %1081, %1084
  %1086 = mul i64 %1085, -7046029288634856825
  %1087 = add i64 %1086, -8796714831421723037
  %1088 = mul i64 %1058, -2381459717836149591
  %1089 = call i64 @llvm.fshl.i64(i64 %1088, i64 %1088, i64 31)
  %1090 = mul i64 %1089, -7046029288634856825
  %1091 = xor i64 %1087, %1090
  %1092 = mul i64 %1091, -7046029288634856825
  %1093 = add i64 %1092, -8796714831421723037
  %1094 = mul i64 %1064, -2381459717836149591
  %1095 = call i64 @llvm.fshl.i64(i64 %1094, i64 %1094, i64 31)
  %1096 = mul i64 %1095, -7046029288634856825
  %1097 = xor i64 %1093, %1096
  %1098 = mul i64 %1097, -7046029288634856825
  %1099 = add nuw nsw i64 %1020, -8796714831421723037
  %1100 = add i64 %1099, %1098
  br label %1106

1101:                                             ; preds = %1030
  %1102 = add i64 %1022, 2870177450012600261
  %1103 = add i64 %1102, %1020
  br label %1106

1104:                                             ; preds = %1029
  %1105 = add i64 %1022, 2870177450012600261
  br label %1291

1106:                                             ; preds = %1101, %1068
  %1107 = phi i64 [ %1100, %1068 ], [ %1103, %1101 ]
  %1108 = phi ptr [ %1066, %1068 ], [ %7, %1101 ]
  %1109 = and i64 %1020, 31
  %1110 = icmp samesign ugt i64 %1109, 7
  br i1 %1110, label %1111, label %1185

1111:                                             ; preds = %1106
  %1112 = add nsw i64 %1109, -8
  %1113 = lshr i64 %1112, 3
  %1114 = add nuw nsw i64 %1113, 1
  %1115 = and i64 %1114, 3
  %1116 = and i64 %1112, 24
  %1117 = icmp eq i64 %1116, 24
  br i1 %1117, label %1135, label %1118

1118:                                             ; preds = %1111, %1118
  %1119 = phi i64 [ %1131, %1118 ], [ %1107, %1111 ]
  %1120 = phi ptr [ %1127, %1118 ], [ %1108, %1111 ]
  %1121 = phi i64 [ %1132, %1118 ], [ %1109, %1111 ]
  %1122 = phi i64 [ %1133, %1118 ], [ 0, %1111 ]
  %1123 = load i64, ptr %1120, align 1
  %1124 = mul i64 %1123, -4417276706812531889
  %1125 = call i64 @llvm.fshl.i64(i64 %1124, i64 %1124, i64 31)
  %1126 = mul i64 %1125, -7046029288634856825
  %1127 = getelementptr inbounds nuw i8, ptr %1120, i64 8
  %1128 = xor i64 %1126, %1119
  %1129 = call i64 @llvm.fshl.i64(i64 %1128, i64 %1128, i64 27)
  %1130 = mul i64 %1129, -7046029288634856825
  %1131 = add i64 %1130, -8796714831421723037
  %1132 = add nsw i64 %1121, -8
  %1133 = add i64 %1122, 1
  %1134 = icmp eq i64 %1133, %1115
  br i1 %1134, label %1135, label %1118, !llvm.loop !37

1135:                                             ; preds = %1118, %1111
  %1136 = phi i64 [ %1107, %1111 ], [ %1131, %1118 ]
  %1137 = phi ptr [ %1108, %1111 ], [ %1127, %1118 ]
  %1138 = phi i64 [ %1109, %1111 ], [ %1132, %1118 ]
  %1139 = phi ptr [ poison, %1111 ], [ %1127, %1118 ]
  %1140 = phi i64 [ poison, %1111 ], [ %1131, %1118 ]
  %1141 = phi i64 [ poison, %1111 ], [ %1132, %1118 ]
  %1142 = icmp ult i64 %1112, 24
  br i1 %1142, label %1185, label %1143

1143:                                             ; preds = %1135, %1143
  %1144 = phi i64 [ %1182, %1143 ], [ %1136, %1135 ]
  %1145 = phi ptr [ %1178, %1143 ], [ %1137, %1135 ]
  %1146 = phi i64 [ %1183, %1143 ], [ %1138, %1135 ]
  %1147 = load i64, ptr %1145, align 1
  %1148 = mul i64 %1147, -4417276706812531889
  %1149 = call i64 @llvm.fshl.i64(i64 %1148, i64 %1148, i64 31)
  %1150 = mul i64 %1149, -7046029288634856825
  %1151 = getelementptr inbounds nuw i8, ptr %1145, i64 8
  %1152 = xor i64 %1150, %1144
  %1153 = call i64 @llvm.fshl.i64(i64 %1152, i64 %1152, i64 27)
  %1154 = mul i64 %1153, -7046029288634856825
  %1155 = add i64 %1154, -8796714831421723037
  %1156 = load i64, ptr %1151, align 1
  %1157 = mul i64 %1156, -4417276706812531889
  %1158 = call i64 @llvm.fshl.i64(i64 %1157, i64 %1157, i64 31)
  %1159 = mul i64 %1158, -7046029288634856825
  %1160 = getelementptr inbounds nuw i8, ptr %1145, i64 16
  %1161 = xor i64 %1159, %1155
  %1162 = call i64 @llvm.fshl.i64(i64 %1161, i64 %1161, i64 27)
  %1163 = mul i64 %1162, -7046029288634856825
  %1164 = add i64 %1163, -8796714831421723037
  %1165 = load i64, ptr %1160, align 1
  %1166 = mul i64 %1165, -4417276706812531889
  %1167 = call i64 @llvm.fshl.i64(i64 %1166, i64 %1166, i64 31)
  %1168 = mul i64 %1167, -7046029288634856825
  %1169 = getelementptr inbounds nuw i8, ptr %1145, i64 24
  %1170 = xor i64 %1168, %1164
  %1171 = call i64 @llvm.fshl.i64(i64 %1170, i64 %1170, i64 27)
  %1172 = mul i64 %1171, -7046029288634856825
  %1173 = add i64 %1172, -8796714831421723037
  %1174 = load i64, ptr %1169, align 1
  %1175 = mul i64 %1174, -4417276706812531889
  %1176 = call i64 @llvm.fshl.i64(i64 %1175, i64 %1175, i64 31)
  %1177 = mul i64 %1176, -7046029288634856825
  %1178 = getelementptr inbounds nuw i8, ptr %1145, i64 32
  %1179 = xor i64 %1177, %1173
  %1180 = call i64 @llvm.fshl.i64(i64 %1179, i64 %1179, i64 27)
  %1181 = mul i64 %1180, -7046029288634856825
  %1182 = add i64 %1181, -8796714831421723037
  %1183 = add nsw i64 %1146, -32
  %1184 = icmp ugt i64 %1183, 7
  br i1 %1184, label %1143, label %1185, !llvm.loop !38

1185:                                             ; preds = %1135, %1143, %1106
  %1186 = phi i64 [ %1109, %1106 ], [ %1141, %1135 ], [ %1183, %1143 ]
  %1187 = phi ptr [ %1108, %1106 ], [ %1139, %1135 ], [ %1178, %1143 ]
  %1188 = phi i64 [ %1107, %1106 ], [ %1140, %1135 ], [ %1182, %1143 ]
  %1189 = icmp samesign ugt i64 %1186, 3
  br i1 %1189, label %1190, label %1200

1190:                                             ; preds = %1185
  %1191 = load i32, ptr %1187, align 1
  %1192 = zext i32 %1191 to i64
  %1193 = mul i64 %1192, -7046029288634856825
  %1194 = xor i64 %1193, %1188
  %1195 = getelementptr inbounds nuw i8, ptr %1187, i64 4
  %1196 = call i64 @llvm.fshl.i64(i64 %1194, i64 %1194, i64 23)
  %1197 = mul i64 %1196, -4417276706812531889
  %1198 = add i64 %1197, 1609587929392839161
  %1199 = add nsw i64 %1186, -4
  br label %1200

1200:                                             ; preds = %1190, %1185
  %1201 = phi i64 [ %1199, %1190 ], [ %1186, %1185 ]
  %1202 = phi ptr [ %1195, %1190 ], [ %1187, %1185 ]
  %1203 = phi i64 [ %1198, %1190 ], [ %1188, %1185 ]
  %1204 = icmp eq i64 %1201, 0
  br i1 %1204, label %1291, label %1205

1205:                                             ; preds = %1200
  %1206 = and i64 %1201, 7
  %1207 = icmp eq i64 %1206, 0
  br i1 %1207, label %1223, label %1208

1208:                                             ; preds = %1205, %1208
  %1209 = phi i64 [ %1219, %1208 ], [ %1203, %1205 ]
  %1210 = phi ptr [ %1213, %1208 ], [ %1202, %1205 ]
  %1211 = phi i64 [ %1220, %1208 ], [ %1201, %1205 ]
  %1212 = phi i64 [ %1221, %1208 ], [ 0, %1205 ]
  %1213 = getelementptr inbounds nuw i8, ptr %1210, i64 1
  %1214 = load i8, ptr %1210, align 1
  %1215 = zext i8 %1214 to i64
  %1216 = mul i64 %1215, 2870177450012600261
  %1217 = xor i64 %1216, %1209
  %1218 = call i64 @llvm.fshl.i64(i64 %1217, i64 %1217, i64 11)
  %1219 = mul i64 %1218, -7046029288634856825
  %1220 = add nsw i64 %1211, -1
  %1221 = add i64 %1212, 1
  %1222 = icmp eq i64 %1221, %1206
  br i1 %1222, label %1223, label %1208, !llvm.loop !39

1223:                                             ; preds = %1208, %1205
  %1224 = phi i64 [ poison, %1205 ], [ %1219, %1208 ]
  %1225 = phi i64 [ %1203, %1205 ], [ %1219, %1208 ]
  %1226 = phi ptr [ %1202, %1205 ], [ %1213, %1208 ]
  %1227 = phi i64 [ %1201, %1205 ], [ %1220, %1208 ]
  %1228 = icmp ult i64 %1201, 8
  br i1 %1228, label %1291, label %1229

1229:                                             ; preds = %1223, %1229
  %1230 = phi i64 [ %1288, %1229 ], [ %1225, %1223 ]
  %1231 = phi ptr [ %1282, %1229 ], [ %1226, %1223 ]
  %1232 = phi i64 [ %1289, %1229 ], [ %1227, %1223 ]
  %1233 = getelementptr inbounds nuw i8, ptr %1231, i64 1
  %1234 = load i8, ptr %1231, align 1
  %1235 = zext i8 %1234 to i64
  %1236 = mul i64 %1235, 2870177450012600261
  %1237 = xor i64 %1236, %1230
  %1238 = call i64 @llvm.fshl.i64(i64 %1237, i64 %1237, i64 11)
  %1239 = mul i64 %1238, -7046029288634856825
  %1240 = getelementptr inbounds nuw i8, ptr %1231, i64 2
  %1241 = load i8, ptr %1233, align 1
  %1242 = zext i8 %1241 to i64
  %1243 = mul i64 %1242, 2870177450012600261
  %1244 = xor i64 %1243, %1239
  %1245 = call i64 @llvm.fshl.i64(i64 %1244, i64 %1244, i64 11)
  %1246 = mul i64 %1245, -7046029288634856825
  %1247 = getelementptr inbounds nuw i8, ptr %1231, i64 3
  %1248 = load i8, ptr %1240, align 1
  %1249 = zext i8 %1248 to i64
  %1250 = mul i64 %1249, 2870177450012600261
  %1251 = xor i64 %1250, %1246
  %1252 = call i64 @llvm.fshl.i64(i64 %1251, i64 %1251, i64 11)
  %1253 = mul i64 %1252, -7046029288634856825
  %1254 = getelementptr inbounds nuw i8, ptr %1231, i64 4
  %1255 = load i8, ptr %1247, align 1
  %1256 = zext i8 %1255 to i64
  %1257 = mul i64 %1256, 2870177450012600261
  %1258 = xor i64 %1257, %1253
  %1259 = call i64 @llvm.fshl.i64(i64 %1258, i64 %1258, i64 11)
  %1260 = mul i64 %1259, -7046029288634856825
  %1261 = getelementptr inbounds nuw i8, ptr %1231, i64 5
  %1262 = load i8, ptr %1254, align 1
  %1263 = zext i8 %1262 to i64
  %1264 = mul i64 %1263, 2870177450012600261
  %1265 = xor i64 %1264, %1260
  %1266 = call i64 @llvm.fshl.i64(i64 %1265, i64 %1265, i64 11)
  %1267 = mul i64 %1266, -7046029288634856825
  %1268 = getelementptr inbounds nuw i8, ptr %1231, i64 6
  %1269 = load i8, ptr %1261, align 1
  %1270 = zext i8 %1269 to i64
  %1271 = mul i64 %1270, 2870177450012600261
  %1272 = xor i64 %1271, %1267
  %1273 = call i64 @llvm.fshl.i64(i64 %1272, i64 %1272, i64 11)
  %1274 = mul i64 %1273, -7046029288634856825
  %1275 = getelementptr inbounds nuw i8, ptr %1231, i64 7
  %1276 = load i8, ptr %1268, align 1
  %1277 = zext i8 %1276 to i64
  %1278 = mul i64 %1277, 2870177450012600261
  %1279 = xor i64 %1278, %1274
  %1280 = call i64 @llvm.fshl.i64(i64 %1279, i64 %1279, i64 11)
  %1281 = mul i64 %1280, -7046029288634856825
  %1282 = getelementptr inbounds nuw i8, ptr %1231, i64 8
  %1283 = load i8, ptr %1275, align 1
  %1284 = zext i8 %1283 to i64
  %1285 = mul i64 %1284, 2870177450012600261
  %1286 = xor i64 %1285, %1281
  %1287 = call i64 @llvm.fshl.i64(i64 %1286, i64 %1286, i64 11)
  %1288 = mul i64 %1287, -7046029288634856825
  %1289 = add nsw i64 %1232, -8
  %1290 = icmp eq i64 %1289, 0
  br i1 %1290, label %1291, label %1229, !llvm.loop !40

1291:                                             ; preds = %1223, %1229, %1200, %1104
  %1292 = phi i64 [ %1203, %1200 ], [ %1105, %1104 ], [ %1224, %1223 ], [ %1288, %1229 ]
  %1293 = lshr i64 %1292, 33
  %1294 = xor i64 %1293, %1292
  %1295 = mul i64 %1294, -4417276706812531889
  %1296 = lshr i64 %1295, 29
  %1297 = xor i64 %1296, %1295
  %1298 = mul i64 %1297, 1609587929392839161
  %1299 = lshr i64 %1298, 32
  %1300 = xor i64 %1299, %1298
  %1301 = icmp eq i64 %1300, %1024
  br i1 %1301, label %1311, label %1302

1302:                                             ; preds = %1291
  %1303 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1016) #29
  %1304 = trunc nuw i64 %1299 to i32
  %1305 = trunc i64 %1300 to i32
  %1306 = lshr i64 %1024, 32
  %1307 = trunc nuw i64 %1306 to i32
  %1308 = trunc i64 %1024 to i32
  %1309 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1304, i32 noundef %1305, i32 noundef %1307, i32 noundef %1308) #29
  %1310 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1311:                                             ; preds = %1291
  %1312 = add nsw i32 %1016, 1
  store i32 %1312, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1018, i8 0, i64 88, i1 false)
  %1313 = getelementptr inbounds nuw i8, ptr %1018, i64 8
  %1314 = add i64 %1022, 6983438078262162902
  store i64 %1314, ptr %1313, align 8
  %1315 = add i64 %1022, -4417276706812531889
  %1316 = getelementptr inbounds nuw i8, ptr %1018, i64 16
  store i64 %1315, ptr %1316, align 8
  %1317 = getelementptr inbounds nuw i8, ptr %1018, i64 24
  store i64 %1022, ptr %1317, align 8
  %1318 = add i64 %1022, 7046029288634856825
  %1319 = getelementptr inbounds nuw i8, ptr %1018, i64 32
  store i64 %1318, ptr %1319, align 8
  br i1 %1025, label %1371, label %1320

1320:                                             ; preds = %1311
  store i64 %1020, ptr %1018, align 8
  %1321 = getelementptr inbounds nuw i8, ptr %1018, i64 72
  %1322 = icmp ult i32 %1019, 32
  br i1 %1322, label %1323, label %1327

1323:                                             ; preds = %1320
  %1324 = getelementptr inbounds nuw i8, ptr %1018, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1324, ptr nonnull align 16 %7, i64 range(i64 0, 4294967296) %1020, i1 false)
  %1325 = load i32, ptr %1321, align 8
  %1326 = add i32 %1325, %1019
  br label %1369

1327:                                             ; preds = %1320
  %1328 = getelementptr inbounds nuw i8, ptr %7, i64 %1020
  %1329 = ptrtoint ptr %1328 to i64
  %1330 = getelementptr inbounds i8, ptr %1328, i64 -31
  br label %1331

1331:                                             ; preds = %1331, %1327
  %1332 = phi i64 [ %1318, %1327 ], [ %1359, %1331 ]
  %1333 = phi i64 [ %1022, %1327 ], [ %1353, %1331 ]
  %1334 = phi i64 [ %1315, %1327 ], [ %1347, %1331 ]
  %1335 = phi i64 [ %1314, %1327 ], [ %1341, %1331 ]
  %1336 = phi ptr [ %7, %1327 ], [ %1360, %1331 ]
  %1337 = load i64, ptr %1336, align 1
  %1338 = mul i64 %1337, -4417276706812531889
  %1339 = add i64 %1338, %1335
  %1340 = call i64 @llvm.fshl.i64(i64 %1339, i64 %1339, i64 31)
  %1341 = mul i64 %1340, -7046029288634856825
  %1342 = getelementptr inbounds nuw i8, ptr %1336, i64 8
  %1343 = load i64, ptr %1342, align 1
  %1344 = mul i64 %1343, -4417276706812531889
  %1345 = add i64 %1344, %1334
  %1346 = call i64 @llvm.fshl.i64(i64 %1345, i64 %1345, i64 31)
  %1347 = mul i64 %1346, -7046029288634856825
  %1348 = getelementptr inbounds nuw i8, ptr %1336, i64 16
  %1349 = load i64, ptr %1348, align 1
  %1350 = mul i64 %1349, -4417276706812531889
  %1351 = add i64 %1350, %1333
  %1352 = call i64 @llvm.fshl.i64(i64 %1351, i64 %1351, i64 31)
  %1353 = mul i64 %1352, -7046029288634856825
  %1354 = getelementptr inbounds nuw i8, ptr %1336, i64 24
  %1355 = load i64, ptr %1354, align 1
  %1356 = mul i64 %1355, -4417276706812531889
  %1357 = add i64 %1356, %1332
  %1358 = call i64 @llvm.fshl.i64(i64 %1357, i64 %1357, i64 31)
  %1359 = mul i64 %1358, -7046029288634856825
  %1360 = getelementptr inbounds nuw i8, ptr %1336, i64 32
  %1361 = icmp ult ptr %1360, %1330
  br i1 %1361, label %1331, label %1362, !llvm.loop !36

1362:                                             ; preds = %1331
  store i64 %1341, ptr %1313, align 8, !alias.scope !41, !noalias !44
  store i64 %1347, ptr %1316, align 8, !alias.scope !41, !noalias !44
  store i64 %1353, ptr %1317, align 8, !alias.scope !41, !noalias !44
  store i64 %1359, ptr %1319, align 8, !alias.scope !41, !noalias !44
  %1363 = icmp ult ptr %1360, %1328
  br i1 %1363, label %1364, label %1371

1364:                                             ; preds = %1362
  %1365 = getelementptr inbounds nuw i8, ptr %1018, i64 40
  %1366 = ptrtoint ptr %1360 to i64
  %1367 = sub i64 %1329, %1366
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1365, ptr nonnull align 1 %1360, i64 %1367, i1 false)
  %1368 = trunc i64 %1367 to i32
  br label %1369

1369:                                             ; preds = %1364, %1323
  %1370 = phi i32 [ %1326, %1323 ], [ %1368, %1364 ]
  store i32 %1370, ptr %1321, align 8
  br label %1371

1371:                                             ; preds = %1369, %1311, %1362
  %1372 = call fastcc i64 @XXH_INLINE_XXH64_digest(ptr nocapture noundef %1018) #33
  %1373 = icmp eq i64 %1372, %1024
  br i1 %1373, label %1384, label %1374

1374:                                             ; preds = %1371
  %1375 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1312) #29
  %1376 = lshr i64 %1372, 32
  %1377 = trunc nuw i64 %1376 to i32
  %1378 = trunc i64 %1372 to i32
  %1379 = lshr i64 %1024, 32
  %1380 = trunc nuw i64 %1379 to i32
  %1381 = trunc i64 %1024 to i32
  %1382 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1377, i32 noundef %1378, i32 noundef %1380, i32 noundef %1381) #29
  %1383 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1384:                                             ; preds = %1371
  %1385 = add nsw i32 %1016, 2
  store i32 %1385, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1018, i8 0, i64 88, i1 false)
  store i64 %1314, ptr %1313, align 8
  store i64 %1315, ptr %1316, align 8
  store i64 %1022, ptr %1317, align 8
  store i64 %1318, ptr %1319, align 8
  br i1 %1025, label %1493, label %1386

1386:                                             ; preds = %1384
  %1387 = getelementptr inbounds nuw i8, ptr %1018, i64 72
  %1388 = getelementptr inbounds nuw i8, ptr %1018, i64 40
  %1389 = getelementptr inbounds nuw i8, ptr %1018, i64 48
  %1390 = getelementptr inbounds nuw i8, ptr %1018, i64 56
  %1391 = getelementptr inbounds nuw i8, ptr %1018, i64 64
  br label %1392

1392:                                             ; preds = %1386, %1484
  %1393 = phi i64 [ %1485, %1484 ], [ %1318, %1386 ]
  %1394 = phi i64 [ %1486, %1484 ], [ %1022, %1386 ]
  %1395 = phi i64 [ %1487, %1484 ], [ %1315, %1386 ]
  %1396 = phi i64 [ %1488, %1484 ], [ %1314, %1386 ]
  %1397 = phi i32 [ %1489, %1484 ], [ 0, %1386 ]
  %1398 = phi i64 [ %1401, %1484 ], [ 0, %1386 ]
  %1399 = phi i64 [ %1490, %1484 ], [ 0, %1386 ]
  %1400 = getelementptr inbounds nuw i8, ptr %1026, i64 %1399
  %1401 = add i64 %1398, 1
  %1402 = zext nneg i32 %1397 to i64
  %1403 = icmp ult i32 %1397, 33
  call void @llvm.assume(i1 %1403)
  %1404 = icmp samesign ult i32 %1397, 31
  br i1 %1404, label %1405, label %1410

1405:                                             ; preds = %1392
  %1406 = getelementptr inbounds nuw i8, ptr %1388, i64 %1402
  %1407 = load i8, ptr %1400, align 1
  store i8 %1407, ptr %1406, align 1
  %1408 = load i32, ptr %1387, align 8
  %1409 = add i32 %1408, 1
  br label %1478

1410:                                             ; preds = %1392
  %1411 = sub nuw nsw i64 32, %1402
  %1412 = getelementptr inbounds nuw i8, ptr %1400, i64 1
  %1413 = getelementptr inbounds nuw i8, ptr %1388, i64 %1402
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1413, ptr nonnull align 1 %1400, i64 %1411, i1 false)
  %1414 = load i32, ptr %1387, align 8
  %1415 = zext i32 %1414 to i64
  %1416 = sub nsw i64 32, %1415
  %1417 = getelementptr i8, ptr %1400, i64 %1416
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %1418 = load i64, ptr %1388, align 8, !noalias !46
  %1419 = mul i64 %1418, -4417276706812531889
  %1420 = add i64 %1419, %1396
  %1421 = call i64 @llvm.fshl.i64(i64 %1420, i64 %1420, i64 31)
  %1422 = mul i64 %1421, -7046029288634856825
  store i64 %1422, ptr %1313, align 8, !alias.scope !46, !noalias !49
  %1423 = load i64, ptr %1389, align 8, !noalias !46
  %1424 = mul i64 %1423, -4417276706812531889
  %1425 = add i64 %1424, %1395
  %1426 = call i64 @llvm.fshl.i64(i64 %1425, i64 %1425, i64 31)
  %1427 = mul i64 %1426, -7046029288634856825
  store i64 %1427, ptr %1316, align 8, !alias.scope !46, !noalias !49
  %1428 = load i64, ptr %1390, align 8, !noalias !46
  %1429 = mul i64 %1428, -4417276706812531889
  %1430 = add i64 %1429, %1394
  %1431 = call i64 @llvm.fshl.i64(i64 %1430, i64 %1430, i64 31)
  %1432 = mul i64 %1431, -7046029288634856825
  store i64 %1432, ptr %1317, align 8, !alias.scope !46, !noalias !49
  %1433 = load i64, ptr %1391, align 8, !noalias !46
  %1434 = mul i64 %1433, -4417276706812531889
  %1435 = add i64 %1434, %1393
  %1436 = call i64 @llvm.fshl.i64(i64 %1435, i64 %1435, i64 31)
  %1437 = mul i64 %1436, -7046029288634856825
  store i64 %1437, ptr %1319, align 8, !alias.scope !46, !noalias !49
  store i32 0, ptr %1387, align 8
  %1438 = icmp ult i64 %1416, 2
  call void @llvm.assume(i1 %1438)
  %1439 = ptrtoint ptr %1412 to i64
  %1440 = add nsw i64 %1415, -63
  %1441 = icmp ult i64 %1440, -32
  br i1 %1441, label %1442, label %1467

1442:                                             ; preds = %1410
  %1443 = getelementptr i8, ptr %1417, i64 32
  %1444 = load i64, ptr %1417, align 1
  %1445 = mul i64 %1444, -4417276706812531889
  %1446 = add i64 %1445, %1422
  %1447 = call i64 @llvm.fshl.i64(i64 %1446, i64 %1446, i64 31)
  %1448 = mul i64 %1447, -7046029288634856825
  store i64 %1448, ptr %1313, align 8, !alias.scope !51, !noalias !54
  %1449 = getelementptr inbounds nuw i8, ptr %1417, i64 8
  %1450 = load i64, ptr %1449, align 1
  %1451 = mul i64 %1450, -4417276706812531889
  %1452 = add i64 %1451, %1427
  %1453 = call i64 @llvm.fshl.i64(i64 %1452, i64 %1452, i64 31)
  %1454 = mul i64 %1453, -7046029288634856825
  store i64 %1454, ptr %1316, align 8, !alias.scope !51, !noalias !54
  %1455 = getelementptr inbounds nuw i8, ptr %1417, i64 16
  %1456 = load i64, ptr %1455, align 1
  %1457 = mul i64 %1456, -4417276706812531889
  %1458 = add i64 %1457, %1432
  %1459 = call i64 @llvm.fshl.i64(i64 %1458, i64 %1458, i64 31)
  %1460 = mul i64 %1459, -7046029288634856825
  store i64 %1460, ptr %1317, align 8, !alias.scope !51, !noalias !54
  %1461 = getelementptr inbounds nuw i8, ptr %1417, i64 24
  %1462 = load i64, ptr %1461, align 1
  %1463 = mul i64 %1462, -4417276706812531889
  %1464 = add i64 %1463, %1437
  %1465 = call i64 @llvm.fshl.i64(i64 %1464, i64 %1464, i64 31)
  %1466 = mul i64 %1465, -7046029288634856825
  store i64 %1466, ptr %1319, align 8, !alias.scope !51, !noalias !54
  br label %1467

1467:                                             ; preds = %1442, %1410
  %1468 = phi i64 [ %1437, %1410 ], [ %1466, %1442 ]
  %1469 = phi i64 [ %1432, %1410 ], [ %1460, %1442 ]
  %1470 = phi i64 [ %1427, %1410 ], [ %1454, %1442 ]
  %1471 = phi i64 [ %1422, %1410 ], [ %1448, %1442 ]
  %1472 = phi ptr [ %1417, %1410 ], [ %1443, %1442 ]
  %1473 = icmp ult ptr %1472, %1412
  br i1 %1473, label %1474, label %1484

1474:                                             ; preds = %1467
  %1475 = ptrtoint ptr %1472 to i64
  %1476 = sub i64 %1439, %1475
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1388, ptr align 1 %1472, i64 %1476, i1 false)
  %1477 = trunc i64 %1476 to i32
  br label %1478

1478:                                             ; preds = %1474, %1405
  %1479 = phi i32 [ %1409, %1405 ], [ %1477, %1474 ]
  %1480 = phi i64 [ %1393, %1405 ], [ %1468, %1474 ]
  %1481 = phi i64 [ %1394, %1405 ], [ %1469, %1474 ]
  %1482 = phi i64 [ %1395, %1405 ], [ %1470, %1474 ]
  %1483 = phi i64 [ %1396, %1405 ], [ %1471, %1474 ]
  store i32 %1479, ptr %1387, align 8
  br label %1484

1484:                                             ; preds = %1478, %1467
  %1485 = phi i64 [ %1468, %1467 ], [ %1480, %1478 ]
  %1486 = phi i64 [ %1469, %1467 ], [ %1481, %1478 ]
  %1487 = phi i64 [ %1470, %1467 ], [ %1482, %1478 ]
  %1488 = phi i64 [ %1471, %1467 ], [ %1483, %1478 ]
  %1489 = phi i32 [ 0, %1467 ], [ %1479, %1478 ]
  %1490 = add nuw nsw i64 %1399, 1
  %1491 = icmp eq i64 %1490, %1020
  br i1 %1491, label %1492, label %1392, !llvm.loop !56

1492:                                             ; preds = %1484
  store i64 %1401, ptr %1018, align 8
  br label %1493

1493:                                             ; preds = %1492, %1384
  %1494 = call fastcc i64 @XXH_INLINE_XXH64_digest(ptr nocapture noundef %1018) #33
  %1495 = icmp eq i64 %1494, %1024
  br i1 %1495, label %1506, label %1496

1496:                                             ; preds = %1493
  %1497 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1385) #29
  %1498 = lshr i64 %1494, 32
  %1499 = trunc nuw i64 %1498 to i32
  %1500 = trunc i64 %1494 to i32
  %1501 = lshr i64 %1024, 32
  %1502 = trunc nuw i64 %1501 to i32
  %1503 = trunc i64 %1024 to i32
  %1504 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1499, i32 noundef %1500, i32 noundef %1502, i32 noundef %1503) #29
  %1505 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1506:                                             ; preds = %1493
  %1507 = add nsw i32 %1016, 3
  store i32 %1507, ptr @XSUM_checkResult64.nbTests, align 4
  call void @free(ptr noundef nonnull %1018) #29
  %1508 = add nuw nsw i64 %1015, 1
  %1509 = icmp eq i64 %1508, 9
  br i1 %1509, label %965, label %1014, !llvm.loop !57

1510:                                             ; preds = %2012
  %1511 = getelementptr inbounds nuw i8, ptr %7, i64 63
  %1512 = getelementptr inbounds nuw i8, ptr %7, i64 71
  br label %2069

1513:                                             ; preds = %965, %2012
  %1514 = phi i32 [ %1507, %965 ], [ %2013, %2012 ]
  %1515 = phi i64 [ 0, %965 ], [ %2018, %2012 ]
  %1516 = getelementptr inbounds nuw [28 x %struct.XSUM_testdata64_t], ptr @XSUM_XXH3_testdata, i64 0, i64 %1515
  %1517 = load i32, ptr %1516, align 8
  %1518 = zext i32 %1517 to i64
  %1519 = getelementptr inbounds nuw i8, ptr %1516, i64 8
  %1520 = load i64, ptr %1519, align 8
  %1521 = getelementptr inbounds nuw i8, ptr %1516, i64 16
  %1522 = load i64, ptr %1521, align 8
  %1523 = icmp eq i32 %1517, 0
  br i1 %1523, label %1524, label %1534

1524:                                             ; preds = %1513
  %1525 = xor i64 %1520, -8707998980786479652
  %1526 = lshr i64 %1525, 33
  %1527 = xor i64 %1526, %1525
  %1528 = mul i64 %1527, -4417276706812531889
  %1529 = lshr i64 %1528, 29
  %1530 = xor i64 %1529, %1528
  %1531 = mul i64 %1530, 1609587929392839161
  %1532 = lshr i64 %1531, 32
  %1533 = xor i64 %1532, %1531
  br label %1536

1534:                                             ; preds = %1513
  %1535 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSeed(ptr nocapture noundef nonnull %7, i64 noundef %1518, i64 noundef %1520) #33
  br label %1536

1536:                                             ; preds = %1534, %1524
  %1537 = phi i64 [ %1533, %1524 ], [ %1535, %1534 ]
  %1538 = phi ptr [ inttoptr (i64 8 to ptr), %1524 ], [ %62, %1534 ]
  %1539 = phi ptr [ inttoptr (i64 16 to ptr), %1524 ], [ %9, %1534 ]
  %1540 = phi ptr [ inttoptr (i64 24 to ptr), %1524 ], [ %63, %1534 ]
  %1541 = phi ptr [ inttoptr (i64 32 to ptr), %1524 ], [ %10, %1534 ]
  %1542 = phi ptr [ inttoptr (i64 40 to ptr), %1524 ], [ %64, %1534 ]
  %1543 = phi ptr [ inttoptr (i64 48 to ptr), %1524 ], [ %11, %1534 ]
  %1544 = phi ptr [ inttoptr (i64 56 to ptr), %1524 ], [ %65, %1534 ]
  %1545 = phi ptr [ null, %1524 ], [ %7, %1534 ]
  %1546 = icmp eq i64 %1537, %1522
  br i1 %1546, label %1557, label %1547

1547:                                             ; preds = %1536
  %1548 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1514) #29
  %1549 = lshr i64 %1537, 32
  %1550 = trunc nuw i64 %1549 to i32
  %1551 = trunc i64 %1537 to i32
  %1552 = lshr i64 %1522, 32
  %1553 = trunc nuw i64 %1552 to i32
  %1554 = trunc i64 %1522 to i32
  %1555 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1550, i32 noundef %1551, i32 noundef %1553, i32 noundef %1554) #29
  %1556 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1557:                                             ; preds = %1536
  %1558 = add nsw i32 %1514, 1
  store i32 %1558, ptr @XSUM_checkResult64.nbTests, align 4
  %1559 = icmp eq i64 %1520, 0
  br i1 %1559, label %1585, label %1560

1560:                                             ; preds = %1557
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %5) #29
  %1561 = add i64 %1520, -4734510112055689544
  %1562 = sub i64 2066345149520216444, %1520
  %1563 = add i64 %1520, -2623469361688619810
  %1564 = sub i64 2262974939099578482, %1520
  %1565 = add i64 %1520, 8711581037947681227
  %1566 = sub i64 2410270004345854594, %1520
  %1567 = add i64 %1520, -8204357891075471176
  %1568 = sub i64 5487137525590930912, %1520
  %1569 = add i64 %1520, -3818837453329782724
  %1570 = sub i64 -6688317018830679928, %1520
  %1571 = add i64 %1520, 5690594596133299313
  %1572 = sub i64 -2833645246901970632, %1520
  %1573 = add i64 %1520, 4554437623014685352
  %1574 = sub i64 2111919702937427193, %1520
  %1575 = add i64 %1520, 3556072174620004746
  %1576 = sub i64 7238261902898274248, %1520
  %1577 = add i64 %1520, -4329134394285701654
  %1578 = sub i64 -1485321483350670907, %1520
  %1579 = add i64 %1520, 5321830579834785047
  %1580 = sub i64 -7032137544937171245, %1520
  %1581 = add i64 %1520, -242834301215959509
  %1582 = sub i64 -3588858202114426737, %1520
  %1583 = add i64 %1520, 2883454493032893253
  %1584 = sub i64 9097354517224871855, %1520
  br label %1804

1585:                                             ; preds = %1557
  %1586 = icmp ult i32 %1517, 17
  br i1 %1586, label %1587, label %1662

1587:                                             ; preds = %1585
  %1588 = icmp samesign ugt i32 %1517, 8
  br i1 %1588, label %1589, label %1612, !prof !58

1589:                                             ; preds = %1587
  %1590 = icmp ne ptr %1545, null
  call void @llvm.assume(i1 %1590)
  %1591 = load i64, ptr %1545, align 16
  %1592 = xor i64 %1591, 7458650908927343033
  %1593 = getelementptr inbounds nuw i8, ptr %1545, i64 %1518
  %1594 = getelementptr inbounds i8, ptr %1593, i64 -8
  %1595 = load i64, ptr %1594, align 1
  %1596 = xor i64 %1595, -5812251307325107654
  %1597 = call noundef i64 @llvm.bswap.i64(i64 %1592)
  %1598 = add i64 %1597, %1518
  %1599 = add i64 %1598, %1596
  %1600 = zext i64 %1592 to i128
  %1601 = zext i64 %1596 to i128
  %1602 = mul nuw i128 %1601, %1600
  %1603 = lshr i128 %1602, 64
  %1604 = xor i128 %1603, %1602
  %1605 = trunc i128 %1604 to i64
  %1606 = add i64 %1599, %1605
  %1607 = lshr i64 %1606, 37
  %1608 = xor i64 %1607, %1606
  %1609 = mul i64 %1608, 1609587791953885689
  %1610 = lshr i64 %1609, 32
  %1611 = xor i64 %1610, %1609
  br label %1789

1612:                                             ; preds = %1587
  %1613 = icmp samesign ugt i32 %1517, 3
  br i1 %1613, label %1614, label %1636, !prof !58

1614:                                             ; preds = %1612
  %1615 = icmp ne ptr %1545, null
  call void @llvm.assume(i1 %1615)
  %1616 = load i32, ptr %1545, align 16
  %1617 = getelementptr inbounds nuw i8, ptr %1545, i64 %1518
  %1618 = getelementptr inbounds i8, ptr %1617, i64 -4
  %1619 = load i32, ptr %1618, align 1
  %1620 = zext i32 %1619 to i64
  %1621 = zext i32 %1616 to i64
  %1622 = shl nuw i64 %1621, 32
  %1623 = or disjoint i64 %1622, %1620
  %1624 = xor i64 %1623, -4090762196417718878
  %1625 = call i64 @llvm.fshl.i64(i64 %1624, i64 %1624, i64 49)
  %1626 = call i64 @llvm.fshl.i64(i64 %1624, i64 %1624, i64 24)
  %1627 = xor i64 %1625, %1626
  %1628 = xor i64 %1627, %1624
  %1629 = mul i64 %1628, -6939452855193903323
  %1630 = lshr i64 %1629, 35
  %1631 = add nuw nsw i64 %1630, %1518
  %1632 = xor i64 %1631, %1629
  %1633 = mul i64 %1632, -6939452855193903323
  %1634 = lshr i64 %1633, 28
  %1635 = xor i64 %1634, %1633
  br label %1789

1636:                                             ; preds = %1612
  br i1 %1523, label %1789, label %1637

1637:                                             ; preds = %1636
  %1638 = icmp ne ptr %1545, null
  call void @llvm.assume(i1 %1638)
  %1639 = load i8, ptr %1545, align 16
  %1640 = lshr i64 %1518, 1
  %1641 = getelementptr inbounds nuw i8, ptr %1545, i64 %1640
  %1642 = load i8, ptr %1641, align 1
  %1643 = getelementptr i8, ptr %1545, i64 %1518
  %1644 = getelementptr i8, ptr %1643, i64 -1
  %1645 = load i8, ptr %1644, align 1
  %1646 = zext i8 %1639 to i64
  %1647 = shl nuw nsw i64 %1646, 16
  %1648 = zext i8 %1642 to i64
  %1649 = shl nuw nsw i64 %1648, 24
  %1650 = zext i8 %1645 to i64
  %1651 = shl nuw nsw i64 %1518, 8
  %1652 = or disjoint i64 %1647, %1651
  %1653 = or disjoint i64 %1652, %1649
  %1654 = or disjoint i64 %1653, %1650
  %1655 = xor i64 %1654, 2267503259
  %1656 = mul i64 %1655, -4417276706812531889
  %1657 = lshr i64 %1656, 29
  %1658 = xor i64 %1657, %1656
  %1659 = mul i64 %1658, 1609587929392839161
  %1660 = lshr i64 %1659, 32
  %1661 = xor i64 %1660, %1659
  br label %1789

1662:                                             ; preds = %1585
  %1663 = icmp ult i32 %1517, 129
  br i1 %1663, label %1664, label %1783

1664:                                             ; preds = %1662
  %1665 = mul i64 %1518, -7046029288634856825
  %1666 = icmp samesign ugt i32 %1517, 32
  br i1 %1666, label %1667, label %1751

1667:                                             ; preds = %1664
  %1668 = icmp samesign ugt i32 %1517, 64
  br i1 %1668, label %1669, label %1724

1669:                                             ; preds = %1667
  %1670 = icmp samesign ugt i32 %1517, 96
  br i1 %1670, label %1671, label %1697

1671:                                             ; preds = %1669
  %1672 = load i64, ptr %1543, align 1
  %1673 = load i64, ptr %1544, align 1
  %1674 = xor i64 %1672, 4554437623014685352
  %1675 = xor i64 %1673, 2111919702937427193
  %1676 = zext i64 %1674 to i128
  %1677 = zext i64 %1675 to i128
  %1678 = mul nuw i128 %1677, %1676
  %1679 = lshr i128 %1678, 64
  %1680 = xor i128 %1679, %1678
  %1681 = trunc i128 %1680 to i64
  %1682 = add i64 %1665, %1681
  %1683 = getelementptr inbounds nuw i8, ptr %1545, i64 %1518
  %1684 = getelementptr inbounds i8, ptr %1683, i64 -64
  %1685 = load i64, ptr %1684, align 1
  %1686 = getelementptr inbounds i8, ptr %1683, i64 -56
  %1687 = load i64, ptr %1686, align 1
  %1688 = xor i64 %1685, 3556072174620004746
  %1689 = xor i64 %1687, 7238261902898274248
  %1690 = zext i64 %1688 to i128
  %1691 = zext i64 %1689 to i128
  %1692 = mul nuw i128 %1691, %1690
  %1693 = lshr i128 %1692, 64
  %1694 = xor i128 %1693, %1692
  %1695 = trunc i128 %1694 to i64
  %1696 = add i64 %1682, %1695
  br label %1697

1697:                                             ; preds = %1671, %1669
  %1698 = phi i64 [ %1696, %1671 ], [ %1665, %1669 ]
  %1699 = load i64, ptr %1541, align 1
  %1700 = load i64, ptr %1542, align 1
  %1701 = xor i64 %1699, -3818837453329782724
  %1702 = xor i64 %1700, -6688317018830679928
  %1703 = zext i64 %1701 to i128
  %1704 = zext i64 %1702 to i128
  %1705 = mul nuw i128 %1704, %1703
  %1706 = lshr i128 %1705, 64
  %1707 = xor i128 %1706, %1705
  %1708 = trunc i128 %1707 to i64
  %1709 = add i64 %1698, %1708
  %1710 = getelementptr inbounds nuw i8, ptr %1545, i64 %1518
  %1711 = getelementptr inbounds i8, ptr %1710, i64 -48
  %1712 = load i64, ptr %1711, align 1
  %1713 = getelementptr inbounds i8, ptr %1710, i64 -40
  %1714 = load i64, ptr %1713, align 1
  %1715 = xor i64 %1712, 5690594596133299313
  %1716 = xor i64 %1714, -2833645246901970632
  %1717 = zext i64 %1715 to i128
  %1718 = zext i64 %1716 to i128
  %1719 = mul nuw i128 %1718, %1717
  %1720 = lshr i128 %1719, 64
  %1721 = xor i128 %1720, %1719
  %1722 = trunc i128 %1721 to i64
  %1723 = add i64 %1709, %1722
  br label %1724

1724:                                             ; preds = %1697, %1667
  %1725 = phi i64 [ %1723, %1697 ], [ %1665, %1667 ]
  %1726 = load i64, ptr %1539, align 1
  %1727 = load i64, ptr %1540, align 1
  %1728 = xor i64 %1726, 8711581037947681227
  %1729 = xor i64 %1727, 2410270004345854594
  %1730 = zext i64 %1728 to i128
  %1731 = zext i64 %1729 to i128
  %1732 = mul nuw i128 %1731, %1730
  %1733 = lshr i128 %1732, 64
  %1734 = xor i128 %1733, %1732
  %1735 = trunc i128 %1734 to i64
  %1736 = add i64 %1725, %1735
  %1737 = getelementptr inbounds nuw i8, ptr %1545, i64 %1518
  %1738 = getelementptr inbounds i8, ptr %1737, i64 -32
  %1739 = load i64, ptr %1738, align 1
  %1740 = getelementptr inbounds i8, ptr %1737, i64 -24
  %1741 = load i64, ptr %1740, align 1
  %1742 = xor i64 %1739, -8204357891075471176
  %1743 = xor i64 %1741, 5487137525590930912
  %1744 = zext i64 %1742 to i128
  %1745 = zext i64 %1743 to i128
  %1746 = mul nuw i128 %1745, %1744
  %1747 = lshr i128 %1746, 64
  %1748 = xor i128 %1747, %1746
  %1749 = trunc i128 %1748 to i64
  %1750 = add i64 %1736, %1749
  br label %1751

1751:                                             ; preds = %1724, %1664
  %1752 = phi i64 [ %1750, %1724 ], [ %1665, %1664 ]
  %1753 = load i64, ptr %1545, align 16
  %1754 = load i64, ptr %1538, align 1
  %1755 = xor i64 %1753, -4734510112055689544
  %1756 = xor i64 %1754, 2066345149520216444
  %1757 = zext i64 %1755 to i128
  %1758 = zext i64 %1756 to i128
  %1759 = mul nuw i128 %1758, %1757
  %1760 = lshr i128 %1759, 64
  %1761 = xor i128 %1760, %1759
  %1762 = trunc i128 %1761 to i64
  %1763 = add i64 %1752, %1762
  %1764 = getelementptr inbounds nuw i8, ptr %1545, i64 %1518
  %1765 = getelementptr inbounds i8, ptr %1764, i64 -16
  %1766 = load i64, ptr %1765, align 1
  %1767 = getelementptr inbounds i8, ptr %1764, i64 -8
  %1768 = load i64, ptr %1767, align 1
  %1769 = xor i64 %1766, -2623469361688619810
  %1770 = xor i64 %1768, 2262974939099578482
  %1771 = zext i64 %1769 to i128
  %1772 = zext i64 %1770 to i128
  %1773 = mul nuw i128 %1772, %1771
  %1774 = lshr i128 %1773, 64
  %1775 = xor i128 %1774, %1773
  %1776 = trunc i128 %1775 to i64
  %1777 = add i64 %1763, %1776
  %1778 = lshr i64 %1777, 37
  %1779 = xor i64 %1778, %1777
  %1780 = mul i64 %1779, 1609587791953885689
  %1781 = lshr i64 %1780, 32
  %1782 = xor i64 %1781, %1780
  br label %1789

1783:                                             ; preds = %1662
  %1784 = icmp ult i32 %1517, 241
  br i1 %1784, label %1785, label %1787

1785:                                             ; preds = %1783
  %1786 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %1545, i64 noundef range(i64 0, 4294967296) %1518, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #33
  br label %1789

1787:                                             ; preds = %1783
  %1788 = call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %1545, i64 noundef range(i64 0, 4294967296) %1518) #29
  br label %1789

1789:                                             ; preds = %1787, %1785, %1751, %1637, %1636, %1614, %1589
  %1790 = phi i64 [ %1782, %1751 ], [ %1786, %1785 ], [ %1788, %1787 ], [ %1611, %1589 ], [ %1635, %1614 ], [ %1661, %1637 ], [ 3244421341483603138, %1636 ]
  %1791 = icmp eq i64 %1790, %1522
  br i1 %1791, label %1802, label %1792

1792:                                             ; preds = %1789
  %1793 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1558) #29
  %1794 = lshr i64 %1790, 32
  %1795 = trunc nuw i64 %1794 to i32
  %1796 = trunc i64 %1790 to i32
  %1797 = lshr i64 %1522, 32
  %1798 = trunc nuw i64 %1797 to i32
  %1799 = trunc i64 %1522 to i32
  %1800 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1795, i32 noundef %1796, i32 noundef %1798, i32 noundef %1799) #29
  %1801 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1802:                                             ; preds = %1789
  %1803 = add nsw i32 %1514, 2
  store i32 %1803, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %5) #29
  br label %1804

1804:                                             ; preds = %1802, %1560
  %1805 = phi i64 [ -4734510112055689544, %1802 ], [ %1561, %1560 ]
  %1806 = phi i64 [ 2066345149520216444, %1802 ], [ %1562, %1560 ]
  %1807 = phi i64 [ -2623469361688619810, %1802 ], [ %1563, %1560 ]
  %1808 = phi i64 [ 2262974939099578482, %1802 ], [ %1564, %1560 ]
  %1809 = phi i64 [ 8711581037947681227, %1802 ], [ %1565, %1560 ]
  %1810 = phi i64 [ 2410270004345854594, %1802 ], [ %1566, %1560 ]
  %1811 = phi i64 [ -8204357891075471176, %1802 ], [ %1567, %1560 ]
  %1812 = phi i64 [ 5487137525590930912, %1802 ], [ %1568, %1560 ]
  %1813 = phi i64 [ -3818837453329782724, %1802 ], [ %1569, %1560 ]
  %1814 = phi i64 [ -6688317018830679928, %1802 ], [ %1570, %1560 ]
  %1815 = phi i64 [ 5690594596133299313, %1802 ], [ %1571, %1560 ]
  %1816 = phi i64 [ -2833645246901970632, %1802 ], [ %1572, %1560 ]
  %1817 = phi i64 [ 4554437623014685352, %1802 ], [ %1573, %1560 ]
  %1818 = phi i64 [ 2111919702937427193, %1802 ], [ %1574, %1560 ]
  %1819 = phi i64 [ 3556072174620004746, %1802 ], [ %1575, %1560 ]
  %1820 = phi i64 [ 7238261902898274248, %1802 ], [ %1576, %1560 ]
  %1821 = phi i64 [ -4329134394285701654, %1802 ], [ %1577, %1560 ]
  %1822 = phi i64 [ -1485321483350670907, %1802 ], [ %1578, %1560 ]
  %1823 = phi i64 [ 5321830579834785047, %1802 ], [ %1579, %1560 ]
  %1824 = phi i64 [ -7032137544937171245, %1802 ], [ %1580, %1560 ]
  %1825 = phi i64 [ -242834301215959509, %1802 ], [ %1581, %1560 ]
  %1826 = phi i64 [ -3588858202114426737, %1802 ], [ %1582, %1560 ]
  %1827 = phi i64 [ 2883454493032893253, %1802 ], [ %1583, %1560 ]
  %1828 = phi i64 [ 9097354517224871855, %1802 ], [ %1584, %1560 ]
  %1829 = phi i64 [ 0, %1802 ], [ %1520, %1560 ]
  %1830 = phi i32 [ %1803, %1802 ], [ %1558, %1560 ]
  store i64 %1805, ptr %966, align 1
  store i64 %1806, ptr %967, align 1
  store i64 %1807, ptr %968, align 1
  store i64 %1808, ptr %969, align 1
  store i64 %1809, ptr %970, align 1
  store i64 %1810, ptr %971, align 1
  store i64 %1811, ptr %972, align 1
  store i64 %1812, ptr %973, align 1
  store i64 %1813, ptr %974, align 1
  store i64 %1814, ptr %975, align 1
  store i64 %1815, ptr %976, align 1
  store i64 %1816, ptr %977, align 1
  store i64 %1817, ptr %978, align 1
  store i64 %1818, ptr %979, align 1
  store i64 %1819, ptr %980, align 1
  store i64 %1820, ptr %981, align 1
  store i64 %1821, ptr %982, align 1
  store i64 %1822, ptr %983, align 1
  store i64 %1823, ptr %984, align 1
  store i64 %1824, ptr %985, align 1
  store i64 %1825, ptr %986, align 1
  store i64 %1826, ptr %987, align 1
  store i64 %1827, ptr %988, align 1
  store i64 %1828, ptr %989, align 1
  %1831 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecretandSeed(ptr nocapture noundef %1545, i64 noundef %1518, ptr nocapture noundef %966, i64 noundef 192, i64 noundef %1829) #33
  %1832 = icmp eq i64 %1831, %1522
  br i1 %1832, label %1843, label %1833

1833:                                             ; preds = %1804
  %1834 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1830) #29
  %1835 = lshr i64 %1831, 32
  %1836 = trunc nuw i64 %1835 to i32
  %1837 = trunc i64 %1831 to i32
  %1838 = lshr i64 %1522, 32
  %1839 = trunc nuw i64 %1838 to i32
  %1840 = trunc i64 %1522 to i32
  %1841 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1836, i32 noundef %1837, i32 noundef %1839, i32 noundef %1840) #29
  %1842 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1843:                                             ; preds = %1804
  %1844 = add nsw i32 %1830, 1
  store i32 %1844, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %966, i8 -103, i64 9, i1 false)
  %1845 = icmp ult i32 %1517, 241
  br i1 %1845, label %1846, label %1861

1846:                                             ; preds = %1843
  %1847 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecretandSeed(ptr nocapture noundef %1545, i64 noundef %1518, ptr nocapture noundef %966, i64 noundef 192, i64 noundef %1520) #33
  %1848 = icmp eq i64 %1847, %1522
  br i1 %1848, label %1859, label %1849

1849:                                             ; preds = %1846
  %1850 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1844) #29
  %1851 = lshr i64 %1847, 32
  %1852 = trunc nuw i64 %1851 to i32
  %1853 = trunc i64 %1847 to i32
  %1854 = lshr i64 %1522, 32
  %1855 = trunc nuw i64 %1854 to i32
  %1856 = trunc i64 %1522 to i32
  %1857 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1852, i32 noundef %1853, i32 noundef %1855, i32 noundef %1856) #29
  %1858 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1859:                                             ; preds = %1846
  %1860 = add nsw i32 %1830, 2
  store i32 %1860, ptr @XSUM_checkResult64.nbTests, align 4
  br label %1861

1861:                                             ; preds = %1859, %1843
  %1862 = phi i32 [ %1860, %1859 ], [ %1844, %1843 ]
  call void @llvm.lifetime.end.p0(i64 193, ptr nonnull %5) #29
  %1863 = call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #30
  %1864 = icmp eq ptr %1863, null
  br i1 %1864, label %1865, label %1866

1865:                                             ; preds = %1861
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 407, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH3) #28
  unreachable

1866:                                             ; preds = %1861
  %1867 = ptrtoint ptr %1863 to i64
  %1868 = and i64 %1867, 63
  %1869 = sub nuw nsw i64 64, %1868
  %1870 = getelementptr inbounds nuw i8, ptr %1863, i64 %1869
  %1871 = ptrtoint ptr %1870 to i64
  %1872 = and i64 %1871, 63
  %1873 = icmp eq i64 %1872, 0
  call void @llvm.assume(i1 %1873)
  %1874 = trunc nuw nsw i64 %1869 to i8
  %1875 = getelementptr inbounds i8, ptr %1870, i64 -1
  store i8 %1874, ptr %1875, align 1
  %1876 = getelementptr inbounds nuw i8, ptr %1870, i64 552
  store i64 0, ptr %1876, align 8
  %1877 = getelementptr inbounds nuw i8, ptr %1870, i64 568
  store ptr null, ptr %1877, align 8
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef %1870, i64 noundef %1520)
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1870, ptr nocapture noundef %1545, i64 noundef %1518)
  %1878 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1870) #33
  %1879 = icmp eq i64 %1878, %1522
  br i1 %1879, label %1890, label %1880

1880:                                             ; preds = %1866
  %1881 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1862) #29
  %1882 = lshr i64 %1878, 32
  %1883 = trunc nuw i64 %1882 to i32
  %1884 = trunc i64 %1878 to i32
  %1885 = lshr i64 %1522, 32
  %1886 = trunc nuw i64 %1885 to i32
  %1887 = trunc i64 %1522 to i32
  %1888 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1883, i32 noundef %1884, i32 noundef %1886, i32 noundef %1887) #29
  %1889 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1890:                                             ; preds = %1866
  %1891 = add nsw i32 %1862, 1
  store i32 %1891, ptr @XSUM_checkResult64.nbTests, align 4
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef %1870, i64 noundef %1520)
  br i1 %1523, label %1909, label %1892

1892:                                             ; preds = %1890
  %1893 = call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %1518, i64 2)
  br label %1894

1894:                                             ; preds = %1894, %1892
  %1895 = phi i64 [ 0, %1892 ], [ %1905, %1894 ]
  %1896 = load i64, ptr @XSUM_rand.seed, align 8
  %1897 = mul i64 %1896, -7046029288634856819
  store i64 %1897, ptr @XSUM_rand.seed, align 8
  %1898 = lshr i64 %1897, 40
  %1899 = urem i64 %1898, %1893
  %1900 = add nuw nsw i64 %1899, %1895
  %1901 = icmp ugt i64 %1900, %1518
  %1902 = sub nuw nsw i64 %1518, %1895
  %1903 = select i1 %1901, i64 %1902, i64 %1899
  %1904 = getelementptr inbounds nuw i8, ptr %1545, i64 %1895
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1870, ptr nocapture noundef %1904, i64 noundef %1903)
  %1905 = add i64 %1903, %1895
  %1906 = icmp ult i64 %1905, %1518
  br i1 %1906, label %1894, label %1907, !llvm.loop !59

1907:                                             ; preds = %1894
  %1908 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  br label %1909

1909:                                             ; preds = %1907, %1890
  %1910 = phi i32 [ %1908, %1907 ], [ %1891, %1890 ]
  %1911 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1870) #33
  %1912 = icmp eq i64 %1911, %1522
  br i1 %1912, label %1923, label %1913

1913:                                             ; preds = %1909
  %1914 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1910) #29
  %1915 = lshr i64 %1911, 32
  %1916 = trunc nuw i64 %1915 to i32
  %1917 = trunc i64 %1911 to i32
  %1918 = lshr i64 %1522, 32
  %1919 = trunc nuw i64 %1918 to i32
  %1920 = trunc i64 %1522 to i32
  %1921 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1916, i32 noundef %1917, i32 noundef %1919, i32 noundef %1920) #29
  %1922 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1923:                                             ; preds = %1909
  %1924 = add nsw i32 %1910, 1
  store i32 %1924, ptr @XSUM_checkResult64.nbTests, align 4
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef %1870, i64 noundef %1520)
  br i1 %1523, label %1932, label %1925

1925:                                             ; preds = %1923, %1925
  %1926 = phi i64 [ %1928, %1925 ], [ 0, %1923 ]
  %1927 = getelementptr inbounds nuw i8, ptr %1545, i64 %1926
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1870, ptr nocapture noundef %1927, i64 noundef 1)
  %1928 = add nuw nsw i64 %1926, 1
  %1929 = icmp eq i64 %1928, %1518
  br i1 %1929, label %1930, label %1925, !llvm.loop !60

1930:                                             ; preds = %1925
  %1931 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  br label %1932

1932:                                             ; preds = %1930, %1923
  %1933 = phi i32 [ %1931, %1930 ], [ %1924, %1923 ]
  %1934 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1870) #33
  %1935 = icmp eq i64 %1934, %1522
  br i1 %1935, label %1946, label %1936

1936:                                             ; preds = %1932
  %1937 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1933) #29
  %1938 = lshr i64 %1934, 32
  %1939 = trunc nuw i64 %1938 to i32
  %1940 = trunc i64 %1934 to i32
  %1941 = lshr i64 %1522, 32
  %1942 = trunc nuw i64 %1941 to i32
  %1943 = trunc i64 %1522 to i32
  %1944 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1939, i32 noundef %1940, i32 noundef %1942, i32 noundef %1943) #29
  %1945 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1946:                                             ; preds = %1932
  %1947 = add nsw i32 %1933, 1
  store i32 %1947, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %6) #29
  %1948 = add i64 %1520, -4734510112055689544
  %1949 = sub i64 2066345149520216444, %1520
  %1950 = add i64 %1520, -2623469361688619810
  %1951 = sub i64 2262974939099578482, %1520
  %1952 = add i64 %1520, 8711581037947681227
  %1953 = sub i64 2410270004345854594, %1520
  %1954 = add i64 %1520, -8204357891075471176
  %1955 = sub i64 5487137525590930912, %1520
  %1956 = add i64 %1520, -3818837453329782724
  %1957 = sub i64 -6688317018830679928, %1520
  %1958 = add i64 %1520, 5690594596133299313
  %1959 = sub i64 -2833645246901970632, %1520
  %1960 = add i64 %1520, 4554437623014685352
  %1961 = sub i64 2111919702937427193, %1520
  %1962 = add i64 %1520, 3556072174620004746
  %1963 = sub i64 7238261902898274248, %1520
  %1964 = add i64 %1520, -4329134394285701654
  %1965 = sub i64 -1485321483350670907, %1520
  %1966 = add i64 %1520, 5321830579834785047
  %1967 = sub i64 -7032137544937171245, %1520
  %1968 = add i64 %1520, -242834301215959509
  %1969 = sub i64 -3588858202114426737, %1520
  %1970 = add i64 %1520, 2883454493032893253
  %1971 = sub i64 9097354517224871855, %1520
  store i64 %1948, ptr %990, align 1
  store i64 %1949, ptr %991, align 1
  store i64 %1950, ptr %992, align 1
  store i64 %1951, ptr %993, align 1
  store i64 %1952, ptr %994, align 1
  store i64 %1953, ptr %995, align 1
  store i64 %1954, ptr %996, align 1
  store i64 %1955, ptr %997, align 1
  store i64 %1956, ptr %998, align 1
  store i64 %1957, ptr %999, align 1
  store i64 %1958, ptr %1000, align 1
  store i64 %1959, ptr %1001, align 1
  store i64 %1960, ptr %1002, align 1
  store i64 %1961, ptr %1003, align 1
  store i64 %1962, ptr %1004, align 1
  store i64 %1963, ptr %1005, align 1
  store i64 %1964, ptr %1006, align 1
  store i64 %1965, ptr %1007, align 1
  store i64 %1966, ptr %1008, align 1
  store i64 %1967, ptr %1009, align 1
  store i64 %1968, ptr %1010, align 1
  store i64 %1969, ptr %1011, align 1
  store i64 %1970, ptr %1012, align 1
  store i64 %1971, ptr %1013, align 1
  %1972 = getelementptr inbounds nuw i8, ptr %1870, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %1972, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %1870, align 64
  %1973 = getelementptr inbounds nuw i8, ptr %1870, i64 8
  store i64 -7046029288634856825, ptr %1973, align 8
  %1974 = getelementptr inbounds nuw i8, ptr %1870, i64 16
  store i64 -4417276706812531889, ptr %1974, align 16
  %1975 = getelementptr inbounds nuw i8, ptr %1870, i64 24
  store i64 1609587929392839161, ptr %1975, align 8
  %1976 = getelementptr inbounds nuw i8, ptr %1870, i64 32
  store i64 -8796714831421723037, ptr %1976, align 32
  %1977 = getelementptr inbounds nuw i8, ptr %1870, i64 40
  store i64 2246822519, ptr %1977, align 8
  %1978 = getelementptr inbounds nuw i8, ptr %1870, i64 48
  store i64 2870177450012600261, ptr %1978, align 16
  %1979 = getelementptr inbounds nuw i8, ptr %1870, i64 56
  store i64 2654435761, ptr %1979, align 8
  store i64 %1520, ptr %1876, align 8
  %1980 = getelementptr inbounds nuw i8, ptr %1870, i64 516
  store ptr %990, ptr %1877, align 8
  %1981 = getelementptr inbounds nuw i8, ptr %1870, i64 544
  store i64 128, ptr %1981, align 32
  %1982 = getelementptr inbounds nuw i8, ptr %1870, i64 536
  store i64 16, ptr %1982, align 8
  store i32 1, ptr %1980, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1870, ptr nocapture noundef %1545, i64 noundef %1518)
  %1983 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1870) #33
  %1984 = icmp eq i64 %1983, %1522
  br i1 %1984, label %1995, label %1985

1985:                                             ; preds = %1946
  %1986 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1947) #29
  %1987 = lshr i64 %1983, 32
  %1988 = trunc nuw i64 %1987 to i32
  %1989 = trunc i64 %1983 to i32
  %1990 = lshr i64 %1522, 32
  %1991 = trunc nuw i64 %1990 to i32
  %1992 = trunc i64 %1522 to i32
  %1993 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %1988, i32 noundef %1989, i32 noundef %1991, i32 noundef %1992) #29
  %1994 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

1995:                                             ; preds = %1946
  %1996 = add nsw i32 %1933, 2
  store i32 %1996, ptr @XSUM_checkResult64.nbTests, align 4
  br i1 %1845, label %1997, label %2012

1997:                                             ; preds = %1995
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %990, i8 -103, i64 9, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %1972, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %1870, align 64
  store i64 -7046029288634856825, ptr %1973, align 8
  store i64 -4417276706812531889, ptr %1974, align 16
  store i64 1609587929392839161, ptr %1975, align 8
  store i64 -8796714831421723037, ptr %1976, align 32
  store i64 2246822519, ptr %1977, align 8
  store i64 2870177450012600261, ptr %1978, align 16
  store i64 2654435761, ptr %1979, align 8
  store i64 %1520, ptr %1876, align 8
  store ptr %990, ptr %1877, align 8
  store i64 128, ptr %1981, align 32
  store i64 16, ptr %1982, align 8
  store i32 1, ptr %1980, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %1870, ptr nocapture noundef %1545, i64 noundef %1518)
  %1998 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %1870) #33
  %1999 = icmp eq i64 %1998, %1522
  br i1 %1999, label %2010, label %2000

2000:                                             ; preds = %1997
  %2001 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %1996) #29
  %2002 = lshr i64 %1998, 32
  %2003 = trunc nuw i64 %2002 to i32
  %2004 = trunc i64 %1998 to i32
  %2005 = lshr i64 %1522, 32
  %2006 = trunc nuw i64 %2005 to i32
  %2007 = trunc i64 %1522 to i32
  %2008 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2003, i32 noundef %2004, i32 noundef %2006, i32 noundef %2007) #29
  %2009 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2010:                                             ; preds = %1997
  %2011 = add nsw i32 %1933, 3
  store i32 %2011, ptr @XSUM_checkResult64.nbTests, align 4
  br label %2012

2012:                                             ; preds = %1995, %2010
  %2013 = phi i32 [ %1996, %1995 ], [ %2011, %2010 ]
  call void @llvm.lifetime.end.p0(i64 193, ptr nonnull %6) #29
  %2014 = load i8, ptr %1875, align 1
  %2015 = zext i8 %2014 to i64
  %2016 = sub nsw i64 0, %2015
  %2017 = getelementptr inbounds i8, ptr %1870, i64 %2016
  call void @free(ptr noundef nonnull %2017) #29
  %2018 = add nuw nsw i64 %1515, 1
  %2019 = icmp eq i64 %2018, 28
  br i1 %2019, label %1510, label %1513, !llvm.loop !61

2020:                                             ; preds = %2240
  %2021 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %2022 = getelementptr inbounds nuw i8, ptr %3, i64 9
  %2023 = getelementptr inbounds nuw i8, ptr %3, i64 17
  %2024 = getelementptr inbounds nuw i8, ptr %3, i64 25
  %2025 = getelementptr inbounds nuw i8, ptr %3, i64 33
  %2026 = getelementptr inbounds nuw i8, ptr %3, i64 41
  %2027 = getelementptr inbounds nuw i8, ptr %3, i64 49
  %2028 = getelementptr inbounds nuw i8, ptr %3, i64 57
  %2029 = getelementptr inbounds nuw i8, ptr %3, i64 65
  %2030 = getelementptr inbounds nuw i8, ptr %3, i64 73
  %2031 = getelementptr inbounds nuw i8, ptr %3, i64 81
  %2032 = getelementptr inbounds nuw i8, ptr %3, i64 89
  %2033 = getelementptr inbounds nuw i8, ptr %3, i64 97
  %2034 = getelementptr inbounds nuw i8, ptr %3, i64 105
  %2035 = getelementptr inbounds nuw i8, ptr %3, i64 113
  %2036 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %2037 = getelementptr inbounds nuw i8, ptr %3, i64 129
  %2038 = getelementptr inbounds nuw i8, ptr %3, i64 137
  %2039 = getelementptr inbounds nuw i8, ptr %3, i64 145
  %2040 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %2041 = getelementptr inbounds nuw i8, ptr %3, i64 161
  %2042 = getelementptr inbounds nuw i8, ptr %3, i64 169
  %2043 = getelementptr inbounds nuw i8, ptr %3, i64 177
  %2044 = getelementptr inbounds nuw i8, ptr %3, i64 185
  %2045 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %2046 = getelementptr inbounds nuw i8, ptr %4, i64 9
  %2047 = getelementptr inbounds nuw i8, ptr %4, i64 17
  %2048 = getelementptr inbounds nuw i8, ptr %4, i64 25
  %2049 = getelementptr inbounds nuw i8, ptr %4, i64 33
  %2050 = getelementptr inbounds nuw i8, ptr %4, i64 41
  %2051 = getelementptr inbounds nuw i8, ptr %4, i64 49
  %2052 = getelementptr inbounds nuw i8, ptr %4, i64 57
  %2053 = getelementptr inbounds nuw i8, ptr %4, i64 65
  %2054 = getelementptr inbounds nuw i8, ptr %4, i64 73
  %2055 = getelementptr inbounds nuw i8, ptr %4, i64 81
  %2056 = getelementptr inbounds nuw i8, ptr %4, i64 89
  %2057 = getelementptr inbounds nuw i8, ptr %4, i64 97
  %2058 = getelementptr inbounds nuw i8, ptr %4, i64 105
  %2059 = getelementptr inbounds nuw i8, ptr %4, i64 113
  %2060 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %2061 = getelementptr inbounds nuw i8, ptr %4, i64 129
  %2062 = getelementptr inbounds nuw i8, ptr %4, i64 137
  %2063 = getelementptr inbounds nuw i8, ptr %4, i64 145
  %2064 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %2065 = getelementptr inbounds nuw i8, ptr %4, i64 161
  %2066 = getelementptr inbounds nuw i8, ptr %4, i64 169
  %2067 = getelementptr inbounds nuw i8, ptr %4, i64 177
  %2068 = getelementptr inbounds nuw i8, ptr %4, i64 185
  br label %2252

2069:                                             ; preds = %1510, %2240
  %2070 = phi i32 [ %2013, %1510 ], [ %2241, %2240 ]
  %2071 = phi i64 [ 0, %1510 ], [ %2246, %2240 ]
  %2072 = getelementptr inbounds nuw [13 x %struct.XSUM_testdata64_t], ptr @XSUM_XXH3_withSecret_testdata, i64 0, i64 %2071
  %2073 = load i32, ptr %2072, align 8
  %2074 = getelementptr i8, ptr %2072, i64 16
  %2075 = load i64, ptr %2074, align 8
  %2076 = zext i32 %2073 to i64
  %2077 = icmp ne i32 %2073, 0
  br i1 %2077, label %2078, label %2081

2078:                                             ; preds = %2069
  %2079 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecret(ptr nocapture noundef nonnull %7, i64 noundef %2076, ptr nocapture noundef nonnull %8, i64 noundef 147) #33
  %2080 = icmp eq i64 %2079, %2075
  br i1 %2080, label %2105, label %2094

2081:                                             ; preds = %2069
  %2082 = load i64, ptr %1511, align 1
  %2083 = load i64, ptr %1512, align 1
  %2084 = xor i64 %2083, %2082
  %2085 = lshr i64 %2084, 33
  %2086 = xor i64 %2085, %2084
  %2087 = mul i64 %2086, -4417276706812531889
  %2088 = lshr i64 %2087, 29
  %2089 = xor i64 %2088, %2087
  %2090 = mul i64 %2089, 1609587929392839161
  %2091 = lshr i64 %2090, 32
  %2092 = xor i64 %2091, %2090
  %2093 = icmp eq i64 %2092, %2075
  br i1 %2093, label %2121, label %2094

2094:                                             ; preds = %2081, %2078
  %2095 = phi i64 [ %2092, %2081 ], [ %2079, %2078 ]
  %2096 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2070) #29
  %2097 = lshr i64 %2095, 32
  %2098 = trunc nuw i64 %2097 to i32
  %2099 = trunc i64 %2095 to i32
  %2100 = lshr i64 %2075, 32
  %2101 = trunc nuw i64 %2100 to i32
  %2102 = trunc i64 %2075 to i32
  %2103 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2098, i32 noundef %2099, i32 noundef %2101, i32 noundef %2102) #29
  %2104 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2105:                                             ; preds = %2078
  %2106 = add nsw i32 %2070, 1
  store i32 %2106, ptr @XSUM_checkResult64.nbTests, align 4
  %2107 = icmp ugt i32 %2073, 240
  br i1 %2107, label %2108, label %2125

2108:                                             ; preds = %2105
  %2109 = call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecretandSeed(ptr nocapture noundef nonnull %7, i64 noundef %2076, ptr nocapture noundef nonnull %8, i64 noundef 147, i64 noundef 0) #33
  %2110 = icmp eq i64 %2109, %2075
  br i1 %2110, label %2121, label %2111

2111:                                             ; preds = %2108
  %2112 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2106) #29
  %2113 = lshr i64 %2109, 32
  %2114 = trunc nuw i64 %2113 to i32
  %2115 = trunc i64 %2109 to i32
  %2116 = lshr i64 %2075, 32
  %2117 = trunc nuw i64 %2116 to i32
  %2118 = trunc i64 %2075 to i32
  %2119 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2114, i32 noundef %2115, i32 noundef %2117, i32 noundef %2118) #29
  %2120 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2121:                                             ; preds = %2108, %2081
  %2122 = phi i32 [ 1, %2081 ], [ 2, %2108 ]
  %2123 = phi ptr [ null, %2081 ], [ %7, %2108 ]
  %2124 = add nsw i32 %2070, %2122
  store i32 %2124, ptr @XSUM_checkResult64.nbTests, align 4
  br label %2125

2125:                                             ; preds = %2121, %2105
  %2126 = phi i32 [ %2106, %2105 ], [ %2124, %2121 ]
  %2127 = phi i1 [ false, %2105 ], [ %2077, %2121 ]
  %2128 = phi ptr [ %7, %2105 ], [ %2123, %2121 ]
  %2129 = call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #30
  %2130 = icmp eq ptr %2129, null
  br i1 %2130, label %2131, label %2132

2131:                                             ; preds = %2125
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 479, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH3_withSecret) #28
  unreachable

2132:                                             ; preds = %2125
  %2133 = ptrtoint ptr %2129 to i64
  %2134 = and i64 %2133, 63
  %2135 = sub nuw nsw i64 64, %2134
  %2136 = getelementptr inbounds nuw i8, ptr %2129, i64 %2135
  %2137 = ptrtoint ptr %2136 to i64
  %2138 = and i64 %2137, 63
  %2139 = icmp eq i64 %2138, 0
  call void @llvm.assume(i1 %2139)
  %2140 = trunc nuw nsw i64 %2135 to i8
  %2141 = getelementptr inbounds i8, ptr %2136, i64 -1
  store i8 %2140, ptr %2141, align 1
  %2142 = getelementptr inbounds nuw i8, ptr %2136, i64 552
  %2143 = getelementptr inbounds nuw i8, ptr %2136, i64 568
  %2144 = getelementptr inbounds nuw i8, ptr %2136, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2144, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2136, align 64
  %2145 = getelementptr inbounds nuw i8, ptr %2136, i64 8
  store i64 -7046029288634856825, ptr %2145, align 8
  %2146 = getelementptr inbounds nuw i8, ptr %2136, i64 16
  store i64 -4417276706812531889, ptr %2146, align 16
  %2147 = getelementptr inbounds nuw i8, ptr %2136, i64 24
  store i64 1609587929392839161, ptr %2147, align 8
  %2148 = getelementptr inbounds nuw i8, ptr %2136, i64 32
  store i64 -8796714831421723037, ptr %2148, align 32
  %2149 = getelementptr inbounds nuw i8, ptr %2136, i64 40
  store i64 2246822519, ptr %2149, align 8
  %2150 = getelementptr inbounds nuw i8, ptr %2136, i64 48
  store i64 2870177450012600261, ptr %2150, align 16
  %2151 = getelementptr inbounds nuw i8, ptr %2136, i64 56
  store i64 2654435761, ptr %2151, align 8
  store i64 0, ptr %2142, align 8
  store ptr %8, ptr %2143, align 8
  %2152 = getelementptr inbounds nuw i8, ptr %2136, i64 544
  store i64 83, ptr %2152, align 32
  %2153 = getelementptr inbounds nuw i8, ptr %2136, i64 536
  store i64 10, ptr %2153, align 8
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2136, ptr nocapture noundef %2128, i64 noundef %2076)
  %2154 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %2136) #33
  %2155 = icmp eq i64 %2154, %2075
  br i1 %2155, label %2166, label %2156

2156:                                             ; preds = %2132
  %2157 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2126) #29
  %2158 = lshr i64 %2154, 32
  %2159 = trunc nuw i64 %2158 to i32
  %2160 = trunc i64 %2154 to i32
  %2161 = lshr i64 %2075, 32
  %2162 = trunc nuw i64 %2161 to i32
  %2163 = trunc i64 %2075 to i32
  %2164 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2159, i32 noundef %2160, i32 noundef %2162, i32 noundef %2163) #29
  %2165 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2166:                                             ; preds = %2132
  %2167 = add nsw i32 %2126, 1
  store i32 %2167, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2144, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2136, align 64
  store i64 -7046029288634856825, ptr %2145, align 8
  store i64 -4417276706812531889, ptr %2146, align 16
  store i64 1609587929392839161, ptr %2147, align 8
  store i64 -8796714831421723037, ptr %2148, align 32
  store i64 2246822519, ptr %2149, align 8
  store i64 2870177450012600261, ptr %2150, align 16
  store i64 2654435761, ptr %2151, align 8
  store i64 0, ptr %2142, align 8
  store ptr %8, ptr %2143, align 8
  store i64 83, ptr %2152, align 32
  store i64 10, ptr %2153, align 8
  br i1 %2077, label %2168, label %2185

2168:                                             ; preds = %2166
  %2169 = call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %2076, i64 2)
  br label %2170

2170:                                             ; preds = %2170, %2168
  %2171 = phi i64 [ 0, %2168 ], [ %2181, %2170 ]
  %2172 = load i64, ptr @XSUM_rand.seed, align 8
  %2173 = mul i64 %2172, -7046029288634856819
  store i64 %2173, ptr @XSUM_rand.seed, align 8
  %2174 = lshr i64 %2173, 40
  %2175 = urem i64 %2174, %2169
  %2176 = add nuw nsw i64 %2175, %2171
  %2177 = icmp ugt i64 %2176, %2076
  %2178 = sub nuw nsw i64 %2076, %2171
  %2179 = select i1 %2177, i64 %2178, i64 %2175
  %2180 = getelementptr inbounds nuw i8, ptr %2128, i64 %2171
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2136, ptr nocapture noundef %2180, i64 noundef %2179)
  %2181 = add i64 %2179, %2171
  %2182 = icmp ult i64 %2181, %2076
  br i1 %2182, label %2170, label %2183, !llvm.loop !59

2183:                                             ; preds = %2170
  %2184 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  br label %2185

2185:                                             ; preds = %2183, %2166
  %2186 = phi i32 [ %2184, %2183 ], [ %2167, %2166 ]
  %2187 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %2136) #33
  %2188 = icmp eq i64 %2187, %2075
  br i1 %2188, label %2199, label %2189

2189:                                             ; preds = %2185
  %2190 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2186) #29
  %2191 = lshr i64 %2187, 32
  %2192 = trunc nuw i64 %2191 to i32
  %2193 = trunc i64 %2187 to i32
  %2194 = lshr i64 %2075, 32
  %2195 = trunc nuw i64 %2194 to i32
  %2196 = trunc i64 %2075 to i32
  %2197 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2192, i32 noundef %2193, i32 noundef %2195, i32 noundef %2196) #29
  %2198 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2199:                                             ; preds = %2185
  %2200 = add nsw i32 %2186, 1
  store i32 %2200, ptr @XSUM_checkResult64.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2144, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2136, align 64
  store i64 -7046029288634856825, ptr %2145, align 8
  store i64 -4417276706812531889, ptr %2146, align 16
  store i64 1609587929392839161, ptr %2147, align 8
  store i64 -8796714831421723037, ptr %2148, align 32
  store i64 2246822519, ptr %2149, align 8
  store i64 2870177450012600261, ptr %2150, align 16
  store i64 2654435761, ptr %2151, align 8
  store i64 0, ptr %2142, align 8
  store ptr %8, ptr %2143, align 8
  store i64 83, ptr %2152, align 32
  store i64 10, ptr %2153, align 8
  br i1 %2077, label %2201, label %2208

2201:                                             ; preds = %2199, %2201
  %2202 = phi i64 [ %2204, %2201 ], [ 0, %2199 ]
  %2203 = getelementptr inbounds nuw i8, ptr %2128, i64 %2202
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2136, ptr nocapture noundef %2203, i64 noundef 1)
  %2204 = add nuw nsw i64 %2202, 1
  %2205 = icmp eq i64 %2204, %2076
  br i1 %2205, label %2206, label %2201, !llvm.loop !62

2206:                                             ; preds = %2201
  %2207 = load i32, ptr @XSUM_checkResult64.nbTests, align 4
  br label %2208

2208:                                             ; preds = %2206, %2199
  %2209 = phi i32 [ %2207, %2206 ], [ %2200, %2199 ]
  %2210 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %2136) #33
  %2211 = icmp eq i64 %2210, %2075
  br i1 %2211, label %2222, label %2212

2212:                                             ; preds = %2208
  %2213 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2209) #29
  %2214 = lshr i64 %2210, 32
  %2215 = trunc nuw i64 %2214 to i32
  %2216 = trunc i64 %2210 to i32
  %2217 = lshr i64 %2075, 32
  %2218 = trunc nuw i64 %2217 to i32
  %2219 = trunc i64 %2075 to i32
  %2220 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2215, i32 noundef %2216, i32 noundef %2218, i32 noundef %2219) #29
  %2221 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2222:                                             ; preds = %2208
  %2223 = add nsw i32 %2209, 1
  store i32 %2223, ptr @XSUM_checkResult64.nbTests, align 4
  br i1 %2127, label %2224, label %2240

2224:                                             ; preds = %2222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2144, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2136, align 64
  store i64 -7046029288634856825, ptr %2145, align 8
  store i64 -4417276706812531889, ptr %2146, align 16
  store i64 1609587929392839161, ptr %2147, align 8
  store i64 -8796714831421723037, ptr %2148, align 32
  store i64 2246822519, ptr %2149, align 8
  store i64 2870177450012600261, ptr %2150, align 16
  store i64 2654435761, ptr %2151, align 8
  store i64 17, ptr %2142, align 8
  %2225 = getelementptr inbounds nuw i8, ptr %2136, i64 516
  store ptr %8, ptr %2143, align 8
  store i64 83, ptr %2152, align 32
  store i64 10, ptr %2153, align 8
  store i32 1, ptr %2225, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2136, ptr nocapture noundef %2128, i64 noundef %2076)
  %2226 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %2136) #33
  %2227 = icmp eq i64 %2226, %2075
  br i1 %2227, label %2238, label %2228

2228:                                             ; preds = %2224
  %2229 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.11, i32 noundef %2223) #29
  %2230 = lshr i64 %2226, 32
  %2231 = trunc nuw i64 %2230 to i32
  %2232 = trunc i64 %2226 to i32
  %2233 = lshr i64 %2075, 32
  %2234 = trunc nuw i64 %2233 to i32
  %2235 = trunc i64 %2075 to i32
  %2236 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, i32 noundef %2231, i32 noundef %2232, i32 noundef %2234, i32 noundef %2235) #29
  %2237 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2238:                                             ; preds = %2224
  %2239 = add nsw i32 %2209, 2
  store i32 %2239, ptr @XSUM_checkResult64.nbTests, align 4
  br label %2240

2240:                                             ; preds = %2222, %2238
  %2241 = phi i32 [ %2223, %2222 ], [ %2239, %2238 ]
  %2242 = load i8, ptr %2141, align 1
  %2243 = zext i8 %2242 to i64
  %2244 = sub nsw i64 0, %2243
  %2245 = getelementptr inbounds i8, ptr %2136, i64 %2244
  call void @free(ptr noundef nonnull %2245) #29
  %2246 = add nuw nsw i64 %2071, 1
  %2247 = icmp eq i64 %2246, 13
  br i1 %2247, label %2020, label %2069, !llvm.loop !63

2248:                                             ; preds = %2955
  %2249 = getelementptr inbounds nuw i8, ptr %7, i64 79
  %2250 = getelementptr inbounds nuw i8, ptr %7, i64 87
  %2251 = getelementptr inbounds nuw i8, ptr %7, i64 95
  br label %2973

2252:                                             ; preds = %2020, %2955
  %2253 = phi i64 [ 0, %2020 ], [ %2961, %2955 ]
  %2254 = getelementptr inbounds nuw [26 x %struct.XSUM_testdata128_t], ptr @XSUM_XXH128_testdata, i64 0, i64 %2253
  %2255 = load i32, ptr %2254, align 16
  %2256 = zext i32 %2255 to i64
  %2257 = getelementptr inbounds nuw i8, ptr %2254, i64 8
  %2258 = load i64, ptr %2257, align 8
  %2259 = getelementptr inbounds nuw i8, ptr %2254, i64 16
  %2260 = load i64, ptr %2259, align 16
  %2261 = getelementptr inbounds nuw i8, ptr %2254, i64 24
  %2262 = load i64, ptr %2261, align 8
  %2263 = icmp eq i32 %2255, 0
  br i1 %2263, label %2264, label %2285

2264:                                             ; preds = %2252
  %2265 = xor i64 %2258, 7507096552062056628
  %2266 = lshr i64 %2265, 33
  %2267 = xor i64 %2266, %2265
  %2268 = mul i64 %2267, -4417276706812531889
  %2269 = lshr i64 %2268, 29
  %2270 = xor i64 %2269, %2268
  %2271 = mul i64 %2270, 1609587929392839161
  %2272 = lshr i64 %2271, 32
  %2273 = xor i64 %2272, %2271
  %2274 = xor i64 %2258, -7613947547284439735
  %2275 = lshr i64 %2274, 33
  %2276 = xor i64 %2275, %2274
  %2277 = mul i64 %2276, -4417276706812531889
  %2278 = lshr i64 %2277, 29
  %2279 = xor i64 %2278, %2277
  %2280 = mul i64 %2279, 1609587929392839161
  %2281 = lshr i64 %2280, 32
  %2282 = xor i64 %2281, %2280
  %2283 = insertvalue { i64, i64 } poison, i64 %2273, 0
  %2284 = insertvalue { i64, i64 } %2283, i64 %2282, 1
  br label %2287

2285:                                             ; preds = %2252
  %2286 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef nonnull %7, i64 noundef %2256, i64 noundef %2258) #33
  br label %2287

2287:                                             ; preds = %2285, %2264
  %2288 = phi { i64, i64 } [ %2284, %2264 ], [ %2286, %2285 ]
  %2289 = phi ptr [ inttoptr (i64 8 to ptr), %2264 ], [ %62, %2285 ]
  %2290 = phi ptr [ inttoptr (i64 16 to ptr), %2264 ], [ %9, %2285 ]
  %2291 = phi ptr [ inttoptr (i64 24 to ptr), %2264 ], [ %63, %2285 ]
  %2292 = phi ptr [ inttoptr (i64 32 to ptr), %2264 ], [ %10, %2285 ]
  %2293 = phi ptr [ inttoptr (i64 40 to ptr), %2264 ], [ %64, %2285 ]
  %2294 = phi ptr [ inttoptr (i64 48 to ptr), %2264 ], [ %11, %2285 ]
  %2295 = phi ptr [ inttoptr (i64 56 to ptr), %2264 ], [ %65, %2285 ]
  %2296 = phi ptr [ null, %2264 ], [ %7, %2285 ]
  %2297 = extractvalue { i64, i64 } %2288, 0
  %2298 = extractvalue { i64, i64 } %2288, 1
  %2299 = icmp eq i64 %2297, %2260
  %2300 = icmp eq i64 %2298, %2262
  %2301 = select i1 %2299, i1 %2300, i1 false
  %2302 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br i1 %2301, label %2319, label %2303

2303:                                             ; preds = %2287
  %2304 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2302) #29
  %2305 = lshr i64 %2297, 32
  %2306 = trunc nuw i64 %2305 to i32
  %2307 = trunc i64 %2297 to i32
  %2308 = lshr i64 %2298, 32
  %2309 = trunc nuw i64 %2308 to i32
  %2310 = trunc i64 %2298 to i32
  %2311 = lshr i64 %2260, 32
  %2312 = trunc nuw i64 %2311 to i32
  %2313 = trunc i64 %2260 to i32
  %2314 = lshr i64 %2262, 32
  %2315 = trunc nuw i64 %2314 to i32
  %2316 = trunc i64 %2262 to i32
  %2317 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2306, i32 noundef %2307, i32 noundef %2309, i32 noundef %2310, i32 noundef %2312, i32 noundef %2313, i32 noundef %2315, i32 noundef %2316) #29
  %2318 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2319:                                             ; preds = %2287
  %2320 = add nsw i32 %2302, 1
  store i32 %2320, ptr @XSUM_checkResult128.nbTests, align 4
  %2321 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef readonly %2296, i64 noundef range(i64 0, 4294967296) %2256, i64 noundef %2258) #33
  %2322 = extractvalue { i64, i64 } %2321, 0
  %2323 = extractvalue { i64, i64 } %2321, 1
  %2324 = icmp eq i64 %2322, %2260
  %2325 = icmp eq i64 %2323, %2262
  %2326 = select i1 %2324, i1 %2325, i1 false
  br i1 %2326, label %2343, label %2327

2327:                                             ; preds = %2319
  %2328 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2320) #29
  %2329 = lshr i64 %2322, 32
  %2330 = trunc nuw i64 %2329 to i32
  %2331 = trunc i64 %2322 to i32
  %2332 = lshr i64 %2323, 32
  %2333 = trunc nuw i64 %2332 to i32
  %2334 = trunc i64 %2323 to i32
  %2335 = lshr i64 %2260, 32
  %2336 = trunc nuw i64 %2335 to i32
  %2337 = trunc i64 %2260 to i32
  %2338 = lshr i64 %2262, 32
  %2339 = trunc nuw i64 %2338 to i32
  %2340 = trunc i64 %2262 to i32
  %2341 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2330, i32 noundef %2331, i32 noundef %2333, i32 noundef %2334, i32 noundef %2336, i32 noundef %2337, i32 noundef %2339, i32 noundef %2340) #29
  %2342 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2343:                                             ; preds = %2319
  %2344 = add nsw i32 %2302, 2
  store i32 %2344, ptr @XSUM_checkResult128.nbTests, align 4
  %2345 = icmp eq i64 %2258, 0
  br i1 %2345, label %2371, label %2346

2346:                                             ; preds = %2343
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %3) #29
  %2347 = add i64 %2258, -4734510112055689544
  %2348 = sub i64 2066345149520216444, %2258
  %2349 = add i64 %2258, -2623469361688619810
  %2350 = sub i64 2262974939099578482, %2258
  %2351 = add i64 %2258, 8711581037947681227
  %2352 = sub i64 2410270004345854594, %2258
  %2353 = add i64 %2258, -8204357891075471176
  %2354 = sub i64 5487137525590930912, %2258
  %2355 = add i64 %2258, -3818837453329782724
  %2356 = sub i64 -6688317018830679928, %2258
  %2357 = add i64 %2258, 5690594596133299313
  %2358 = sub i64 -2833645246901970632, %2258
  %2359 = add i64 %2258, 4554437623014685352
  %2360 = sub i64 2111919702937427193, %2258
  %2361 = add i64 %2258, 3556072174620004746
  %2362 = sub i64 7238261902898274248, %2258
  %2363 = add i64 %2258, -4329134394285701654
  %2364 = sub i64 -1485321483350670907, %2258
  %2365 = add i64 %2258, 5321830579834785047
  %2366 = sub i64 -7032137544937171245, %2258
  %2367 = add i64 %2258, -242834301215959509
  %2368 = sub i64 -3588858202114426737, %2258
  %2369 = add i64 %2258, 2883454493032893253
  %2370 = sub i64 9097354517224871855, %2258
  br label %2677

2371:                                             ; preds = %2343
  %2372 = icmp ult i32 %2255, 17
  br i1 %2372, label %2373, label %2493

2373:                                             ; preds = %2371
  %2374 = icmp samesign ugt i32 %2255, 8
  br i1 %2374, label %2375, label %2417

2375:                                             ; preds = %2373
  %2376 = icmp ne ptr %2296, null
  call void @llvm.assume(i1 %2376)
  %2377 = load i64, ptr %2296, align 16
  %2378 = getelementptr inbounds nuw i8, ptr %2296, i64 %2256
  %2379 = getelementptr inbounds i8, ptr %2378, i64 -8
  %2380 = load i64, ptr %2379, align 1
  %2381 = xor i64 %2377, %2380
  %2382 = xor i64 %2381, 6455697860950631241
  %2383 = zext i64 %2382 to i128
  %2384 = mul nuw i128 %2383, 11400714785074694791
  %2385 = trunc i128 %2384 to i64
  %2386 = lshr i128 %2384, 64
  %2387 = trunc nuw i128 %2386 to i64
  %2388 = shl nuw nsw i64 %2256, 54
  %2389 = add nsw i64 %2388, -18014398509481984
  %2390 = add i64 %2389, %2385
  %2391 = xor i64 %2380, -4466874330221494952
  %2392 = and i64 %2391, 4294967295
  %2393 = mul nuw i64 %2392, 2246822518
  %2394 = add i64 %2393, %2391
  %2395 = add i64 %2394, %2387
  %2396 = call noundef i64 @llvm.bswap.i64(i64 %2395)
  %2397 = xor i64 %2396, %2390
  %2398 = zext i64 %2397 to i128
  %2399 = mul nuw i128 %2398, 14029467366897019727
  %2400 = trunc i128 %2399 to i64
  %2401 = lshr i128 %2399, 64
  %2402 = trunc nuw i128 %2401 to i64
  %2403 = mul i64 %2395, -4417276706812531889
  %2404 = add i64 %2403, %2402
  %2405 = lshr i64 %2400, 37
  %2406 = xor i64 %2405, %2400
  %2407 = mul i64 %2406, 1609587791953885689
  %2408 = lshr i64 %2407, 32
  %2409 = xor i64 %2408, %2407
  %2410 = lshr i64 %2404, 37
  %2411 = xor i64 %2410, %2404
  %2412 = mul i64 %2411, 1609587791953885689
  %2413 = lshr i64 %2412, 32
  %2414 = xor i64 %2413, %2412
  %2415 = insertvalue { i64, i64 } poison, i64 %2409, 0
  %2416 = insertvalue { i64, i64 } %2415, i64 %2414, 1
  br label %2652

2417:                                             ; preds = %2373
  %2418 = icmp samesign ugt i32 %2255, 3
  br i1 %2418, label %2419, label %2454

2419:                                             ; preds = %2417
  %2420 = icmp ne ptr %2296, null
  call void @llvm.assume(i1 %2420)
  %2421 = load i32, ptr %2296, align 16
  %2422 = getelementptr inbounds nuw i8, ptr %2296, i64 %2256
  %2423 = getelementptr inbounds i8, ptr %2422, i64 -4
  %2424 = load i32, ptr %2423, align 1
  %2425 = zext i32 %2421 to i64
  %2426 = zext i32 %2424 to i64
  %2427 = shl nuw i64 %2426, 32
  %2428 = or disjoint i64 %2427, %2425
  %2429 = xor i64 %2428, -4255862940314790740
  %2430 = shl nuw nsw i64 %2256, 2
  %2431 = add nuw nsw i64 %2430, -7046029288634856825
  %2432 = zext i64 %2429 to i128
  %2433 = zext i64 %2431 to i128
  %2434 = mul nuw i128 %2432, %2433
  %2435 = trunc i128 %2434 to i64
  %2436 = lshr i128 %2434, 64
  %2437 = trunc nuw i128 %2436 to i64
  %2438 = shl i64 %2435, 1
  %2439 = add i64 %2438, %2437
  %2440 = lshr i64 %2439, 3
  %2441 = xor i64 %2440, %2435
  %2442 = lshr i64 %2441, 35
  %2443 = xor i64 %2442, %2441
  %2444 = mul i64 %2443, -6939452855193903323
  %2445 = lshr i64 %2444, 28
  %2446 = xor i64 %2445, %2444
  %2447 = lshr i64 %2439, 37
  %2448 = xor i64 %2447, %2439
  %2449 = mul i64 %2448, 1609587791953885689
  %2450 = lshr i64 %2449, 32
  %2451 = xor i64 %2450, %2449
  %2452 = insertvalue { i64, i64 } poison, i64 %2446, 0
  %2453 = insertvalue { i64, i64 } %2452, i64 %2451, 1
  br label %2652

2454:                                             ; preds = %2417
  br i1 %2263, label %2652, label %2455

2455:                                             ; preds = %2454
  %2456 = icmp ne ptr %2296, null
  call void @llvm.assume(i1 %2456)
  %2457 = load i8, ptr %2296, align 16
  %2458 = lshr i64 %2256, 1
  %2459 = getelementptr inbounds nuw i8, ptr %2296, i64 %2458
  %2460 = load i8, ptr %2459, align 1
  %2461 = getelementptr i8, ptr %2296, i64 %2256
  %2462 = getelementptr i8, ptr %2461, i64 -1
  %2463 = load i8, ptr %2462, align 1
  %2464 = zext i8 %2457 to i32
  %2465 = shl nuw nsw i32 %2464, 16
  %2466 = zext i8 %2460 to i32
  %2467 = shl nuw i32 %2466, 24
  %2468 = zext i8 %2463 to i32
  %2469 = shl nuw nsw i32 %2255, 8
  %2470 = or disjoint i32 %2465, %2469
  %2471 = or disjoint i32 %2470, %2467
  %2472 = or disjoint i32 %2471, %2468
  %2473 = call noundef i32 @llvm.bswap.i32(i32 %2472)
  %2474 = call i32 @llvm.fshl.i32(i32 %2473, i32 %2473, i32 13)
  %2475 = xor i32 %2472, -2027464037
  %2476 = zext i32 %2475 to i64
  %2477 = xor i32 %2474, 808198283
  %2478 = zext i32 %2477 to i64
  %2479 = mul i64 %2476, -4417276706812531889
  %2480 = lshr i64 %2479, 29
  %2481 = xor i64 %2480, %2479
  %2482 = mul i64 %2481, 1609587929392839161
  %2483 = lshr i64 %2482, 32
  %2484 = xor i64 %2483, %2482
  %2485 = mul i64 %2478, -4417276706812531889
  %2486 = lshr i64 %2485, 29
  %2487 = xor i64 %2486, %2485
  %2488 = mul i64 %2487, 1609587929392839161
  %2489 = lshr i64 %2488, 32
  %2490 = xor i64 %2489, %2488
  %2491 = insertvalue { i64, i64 } poison, i64 %2484, 0
  %2492 = insertvalue { i64, i64 } %2491, i64 %2490, 1
  br label %2652

2493:                                             ; preds = %2371
  %2494 = icmp ult i32 %2255, 129
  br i1 %2494, label %2495, label %2646

2495:                                             ; preds = %2493
  %2496 = mul i64 %2256, -7046029288634856825
  %2497 = icmp samesign ugt i32 %2255, 32
  br i1 %2497, label %2498, label %2595

2498:                                             ; preds = %2495
  %2499 = icmp samesign ugt i32 %2255, 64
  br i1 %2499, label %2500, label %2563

2500:                                             ; preds = %2498
  %2501 = icmp samesign ugt i32 %2255, 96
  br i1 %2501, label %2502, label %2531

2502:                                             ; preds = %2500
  %2503 = getelementptr inbounds nuw i8, ptr %2296, i64 %2256
  %2504 = getelementptr inbounds i8, ptr %2503, i64 -64
  %2505 = load i64, ptr %2294, align 1
  %2506 = load i64, ptr %2295, align 1
  %2507 = xor i64 %2505, 4554437623014685352
  %2508 = xor i64 %2506, 2111919702937427193
  %2509 = zext i64 %2507 to i128
  %2510 = zext i64 %2508 to i128
  %2511 = mul nuw i128 %2510, %2509
  %2512 = lshr i128 %2511, 64
  %2513 = xor i128 %2512, %2511
  %2514 = trunc i128 %2513 to i64
  %2515 = add i64 %2496, %2514
  %2516 = load i64, ptr %2504, align 1
  %2517 = getelementptr inbounds i8, ptr %2503, i64 -56
  %2518 = load i64, ptr %2517, align 1
  %2519 = add i64 %2518, %2516
  %2520 = xor i64 %2515, %2519
  %2521 = xor i64 %2516, 3556072174620004746
  %2522 = xor i64 %2518, 7238261902898274248
  %2523 = zext i64 %2521 to i128
  %2524 = zext i64 %2522 to i128
  %2525 = mul nuw i128 %2524, %2523
  %2526 = lshr i128 %2525, 64
  %2527 = xor i128 %2526, %2525
  %2528 = trunc i128 %2527 to i64
  %2529 = add i64 %2506, %2505
  %2530 = xor i64 %2529, %2528
  br label %2531

2531:                                             ; preds = %2502, %2500
  %2532 = phi i64 [ %2520, %2502 ], [ %2496, %2500 ]
  %2533 = phi i64 [ %2530, %2502 ], [ 0, %2500 ]
  %2534 = getelementptr inbounds nuw i8, ptr %2296, i64 %2256
  %2535 = getelementptr inbounds i8, ptr %2534, i64 -48
  %2536 = load i64, ptr %2292, align 1
  %2537 = load i64, ptr %2293, align 1
  %2538 = xor i64 %2536, -3818837453329782724
  %2539 = xor i64 %2537, -6688317018830679928
  %2540 = zext i64 %2538 to i128
  %2541 = zext i64 %2539 to i128
  %2542 = mul nuw i128 %2541, %2540
  %2543 = lshr i128 %2542, 64
  %2544 = xor i128 %2543, %2542
  %2545 = trunc i128 %2544 to i64
  %2546 = add i64 %2532, %2545
  %2547 = load i64, ptr %2535, align 1
  %2548 = getelementptr inbounds i8, ptr %2534, i64 -40
  %2549 = load i64, ptr %2548, align 1
  %2550 = add i64 %2549, %2547
  %2551 = xor i64 %2546, %2550
  %2552 = xor i64 %2547, 5690594596133299313
  %2553 = xor i64 %2549, -2833645246901970632
  %2554 = zext i64 %2552 to i128
  %2555 = zext i64 %2553 to i128
  %2556 = mul nuw i128 %2555, %2554
  %2557 = lshr i128 %2556, 64
  %2558 = xor i128 %2557, %2556
  %2559 = trunc i128 %2558 to i64
  %2560 = add i64 %2533, %2559
  %2561 = add i64 %2537, %2536
  %2562 = xor i64 %2560, %2561
  br label %2563

2563:                                             ; preds = %2531, %2498
  %2564 = phi i64 [ %2551, %2531 ], [ %2496, %2498 ]
  %2565 = phi i64 [ %2562, %2531 ], [ 0, %2498 ]
  %2566 = getelementptr inbounds nuw i8, ptr %2296, i64 %2256
  %2567 = getelementptr inbounds i8, ptr %2566, i64 -32
  %2568 = load i64, ptr %2290, align 1
  %2569 = load i64, ptr %2291, align 1
  %2570 = xor i64 %2568, 8711581037947681227
  %2571 = xor i64 %2569, 2410270004345854594
  %2572 = zext i64 %2570 to i128
  %2573 = zext i64 %2571 to i128
  %2574 = mul nuw i128 %2573, %2572
  %2575 = lshr i128 %2574, 64
  %2576 = xor i128 %2575, %2574
  %2577 = trunc i128 %2576 to i64
  %2578 = add i64 %2564, %2577
  %2579 = load i64, ptr %2567, align 1
  %2580 = getelementptr inbounds i8, ptr %2566, i64 -24
  %2581 = load i64, ptr %2580, align 1
  %2582 = add i64 %2581, %2579
  %2583 = xor i64 %2578, %2582
  %2584 = xor i64 %2579, -8204357891075471176
  %2585 = xor i64 %2581, 5487137525590930912
  %2586 = zext i64 %2584 to i128
  %2587 = zext i64 %2585 to i128
  %2588 = mul nuw i128 %2587, %2586
  %2589 = lshr i128 %2588, 64
  %2590 = xor i128 %2589, %2588
  %2591 = trunc i128 %2590 to i64
  %2592 = add i64 %2565, %2591
  %2593 = add i64 %2569, %2568
  %2594 = xor i64 %2592, %2593
  br label %2595

2595:                                             ; preds = %2563, %2495
  %2596 = phi i64 [ %2583, %2563 ], [ %2496, %2495 ]
  %2597 = phi i64 [ %2594, %2563 ], [ 0, %2495 ]
  %2598 = getelementptr inbounds nuw i8, ptr %2296, i64 %2256
  %2599 = getelementptr inbounds i8, ptr %2598, i64 -16
  %2600 = load i64, ptr %2296, align 16
  %2601 = load i64, ptr %2289, align 1
  %2602 = xor i64 %2600, -4734510112055689544
  %2603 = xor i64 %2601, 2066345149520216444
  %2604 = zext i64 %2602 to i128
  %2605 = zext i64 %2603 to i128
  %2606 = mul nuw i128 %2605, %2604
  %2607 = lshr i128 %2606, 64
  %2608 = xor i128 %2607, %2606
  %2609 = trunc i128 %2608 to i64
  %2610 = add i64 %2596, %2609
  %2611 = load i64, ptr %2599, align 1
  %2612 = getelementptr inbounds i8, ptr %2598, i64 -8
  %2613 = load i64, ptr %2612, align 1
  %2614 = add i64 %2613, %2611
  %2615 = xor i64 %2610, %2614
  %2616 = xor i64 %2611, -2623469361688619810
  %2617 = xor i64 %2613, 2262974939099578482
  %2618 = zext i64 %2616 to i128
  %2619 = zext i64 %2617 to i128
  %2620 = mul nuw i128 %2619, %2618
  %2621 = lshr i128 %2620, 64
  %2622 = xor i128 %2621, %2620
  %2623 = trunc i128 %2622 to i64
  %2624 = add i64 %2597, %2623
  %2625 = add i64 %2601, %2600
  %2626 = xor i64 %2624, %2625
  %2627 = add i64 %2626, %2615
  %2628 = mul i64 %2615, -7046029288634856825
  %2629 = mul i64 %2626, -8796714831421723037
  %2630 = mul i64 %2256, -4417276706812531889
  %2631 = add i64 %2628, %2630
  %2632 = add i64 %2631, %2629
  %2633 = lshr i64 %2627, 37
  %2634 = xor i64 %2633, %2627
  %2635 = mul i64 %2634, 1609587791953885689
  %2636 = lshr i64 %2635, 32
  %2637 = xor i64 %2636, %2635
  %2638 = lshr i64 %2632, 37
  %2639 = xor i64 %2638, %2632
  %2640 = mul i64 %2639, 1609587791953885689
  %2641 = lshr i64 %2640, 32
  %2642 = xor i64 %2641, %2640
  %2643 = sub i64 0, %2642
  %2644 = insertvalue { i64, i64 } poison, i64 %2637, 0
  %2645 = insertvalue { i64, i64 } %2644, i64 %2643, 1
  br label %2652

2646:                                             ; preds = %2493
  %2647 = icmp ult i32 %2255, 241
  br i1 %2647, label %2648, label %2650

2648:                                             ; preds = %2646
  %2649 = call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef readonly %2296, i64 noundef range(i64 0, 4294967296) %2256, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #33
  br label %2652

2650:                                             ; preds = %2646
  %2651 = call fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noundef readonly %2296, i64 noundef range(i64 0, 4294967296) %2256) #29
  br label %2652

2652:                                             ; preds = %2650, %2648, %2595, %2455, %2454, %2419, %2375
  %2653 = phi { i64, i64 } [ %2645, %2595 ], [ %2649, %2648 ], [ %2651, %2650 ], [ %2416, %2375 ], [ %2453, %2419 ], [ %2492, %2455 ], [ { i64 6918025063187695999, i64 -7374073936536430376 }, %2454 ]
  %2654 = extractvalue { i64, i64 } %2653, 0
  %2655 = extractvalue { i64, i64 } %2653, 1
  %2656 = icmp eq i64 %2654, %2260
  %2657 = icmp eq i64 %2655, %2262
  %2658 = select i1 %2656, i1 %2657, i1 false
  br i1 %2658, label %2675, label %2659

2659:                                             ; preds = %2652
  %2660 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2344) #29
  %2661 = lshr i64 %2654, 32
  %2662 = trunc nuw i64 %2661 to i32
  %2663 = trunc i64 %2654 to i32
  %2664 = lshr i64 %2655, 32
  %2665 = trunc nuw i64 %2664 to i32
  %2666 = trunc i64 %2655 to i32
  %2667 = lshr i64 %2260, 32
  %2668 = trunc nuw i64 %2667 to i32
  %2669 = trunc i64 %2260 to i32
  %2670 = lshr i64 %2262, 32
  %2671 = trunc nuw i64 %2670 to i32
  %2672 = trunc i64 %2262 to i32
  %2673 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2662, i32 noundef %2663, i32 noundef %2665, i32 noundef %2666, i32 noundef %2668, i32 noundef %2669, i32 noundef %2671, i32 noundef %2672) #29
  %2674 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2675:                                             ; preds = %2652
  %2676 = add nsw i32 %2302, 3
  store i32 %2676, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %3) #29
  br label %2677

2677:                                             ; preds = %2675, %2346
  %2678 = phi i64 [ -4734510112055689544, %2675 ], [ %2347, %2346 ]
  %2679 = phi i64 [ 2066345149520216444, %2675 ], [ %2348, %2346 ]
  %2680 = phi i64 [ -2623469361688619810, %2675 ], [ %2349, %2346 ]
  %2681 = phi i64 [ 2262974939099578482, %2675 ], [ %2350, %2346 ]
  %2682 = phi i64 [ 8711581037947681227, %2675 ], [ %2351, %2346 ]
  %2683 = phi i64 [ 2410270004345854594, %2675 ], [ %2352, %2346 ]
  %2684 = phi i64 [ -8204357891075471176, %2675 ], [ %2353, %2346 ]
  %2685 = phi i64 [ 5487137525590930912, %2675 ], [ %2354, %2346 ]
  %2686 = phi i64 [ -3818837453329782724, %2675 ], [ %2355, %2346 ]
  %2687 = phi i64 [ -6688317018830679928, %2675 ], [ %2356, %2346 ]
  %2688 = phi i64 [ 5690594596133299313, %2675 ], [ %2357, %2346 ]
  %2689 = phi i64 [ -2833645246901970632, %2675 ], [ %2358, %2346 ]
  %2690 = phi i64 [ 4554437623014685352, %2675 ], [ %2359, %2346 ]
  %2691 = phi i64 [ 2111919702937427193, %2675 ], [ %2360, %2346 ]
  %2692 = phi i64 [ 3556072174620004746, %2675 ], [ %2361, %2346 ]
  %2693 = phi i64 [ 7238261902898274248, %2675 ], [ %2362, %2346 ]
  %2694 = phi i64 [ -4329134394285701654, %2675 ], [ %2363, %2346 ]
  %2695 = phi i64 [ -1485321483350670907, %2675 ], [ %2364, %2346 ]
  %2696 = phi i64 [ 5321830579834785047, %2675 ], [ %2365, %2346 ]
  %2697 = phi i64 [ -7032137544937171245, %2675 ], [ %2366, %2346 ]
  %2698 = phi i64 [ -242834301215959509, %2675 ], [ %2367, %2346 ]
  %2699 = phi i64 [ -3588858202114426737, %2675 ], [ %2368, %2346 ]
  %2700 = phi i64 [ 2883454493032893253, %2675 ], [ %2369, %2346 ]
  %2701 = phi i64 [ 9097354517224871855, %2675 ], [ %2370, %2346 ]
  %2702 = phi i64 [ 0, %2675 ], [ %2258, %2346 ]
  %2703 = phi i32 [ %2676, %2675 ], [ %2344, %2346 ]
  store i64 %2678, ptr %2021, align 1
  store i64 %2679, ptr %2022, align 1
  store i64 %2680, ptr %2023, align 1
  store i64 %2681, ptr %2024, align 1
  store i64 %2682, ptr %2025, align 1
  store i64 %2683, ptr %2026, align 1
  store i64 %2684, ptr %2027, align 1
  store i64 %2685, ptr %2028, align 1
  store i64 %2686, ptr %2029, align 1
  store i64 %2687, ptr %2030, align 1
  store i64 %2688, ptr %2031, align 1
  store i64 %2689, ptr %2032, align 1
  store i64 %2690, ptr %2033, align 1
  store i64 %2691, ptr %2034, align 1
  store i64 %2692, ptr %2035, align 1
  store i64 %2693, ptr %2036, align 1
  store i64 %2694, ptr %2037, align 1
  store i64 %2695, ptr %2038, align 1
  store i64 %2696, ptr %2039, align 1
  store i64 %2697, ptr %2040, align 1
  store i64 %2698, ptr %2041, align 1
  store i64 %2699, ptr %2042, align 1
  store i64 %2700, ptr %2043, align 1
  store i64 %2701, ptr %2044, align 1
  %2704 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecretandSeed(ptr nocapture noundef %2296, i64 noundef %2256, ptr nocapture noundef %2021, i64 noundef 192, i64 noundef %2702) #33
  %2705 = extractvalue { i64, i64 } %2704, 0
  %2706 = extractvalue { i64, i64 } %2704, 1
  %2707 = icmp eq i64 %2705, %2260
  %2708 = icmp eq i64 %2706, %2262
  %2709 = select i1 %2707, i1 %2708, i1 false
  br i1 %2709, label %2726, label %2710

2710:                                             ; preds = %2677
  %2711 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2703) #29
  %2712 = lshr i64 %2705, 32
  %2713 = trunc nuw i64 %2712 to i32
  %2714 = trunc i64 %2705 to i32
  %2715 = lshr i64 %2706, 32
  %2716 = trunc nuw i64 %2715 to i32
  %2717 = trunc i64 %2706 to i32
  %2718 = lshr i64 %2260, 32
  %2719 = trunc nuw i64 %2718 to i32
  %2720 = trunc i64 %2260 to i32
  %2721 = lshr i64 %2262, 32
  %2722 = trunc nuw i64 %2721 to i32
  %2723 = trunc i64 %2262 to i32
  %2724 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2713, i32 noundef %2714, i32 noundef %2716, i32 noundef %2717, i32 noundef %2719, i32 noundef %2720, i32 noundef %2722, i32 noundef %2723) #29
  %2725 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2726:                                             ; preds = %2677
  %2727 = add nsw i32 %2703, 1
  store i32 %2727, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %2021, i8 -103, i64 9, i1 false)
  %2728 = icmp ult i32 %2255, 241
  br i1 %2728, label %2729, label %2754

2729:                                             ; preds = %2726
  %2730 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecretandSeed(ptr nocapture noundef %2296, i64 noundef %2256, ptr nocapture noundef %2021, i64 noundef 192, i64 noundef %2258) #33
  %2731 = extractvalue { i64, i64 } %2730, 0
  %2732 = extractvalue { i64, i64 } %2730, 1
  %2733 = icmp eq i64 %2731, %2260
  %2734 = icmp eq i64 %2732, %2262
  %2735 = select i1 %2733, i1 %2734, i1 false
  br i1 %2735, label %2752, label %2736

2736:                                             ; preds = %2729
  %2737 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2727) #29
  %2738 = lshr i64 %2731, 32
  %2739 = trunc nuw i64 %2738 to i32
  %2740 = trunc i64 %2731 to i32
  %2741 = lshr i64 %2732, 32
  %2742 = trunc nuw i64 %2741 to i32
  %2743 = trunc i64 %2732 to i32
  %2744 = lshr i64 %2260, 32
  %2745 = trunc nuw i64 %2744 to i32
  %2746 = trunc i64 %2260 to i32
  %2747 = lshr i64 %2262, 32
  %2748 = trunc nuw i64 %2747 to i32
  %2749 = trunc i64 %2262 to i32
  %2750 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2739, i32 noundef %2740, i32 noundef %2742, i32 noundef %2743, i32 noundef %2745, i32 noundef %2746, i32 noundef %2748, i32 noundef %2749) #29
  %2751 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2752:                                             ; preds = %2729
  %2753 = add nsw i32 %2703, 2
  store i32 %2753, ptr @XSUM_checkResult128.nbTests, align 4
  br label %2754

2754:                                             ; preds = %2752, %2726
  %2755 = phi i32 [ %2753, %2752 ], [ %2727, %2726 ]
  call void @llvm.lifetime.end.p0(i64 193, ptr nonnull %3) #29
  %2756 = call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #30
  %2757 = icmp eq ptr %2756, null
  br i1 %2757, label %2758, label %2759

2758:                                             ; preds = %2754
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 559, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH128) #28
  unreachable

2759:                                             ; preds = %2754
  %2760 = ptrtoint ptr %2756 to i64
  %2761 = and i64 %2760, 63
  %2762 = sub nuw nsw i64 64, %2761
  %2763 = getelementptr inbounds nuw i8, ptr %2756, i64 %2762
  %2764 = ptrtoint ptr %2763 to i64
  %2765 = and i64 %2764, 63
  %2766 = icmp eq i64 %2765, 0
  call void @llvm.assume(i1 %2766)
  %2767 = trunc nuw nsw i64 %2762 to i8
  %2768 = getelementptr inbounds i8, ptr %2763, i64 -1
  store i8 %2767, ptr %2768, align 1
  %2769 = getelementptr inbounds nuw i8, ptr %2763, i64 552
  store i64 0, ptr %2769, align 8
  %2770 = getelementptr inbounds nuw i8, ptr %2763, i64 568
  store ptr null, ptr %2770, align 8
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef nonnull %2763, i64 noundef %2258)
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2763, ptr nocapture noundef %2296, i64 noundef %2256)
  %2771 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2763) #33
  %2772 = extractvalue { i64, i64 } %2771, 0
  %2773 = extractvalue { i64, i64 } %2771, 1
  %2774 = icmp eq i64 %2772, %2260
  %2775 = icmp eq i64 %2773, %2262
  %2776 = select i1 %2774, i1 %2775, i1 false
  br i1 %2776, label %2793, label %2777

2777:                                             ; preds = %2759
  %2778 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2755) #29
  %2779 = lshr i64 %2772, 32
  %2780 = trunc nuw i64 %2779 to i32
  %2781 = trunc i64 %2772 to i32
  %2782 = lshr i64 %2773, 32
  %2783 = trunc nuw i64 %2782 to i32
  %2784 = trunc i64 %2773 to i32
  %2785 = lshr i64 %2260, 32
  %2786 = trunc nuw i64 %2785 to i32
  %2787 = trunc i64 %2260 to i32
  %2788 = lshr i64 %2262, 32
  %2789 = trunc nuw i64 %2788 to i32
  %2790 = trunc i64 %2262 to i32
  %2791 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2780, i32 noundef %2781, i32 noundef %2783, i32 noundef %2784, i32 noundef %2786, i32 noundef %2787, i32 noundef %2789, i32 noundef %2790) #29
  %2792 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2793:                                             ; preds = %2759
  %2794 = add nsw i32 %2755, 1
  store i32 %2794, ptr @XSUM_checkResult128.nbTests, align 4
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef nonnull %2763, i64 noundef %2258)
  br i1 %2263, label %2812, label %2795

2795:                                             ; preds = %2793
  %2796 = call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %2256, i64 2)
  br label %2797

2797:                                             ; preds = %2797, %2795
  %2798 = phi i64 [ 0, %2795 ], [ %2808, %2797 ]
  %2799 = load i64, ptr @XSUM_rand.seed, align 8
  %2800 = mul i64 %2799, -7046029288634856819
  store i64 %2800, ptr @XSUM_rand.seed, align 8
  %2801 = lshr i64 %2800, 40
  %2802 = urem i64 %2801, %2796
  %2803 = add nuw nsw i64 %2802, %2798
  %2804 = icmp ugt i64 %2803, %2256
  %2805 = sub nuw nsw i64 %2256, %2798
  %2806 = select i1 %2804, i64 %2805, i64 %2802
  %2807 = getelementptr inbounds nuw i8, ptr %2296, i64 %2798
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2763, ptr nocapture noundef %2807, i64 noundef %2806)
  %2808 = add i64 %2806, %2798
  %2809 = icmp ult i64 %2808, %2256
  br i1 %2809, label %2797, label %2810, !llvm.loop !59

2810:                                             ; preds = %2797
  %2811 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br label %2812

2812:                                             ; preds = %2810, %2793
  %2813 = phi i32 [ %2811, %2810 ], [ %2794, %2793 ]
  %2814 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2763) #33
  %2815 = extractvalue { i64, i64 } %2814, 0
  %2816 = extractvalue { i64, i64 } %2814, 1
  %2817 = icmp eq i64 %2815, %2260
  %2818 = icmp eq i64 %2816, %2262
  %2819 = select i1 %2817, i1 %2818, i1 false
  br i1 %2819, label %2836, label %2820

2820:                                             ; preds = %2812
  %2821 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2813) #29
  %2822 = lshr i64 %2815, 32
  %2823 = trunc nuw i64 %2822 to i32
  %2824 = trunc i64 %2815 to i32
  %2825 = lshr i64 %2816, 32
  %2826 = trunc nuw i64 %2825 to i32
  %2827 = trunc i64 %2816 to i32
  %2828 = lshr i64 %2260, 32
  %2829 = trunc nuw i64 %2828 to i32
  %2830 = trunc i64 %2260 to i32
  %2831 = lshr i64 %2262, 32
  %2832 = trunc nuw i64 %2831 to i32
  %2833 = trunc i64 %2262 to i32
  %2834 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2823, i32 noundef %2824, i32 noundef %2826, i32 noundef %2827, i32 noundef %2829, i32 noundef %2830, i32 noundef %2832, i32 noundef %2833) #29
  %2835 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2836:                                             ; preds = %2812
  %2837 = add nsw i32 %2813, 1
  store i32 %2837, ptr @XSUM_checkResult128.nbTests, align 4
  call fastcc void @XXH_INLINE_XXH3_64bits_reset_withSeed(ptr nocapture noundef nonnull %2763, i64 noundef %2258)
  br i1 %2263, label %2845, label %2838

2838:                                             ; preds = %2836, %2838
  %2839 = phi i64 [ %2841, %2838 ], [ 0, %2836 ]
  %2840 = getelementptr inbounds nuw i8, ptr %2296, i64 %2839
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2763, ptr nocapture noundef %2840, i64 noundef 1)
  %2841 = add nuw nsw i64 %2839, 1
  %2842 = icmp eq i64 %2841, %2256
  br i1 %2842, label %2843, label %2838, !llvm.loop !64

2843:                                             ; preds = %2838
  %2844 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br label %2845

2845:                                             ; preds = %2843, %2836
  %2846 = phi i32 [ %2844, %2843 ], [ %2837, %2836 ]
  %2847 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2763) #33
  %2848 = extractvalue { i64, i64 } %2847, 0
  %2849 = extractvalue { i64, i64 } %2847, 1
  %2850 = icmp eq i64 %2848, %2260
  %2851 = icmp eq i64 %2849, %2262
  %2852 = select i1 %2850, i1 %2851, i1 false
  br i1 %2852, label %2869, label %2853

2853:                                             ; preds = %2845
  %2854 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2846) #29
  %2855 = lshr i64 %2848, 32
  %2856 = trunc nuw i64 %2855 to i32
  %2857 = trunc i64 %2848 to i32
  %2858 = lshr i64 %2849, 32
  %2859 = trunc nuw i64 %2858 to i32
  %2860 = trunc i64 %2849 to i32
  %2861 = lshr i64 %2260, 32
  %2862 = trunc nuw i64 %2861 to i32
  %2863 = trunc i64 %2260 to i32
  %2864 = lshr i64 %2262, 32
  %2865 = trunc nuw i64 %2864 to i32
  %2866 = trunc i64 %2262 to i32
  %2867 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2856, i32 noundef %2857, i32 noundef %2859, i32 noundef %2860, i32 noundef %2862, i32 noundef %2863, i32 noundef %2865, i32 noundef %2866) #29
  %2868 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2869:                                             ; preds = %2845
  %2870 = add nsw i32 %2846, 1
  store i32 %2870, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.lifetime.start.p0(i64 193, ptr nonnull %4) #29
  %2871 = add i64 %2258, -4734510112055689544
  %2872 = sub i64 2066345149520216444, %2258
  %2873 = add i64 %2258, -2623469361688619810
  %2874 = sub i64 2262974939099578482, %2258
  %2875 = add i64 %2258, 8711581037947681227
  %2876 = sub i64 2410270004345854594, %2258
  %2877 = add i64 %2258, -8204357891075471176
  %2878 = sub i64 5487137525590930912, %2258
  %2879 = add i64 %2258, -3818837453329782724
  %2880 = sub i64 -6688317018830679928, %2258
  %2881 = add i64 %2258, 5690594596133299313
  %2882 = sub i64 -2833645246901970632, %2258
  %2883 = add i64 %2258, 4554437623014685352
  %2884 = sub i64 2111919702937427193, %2258
  %2885 = add i64 %2258, 3556072174620004746
  %2886 = sub i64 7238261902898274248, %2258
  %2887 = add i64 %2258, -4329134394285701654
  %2888 = sub i64 -1485321483350670907, %2258
  %2889 = add i64 %2258, 5321830579834785047
  %2890 = sub i64 -7032137544937171245, %2258
  %2891 = add i64 %2258, -242834301215959509
  %2892 = sub i64 -3588858202114426737, %2258
  %2893 = add i64 %2258, 2883454493032893253
  %2894 = sub i64 9097354517224871855, %2258
  store i64 %2871, ptr %2045, align 1
  store i64 %2872, ptr %2046, align 1
  store i64 %2873, ptr %2047, align 1
  store i64 %2874, ptr %2048, align 1
  store i64 %2875, ptr %2049, align 1
  store i64 %2876, ptr %2050, align 1
  store i64 %2877, ptr %2051, align 1
  store i64 %2878, ptr %2052, align 1
  store i64 %2879, ptr %2053, align 1
  store i64 %2880, ptr %2054, align 1
  store i64 %2881, ptr %2055, align 1
  store i64 %2882, ptr %2056, align 1
  store i64 %2883, ptr %2057, align 1
  store i64 %2884, ptr %2058, align 1
  store i64 %2885, ptr %2059, align 1
  store i64 %2886, ptr %2060, align 1
  store i64 %2887, ptr %2061, align 1
  store i64 %2888, ptr %2062, align 1
  store i64 %2889, ptr %2063, align 1
  store i64 %2890, ptr %2064, align 1
  store i64 %2891, ptr %2065, align 1
  store i64 %2892, ptr %2066, align 1
  store i64 %2893, ptr %2067, align 1
  store i64 %2894, ptr %2068, align 1
  %2895 = getelementptr inbounds nuw i8, ptr %2763, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2895, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2763, align 64
  %2896 = getelementptr inbounds nuw i8, ptr %2763, i64 8
  store i64 -7046029288634856825, ptr %2896, align 8
  %2897 = getelementptr inbounds nuw i8, ptr %2763, i64 16
  store i64 -4417276706812531889, ptr %2897, align 16
  %2898 = getelementptr inbounds nuw i8, ptr %2763, i64 24
  store i64 1609587929392839161, ptr %2898, align 8
  %2899 = getelementptr inbounds nuw i8, ptr %2763, i64 32
  store i64 -8796714831421723037, ptr %2899, align 32
  %2900 = getelementptr inbounds nuw i8, ptr %2763, i64 40
  store i64 2246822519, ptr %2900, align 8
  %2901 = getelementptr inbounds nuw i8, ptr %2763, i64 48
  store i64 2870177450012600261, ptr %2901, align 16
  %2902 = getelementptr inbounds nuw i8, ptr %2763, i64 56
  store i64 2654435761, ptr %2902, align 8
  store i64 %2258, ptr %2769, align 8
  %2903 = getelementptr inbounds nuw i8, ptr %2763, i64 516
  store ptr %2045, ptr %2770, align 8
  %2904 = getelementptr inbounds nuw i8, ptr %2763, i64 544
  store i64 128, ptr %2904, align 32
  %2905 = getelementptr inbounds nuw i8, ptr %2763, i64 536
  store i64 16, ptr %2905, align 8
  store i32 1, ptr %2903, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2763, ptr nocapture noundef %2296, i64 noundef %2256)
  %2906 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2763) #33
  %2907 = extractvalue { i64, i64 } %2906, 0
  %2908 = extractvalue { i64, i64 } %2906, 1
  %2909 = icmp eq i64 %2907, %2260
  %2910 = icmp eq i64 %2908, %2262
  %2911 = select i1 %2909, i1 %2910, i1 false
  br i1 %2911, label %2928, label %2912

2912:                                             ; preds = %2869
  %2913 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2870) #29
  %2914 = lshr i64 %2907, 32
  %2915 = trunc nuw i64 %2914 to i32
  %2916 = trunc i64 %2907 to i32
  %2917 = lshr i64 %2908, 32
  %2918 = trunc nuw i64 %2917 to i32
  %2919 = trunc i64 %2908 to i32
  %2920 = lshr i64 %2260, 32
  %2921 = trunc nuw i64 %2920 to i32
  %2922 = trunc i64 %2260 to i32
  %2923 = lshr i64 %2262, 32
  %2924 = trunc nuw i64 %2923 to i32
  %2925 = trunc i64 %2262 to i32
  %2926 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2915, i32 noundef %2916, i32 noundef %2918, i32 noundef %2919, i32 noundef %2921, i32 noundef %2922, i32 noundef %2924, i32 noundef %2925) #29
  %2927 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2928:                                             ; preds = %2869
  %2929 = add nsw i32 %2846, 2
  store i32 %2929, ptr @XSUM_checkResult128.nbTests, align 4
  br i1 %2728, label %2930, label %2955

2930:                                             ; preds = %2928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %2045, i8 -103, i64 9, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %2895, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %2763, align 64
  store i64 -7046029288634856825, ptr %2896, align 8
  store i64 -4417276706812531889, ptr %2897, align 16
  store i64 1609587929392839161, ptr %2898, align 8
  store i64 -8796714831421723037, ptr %2899, align 32
  store i64 2246822519, ptr %2900, align 8
  store i64 2870177450012600261, ptr %2901, align 16
  store i64 2654435761, ptr %2902, align 8
  store i64 %2258, ptr %2769, align 8
  store ptr %2045, ptr %2770, align 8
  store i64 128, ptr %2904, align 32
  store i64 16, ptr %2905, align 8
  store i32 1, ptr %2903, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %2763, ptr nocapture noundef %2296, i64 noundef %2256)
  %2931 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %2763) #33
  %2932 = extractvalue { i64, i64 } %2931, 0
  %2933 = extractvalue { i64, i64 } %2931, 1
  %2934 = icmp eq i64 %2932, %2260
  %2935 = icmp eq i64 %2933, %2262
  %2936 = select i1 %2934, i1 %2935, i1 false
  br i1 %2936, label %2953, label %2937

2937:                                             ; preds = %2930
  %2938 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2929) #29
  %2939 = lshr i64 %2932, 32
  %2940 = trunc nuw i64 %2939 to i32
  %2941 = trunc i64 %2932 to i32
  %2942 = lshr i64 %2933, 32
  %2943 = trunc nuw i64 %2942 to i32
  %2944 = trunc i64 %2933 to i32
  %2945 = lshr i64 %2260, 32
  %2946 = trunc nuw i64 %2945 to i32
  %2947 = trunc i64 %2260 to i32
  %2948 = lshr i64 %2262, 32
  %2949 = trunc nuw i64 %2948 to i32
  %2950 = trunc i64 %2262 to i32
  %2951 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %2940, i32 noundef %2941, i32 noundef %2943, i32 noundef %2944, i32 noundef %2946, i32 noundef %2947, i32 noundef %2949, i32 noundef %2950) #29
  %2952 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

2953:                                             ; preds = %2930
  %2954 = add nsw i32 %2846, 3
  store i32 %2954, ptr @XSUM_checkResult128.nbTests, align 4
  br label %2955

2955:                                             ; preds = %2928, %2953
  %2956 = phi i32 [ %2929, %2928 ], [ %2954, %2953 ]
  call void @llvm.lifetime.end.p0(i64 193, ptr nonnull %4) #29
  %2957 = load i8, ptr %2768, align 1
  %2958 = zext i8 %2957 to i64
  %2959 = sub nsw i64 0, %2958
  %2960 = getelementptr inbounds i8, ptr %2763, i64 %2959
  call void @free(ptr noundef nonnull %2960) #29
  %2961 = add nuw nsw i64 %2253, 1
  %2962 = icmp eq i64 %2961, 26
  br i1 %2962, label %2248, label %2252, !llvm.loop !65

2963:                                             ; preds = %3220
  %2964 = load i32, ptr @XSUM_testSecretGenerator.nbTests, align 4
  %2965 = getelementptr inbounds nuw i8, ptr %1, i64 62
  %2966 = getelementptr inbounds nuw i8, ptr %1, i64 131
  %2967 = getelementptr inbounds nuw i8, ptr %1, i64 191
  %2968 = getelementptr inbounds nuw i8, ptr %1, i64 241
  %2969 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %2970 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %2971 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %2972 = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %3228

2973:                                             ; preds = %2248, %3220
  %2974 = phi i32 [ %2956, %2248 ], [ %3221, %3220 ]
  %2975 = phi i64 [ 0, %2248 ], [ %3226, %3220 ]
  %2976 = getelementptr inbounds nuw [4 x %struct.XSUM_testdata128_t], ptr @XSUM_XXH128_withSecret_testdata, i64 0, i64 %2975
  %2977 = load i32, ptr %2976, align 16
  %2978 = zext i32 %2977 to i64
  %2979 = getelementptr inbounds nuw i8, ptr %2976, i64 16
  %2980 = load i64, ptr %2979, align 16
  %2981 = getelementptr inbounds nuw i8, ptr %2976, i64 24
  %2982 = load i64, ptr %2981, align 8
  %2983 = icmp ne i32 %2977, 0
  br i1 %2983, label %2984, label %2991

2984:                                             ; preds = %2973
  %2985 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecret(ptr nocapture noundef nonnull %7, i64 noundef %2978, ptr nocapture noundef nonnull %8, i64 noundef 147) #33
  %2986 = extractvalue { i64, i64 } %2985, 0
  %2987 = extractvalue { i64, i64 } %2985, 1
  %2988 = icmp eq i64 %2986, %2980
  %2989 = icmp eq i64 %2987, %2982
  %2990 = select i1 %2988, i1 %2989, i1 false
  br i1 %2990, label %3035, label %3017

2991:                                             ; preds = %2973
  %2992 = load i64, ptr %1512, align 1
  %2993 = load i64, ptr %2249, align 1
  %2994 = xor i64 %2993, %2992
  %2995 = load i64, ptr %2250, align 1
  %2996 = load i64, ptr %2251, align 1
  %2997 = xor i64 %2996, %2995
  %2998 = lshr i64 %2994, 33
  %2999 = xor i64 %2998, %2994
  %3000 = mul i64 %2999, -4417276706812531889
  %3001 = lshr i64 %3000, 29
  %3002 = xor i64 %3001, %3000
  %3003 = mul i64 %3002, 1609587929392839161
  %3004 = lshr i64 %3003, 32
  %3005 = xor i64 %3004, %3003
  %3006 = lshr i64 %2997, 33
  %3007 = xor i64 %3006, %2997
  %3008 = mul i64 %3007, -4417276706812531889
  %3009 = lshr i64 %3008, 29
  %3010 = xor i64 %3009, %3008
  %3011 = mul i64 %3010, 1609587929392839161
  %3012 = lshr i64 %3011, 32
  %3013 = xor i64 %3012, %3011
  %3014 = icmp eq i64 %3005, %2980
  %3015 = icmp eq i64 %3013, %2982
  %3016 = select i1 %3014, i1 %3015, i1 false
  br i1 %3016, label %3061, label %3017

3017:                                             ; preds = %2991, %2984
  %3018 = phi i64 [ %3013, %2991 ], [ %2987, %2984 ]
  %3019 = phi i64 [ %3005, %2991 ], [ %2986, %2984 ]
  %3020 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %2974) #29
  %3021 = lshr i64 %3019, 32
  %3022 = trunc nuw i64 %3021 to i32
  %3023 = trunc i64 %3019 to i32
  %3024 = lshr i64 %3018, 32
  %3025 = trunc nuw i64 %3024 to i32
  %3026 = trunc i64 %3018 to i32
  %3027 = lshr i64 %2980, 32
  %3028 = trunc nuw i64 %3027 to i32
  %3029 = trunc i64 %2980 to i32
  %3030 = lshr i64 %2982, 32
  %3031 = trunc nuw i64 %3030 to i32
  %3032 = trunc i64 %2982 to i32
  %3033 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3022, i32 noundef %3023, i32 noundef %3025, i32 noundef %3026, i32 noundef %3028, i32 noundef %3029, i32 noundef %3031, i32 noundef %3032) #29
  %3034 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3035:                                             ; preds = %2984
  %3036 = add nsw i32 %2974, 1
  store i32 %3036, ptr @XSUM_checkResult128.nbTests, align 4
  %3037 = icmp ugt i32 %2977, 240
  br i1 %3037, label %3038, label %3065

3038:                                             ; preds = %3035
  %3039 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecretandSeed(ptr nocapture noundef nonnull %7, i64 noundef %2978, ptr nocapture noundef nonnull %8, i64 noundef 147, i64 noundef 0) #33
  %3040 = extractvalue { i64, i64 } %3039, 0
  %3041 = extractvalue { i64, i64 } %3039, 1
  %3042 = icmp eq i64 %3040, %2980
  %3043 = icmp eq i64 %3041, %2982
  %3044 = select i1 %3042, i1 %3043, i1 false
  br i1 %3044, label %3061, label %3045

3045:                                             ; preds = %3038
  %3046 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3036) #29
  %3047 = lshr i64 %3040, 32
  %3048 = trunc nuw i64 %3047 to i32
  %3049 = trunc i64 %3040 to i32
  %3050 = lshr i64 %3041, 32
  %3051 = trunc nuw i64 %3050 to i32
  %3052 = trunc i64 %3041 to i32
  %3053 = lshr i64 %2980, 32
  %3054 = trunc nuw i64 %3053 to i32
  %3055 = trunc i64 %2980 to i32
  %3056 = lshr i64 %2982, 32
  %3057 = trunc nuw i64 %3056 to i32
  %3058 = trunc i64 %2982 to i32
  %3059 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3048, i32 noundef %3049, i32 noundef %3051, i32 noundef %3052, i32 noundef %3054, i32 noundef %3055, i32 noundef %3057, i32 noundef %3058) #29
  %3060 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3061:                                             ; preds = %3038, %2991
  %3062 = phi i32 [ 1, %2991 ], [ 2, %3038 ]
  %3063 = phi ptr [ null, %2991 ], [ %7, %3038 ]
  %3064 = add nsw i32 %2974, %3062
  store i32 %3064, ptr @XSUM_checkResult128.nbTests, align 4
  br label %3065

3065:                                             ; preds = %3061, %3035
  %3066 = phi i1 [ false, %3035 ], [ %2983, %3061 ]
  %3067 = phi ptr [ %7, %3035 ], [ %3063, %3061 ]
  %3068 = phi i32 [ %3036, %3035 ], [ %3064, %3061 ]
  %3069 = call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #30
  %3070 = icmp eq ptr %3069, null
  br i1 %3070, label %3071, label %3072

3071:                                             ; preds = %3065
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 628, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testXXH128_withSecret) #28
  unreachable

3072:                                             ; preds = %3065
  %3073 = ptrtoint ptr %3069 to i64
  %3074 = and i64 %3073, 63
  %3075 = sub nuw nsw i64 64, %3074
  %3076 = getelementptr inbounds nuw i8, ptr %3069, i64 %3075
  %3077 = ptrtoint ptr %3076 to i64
  %3078 = and i64 %3077, 63
  %3079 = icmp eq i64 %3078, 0
  call void @llvm.assume(i1 %3079)
  %3080 = trunc nuw nsw i64 %3075 to i8
  %3081 = getelementptr inbounds i8, ptr %3076, i64 -1
  store i8 %3080, ptr %3081, align 1
  %3082 = getelementptr inbounds nuw i8, ptr %3076, i64 552
  %3083 = getelementptr inbounds nuw i8, ptr %3076, i64 568
  %3084 = getelementptr inbounds nuw i8, ptr %3076, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %3084, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3076, align 64
  %3085 = getelementptr inbounds nuw i8, ptr %3076, i64 8
  store i64 -7046029288634856825, ptr %3085, align 8
  %3086 = getelementptr inbounds nuw i8, ptr %3076, i64 16
  store i64 -4417276706812531889, ptr %3086, align 16
  %3087 = getelementptr inbounds nuw i8, ptr %3076, i64 24
  store i64 1609587929392839161, ptr %3087, align 8
  %3088 = getelementptr inbounds nuw i8, ptr %3076, i64 32
  store i64 -8796714831421723037, ptr %3088, align 32
  %3089 = getelementptr inbounds nuw i8, ptr %3076, i64 40
  store i64 2246822519, ptr %3089, align 8
  %3090 = getelementptr inbounds nuw i8, ptr %3076, i64 48
  store i64 2870177450012600261, ptr %3090, align 16
  %3091 = getelementptr inbounds nuw i8, ptr %3076, i64 56
  store i64 2654435761, ptr %3091, align 8
  store i64 0, ptr %3082, align 8
  store ptr %8, ptr %3083, align 8
  %3092 = getelementptr inbounds nuw i8, ptr %3076, i64 544
  store i64 83, ptr %3092, align 32
  %3093 = getelementptr inbounds nuw i8, ptr %3076, i64 536
  store i64 10, ptr %3093, align 8
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %3076, ptr nocapture noundef %3067, i64 noundef %2978)
  %3094 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %3076) #33
  %3095 = extractvalue { i64, i64 } %3094, 0
  %3096 = extractvalue { i64, i64 } %3094, 1
  %3097 = icmp eq i64 %3095, %2980
  %3098 = icmp eq i64 %3096, %2982
  %3099 = select i1 %3097, i1 %3098, i1 false
  br i1 %3099, label %3116, label %3100

3100:                                             ; preds = %3072
  %3101 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3068) #29
  %3102 = lshr i64 %3095, 32
  %3103 = trunc nuw i64 %3102 to i32
  %3104 = trunc i64 %3095 to i32
  %3105 = lshr i64 %3096, 32
  %3106 = trunc nuw i64 %3105 to i32
  %3107 = trunc i64 %3096 to i32
  %3108 = lshr i64 %2980, 32
  %3109 = trunc nuw i64 %3108 to i32
  %3110 = trunc i64 %2980 to i32
  %3111 = lshr i64 %2982, 32
  %3112 = trunc nuw i64 %3111 to i32
  %3113 = trunc i64 %2982 to i32
  %3114 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3103, i32 noundef %3104, i32 noundef %3106, i32 noundef %3107, i32 noundef %3109, i32 noundef %3110, i32 noundef %3112, i32 noundef %3113) #29
  %3115 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3116:                                             ; preds = %3072
  %3117 = add nsw i32 %3068, 1
  store i32 %3117, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %3084, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3076, align 64
  store i64 -7046029288634856825, ptr %3085, align 8
  store i64 -4417276706812531889, ptr %3086, align 16
  store i64 1609587929392839161, ptr %3087, align 8
  store i64 -8796714831421723037, ptr %3088, align 32
  store i64 2246822519, ptr %3089, align 8
  store i64 2870177450012600261, ptr %3090, align 16
  store i64 2654435761, ptr %3091, align 8
  store i64 0, ptr %3082, align 8
  store ptr %8, ptr %3083, align 8
  store i64 83, ptr %3092, align 32
  store i64 10, ptr %3093, align 8
  br i1 %2983, label %3118, label %3135

3118:                                             ; preds = %3116
  %3119 = call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %2978, i64 2)
  br label %3120

3120:                                             ; preds = %3120, %3118
  %3121 = phi i64 [ 0, %3118 ], [ %3131, %3120 ]
  %3122 = load i64, ptr @XSUM_rand.seed, align 8
  %3123 = mul i64 %3122, -7046029288634856819
  store i64 %3123, ptr @XSUM_rand.seed, align 8
  %3124 = lshr i64 %3123, 40
  %3125 = urem i64 %3124, %3119
  %3126 = add nuw nsw i64 %3125, %3121
  %3127 = icmp ugt i64 %3126, %2978
  %3128 = sub nuw nsw i64 %2978, %3121
  %3129 = select i1 %3127, i64 %3128, i64 %3125
  %3130 = getelementptr inbounds nuw i8, ptr %3067, i64 %3121
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %3076, ptr nocapture noundef %3130, i64 noundef %3129)
  %3131 = add i64 %3129, %3121
  %3132 = icmp ult i64 %3131, %2978
  br i1 %3132, label %3120, label %3133, !llvm.loop !59

3133:                                             ; preds = %3120
  %3134 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br label %3135

3135:                                             ; preds = %3133, %3116
  %3136 = phi i32 [ %3134, %3133 ], [ %3117, %3116 ]
  %3137 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %3076) #33
  %3138 = extractvalue { i64, i64 } %3137, 0
  %3139 = extractvalue { i64, i64 } %3137, 1
  %3140 = icmp eq i64 %3138, %2980
  %3141 = icmp eq i64 %3139, %2982
  %3142 = select i1 %3140, i1 %3141, i1 false
  br i1 %3142, label %3159, label %3143

3143:                                             ; preds = %3135
  %3144 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3136) #29
  %3145 = lshr i64 %3138, 32
  %3146 = trunc nuw i64 %3145 to i32
  %3147 = trunc i64 %3138 to i32
  %3148 = lshr i64 %3139, 32
  %3149 = trunc nuw i64 %3148 to i32
  %3150 = trunc i64 %3139 to i32
  %3151 = lshr i64 %2980, 32
  %3152 = trunc nuw i64 %3151 to i32
  %3153 = trunc i64 %2980 to i32
  %3154 = lshr i64 %2982, 32
  %3155 = trunc nuw i64 %3154 to i32
  %3156 = trunc i64 %2982 to i32
  %3157 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3146, i32 noundef %3147, i32 noundef %3149, i32 noundef %3150, i32 noundef %3152, i32 noundef %3153, i32 noundef %3155, i32 noundef %3156) #29
  %3158 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3159:                                             ; preds = %3135
  %3160 = add nsw i32 %3136, 1
  store i32 %3160, ptr @XSUM_checkResult128.nbTests, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %3084, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3076, align 64
  store i64 -7046029288634856825, ptr %3085, align 8
  store i64 -4417276706812531889, ptr %3086, align 16
  store i64 1609587929392839161, ptr %3087, align 8
  store i64 -8796714831421723037, ptr %3088, align 32
  store i64 2246822519, ptr %3089, align 8
  store i64 2870177450012600261, ptr %3090, align 16
  store i64 2654435761, ptr %3091, align 8
  store i64 0, ptr %3082, align 8
  store ptr %8, ptr %3083, align 8
  store i64 83, ptr %3092, align 32
  store i64 10, ptr %3093, align 8
  br i1 %2983, label %3161, label %3168

3161:                                             ; preds = %3159, %3161
  %3162 = phi i64 [ %3164, %3161 ], [ 0, %3159 ]
  %3163 = getelementptr inbounds nuw i8, ptr %3067, i64 %3162
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %3076, ptr nocapture noundef %3163, i64 noundef 1)
  %3164 = add nuw nsw i64 %3162, 1
  %3165 = icmp eq i64 %3164, %2978
  br i1 %3165, label %3166, label %3161, !llvm.loop !66

3166:                                             ; preds = %3161
  %3167 = load i32, ptr @XSUM_checkResult128.nbTests, align 4
  br label %3168

3168:                                             ; preds = %3166, %3159
  %3169 = phi i32 [ %3167, %3166 ], [ %3160, %3159 ]
  %3170 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %3076) #33
  %3171 = extractvalue { i64, i64 } %3170, 0
  %3172 = extractvalue { i64, i64 } %3170, 1
  %3173 = icmp eq i64 %3171, %2980
  %3174 = icmp eq i64 %3172, %2982
  %3175 = select i1 %3173, i1 %3174, i1 false
  br i1 %3175, label %3192, label %3176

3176:                                             ; preds = %3168
  %3177 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3169) #29
  %3178 = lshr i64 %3171, 32
  %3179 = trunc nuw i64 %3178 to i32
  %3180 = trunc i64 %3171 to i32
  %3181 = lshr i64 %3172, 32
  %3182 = trunc nuw i64 %3181 to i32
  %3183 = trunc i64 %3172 to i32
  %3184 = lshr i64 %2980, 32
  %3185 = trunc nuw i64 %3184 to i32
  %3186 = trunc i64 %2980 to i32
  %3187 = lshr i64 %2982, 32
  %3188 = trunc nuw i64 %3187 to i32
  %3189 = trunc i64 %2982 to i32
  %3190 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3179, i32 noundef %3180, i32 noundef %3182, i32 noundef %3183, i32 noundef %3185, i32 noundef %3186, i32 noundef %3188, i32 noundef %3189) #29
  %3191 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3192:                                             ; preds = %3168
  %3193 = add nsw i32 %3169, 1
  store i32 %3193, ptr @XSUM_checkResult128.nbTests, align 4
  br i1 %3066, label %3194, label %3220

3194:                                             ; preds = %3192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %3084, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3076, align 64
  store i64 -7046029288634856825, ptr %3085, align 8
  store i64 -4417276706812531889, ptr %3086, align 16
  store i64 1609587929392839161, ptr %3087, align 8
  store i64 -8796714831421723037, ptr %3088, align 32
  store i64 2246822519, ptr %3089, align 8
  store i64 2870177450012600261, ptr %3090, align 16
  store i64 2654435761, ptr %3091, align 8
  store i64 0, ptr %3082, align 8
  %3195 = getelementptr inbounds nuw i8, ptr %3076, i64 516
  store ptr %8, ptr %3083, align 8
  store i64 83, ptr %3092, align 32
  store i64 10, ptr %3093, align 8
  store i32 1, ptr %3195, align 4
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %3076, ptr nocapture noundef %3067, i64 noundef %2978)
  %3196 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %3076) #33
  %3197 = extractvalue { i64, i64 } %3196, 0
  %3198 = extractvalue { i64, i64 } %3196, 1
  %3199 = icmp eq i64 %3197, %2980
  %3200 = icmp eq i64 %3198, %2982
  %3201 = select i1 %3199, i1 %3200, i1 false
  br i1 %3201, label %3218, label %3202

3202:                                             ; preds = %3194
  %3203 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.16, i32 noundef %3193) #29
  %3204 = lshr i64 %3197, 32
  %3205 = trunc nuw i64 %3204 to i32
  %3206 = trunc i64 %3197 to i32
  %3207 = lshr i64 %3198, 32
  %3208 = trunc nuw i64 %3207 to i32
  %3209 = trunc i64 %3198 to i32
  %3210 = lshr i64 %2980, 32
  %3211 = trunc nuw i64 %3210 to i32
  %3212 = trunc i64 %2980 to i32
  %3213 = lshr i64 %2982, 32
  %3214 = trunc nuw i64 %3213 to i32
  %3215 = trunc i64 %2982 to i32
  %3216 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.17, i32 noundef %3205, i32 noundef %3206, i32 noundef %3208, i32 noundef %3209, i32 noundef %3211, i32 noundef %3212, i32 noundef %3214, i32 noundef %3215) #29
  %3217 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.10) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3218:                                             ; preds = %3194
  %3219 = add nsw i32 %3169, 2
  store i32 %3219, ptr @XSUM_checkResult128.nbTests, align 4
  br label %3220

3220:                                             ; preds = %3192, %3218
  %3221 = phi i32 [ %3193, %3192 ], [ %3219, %3218 ]
  %3222 = load i8, ptr %3081, align 1
  %3223 = zext i8 %3222 to i64
  %3224 = sub nsw i64 0, %3223
  %3225 = getelementptr inbounds i8, ptr %3076, i64 %3224
  call void @free(ptr noundef nonnull %3225) #29
  %3226 = add nuw nsw i64 %2975, 1
  %3227 = icmp eq i64 %3226, 4
  br i1 %3227, label %2963, label %2973, !llvm.loop !67

3228:                                             ; preds = %2963, %3352
  %3229 = phi i64 [ 0, %2963 ], [ %3354, %3352 ]
  %3230 = phi i32 [ %2964, %2963 ], [ %3353, %3352 ]
  %3231 = getelementptr inbounds nuw [4 x %struct.XSUM_testdata_sample_t], ptr @XSUM_XXH3_generateSecret_testdata, i64 0, i64 %3229
  %3232 = load i32, ptr %3231, align 16
  %3233 = icmp ult i32 %3232, 2368
  br i1 %3233, label %3235, label %3234

3234:                                             ; preds = %3228
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 725, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_sanityCheck) #28
  unreachable

3235:                                             ; preds = %3228
  call void @llvm.lifetime.start.p0(i64 9867, ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(9867) %1, i8 0, i64 9867, i1 false)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #29
  %3236 = getelementptr inbounds nuw i8, ptr %3231, i64 4
  %3237 = load i32, ptr %3236, align 4
  %3238 = icmp ult i32 %3237, 9868
  br i1 %3238, label %3240, label %3239

3239:                                             ; preds = %3235
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 667, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_testSecretGenerator) #28
  unreachable

3240:                                             ; preds = %3235
  %3241 = zext nneg i32 %3237 to i64
  %3242 = icmp samesign ult i32 %3237, 136
  br i1 %3242, label %3321, label %3243

3243:                                             ; preds = %3240
  %3244 = icmp eq i32 %3232, 0
  %3245 = select i1 %3244, i32 192, i32 %3232
  %3246 = zext nneg i32 %3245 to i64
  %3247 = select i1 %3244, ptr @XXH3_kSecret, ptr %7
  br label %3248

3248:                                             ; preds = %3248, %3243
  %3249 = phi i64 [ 0, %3243 ], [ %3253, %3248 ]
  %3250 = sub nuw nsw i64 %3241, %3249
  %3251 = call i64 @llvm.umin.i64(i64 %3250, i64 %3246)
  %3252 = getelementptr inbounds nuw i8, ptr %1, i64 %3249
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3252, ptr nonnull align 16 %3247, i64 %3251, i1 false)
  %3253 = add nuw nsw i64 %3251, %3249
  %3254 = icmp samesign ult i64 %3253, %3241
  br i1 %3254, label %3248, label %3255, !llvm.loop !68

3255:                                             ; preds = %3248
  %3256 = call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef nonnull readonly %3247, i64 noundef range(i64 0, 4294967296) %3246, i64 noundef 0) #33
  %3257 = extractvalue { i64, i64 } %3256, 0
  %3258 = extractvalue { i64, i64 } %3256, 1
  %3259 = call noundef i64 @llvm.bswap.i64(i64 %3257)
  %3260 = lshr i64 %3241, 4
  %3261 = call noundef i64 @llvm.bswap.i64(i64 %3258)
  %3262 = call i64 @llvm.umax.i64(i64 %3260, i64 1)
  %3263 = xor i64 %3261, %3259
  br label %3264

3264:                                             ; preds = %3264, %3255
  %3265 = phi i64 [ 0, %3255 ], [ %3306, %3264 ]
  %3266 = sub nuw nsw i64 6455697860950631241, %3265
  %3267 = add nuw nsw i64 %3265, -4466874330221494952
  %3268 = xor i64 %3266, %3263
  %3269 = zext i64 %3268 to i128
  %3270 = mul nuw i128 %3269, 11400714785074694791
  %3271 = trunc i128 %3270 to i64
  %3272 = lshr i128 %3270, 64
  %3273 = trunc nuw i128 %3272 to i64
  %3274 = add i64 %3271, 270215977642229760
  %3275 = xor i64 %3267, %3259
  %3276 = and i64 %3275, 4294967295
  %3277 = mul nuw i64 %3276, 2246822518
  %3278 = add i64 %3277, %3275
  %3279 = add i64 %3278, %3273
  %3280 = call noundef i64 @llvm.bswap.i64(i64 %3279)
  %3281 = xor i64 %3280, %3274
  %3282 = zext i64 %3281 to i128
  %3283 = mul nuw i128 %3282, 14029467366897019727
  %3284 = trunc i128 %3283 to i64
  %3285 = lshr i128 %3283, 64
  %3286 = trunc nuw i128 %3285 to i64
  %3287 = mul i64 %3279, -4417276706812531889
  %3288 = add i64 %3287, %3286
  %3289 = lshr i64 %3284, 37
  %3290 = xor i64 %3289, %3284
  %3291 = mul i64 %3290, 1609587791953885689
  %3292 = lshr i64 %3291, 32
  %3293 = lshr i64 %3288, 37
  %3294 = xor i64 %3293, %3288
  %3295 = mul i64 %3294, 1609587791953885689
  %3296 = lshr i64 %3295, 32
  %3297 = shl nuw nsw i64 %3265, 4
  %3298 = getelementptr inbounds nuw i8, ptr %1, i64 %3297
  %3299 = load i64, ptr %3298, align 16
  %3300 = xor i64 %3299, %3292
  %3301 = xor i64 %3300, %3291
  store i64 %3301, ptr %3298, align 16
  %3302 = getelementptr inbounds nuw i8, ptr %3298, i64 8
  %3303 = load i64, ptr %3302, align 8
  %3304 = xor i64 %3303, %3296
  %3305 = xor i64 %3304, %3295
  store i64 %3305, ptr %3302, align 8
  %3306 = add nuw nsw i64 %3265, 1
  %3307 = icmp eq i64 %3306, %3262
  br i1 %3307, label %3308, label %3264, !llvm.loop !69

3308:                                             ; preds = %3264
  %3309 = getelementptr inbounds nuw i8, ptr %1, i64 %3241
  %3310 = getelementptr inbounds i8, ptr %3309, i64 -16
  %3311 = load i64, ptr %3310, align 1
  %3312 = xor i64 %3311, %3257
  store i64 %3312, ptr %3310, align 1
  %3313 = getelementptr inbounds i8, ptr %3309, i64 -8
  %3314 = load i64, ptr %3313, align 1
  %3315 = xor i64 %3314, %3258
  store i64 %3315, ptr %3313, align 1
  %3316 = load i8, ptr %1, align 16
  %3317 = load i8, ptr %2965, align 2
  %3318 = load i8, ptr %2966, align 1
  %3319 = load i8, ptr %2967, align 1
  %3320 = load i8, ptr %2968, align 1
  br label %3321

3321:                                             ; preds = %3308, %3240
  %3322 = phi i8 [ 0, %3240 ], [ %3320, %3308 ]
  %3323 = phi i8 [ 0, %3240 ], [ %3319, %3308 ]
  %3324 = phi i8 [ 0, %3240 ], [ %3318, %3308 ]
  %3325 = phi i8 [ 0, %3240 ], [ %3317, %3308 ]
  %3326 = phi i8 [ 0, %3240 ], [ %3316, %3308 ]
  store i8 %3326, ptr %2, align 1
  store i8 %3325, ptr %2969, align 1
  store i8 %3324, ptr %2970, align 1
  store i8 %3323, ptr %2971, align 1
  store i8 %3322, ptr %2972, align 1
  %3327 = getelementptr inbounds nuw i8, ptr %3231, i64 8
  %3328 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %2, ptr noundef nonnull readonly dereferenceable(5) %3327, i64 5)
  %3329 = icmp eq i32 %3328, 0
  br i1 %3329, label %3352, label %3330

3330:                                             ; preds = %3321
  %3331 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.22, i32 noundef %3230) #29
  %3332 = zext i8 %3326 to i32
  %3333 = zext i8 %3325 to i32
  %3334 = zext i8 %3324 to i32
  %3335 = zext i8 %3323 to i32
  %3336 = zext i8 %3322 to i32
  %3337 = load i8, ptr %3327, align 4
  %3338 = zext i8 %3337 to i32
  %3339 = getelementptr inbounds nuw i8, ptr %3231, i64 9
  %3340 = load i8, ptr %3339, align 1
  %3341 = zext i8 %3340 to i32
  %3342 = getelementptr inbounds nuw i8, ptr %3231, i64 10
  %3343 = load i8, ptr %3342, align 2
  %3344 = zext i8 %3343 to i32
  %3345 = getelementptr inbounds nuw i8, ptr %3231, i64 11
  %3346 = load i8, ptr %3345, align 1
  %3347 = zext i8 %3346 to i32
  %3348 = getelementptr inbounds nuw i8, ptr %3231, i64 12
  %3349 = load i8, ptr %3348, align 4
  %3350 = zext i8 %3349 to i32
  %3351 = call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.23, i32 noundef %3332, i32 noundef %3333, i32 noundef %3334, i32 noundef %3335, i32 noundef %3336, i32 noundef %3338, i32 noundef %3341, i32 noundef %3344, i32 noundef %3347, i32 noundef %3350) #29
  call void @exit(i32 noundef 1) #32
  unreachable

3352:                                             ; preds = %3321
  %3353 = add nsw i32 %3230, 1
  store i32 %3353, ptr @XSUM_testSecretGenerator.nbTests, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(i64 9867, ptr nonnull %1) #29
  %3354 = add nuw nsw i64 %3229, 1
  %3355 = icmp eq i64 %3354, 4
  br i1 %3355, label %3356, label %3228, !llvm.loop !70

3356:                                             ; preds = %3352
  %3357 = call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #29
  %3358 = call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 3, ptr noundef nonnull @.str.5) #29
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

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH64_digest(ptr nocapture noundef nonnull readonly %0) unnamed_addr #11 {
  %2 = load i64, ptr %0, align 8
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

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
  %23 = xor i64 %19, %22
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = mul i64 %9, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %25, %28
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = mul i64 %13, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %31, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = mul i64 %17, -4417276706812531889
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  br label %48

44:                                               ; preds = %1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = and i64 %2, 31
  %53 = icmp samesign ugt i64 %52, 7
  br i1 %53, label %54, label %128

54:                                               ; preds = %48
  %55 = add nsw i64 %52, -8
  %56 = lshr i64 %55, 3
  %57 = add nuw nsw i64 %56, 1
  %58 = and i64 %57, 3
  %59 = and i64 %55, 24
  %60 = icmp eq i64 %59, 24
  br i1 %60, label %78, label %61

61:                                               ; preds = %54, %61
  %62 = phi i64 [ %74, %61 ], [ %50, %54 ]
  %63 = phi ptr [ %70, %61 ], [ %51, %54 ]
  %64 = phi i64 [ %75, %61 ], [ %52, %54 ]
  %65 = phi i64 [ %76, %61 ], [ 0, %54 ]
  %66 = load i64, ptr %63, align 8
  %67 = mul i64 %66, -4417276706812531889
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %71 = xor i64 %69, %62
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 27)
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  %75 = add nsw i64 %64, -8
  %76 = add i64 %65, 1
  %77 = icmp eq i64 %76, %58
  br i1 %77, label %78, label %61, !llvm.loop !71

78:                                               ; preds = %61, %54
  %79 = phi i64 [ %50, %54 ], [ %74, %61 ]
  %80 = phi ptr [ %51, %54 ], [ %70, %61 ]
  %81 = phi i64 [ %52, %54 ], [ %75, %61 ]
  %82 = phi ptr [ poison, %54 ], [ %70, %61 ]
  %83 = phi i64 [ poison, %54 ], [ %74, %61 ]
  %84 = phi i64 [ poison, %54 ], [ %75, %61 ]
  %85 = icmp ult i64 %55, 24
  br i1 %85, label %128, label %86

86:                                               ; preds = %78, %86
  %87 = phi i64 [ %125, %86 ], [ %79, %78 ]
  %88 = phi ptr [ %121, %86 ], [ %80, %78 ]
  %89 = phi i64 [ %126, %86 ], [ %81, %78 ]
  %90 = load i64, ptr %88, align 8
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %95 = xor i64 %93, %87
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = load i64, ptr %94, align 8
  %100 = mul i64 %99, -4417276706812531889
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %104 = xor i64 %102, %98
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 27)
  %106 = mul i64 %105, -7046029288634856825
  %107 = add i64 %106, -8796714831421723037
  %108 = load i64, ptr %103, align 8
  %109 = mul i64 %108, -4417276706812531889
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %113 = xor i64 %111, %107
  %114 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 27)
  %115 = mul i64 %114, -7046029288634856825
  %116 = add i64 %115, -8796714831421723037
  %117 = load i64, ptr %112, align 8
  %118 = mul i64 %117, -4417276706812531889
  %119 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 31)
  %120 = mul i64 %119, -7046029288634856825
  %121 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %122 = xor i64 %120, %116
  %123 = tail call i64 @llvm.fshl.i64(i64 %122, i64 %122, i64 27)
  %124 = mul i64 %123, -7046029288634856825
  %125 = add i64 %124, -8796714831421723037
  %126 = add nsw i64 %89, -32
  %127 = icmp ugt i64 %126, 7
  br i1 %127, label %86, label %128, !llvm.loop !38

128:                                              ; preds = %78, %86, %48
  %129 = phi i64 [ %52, %48 ], [ %84, %78 ], [ %126, %86 ]
  %130 = phi ptr [ %51, %48 ], [ %82, %78 ], [ %121, %86 ]
  %131 = phi i64 [ %50, %48 ], [ %83, %78 ], [ %125, %86 ]
  %132 = icmp samesign ugt i64 %129, 3
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, ptr %130, align 4
  %135 = zext i32 %134 to i64
  %136 = mul i64 %135, -7046029288634856825
  %137 = xor i64 %136, %131
  %138 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %139 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 23)
  %140 = mul i64 %139, -4417276706812531889
  %141 = add i64 %140, 1609587929392839161
  %142 = add nsw i64 %129, -4
  br label %143

143:                                              ; preds = %133, %128
  %144 = phi i64 [ %142, %133 ], [ %129, %128 ]
  %145 = phi ptr [ %138, %133 ], [ %130, %128 ]
  %146 = phi i64 [ %141, %133 ], [ %131, %128 ]
  %147 = icmp eq i64 %144, 0
  br i1 %147, label %234, label %148

148:                                              ; preds = %143
  %149 = and i64 %144, 7
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %148, %151
  %152 = phi i64 [ %162, %151 ], [ %146, %148 ]
  %153 = phi ptr [ %156, %151 ], [ %145, %148 ]
  %154 = phi i64 [ %163, %151 ], [ %144, %148 ]
  %155 = phi i64 [ %164, %151 ], [ 0, %148 ]
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 1
  %157 = load i8, ptr %153, align 1
  %158 = zext i8 %157 to i64
  %159 = mul i64 %158, 2870177450012600261
  %160 = xor i64 %159, %152
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 11)
  %162 = mul i64 %161, -7046029288634856825
  %163 = add nsw i64 %154, -1
  %164 = add i64 %155, 1
  %165 = icmp eq i64 %164, %149
  br i1 %165, label %166, label %151, !llvm.loop !72

166:                                              ; preds = %151, %148
  %167 = phi i64 [ poison, %148 ], [ %162, %151 ]
  %168 = phi i64 [ %146, %148 ], [ %162, %151 ]
  %169 = phi ptr [ %145, %148 ], [ %156, %151 ]
  %170 = phi i64 [ %144, %148 ], [ %163, %151 ]
  %171 = icmp ult i64 %144, 8
  br i1 %171, label %234, label %172

172:                                              ; preds = %166, %172
  %173 = phi i64 [ %231, %172 ], [ %168, %166 ]
  %174 = phi ptr [ %225, %172 ], [ %169, %166 ]
  %175 = phi i64 [ %232, %172 ], [ %170, %166 ]
  %176 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %177 = load i8, ptr %174, align 1
  %178 = zext i8 %177 to i64
  %179 = mul i64 %178, 2870177450012600261
  %180 = xor i64 %179, %173
  %181 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 11)
  %182 = mul i64 %181, -7046029288634856825
  %183 = getelementptr inbounds nuw i8, ptr %174, i64 2
  %184 = load i8, ptr %176, align 1
  %185 = zext i8 %184 to i64
  %186 = mul i64 %185, 2870177450012600261
  %187 = xor i64 %186, %182
  %188 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 11)
  %189 = mul i64 %188, -7046029288634856825
  %190 = getelementptr inbounds nuw i8, ptr %174, i64 3
  %191 = load i8, ptr %183, align 1
  %192 = zext i8 %191 to i64
  %193 = mul i64 %192, 2870177450012600261
  %194 = xor i64 %193, %189
  %195 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 11)
  %196 = mul i64 %195, -7046029288634856825
  %197 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %198 = load i8, ptr %190, align 1
  %199 = zext i8 %198 to i64
  %200 = mul i64 %199, 2870177450012600261
  %201 = xor i64 %200, %196
  %202 = tail call i64 @llvm.fshl.i64(i64 %201, i64 %201, i64 11)
  %203 = mul i64 %202, -7046029288634856825
  %204 = getelementptr inbounds nuw i8, ptr %174, i64 5
  %205 = load i8, ptr %197, align 1
  %206 = zext i8 %205 to i64
  %207 = mul i64 %206, 2870177450012600261
  %208 = xor i64 %207, %203
  %209 = tail call i64 @llvm.fshl.i64(i64 %208, i64 %208, i64 11)
  %210 = mul i64 %209, -7046029288634856825
  %211 = getelementptr inbounds nuw i8, ptr %174, i64 6
  %212 = load i8, ptr %204, align 1
  %213 = zext i8 %212 to i64
  %214 = mul i64 %213, 2870177450012600261
  %215 = xor i64 %214, %210
  %216 = tail call i64 @llvm.fshl.i64(i64 %215, i64 %215, i64 11)
  %217 = mul i64 %216, -7046029288634856825
  %218 = getelementptr inbounds nuw i8, ptr %174, i64 7
  %219 = load i8, ptr %211, align 1
  %220 = zext i8 %219 to i64
  %221 = mul i64 %220, 2870177450012600261
  %222 = xor i64 %221, %217
  %223 = tail call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 11)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %174, i64 8
  %226 = load i8, ptr %218, align 1
  %227 = zext i8 %226 to i64
  %228 = mul i64 %227, 2870177450012600261
  %229 = xor i64 %228, %224
  %230 = tail call i64 @llvm.fshl.i64(i64 %229, i64 %229, i64 11)
  %231 = mul i64 %230, -7046029288634856825
  %232 = add nsw i64 %175, -8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %172, !llvm.loop !40

234:                                              ; preds = %166, %172, %143
  %235 = phi i64 [ %146, %143 ], [ %167, %166 ], [ %231, %172 ]
  %236 = lshr i64 %235, 33
  %237 = xor i64 %236, %235
  %238 = mul i64 %237, -4417276706812531889
  %239 = lshr i64 %238, 29
  %240 = xor i64 %239, %238
  %241 = mul i64 %240, 1609587929392839161
  %242 = lshr i64 %241, 32
  %243 = xor i64 %242, %241
  ret i64 %243
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
  br i1 %387, label %388, label %293, !llvm.loop !73

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
  br i1 %422, label %423, label %281, !llvm.loop !74

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
  br i1 %535, label %536, label %441, !llvm.loop !73

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
  %629 = load i64, ptr %627, align 1, !alias.scope !75, !noalias !80
  %630 = xor i64 %629, %562
  %631 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %632 = load i64, ptr %631, align 1, !alias.scope !75, !noalias !80
  %633 = xor i64 %632, %566
  %634 = zext i64 %630 to i128
  %635 = zext i64 %633 to i128
  %636 = mul nuw i128 %635, %634
  %637 = lshr i128 %636, 64
  %638 = xor i128 %637, %636
  %639 = trunc i128 %638 to i64
  %640 = add i64 %628, %639
  %641 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %642 = load i64, ptr %641, align 1, !alias.scope !75, !noalias !80
  %643 = xor i64 %642, %582
  %644 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %645 = load i64, ptr %644, align 1, !alias.scope !75, !noalias !80
  %646 = xor i64 %645, %586
  %647 = zext i64 %643 to i128
  %648 = zext i64 %646 to i128
  %649 = mul nuw i128 %648, %647
  %650 = lshr i128 %649, 64
  %651 = xor i128 %650, %649
  %652 = trunc i128 %651 to i64
  %653 = add i64 %640, %652
  %654 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %655 = load i64, ptr %654, align 1, !alias.scope !75, !noalias !80
  %656 = xor i64 %655, %602
  %657 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %658 = load i64, ptr %657, align 1, !alias.scope !75, !noalias !80
  %659 = xor i64 %658, %606
  %660 = zext i64 %656 to i128
  %661 = zext i64 %659 to i128
  %662 = mul nuw i128 %661, %660
  %663 = lshr i128 %662, 64
  %664 = xor i128 %663, %662
  %665 = trunc i128 %664 to i64
  %666 = add i64 %653, %665
  %667 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %668 = load i64, ptr %667, align 1, !alias.scope !75, !noalias !80
  %669 = xor i64 %668, %622
  %670 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %671 = load i64, ptr %670, align 1, !alias.scope !75, !noalias !80
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
  tail call void @llvm.prefetch.p0(ptr nonnull %88, i32 0, i32 3, i32 1), !noalias !83
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
  br i1 %170, label %171, label %76, !llvm.loop !73

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
  br i1 %215, label %216, label %62, !llvm.loop !86

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
  tail call void @llvm.prefetch.p0(ptr nonnull %241, i32 0, i32 3, i32 1), !noalias !83
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
  br i1 %323, label %324, label %229, !llvm.loop !73

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
  %439 = load i64, ptr %437, align 1, !alias.scope !87, !noalias !92
  %440 = xor i64 %439, %372
  %441 = getelementptr inbounds nuw i8, ptr %7, i64 19
  %442 = load i64, ptr %441, align 1, !alias.scope !87, !noalias !92
  %443 = xor i64 %442, %376
  %444 = zext i64 %440 to i128
  %445 = zext i64 %443 to i128
  %446 = mul nuw i128 %445, %444
  %447 = lshr i128 %446, 64
  %448 = xor i128 %447, %446
  %449 = trunc i128 %448 to i64
  %450 = add i64 %438, %449
  %451 = getelementptr inbounds nuw i8, ptr %7, i64 27
  %452 = load i64, ptr %451, align 1, !alias.scope !87, !noalias !92
  %453 = xor i64 %452, %392
  %454 = getelementptr inbounds nuw i8, ptr %7, i64 35
  %455 = load i64, ptr %454, align 1, !alias.scope !87, !noalias !92
  %456 = xor i64 %455, %396
  %457 = zext i64 %453 to i128
  %458 = zext i64 %456 to i128
  %459 = mul nuw i128 %458, %457
  %460 = lshr i128 %459, 64
  %461 = xor i128 %460, %459
  %462 = trunc i128 %461 to i64
  %463 = add i64 %450, %462
  %464 = getelementptr inbounds nuw i8, ptr %7, i64 43
  %465 = load i64, ptr %464, align 1, !alias.scope !87, !noalias !92
  %466 = xor i64 %465, %412
  %467 = getelementptr inbounds nuw i8, ptr %7, i64 51
  %468 = load i64, ptr %467, align 1, !alias.scope !87, !noalias !92
  %469 = xor i64 %468, %416
  %470 = zext i64 %466 to i128
  %471 = zext i64 %469 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %463, %475
  %477 = getelementptr inbounds nuw i8, ptr %7, i64 59
  %478 = load i64, ptr %477, align 1, !alias.scope !87, !noalias !92
  %479 = xor i64 %478, %432
  %480 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %481 = load i64, ptr %480, align 1, !alias.scope !87, !noalias !92
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
  br i1 %117, label %118, label %23, !llvm.loop !73

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
  br i1 %152, label %153, label %11, !llvm.loop !74

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
  br i1 %262, label %263, label %168, !llvm.loop !73

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
  br i1 %537, label %538, label %443, !llvm.loop !73

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
  br i1 %572, label %573, label %431, !llvm.loop !74

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
  br i1 %682, label %683, label %588, !llvm.loop !73

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
  %775 = load i64, ptr %773, align 1, !alias.scope !95, !noalias !100
  %776 = xor i64 %775, %708
  %777 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %778 = load i64, ptr %777, align 1, !alias.scope !95, !noalias !100
  %779 = xor i64 %778, %712
  %780 = zext i64 %776 to i128
  %781 = zext i64 %779 to i128
  %782 = mul nuw i128 %781, %780
  %783 = lshr i128 %782, 64
  %784 = xor i128 %783, %782
  %785 = trunc i128 %784 to i64
  %786 = add i64 %774, %785
  %787 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %788 = load i64, ptr %787, align 1, !alias.scope !95, !noalias !100
  %789 = xor i64 %788, %728
  %790 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %791 = load i64, ptr %790, align 1, !alias.scope !95, !noalias !100
  %792 = xor i64 %791, %732
  %793 = zext i64 %789 to i128
  %794 = zext i64 %792 to i128
  %795 = mul nuw i128 %794, %793
  %796 = lshr i128 %795, 64
  %797 = xor i128 %796, %795
  %798 = trunc i128 %797 to i64
  %799 = add i64 %786, %798
  %800 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %801 = load i64, ptr %800, align 1, !alias.scope !95, !noalias !100
  %802 = xor i64 %801, %748
  %803 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %804 = load i64, ptr %803, align 1, !alias.scope !95, !noalias !100
  %805 = xor i64 %804, %752
  %806 = zext i64 %802 to i128
  %807 = zext i64 %805 to i128
  %808 = mul nuw i128 %807, %806
  %809 = lshr i128 %808, 64
  %810 = xor i128 %809, %808
  %811 = trunc i128 %810 to i64
  %812 = add i64 %799, %811
  %813 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %814 = load i64, ptr %813, align 1, !alias.scope !95, !noalias !100
  %815 = xor i64 %814, %768
  %816 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %817 = load i64, ptr %816, align 1, !alias.scope !95, !noalias !100
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
  %189 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %187) #31, !srcloc !103
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
  br i1 %212, label %213, label %185, !llvm.loop !104

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
  br i1 %113, label %114, label %19, !llvm.loop !73

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
  br i1 %148, label %149, label %7, !llvm.loop !74

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
  br i1 %258, label %259, label %164, !llvm.loop !73

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
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
  %10 = load i64, ptr %9, align 16, !alias.scope !108, !noalias !105
  %11 = add i64 %10, %2
  store i64 %11, ptr %9, align 16, !alias.scope !108, !noalias !105
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %13 = load i32, ptr %12, align 64, !alias.scope !108, !noalias !105
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %1, i64 %2, i1 false), !alias.scope !110
  %22 = trunc nuw nsw i64 %2 to i32
  %23 = load i32, ptr %12, align 64, !alias.scope !108, !noalias !105
  %24 = add i32 %23, %22
  store i32 %24, ptr %12, align 64, !alias.scope !108, !noalias !105
  br label %756

25:                                               ; preds = %7
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %28 = load ptr, ptr %27, align 8, !alias.scope !108, !noalias !105
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %31 = select i1 %29, ptr %30, ptr %28
  %32 = icmp eq i32 %13, 0
  br i1 %32, label %389, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %35 = zext nneg i32 %13 to i64
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr nonnull align 1 %1, i64 %16, i1 false), !alias.scope !110
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %40 = load i64, ptr %39, align 8, !alias.scope !108, !noalias !105
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %42 = load i64, ptr %41, align 32, !alias.scope !108, !noalias !105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %43 = load i64, ptr %38, align 8, !alias.scope !114, !noalias !116
  %44 = shl i64 %43, 3
  %45 = getelementptr inbounds nuw i8, ptr %31, i64 %44
  %46 = sub i64 %40, %43
  %47 = icmp ugt i64 %46, 4
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %47, label %49, label %67

49:                                               ; preds = %33
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %51 = load i64, ptr %50, align 8, !alias.scope !119, !noalias !122
  %52 = load i64, ptr %48, align 8, !alias.scope !119, !noalias !122
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = load i64, ptr %53, align 8, !alias.scope !119, !noalias !122
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %56 = load i64, ptr %55, align 8, !alias.scope !119, !noalias !122
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %58 = load i64, ptr %57, align 8, !alias.scope !119, !noalias !122
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %60 = load i64, ptr %59, align 8, !alias.scope !119, !noalias !122
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %62 = load i64, ptr %61, align 8, !alias.scope !119, !noalias !122
  %63 = load i64, ptr %0, align 8, !alias.scope !119, !noalias !122
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
  %103 = load i64, ptr %0, align 8, !alias.scope !125, !noalias !128
  %104 = load i64, ptr %75, align 8, !alias.scope !125, !noalias !128
  %105 = load i64, ptr %76, align 8, !alias.scope !125, !noalias !128
  %106 = load i64, ptr %77, align 8, !alias.scope !125, !noalias !128
  %107 = load i64, ptr %78, align 8, !alias.scope !125, !noalias !128
  %108 = load i64, ptr %79, align 8, !alias.scope !125, !noalias !128
  %109 = load i64, ptr %80, align 8, !alias.scope !125, !noalias !128
  %110 = load i64, ptr %81, align 8, !alias.scope !125, !noalias !128
  br label %215

111:                                              ; preds = %96
  %112 = load i64, ptr %69, align 8, !alias.scope !130, !noalias !133
  %113 = load i64, ptr %48, align 8, !alias.scope !130, !noalias !133
  %114 = load i64, ptr %70, align 8, !alias.scope !130, !noalias !133
  %115 = load i64, ptr %71, align 8, !alias.scope !130, !noalias !133
  %116 = load i64, ptr %72, align 8, !alias.scope !130, !noalias !133
  %117 = load i64, ptr %73, align 8, !alias.scope !130, !noalias !133
  %118 = load i64, ptr %74, align 8, !alias.scope !130, !noalias !133
  %119 = load i64, ptr %0, align 8, !alias.scope !130, !noalias !133
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
  tail call void @llvm.prefetch.p0(ptr nonnull %132, i32 0, i32 3, i32 1), !noalias !114
  %133 = shl i64 %129, 3
  %134 = getelementptr inbounds nuw i8, ptr %99, i64 %133
  %135 = load i64, ptr %131, align 1
  %136 = load i64, ptr %134, align 1
  %137 = xor i64 %136, %135
  %138 = add i64 %122, %135
  store i64 %138, ptr %74, align 8, !alias.scope !130, !noalias !133
  %139 = lshr i64 %137, 32
  %140 = and i64 %137, 4294967295
  %141 = mul nuw i64 %140, %139
  %142 = add i64 %141, %121
  store i64 %142, ptr %0, align 8, !alias.scope !130, !noalias !133
  %143 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %144 = load i64, ptr %143, align 1
  %145 = getelementptr inbounds nuw i8, ptr %134, i64 8
  %146 = load i64, ptr %145, align 1
  %147 = xor i64 %146, %144
  %148 = add i64 %142, %144
  store i64 %148, ptr %0, align 8, !alias.scope !130, !noalias !133
  %149 = lshr i64 %147, 32
  %150 = and i64 %147, 4294967295
  %151 = mul nuw i64 %150, %149
  %152 = add i64 %151, %138
  store i64 %152, ptr %74, align 8, !alias.scope !130, !noalias !133
  %153 = getelementptr inbounds nuw i8, ptr %131, i64 16
  %154 = load i64, ptr %153, align 1
  %155 = getelementptr inbounds nuw i8, ptr %134, i64 16
  %156 = load i64, ptr %155, align 1
  %157 = xor i64 %156, %154
  %158 = add i64 %128, %154
  store i64 %158, ptr %69, align 8, !alias.scope !130, !noalias !133
  %159 = lshr i64 %157, 32
  %160 = and i64 %157, 4294967295
  %161 = mul nuw i64 %160, %159
  %162 = add i64 %161, %127
  store i64 %162, ptr %48, align 8, !alias.scope !130, !noalias !133
  %163 = getelementptr inbounds nuw i8, ptr %131, i64 24
  %164 = load i64, ptr %163, align 1
  %165 = getelementptr inbounds nuw i8, ptr %134, i64 24
  %166 = load i64, ptr %165, align 1
  %167 = xor i64 %166, %164
  %168 = add i64 %162, %164
  store i64 %168, ptr %48, align 8, !alias.scope !130, !noalias !133
  %169 = lshr i64 %167, 32
  %170 = and i64 %167, 4294967295
  %171 = mul nuw i64 %170, %169
  %172 = add i64 %171, %158
  store i64 %172, ptr %69, align 8, !alias.scope !130, !noalias !133
  %173 = getelementptr inbounds nuw i8, ptr %131, i64 32
  %174 = load i64, ptr %173, align 1
  %175 = getelementptr inbounds nuw i8, ptr %134, i64 32
  %176 = load i64, ptr %175, align 1
  %177 = xor i64 %176, %174
  %178 = add i64 %126, %174
  store i64 %178, ptr %70, align 8, !alias.scope !130, !noalias !133
  %179 = lshr i64 %177, 32
  %180 = and i64 %177, 4294967295
  %181 = mul nuw i64 %180, %179
  %182 = add i64 %181, %125
  store i64 %182, ptr %71, align 8, !alias.scope !130, !noalias !133
  %183 = getelementptr inbounds nuw i8, ptr %131, i64 40
  %184 = load i64, ptr %183, align 1
  %185 = getelementptr inbounds nuw i8, ptr %134, i64 40
  %186 = load i64, ptr %185, align 1
  %187 = xor i64 %186, %184
  %188 = add i64 %182, %184
  store i64 %188, ptr %71, align 8, !alias.scope !130, !noalias !133
  %189 = lshr i64 %187, 32
  %190 = and i64 %187, 4294967295
  %191 = mul nuw i64 %190, %189
  %192 = add i64 %191, %178
  store i64 %192, ptr %70, align 8, !alias.scope !130, !noalias !133
  %193 = getelementptr inbounds nuw i8, ptr %131, i64 48
  %194 = load i64, ptr %193, align 1
  %195 = getelementptr inbounds nuw i8, ptr %134, i64 48
  %196 = load i64, ptr %195, align 1
  %197 = xor i64 %196, %194
  %198 = add i64 %124, %194
  store i64 %198, ptr %72, align 8, !alias.scope !130, !noalias !133
  %199 = lshr i64 %197, 32
  %200 = and i64 %197, 4294967295
  %201 = mul nuw i64 %200, %199
  %202 = add i64 %201, %123
  store i64 %202, ptr %73, align 8, !alias.scope !130, !noalias !133
  %203 = getelementptr inbounds nuw i8, ptr %131, i64 56
  %204 = load i64, ptr %203, align 1
  %205 = getelementptr inbounds nuw i8, ptr %134, i64 56
  %206 = load i64, ptr %205, align 1
  %207 = xor i64 %206, %204
  %208 = add i64 %202, %204
  store i64 %208, ptr %73, align 8, !alias.scope !130, !noalias !133
  %209 = lshr i64 %207, 32
  %210 = and i64 %207, 4294967295
  %211 = mul nuw i64 %210, %209
  %212 = add i64 %211, %198
  store i64 %212, ptr %72, align 8, !alias.scope !130, !noalias !133
  %213 = add nuw i64 %129, 1
  %214 = icmp eq i64 %213, %100
  br i1 %214, label %215, label %120, !llvm.loop !73

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
  store i64 %228, ptr %0, align 8, !alias.scope !125, !noalias !128
  %229 = load i64, ptr %82, align 1
  %230 = lshr i64 %222, 47
  %231 = xor i64 %229, %230
  %232 = xor i64 %231, %222
  %233 = mul i64 %232, 2654435761
  store i64 %233, ptr %83, align 8, !alias.scope !125, !noalias !128
  %234 = load i64, ptr %84, align 1
  %235 = lshr i64 %221, 47
  %236 = xor i64 %234, %235
  %237 = xor i64 %236, %221
  %238 = mul i64 %237, 2654435761
  store i64 %238, ptr %85, align 8, !alias.scope !125, !noalias !128
  %239 = load i64, ptr %86, align 1
  %240 = lshr i64 %220, 47
  %241 = xor i64 %239, %240
  %242 = xor i64 %241, %220
  %243 = mul i64 %242, 2654435761
  store i64 %243, ptr %87, align 8, !alias.scope !125, !noalias !128
  %244 = load i64, ptr %88, align 1
  %245 = lshr i64 %219, 47
  %246 = xor i64 %244, %245
  %247 = xor i64 %246, %219
  %248 = mul i64 %247, 2654435761
  store i64 %248, ptr %89, align 8, !alias.scope !125, !noalias !128
  %249 = load i64, ptr %90, align 1
  %250 = lshr i64 %218, 47
  %251 = xor i64 %249, %250
  %252 = xor i64 %251, %218
  %253 = mul i64 %252, 2654435761
  store i64 %253, ptr %91, align 8, !alias.scope !125, !noalias !128
  %254 = load i64, ptr %92, align 1
  %255 = lshr i64 %217, 47
  %256 = xor i64 %254, %255
  %257 = xor i64 %256, %217
  %258 = mul i64 %257, 2654435761
  store i64 %258, ptr %93, align 8, !alias.scope !125, !noalias !128
  %259 = load i64, ptr %94, align 1
  %260 = lshr i64 %216, 47
  %261 = xor i64 %259, %260
  %262 = xor i64 %261, %216
  %263 = mul i64 %262, 2654435761
  store i64 %263, ptr %95, align 8, !alias.scope !125, !noalias !128
  %264 = shl i64 %100, 6
  %265 = getelementptr inbounds nuw i8, ptr %98, i64 %264
  %266 = sub i64 %97, %100
  %267 = icmp ult i64 %266, %40
  br i1 %267, label %268, label %96, !llvm.loop !86

268:                                              ; preds = %215
  store i64 0, ptr %38, align 8, !alias.scope !114, !noalias !116
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
  tail call void @llvm.prefetch.p0(ptr nonnull %302, i32 0, i32 3, i32 1), !noalias !114
  %303 = shl i64 %299, 3
  %304 = getelementptr inbounds nuw i8, ptr %280, i64 %303
  %305 = load i64, ptr %301, align 1
  %306 = load i64, ptr %304, align 1
  %307 = xor i64 %306, %305
  %308 = add i64 %292, %305
  store i64 %308, ptr %289, align 8, !alias.scope !119, !noalias !122
  %309 = lshr i64 %307, 32
  %310 = and i64 %307, 4294967295
  %311 = mul nuw i64 %310, %309
  %312 = add i64 %311, %291
  store i64 %312, ptr %0, align 8, !alias.scope !119, !noalias !122
  %313 = getelementptr inbounds nuw i8, ptr %301, i64 8
  %314 = load i64, ptr %313, align 1
  %315 = getelementptr inbounds nuw i8, ptr %304, i64 8
  %316 = load i64, ptr %315, align 1
  %317 = xor i64 %316, %314
  %318 = add i64 %312, %314
  store i64 %318, ptr %0, align 8, !alias.scope !119, !noalias !122
  %319 = lshr i64 %317, 32
  %320 = and i64 %317, 4294967295
  %321 = mul nuw i64 %320, %319
  %322 = add i64 %321, %308
  store i64 %322, ptr %289, align 8, !alias.scope !119, !noalias !122
  %323 = getelementptr inbounds nuw i8, ptr %301, i64 16
  %324 = load i64, ptr %323, align 1
  %325 = getelementptr inbounds nuw i8, ptr %304, i64 16
  %326 = load i64, ptr %325, align 1
  %327 = xor i64 %326, %324
  %328 = add i64 %298, %324
  store i64 %328, ptr %283, align 8, !alias.scope !119, !noalias !122
  %329 = lshr i64 %327, 32
  %330 = and i64 %327, 4294967295
  %331 = mul nuw i64 %330, %329
  %332 = add i64 %331, %297
  store i64 %332, ptr %284, align 8, !alias.scope !119, !noalias !122
  %333 = getelementptr inbounds nuw i8, ptr %301, i64 24
  %334 = load i64, ptr %333, align 1
  %335 = getelementptr inbounds nuw i8, ptr %304, i64 24
  %336 = load i64, ptr %335, align 1
  %337 = xor i64 %336, %334
  %338 = add i64 %332, %334
  store i64 %338, ptr %284, align 8, !alias.scope !119, !noalias !122
  %339 = lshr i64 %337, 32
  %340 = and i64 %337, 4294967295
  %341 = mul nuw i64 %340, %339
  %342 = add i64 %341, %328
  store i64 %342, ptr %283, align 8, !alias.scope !119, !noalias !122
  %343 = getelementptr inbounds nuw i8, ptr %301, i64 32
  %344 = load i64, ptr %343, align 1
  %345 = getelementptr inbounds nuw i8, ptr %304, i64 32
  %346 = load i64, ptr %345, align 1
  %347 = xor i64 %346, %344
  %348 = add i64 %296, %344
  store i64 %348, ptr %285, align 8, !alias.scope !119, !noalias !122
  %349 = lshr i64 %347, 32
  %350 = and i64 %347, 4294967295
  %351 = mul nuw i64 %350, %349
  %352 = add i64 %351, %295
  store i64 %352, ptr %286, align 8, !alias.scope !119, !noalias !122
  %353 = getelementptr inbounds nuw i8, ptr %301, i64 40
  %354 = load i64, ptr %353, align 1
  %355 = getelementptr inbounds nuw i8, ptr %304, i64 40
  %356 = load i64, ptr %355, align 1
  %357 = xor i64 %356, %354
  %358 = add i64 %352, %354
  store i64 %358, ptr %286, align 8, !alias.scope !119, !noalias !122
  %359 = lshr i64 %357, 32
  %360 = and i64 %357, 4294967295
  %361 = mul nuw i64 %360, %359
  %362 = add i64 %361, %348
  store i64 %362, ptr %285, align 8, !alias.scope !119, !noalias !122
  %363 = getelementptr inbounds nuw i8, ptr %301, i64 48
  %364 = load i64, ptr %363, align 1
  %365 = getelementptr inbounds nuw i8, ptr %304, i64 48
  %366 = load i64, ptr %365, align 1
  %367 = xor i64 %366, %364
  %368 = add i64 %294, %364
  store i64 %368, ptr %287, align 8, !alias.scope !119, !noalias !122
  %369 = lshr i64 %367, 32
  %370 = and i64 %367, 4294967295
  %371 = mul nuw i64 %370, %369
  %372 = add i64 %371, %293
  store i64 %372, ptr %288, align 8, !alias.scope !119, !noalias !122
  %373 = getelementptr inbounds nuw i8, ptr %301, i64 56
  %374 = load i64, ptr %373, align 1
  %375 = getelementptr inbounds nuw i8, ptr %304, i64 56
  %376 = load i64, ptr %375, align 1
  %377 = xor i64 %376, %374
  %378 = add i64 %372, %374
  store i64 %378, ptr %288, align 8, !alias.scope !119, !noalias !122
  %379 = lshr i64 %377, 32
  %380 = and i64 %377, 4294967295
  %381 = mul nuw i64 %380, %379
  %382 = add i64 %381, %368
  store i64 %382, ptr %287, align 8, !alias.scope !119, !noalias !122
  %383 = add nuw i64 %299, 1
  %384 = icmp eq i64 %383, %282
  br i1 %384, label %385, label %290, !llvm.loop !73

385:                                              ; preds = %290
  %386 = load i64, ptr %38, align 8, !alias.scope !114, !noalias !116
  %387 = add i64 %386, %282
  store i64 %387, ptr %38, align 8, !alias.scope !114, !noalias !116
  br label %388

388:                                              ; preds = %268, %385
  store i32 0, ptr %12, align 64, !alias.scope !108, !noalias !105
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
  %403 = load i64, ptr %402, align 8, !alias.scope !108, !noalias !105
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %405 = load i64, ptr %404, align 32, !alias.scope !108, !noalias !105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %406 = load i64, ptr %401, align 8, !alias.scope !139, !noalias !141
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
  %450 = load i64, ptr %0, align 8, !alias.scope !136, !noalias !144
  br i1 %449, label %451, label %459

451:                                              ; preds = %444
  %452 = load i64, ptr %423, align 8, !alias.scope !145, !noalias !148
  %453 = load i64, ptr %424, align 8, !alias.scope !145, !noalias !148
  %454 = load i64, ptr %425, align 8, !alias.scope !145, !noalias !148
  %455 = load i64, ptr %426, align 8, !alias.scope !145, !noalias !148
  %456 = load i64, ptr %427, align 8, !alias.scope !145, !noalias !148
  %457 = load i64, ptr %428, align 8, !alias.scope !145, !noalias !148
  %458 = load i64, ptr %429, align 8, !alias.scope !145, !noalias !148
  br label %562

459:                                              ; preds = %444
  %460 = load i64, ptr %416, align 8, !alias.scope !150, !noalias !153
  %461 = load i64, ptr %417, align 8, !alias.scope !150, !noalias !153
  %462 = load i64, ptr %418, align 8, !alias.scope !150, !noalias !153
  %463 = load i64, ptr %419, align 8, !alias.scope !150, !noalias !153
  %464 = load i64, ptr %420, align 8, !alias.scope !150, !noalias !153
  %465 = load i64, ptr %421, align 8, !alias.scope !150, !noalias !153
  %466 = load i64, ptr %422, align 8, !alias.scope !150, !noalias !153
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
  tail call void @llvm.prefetch.p0(ptr nonnull %479, i32 0, i32 3, i32 1), !noalias !139
  %480 = shl i64 %476, 3
  %481 = getelementptr inbounds nuw i8, ptr %447, i64 %480
  %482 = load i64, ptr %478, align 1
  %483 = load i64, ptr %481, align 1
  %484 = xor i64 %483, %482
  %485 = add i64 %469, %482
  store i64 %485, ptr %422, align 8, !alias.scope !150, !noalias !153
  %486 = lshr i64 %484, 32
  %487 = and i64 %484, 4294967295
  %488 = mul nuw i64 %487, %486
  %489 = add i64 %488, %468
  store i64 %489, ptr %0, align 8, !alias.scope !150, !noalias !153
  %490 = getelementptr inbounds nuw i8, ptr %478, i64 8
  %491 = load i64, ptr %490, align 1
  %492 = getelementptr inbounds nuw i8, ptr %481, i64 8
  %493 = load i64, ptr %492, align 1
  %494 = xor i64 %493, %491
  %495 = add i64 %489, %491
  store i64 %495, ptr %0, align 8, !alias.scope !150, !noalias !153
  %496 = lshr i64 %494, 32
  %497 = and i64 %494, 4294967295
  %498 = mul nuw i64 %497, %496
  %499 = add i64 %498, %485
  store i64 %499, ptr %422, align 8, !alias.scope !150, !noalias !153
  %500 = getelementptr inbounds nuw i8, ptr %478, i64 16
  %501 = load i64, ptr %500, align 1
  %502 = getelementptr inbounds nuw i8, ptr %481, i64 16
  %503 = load i64, ptr %502, align 1
  %504 = xor i64 %503, %501
  %505 = add i64 %475, %501
  store i64 %505, ptr %416, align 8, !alias.scope !150, !noalias !153
  %506 = lshr i64 %504, 32
  %507 = and i64 %504, 4294967295
  %508 = mul nuw i64 %507, %506
  %509 = add i64 %508, %474
  store i64 %509, ptr %417, align 8, !alias.scope !150, !noalias !153
  %510 = getelementptr inbounds nuw i8, ptr %478, i64 24
  %511 = load i64, ptr %510, align 1
  %512 = getelementptr inbounds nuw i8, ptr %481, i64 24
  %513 = load i64, ptr %512, align 1
  %514 = xor i64 %513, %511
  %515 = add i64 %509, %511
  store i64 %515, ptr %417, align 8, !alias.scope !150, !noalias !153
  %516 = lshr i64 %514, 32
  %517 = and i64 %514, 4294967295
  %518 = mul nuw i64 %517, %516
  %519 = add i64 %518, %505
  store i64 %519, ptr %416, align 8, !alias.scope !150, !noalias !153
  %520 = getelementptr inbounds nuw i8, ptr %478, i64 32
  %521 = load i64, ptr %520, align 1
  %522 = getelementptr inbounds nuw i8, ptr %481, i64 32
  %523 = load i64, ptr %522, align 1
  %524 = xor i64 %523, %521
  %525 = add i64 %473, %521
  store i64 %525, ptr %418, align 8, !alias.scope !150, !noalias !153
  %526 = lshr i64 %524, 32
  %527 = and i64 %524, 4294967295
  %528 = mul nuw i64 %527, %526
  %529 = add i64 %528, %472
  store i64 %529, ptr %419, align 8, !alias.scope !150, !noalias !153
  %530 = getelementptr inbounds nuw i8, ptr %478, i64 40
  %531 = load i64, ptr %530, align 1
  %532 = getelementptr inbounds nuw i8, ptr %481, i64 40
  %533 = load i64, ptr %532, align 1
  %534 = xor i64 %533, %531
  %535 = add i64 %529, %531
  store i64 %535, ptr %419, align 8, !alias.scope !150, !noalias !153
  %536 = lshr i64 %534, 32
  %537 = and i64 %534, 4294967295
  %538 = mul nuw i64 %537, %536
  %539 = add i64 %538, %525
  store i64 %539, ptr %418, align 8, !alias.scope !150, !noalias !153
  %540 = getelementptr inbounds nuw i8, ptr %478, i64 48
  %541 = load i64, ptr %540, align 1
  %542 = getelementptr inbounds nuw i8, ptr %481, i64 48
  %543 = load i64, ptr %542, align 1
  %544 = xor i64 %543, %541
  %545 = add i64 %471, %541
  store i64 %545, ptr %420, align 8, !alias.scope !150, !noalias !153
  %546 = lshr i64 %544, 32
  %547 = and i64 %544, 4294967295
  %548 = mul nuw i64 %547, %546
  %549 = add i64 %548, %470
  store i64 %549, ptr %421, align 8, !alias.scope !150, !noalias !153
  %550 = getelementptr inbounds nuw i8, ptr %478, i64 56
  %551 = load i64, ptr %550, align 1
  %552 = getelementptr inbounds nuw i8, ptr %481, i64 56
  %553 = load i64, ptr %552, align 1
  %554 = xor i64 %553, %551
  %555 = add i64 %549, %551
  store i64 %555, ptr %421, align 8, !alias.scope !150, !noalias !153
  %556 = lshr i64 %554, 32
  %557 = and i64 %554, 4294967295
  %558 = mul nuw i64 %557, %556
  %559 = add i64 %558, %545
  store i64 %559, ptr %420, align 8, !alias.scope !150, !noalias !153
  %560 = add nuw i64 %476, 1
  %561 = icmp eq i64 %560, %448
  br i1 %561, label %562, label %467, !llvm.loop !73

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
  store i64 %575, ptr %0, align 8, !alias.scope !145, !noalias !148
  %576 = load i64, ptr %430, align 1
  %577 = lshr i64 %570, 47
  %578 = xor i64 %576, %577
  %579 = xor i64 %578, %570
  %580 = mul i64 %579, 2654435761
  store i64 %580, ptr %431, align 8, !alias.scope !145, !noalias !148
  %581 = load i64, ptr %432, align 1
  %582 = lshr i64 %569, 47
  %583 = xor i64 %581, %582
  %584 = xor i64 %583, %569
  %585 = mul i64 %584, 2654435761
  store i64 %585, ptr %433, align 8, !alias.scope !145, !noalias !148
  %586 = load i64, ptr %434, align 1
  %587 = lshr i64 %568, 47
  %588 = xor i64 %586, %587
  %589 = xor i64 %588, %568
  %590 = mul i64 %589, 2654435761
  store i64 %590, ptr %435, align 8, !alias.scope !145, !noalias !148
  %591 = load i64, ptr %436, align 1
  %592 = lshr i64 %567, 47
  %593 = xor i64 %591, %592
  %594 = xor i64 %593, %567
  %595 = mul i64 %594, 2654435761
  store i64 %595, ptr %437, align 8, !alias.scope !145, !noalias !148
  %596 = load i64, ptr %438, align 1
  %597 = lshr i64 %566, 47
  %598 = xor i64 %596, %597
  %599 = xor i64 %598, %566
  %600 = mul i64 %599, 2654435761
  store i64 %600, ptr %439, align 8, !alias.scope !145, !noalias !148
  %601 = load i64, ptr %440, align 1
  %602 = lshr i64 %565, 47
  %603 = xor i64 %601, %602
  %604 = xor i64 %603, %565
  %605 = mul i64 %604, 2654435761
  store i64 %605, ptr %441, align 8, !alias.scope !145, !noalias !148
  %606 = load i64, ptr %442, align 1
  %607 = lshr i64 %564, 47
  %608 = xor i64 %606, %607
  %609 = xor i64 %608, %564
  %610 = mul i64 %609, 2654435761
  store i64 %610, ptr %443, align 8, !alias.scope !145, !noalias !148
  %611 = shl i64 %448, 6
  %612 = getelementptr inbounds nuw i8, ptr %446, i64 %611
  %613 = sub i64 %445, %448
  %614 = icmp ult i64 %613, %403
  br i1 %614, label %615, label %444, !llvm.loop !86

615:                                              ; preds = %562
  store i64 0, ptr %401, align 8, !alias.scope !139, !noalias !141
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
  %626 = load i64, ptr %625, align 8, !alias.scope !156, !noalias !159
  %627 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %628 = load i64, ptr %627, align 8, !alias.scope !156, !noalias !159
  %629 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %630 = load i64, ptr %629, align 8, !alias.scope !156, !noalias !159
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %632 = load i64, ptr %631, align 8, !alias.scope !156, !noalias !159
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %634 = load i64, ptr %633, align 8, !alias.scope !156, !noalias !159
  %635 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %636 = load i64, ptr %635, align 8, !alias.scope !156, !noalias !159
  %637 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %638 = load i64, ptr %637, align 8, !alias.scope !156, !noalias !159
  %639 = load i64, ptr %0, align 8, !alias.scope !156, !noalias !159
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
  tail call void @llvm.prefetch.p0(ptr nonnull %652, i32 0, i32 3, i32 1), !noalias !139
  %653 = shl i64 %649, 3
  %654 = getelementptr inbounds nuw i8, ptr %619, i64 %653
  %655 = load i64, ptr %651, align 1
  %656 = load i64, ptr %654, align 1
  %657 = xor i64 %656, %655
  %658 = add i64 %642, %655
  store i64 %658, ptr %637, align 8, !alias.scope !156, !noalias !159
  %659 = lshr i64 %657, 32
  %660 = and i64 %657, 4294967295
  %661 = mul nuw i64 %660, %659
  %662 = add i64 %661, %641
  store i64 %662, ptr %0, align 8, !alias.scope !156, !noalias !159
  %663 = getelementptr inbounds nuw i8, ptr %651, i64 8
  %664 = load i64, ptr %663, align 1
  %665 = getelementptr inbounds nuw i8, ptr %654, i64 8
  %666 = load i64, ptr %665, align 1
  %667 = xor i64 %666, %664
  %668 = add i64 %662, %664
  store i64 %668, ptr %0, align 8, !alias.scope !156, !noalias !159
  %669 = lshr i64 %667, 32
  %670 = and i64 %667, 4294967295
  %671 = mul nuw i64 %670, %669
  %672 = add i64 %671, %658
  store i64 %672, ptr %637, align 8, !alias.scope !156, !noalias !159
  %673 = getelementptr inbounds nuw i8, ptr %651, i64 16
  %674 = load i64, ptr %673, align 1
  %675 = getelementptr inbounds nuw i8, ptr %654, i64 16
  %676 = load i64, ptr %675, align 1
  %677 = xor i64 %676, %674
  %678 = add i64 %648, %674
  store i64 %678, ptr %625, align 8, !alias.scope !156, !noalias !159
  %679 = lshr i64 %677, 32
  %680 = and i64 %677, 4294967295
  %681 = mul nuw i64 %680, %679
  %682 = add i64 %681, %647
  store i64 %682, ptr %627, align 8, !alias.scope !156, !noalias !159
  %683 = getelementptr inbounds nuw i8, ptr %651, i64 24
  %684 = load i64, ptr %683, align 1
  %685 = getelementptr inbounds nuw i8, ptr %654, i64 24
  %686 = load i64, ptr %685, align 1
  %687 = xor i64 %686, %684
  %688 = add i64 %682, %684
  store i64 %688, ptr %627, align 8, !alias.scope !156, !noalias !159
  %689 = lshr i64 %687, 32
  %690 = and i64 %687, 4294967295
  %691 = mul nuw i64 %690, %689
  %692 = add i64 %691, %678
  store i64 %692, ptr %625, align 8, !alias.scope !156, !noalias !159
  %693 = getelementptr inbounds nuw i8, ptr %651, i64 32
  %694 = load i64, ptr %693, align 1
  %695 = getelementptr inbounds nuw i8, ptr %654, i64 32
  %696 = load i64, ptr %695, align 1
  %697 = xor i64 %696, %694
  %698 = add i64 %646, %694
  store i64 %698, ptr %629, align 8, !alias.scope !156, !noalias !159
  %699 = lshr i64 %697, 32
  %700 = and i64 %697, 4294967295
  %701 = mul nuw i64 %700, %699
  %702 = add i64 %701, %645
  store i64 %702, ptr %631, align 8, !alias.scope !156, !noalias !159
  %703 = getelementptr inbounds nuw i8, ptr %651, i64 40
  %704 = load i64, ptr %703, align 1
  %705 = getelementptr inbounds nuw i8, ptr %654, i64 40
  %706 = load i64, ptr %705, align 1
  %707 = xor i64 %706, %704
  %708 = add i64 %702, %704
  store i64 %708, ptr %631, align 8, !alias.scope !156, !noalias !159
  %709 = lshr i64 %707, 32
  %710 = and i64 %707, 4294967295
  %711 = mul nuw i64 %710, %709
  %712 = add i64 %711, %698
  store i64 %712, ptr %629, align 8, !alias.scope !156, !noalias !159
  %713 = getelementptr inbounds nuw i8, ptr %651, i64 48
  %714 = load i64, ptr %713, align 1
  %715 = getelementptr inbounds nuw i8, ptr %654, i64 48
  %716 = load i64, ptr %715, align 1
  %717 = xor i64 %716, %714
  %718 = add i64 %644, %714
  store i64 %718, ptr %633, align 8, !alias.scope !156, !noalias !159
  %719 = lshr i64 %717, 32
  %720 = and i64 %717, 4294967295
  %721 = mul nuw i64 %720, %719
  %722 = add i64 %721, %643
  store i64 %722, ptr %635, align 8, !alias.scope !156, !noalias !159
  %723 = getelementptr inbounds nuw i8, ptr %651, i64 56
  %724 = load i64, ptr %723, align 1
  %725 = getelementptr inbounds nuw i8, ptr %654, i64 56
  %726 = load i64, ptr %725, align 1
  %727 = xor i64 %726, %724
  %728 = add i64 %722, %724
  store i64 %728, ptr %635, align 8, !alias.scope !156, !noalias !159
  %729 = lshr i64 %727, 32
  %730 = and i64 %727, 4294967295
  %731 = mul nuw i64 %730, %729
  %732 = add i64 %731, %718
  store i64 %732, ptr %633, align 8, !alias.scope !156, !noalias !159
  %733 = add nuw i64 %649, 1
  %734 = icmp eq i64 %733, %617
  br i1 %734, label %735, label %640, !llvm.loop !73

735:                                              ; preds = %640
  %736 = shl i64 %617, 6
  %737 = getelementptr inbounds nuw i8, ptr %618, i64 %736
  %738 = load i64, ptr %401, align 8, !alias.scope !139, !noalias !141
  %739 = add i64 %738, %617
  store i64 %739, ptr %401, align 8, !alias.scope !139, !noalias !141
  br label %740

740:                                              ; preds = %616, %735
  %741 = phi ptr [ %737, %735 ], [ %618, %616 ]
  %742 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %743 = getelementptr inbounds i8, ptr %741, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %742, ptr noundef nonnull align 1 dereferenceable(64) %743, i64 64, i1 false)
  %744 = load i32, ptr %12, align 64, !alias.scope !108, !noalias !105
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
  store i32 %755, ptr %12, align 64, !alias.scope !108, !noalias !105
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
  br i1 %412, label %413, label %318, !llvm.loop !73

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
  br i1 %447, label %306, label %448, !llvm.loop !74

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
  br i1 %557, label %463, label %558, !llvm.loop !73

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
  %651 = load i64, ptr %649, align 1, !alias.scope !162, !noalias !167
  %652 = xor i64 %651, %584
  %653 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %654 = load i64, ptr %653, align 1, !alias.scope !162, !noalias !167
  %655 = xor i64 %654, %588
  %656 = zext i64 %652 to i128
  %657 = zext i64 %655 to i128
  %658 = mul nuw i128 %657, %656
  %659 = lshr i128 %658, 64
  %660 = xor i128 %659, %658
  %661 = trunc i128 %660 to i64
  %662 = add i64 %650, %661
  %663 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %664 = load i64, ptr %663, align 1, !alias.scope !162, !noalias !167
  %665 = xor i64 %664, %604
  %666 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %667 = load i64, ptr %666, align 1, !alias.scope !162, !noalias !167
  %668 = xor i64 %667, %608
  %669 = zext i64 %665 to i128
  %670 = zext i64 %668 to i128
  %671 = mul nuw i128 %670, %669
  %672 = lshr i128 %671, 64
  %673 = xor i128 %672, %671
  %674 = trunc i128 %673 to i64
  %675 = add i64 %662, %674
  %676 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %677 = load i64, ptr %676, align 1, !alias.scope !162, !noalias !167
  %678 = xor i64 %677, %624
  %679 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %680 = load i64, ptr %679, align 1, !alias.scope !162, !noalias !167
  %681 = xor i64 %680, %628
  %682 = zext i64 %678 to i128
  %683 = zext i64 %681 to i128
  %684 = mul nuw i128 %683, %682
  %685 = lshr i128 %684, 64
  %686 = xor i128 %685, %684
  %687 = trunc i128 %686 to i64
  %688 = add i64 %675, %687
  %689 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %690 = load i64, ptr %689, align 1, !alias.scope !162, !noalias !167
  %691 = xor i64 %690, %644
  %692 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %693 = load i64, ptr %692, align 1, !alias.scope !162, !noalias !167
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #29, !noalias !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !170
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
  br i1 %488, label %489, label %394, !llvm.loop !73

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
  br i1 %523, label %524, label %382, !llvm.loop !74

524:                                              ; preds = %489
  store i64 %493, ptr %6, align 8, !noalias !170
  store i64 %497, ptr %359, align 8, !noalias !170
  store i64 %501, ptr %361, align 8, !noalias !170
  store i64 %505, ptr %360, align 8, !noalias !170
  store i64 %509, ptr %363, align 8, !noalias !170
  store i64 %513, ptr %362, align 8, !noalias !170
  store i64 %517, ptr %365, align 8, !noalias !170
  store i64 %521, ptr %364, align 8, !noalias !170
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
  br i1 %644, label %645, label %550, !llvm.loop !73

645:                                              ; preds = %550
  store i64 %578, ptr %6, align 8, !alias.scope !177, !noalias !180
  store i64 %582, ptr %542, align 8, !alias.scope !177, !noalias !180
  store i64 %598, ptr %544, align 8, !alias.scope !177, !noalias !180
  store i64 %602, ptr %543, align 8, !alias.scope !177, !noalias !180
  store i64 %618, ptr %546, align 8, !alias.scope !177, !noalias !180
  store i64 %622, ptr %545, align 8, !alias.scope !177, !noalias !180
  store i64 %638, ptr %548, align 8, !alias.scope !177, !noalias !180
  store i64 %642, ptr %547, align 8, !alias.scope !177, !noalias !180
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
  store i64 %673, ptr %6, align 8, !alias.scope !183, !noalias !186
  %674 = lshr i64 %672, 32
  %675 = and i64 %672, 4294967295
  %676 = mul nuw i64 %675, %674
  %677 = add i64 %676, %663
  store i64 %677, ptr %662, align 8, !alias.scope !183, !noalias !186
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
  store i64 %695, ptr %686, align 8, !alias.scope !183, !noalias !186
  %696 = lshr i64 %694, 32
  %697 = and i64 %694, 4294967295
  %698 = mul nuw i64 %697, %696
  %699 = add i64 %698, %684
  store i64 %699, ptr %683, align 8, !alias.scope !183, !noalias !186
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
  store i64 %717, ptr %708, align 8, !alias.scope !183, !noalias !186
  %718 = lshr i64 %716, 32
  %719 = and i64 %716, 4294967295
  %720 = mul nuw i64 %719, %718
  %721 = add i64 %720, %706
  store i64 %721, ptr %705, align 8, !alias.scope !183, !noalias !186
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
  store i64 %739, ptr %730, align 8, !alias.scope !183, !noalias !186
  %740 = lshr i64 %738, 32
  %741 = and i64 %738, 4294967295
  %742 = mul nuw i64 %741, %740
  %743 = add i64 %742, %728
  store i64 %743, ptr %727, align 8, !alias.scope !183, !noalias !186
  %744 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %6, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #29, !noalias !170
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
  %68 = load i64, ptr %3, align 8, !alias.scope !189, !noalias !194
  %69 = load i64, ptr %40, align 8, !alias.scope !189, !noalias !194
  %70 = load i64, ptr %41, align 8, !alias.scope !189, !noalias !194
  %71 = load i64, ptr %42, align 8, !alias.scope !189, !noalias !194
  %72 = load i64, ptr %43, align 8, !alias.scope !189, !noalias !194
  %73 = load i64, ptr %44, align 8, !alias.scope !189, !noalias !194
  %74 = load i64, ptr %45, align 8, !alias.scope !189, !noalias !194
  %75 = load i64, ptr %46, align 8, !alias.scope !189, !noalias !194
  br label %180

76:                                               ; preds = %61
  %77 = load i64, ptr %33, align 8, !alias.scope !199, !noalias !202
  %78 = load i64, ptr %34, align 8, !alias.scope !199, !noalias !202
  %79 = load i64, ptr %35, align 8, !alias.scope !199, !noalias !202
  %80 = load i64, ptr %36, align 8, !alias.scope !199, !noalias !202
  %81 = load i64, ptr %37, align 8, !alias.scope !199, !noalias !202
  %82 = load i64, ptr %38, align 8, !alias.scope !199, !noalias !202
  %83 = load i64, ptr %39, align 8, !alias.scope !199, !noalias !202
  %84 = load i64, ptr %3, align 8, !alias.scope !199, !noalias !202
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
  tail call void @llvm.prefetch.p0(ptr nonnull %97, i32 0, i32 3, i32 1), !noalias !205
  %98 = shl i64 %94, 3
  %99 = getelementptr inbounds nuw i8, ptr %64, i64 %98
  %100 = load i64, ptr %96, align 1
  %101 = load i64, ptr %99, align 1
  %102 = xor i64 %101, %100
  %103 = add i64 %87, %100
  store i64 %103, ptr %39, align 8, !alias.scope !199, !noalias !202
  %104 = lshr i64 %102, 32
  %105 = and i64 %102, 4294967295
  %106 = mul nuw i64 %105, %104
  %107 = add i64 %106, %86
  store i64 %107, ptr %3, align 8, !alias.scope !199, !noalias !202
  %108 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %109 = load i64, ptr %108, align 1
  %110 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %111 = load i64, ptr %110, align 1
  %112 = xor i64 %111, %109
  %113 = add i64 %107, %109
  store i64 %113, ptr %3, align 8, !alias.scope !199, !noalias !202
  %114 = lshr i64 %112, 32
  %115 = and i64 %112, 4294967295
  %116 = mul nuw i64 %115, %114
  %117 = add i64 %116, %103
  store i64 %117, ptr %39, align 8, !alias.scope !199, !noalias !202
  %118 = getelementptr inbounds nuw i8, ptr %96, i64 16
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %99, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = add i64 %93, %119
  store i64 %123, ptr %33, align 8, !alias.scope !199, !noalias !202
  %124 = lshr i64 %122, 32
  %125 = and i64 %122, 4294967295
  %126 = mul nuw i64 %125, %124
  %127 = add i64 %126, %92
  store i64 %127, ptr %34, align 8, !alias.scope !199, !noalias !202
  %128 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %99, i64 24
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %131, %129
  %133 = add i64 %127, %129
  store i64 %133, ptr %34, align 8, !alias.scope !199, !noalias !202
  %134 = lshr i64 %132, 32
  %135 = and i64 %132, 4294967295
  %136 = mul nuw i64 %135, %134
  %137 = add i64 %136, %123
  store i64 %137, ptr %33, align 8, !alias.scope !199, !noalias !202
  %138 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %139 = load i64, ptr %138, align 1
  %140 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %141 = load i64, ptr %140, align 1
  %142 = xor i64 %141, %139
  %143 = add i64 %91, %139
  store i64 %143, ptr %35, align 8, !alias.scope !199, !noalias !202
  %144 = lshr i64 %142, 32
  %145 = and i64 %142, 4294967295
  %146 = mul nuw i64 %145, %144
  %147 = add i64 %146, %90
  store i64 %147, ptr %36, align 8, !alias.scope !199, !noalias !202
  %148 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %149 = load i64, ptr %148, align 1
  %150 = getelementptr inbounds nuw i8, ptr %99, i64 40
  %151 = load i64, ptr %150, align 1
  %152 = xor i64 %151, %149
  %153 = add i64 %147, %149
  store i64 %153, ptr %36, align 8, !alias.scope !199, !noalias !202
  %154 = lshr i64 %152, 32
  %155 = and i64 %152, 4294967295
  %156 = mul nuw i64 %155, %154
  %157 = add i64 %156, %143
  store i64 %157, ptr %35, align 8, !alias.scope !199, !noalias !202
  %158 = getelementptr inbounds nuw i8, ptr %96, i64 48
  %159 = load i64, ptr %158, align 1
  %160 = getelementptr inbounds nuw i8, ptr %99, i64 48
  %161 = load i64, ptr %160, align 1
  %162 = xor i64 %161, %159
  %163 = add i64 %89, %159
  store i64 %163, ptr %37, align 8, !alias.scope !199, !noalias !202
  %164 = lshr i64 %162, 32
  %165 = and i64 %162, 4294967295
  %166 = mul nuw i64 %165, %164
  %167 = add i64 %166, %88
  store i64 %167, ptr %38, align 8, !alias.scope !199, !noalias !202
  %168 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %169 = load i64, ptr %168, align 1
  %170 = getelementptr inbounds nuw i8, ptr %99, i64 56
  %171 = load i64, ptr %170, align 1
  %172 = xor i64 %171, %169
  %173 = add i64 %167, %169
  store i64 %173, ptr %38, align 8, !alias.scope !199, !noalias !202
  %174 = lshr i64 %172, 32
  %175 = and i64 %172, 4294967295
  %176 = mul nuw i64 %175, %174
  %177 = add i64 %176, %163
  store i64 %177, ptr %37, align 8, !alias.scope !199, !noalias !202
  %178 = add nuw i64 %94, 1
  %179 = icmp eq i64 %178, %65
  br i1 %179, label %180, label %85, !llvm.loop !73

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
  store i64 %193, ptr %3, align 8, !alias.scope !189, !noalias !194
  %194 = load i64, ptr %47, align 1
  %195 = lshr i64 %187, 47
  %196 = xor i64 %194, %195
  %197 = xor i64 %196, %187
  %198 = mul i64 %197, 2654435761
  store i64 %198, ptr %48, align 8, !alias.scope !189, !noalias !194
  %199 = load i64, ptr %49, align 1
  %200 = lshr i64 %186, 47
  %201 = xor i64 %199, %200
  %202 = xor i64 %201, %186
  %203 = mul i64 %202, 2654435761
  store i64 %203, ptr %50, align 8, !alias.scope !189, !noalias !194
  %204 = load i64, ptr %51, align 1
  %205 = lshr i64 %185, 47
  %206 = xor i64 %204, %205
  %207 = xor i64 %206, %185
  %208 = mul i64 %207, 2654435761
  store i64 %208, ptr %52, align 8, !alias.scope !189, !noalias !194
  %209 = load i64, ptr %53, align 1
  %210 = lshr i64 %184, 47
  %211 = xor i64 %209, %210
  %212 = xor i64 %211, %184
  %213 = mul i64 %212, 2654435761
  store i64 %213, ptr %54, align 8, !alias.scope !189, !noalias !194
  %214 = load i64, ptr %55, align 1
  %215 = lshr i64 %183, 47
  %216 = xor i64 %214, %215
  %217 = xor i64 %216, %183
  %218 = mul i64 %217, 2654435761
  store i64 %218, ptr %56, align 8, !alias.scope !189, !noalias !194
  %219 = load i64, ptr %57, align 1
  %220 = lshr i64 %182, 47
  %221 = xor i64 %219, %220
  %222 = xor i64 %221, %182
  %223 = mul i64 %222, 2654435761
  store i64 %223, ptr %58, align 8, !alias.scope !189, !noalias !194
  %224 = load i64, ptr %59, align 1
  %225 = lshr i64 %181, 47
  %226 = xor i64 %224, %225
  %227 = xor i64 %226, %181
  %228 = mul i64 %227, 2654435761
  store i64 %228, ptr %60, align 8, !alias.scope !189, !noalias !194
  %229 = shl i64 %65, 6
  %230 = getelementptr inbounds nuw i8, ptr %63, i64 %229
  %231 = sub i64 %62, %65
  %232 = icmp ult i64 %231, %23
  br i1 %232, label %233, label %61, !llvm.loop !86

233:                                              ; preds = %180, %16
  %234 = phi i64 [ %19, %16 ], [ %231, %180 ]
  %235 = phi ptr [ %24, %16 ], [ %230, %180 ]
  %236 = phi ptr [ %26, %16 ], [ %8, %180 ]
  %237 = icmp eq i64 %234, 0
  br i1 %237, label %349, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %240 = load i64, ptr %239, align 8, !alias.scope !206, !noalias !209
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %242 = load i64, ptr %241, align 8, !alias.scope !206, !noalias !209
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %244 = load i64, ptr %243, align 8, !alias.scope !206, !noalias !209
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %246 = load i64, ptr %245, align 8, !alias.scope !206, !noalias !209
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %248 = load i64, ptr %247, align 8, !alias.scope !206, !noalias !209
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %250 = load i64, ptr %249, align 8, !alias.scope !206, !noalias !209
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %252 = load i64, ptr %251, align 8, !alias.scope !206, !noalias !209
  %253 = load i64, ptr %3, align 8, !alias.scope !206, !noalias !209
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
  tail call void @llvm.prefetch.p0(ptr nonnull %266, i32 0, i32 3, i32 1), !noalias !205
  %267 = shl i64 %263, 3
  %268 = getelementptr inbounds nuw i8, ptr %236, i64 %267
  %269 = load i64, ptr %265, align 1
  %270 = load i64, ptr %268, align 1
  %271 = xor i64 %270, %269
  %272 = add i64 %256, %269
  store i64 %272, ptr %251, align 8, !alias.scope !206, !noalias !209
  %273 = lshr i64 %271, 32
  %274 = and i64 %271, 4294967295
  %275 = mul nuw i64 %274, %273
  %276 = add i64 %275, %255
  store i64 %276, ptr %3, align 8, !alias.scope !206, !noalias !209
  %277 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %278 = load i64, ptr %277, align 1
  %279 = getelementptr inbounds nuw i8, ptr %268, i64 8
  %280 = load i64, ptr %279, align 1
  %281 = xor i64 %280, %278
  %282 = add i64 %276, %278
  store i64 %282, ptr %3, align 8, !alias.scope !206, !noalias !209
  %283 = lshr i64 %281, 32
  %284 = and i64 %281, 4294967295
  %285 = mul nuw i64 %284, %283
  %286 = add i64 %285, %272
  store i64 %286, ptr %251, align 8, !alias.scope !206, !noalias !209
  %287 = getelementptr inbounds nuw i8, ptr %265, i64 16
  %288 = load i64, ptr %287, align 1
  %289 = getelementptr inbounds nuw i8, ptr %268, i64 16
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %288
  %292 = add i64 %262, %288
  store i64 %292, ptr %239, align 8, !alias.scope !206, !noalias !209
  %293 = lshr i64 %291, 32
  %294 = and i64 %291, 4294967295
  %295 = mul nuw i64 %294, %293
  %296 = add i64 %295, %261
  store i64 %296, ptr %241, align 8, !alias.scope !206, !noalias !209
  %297 = getelementptr inbounds nuw i8, ptr %265, i64 24
  %298 = load i64, ptr %297, align 1
  %299 = getelementptr inbounds nuw i8, ptr %268, i64 24
  %300 = load i64, ptr %299, align 1
  %301 = xor i64 %300, %298
  %302 = add i64 %296, %298
  store i64 %302, ptr %241, align 8, !alias.scope !206, !noalias !209
  %303 = lshr i64 %301, 32
  %304 = and i64 %301, 4294967295
  %305 = mul nuw i64 %304, %303
  %306 = add i64 %305, %292
  store i64 %306, ptr %239, align 8, !alias.scope !206, !noalias !209
  %307 = getelementptr inbounds nuw i8, ptr %265, i64 32
  %308 = load i64, ptr %307, align 1
  %309 = getelementptr inbounds nuw i8, ptr %268, i64 32
  %310 = load i64, ptr %309, align 1
  %311 = xor i64 %310, %308
  %312 = add i64 %260, %308
  store i64 %312, ptr %243, align 8, !alias.scope !206, !noalias !209
  %313 = lshr i64 %311, 32
  %314 = and i64 %311, 4294967295
  %315 = mul nuw i64 %314, %313
  %316 = add i64 %315, %259
  store i64 %316, ptr %245, align 8, !alias.scope !206, !noalias !209
  %317 = getelementptr inbounds nuw i8, ptr %265, i64 40
  %318 = load i64, ptr %317, align 1
  %319 = getelementptr inbounds nuw i8, ptr %268, i64 40
  %320 = load i64, ptr %319, align 1
  %321 = xor i64 %320, %318
  %322 = add i64 %316, %318
  store i64 %322, ptr %245, align 8, !alias.scope !206, !noalias !209
  %323 = lshr i64 %321, 32
  %324 = and i64 %321, 4294967295
  %325 = mul nuw i64 %324, %323
  %326 = add i64 %325, %312
  store i64 %326, ptr %243, align 8, !alias.scope !206, !noalias !209
  %327 = getelementptr inbounds nuw i8, ptr %265, i64 48
  %328 = load i64, ptr %327, align 1
  %329 = getelementptr inbounds nuw i8, ptr %268, i64 48
  %330 = load i64, ptr %329, align 1
  %331 = xor i64 %330, %328
  %332 = add i64 %258, %328
  store i64 %332, ptr %247, align 8, !alias.scope !206, !noalias !209
  %333 = lshr i64 %331, 32
  %334 = and i64 %331, 4294967295
  %335 = mul nuw i64 %334, %333
  %336 = add i64 %335, %257
  store i64 %336, ptr %249, align 8, !alias.scope !206, !noalias !209
  %337 = getelementptr inbounds nuw i8, ptr %265, i64 56
  %338 = load i64, ptr %337, align 1
  %339 = getelementptr inbounds nuw i8, ptr %268, i64 56
  %340 = load i64, ptr %339, align 1
  %341 = xor i64 %340, %338
  %342 = add i64 %336, %338
  store i64 %342, ptr %249, align 8, !alias.scope !206, !noalias !209
  %343 = lshr i64 %341, 32
  %344 = and i64 %341, 4294967295
  %345 = mul nuw i64 %344, %343
  %346 = add i64 %345, %332
  store i64 %346, ptr %247, align 8, !alias.scope !206, !noalias !209
  %347 = add nuw i64 %263, 1
  %348 = icmp eq i64 %347, %234
  br i1 %348, label %349, label %254, !llvm.loop !73

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
  %372 = load i64, ptr %371, align 8, !alias.scope !212, !noalias !215
  %373 = add i64 %372, %368
  store i64 %373, ptr %371, align 8, !alias.scope !212, !noalias !215
  %374 = lshr i64 %370, 32
  %375 = load i64, ptr %3, align 8, !alias.scope !212, !noalias !215
  %376 = and i64 %370, 4294967295
  %377 = mul nuw i64 %376, %374
  %378 = add i64 %377, %375
  store i64 %378, ptr %3, align 8, !alias.scope !212, !noalias !215
  %379 = getelementptr inbounds nuw i8, ptr %363, i64 8
  %380 = load i64, ptr %379, align 1
  %381 = getelementptr inbounds nuw i8, ptr %366, i64 1
  %382 = load i64, ptr %381, align 1
  %383 = xor i64 %382, %380
  %384 = add i64 %378, %380
  store i64 %384, ptr %3, align 8, !alias.scope !212, !noalias !215
  %385 = lshr i64 %383, 32
  %386 = and i64 %383, 4294967295
  %387 = mul nuw i64 %386, %385
  %388 = add i64 %387, %373
  store i64 %388, ptr %371, align 8, !alias.scope !212, !noalias !215
  %389 = getelementptr inbounds nuw i8, ptr %363, i64 16
  %390 = load i64, ptr %389, align 1
  %391 = getelementptr inbounds nuw i8, ptr %366, i64 9
  %392 = load i64, ptr %391, align 1
  %393 = xor i64 %392, %390
  %394 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %395 = load i64, ptr %394, align 8, !alias.scope !212, !noalias !215
  %396 = add i64 %395, %390
  store i64 %396, ptr %394, align 8, !alias.scope !212, !noalias !215
  %397 = lshr i64 %393, 32
  %398 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %399 = load i64, ptr %398, align 8, !alias.scope !212, !noalias !215
  %400 = and i64 %393, 4294967295
  %401 = mul nuw i64 %400, %397
  %402 = add i64 %401, %399
  store i64 %402, ptr %398, align 8, !alias.scope !212, !noalias !215
  %403 = getelementptr inbounds nuw i8, ptr %363, i64 24
  %404 = load i64, ptr %403, align 1
  %405 = getelementptr inbounds nuw i8, ptr %366, i64 17
  %406 = load i64, ptr %405, align 1
  %407 = xor i64 %406, %404
  %408 = add i64 %402, %404
  store i64 %408, ptr %398, align 8, !alias.scope !212, !noalias !215
  %409 = lshr i64 %407, 32
  %410 = and i64 %407, 4294967295
  %411 = mul nuw i64 %410, %409
  %412 = add i64 %411, %396
  store i64 %412, ptr %394, align 8, !alias.scope !212, !noalias !215
  %413 = getelementptr inbounds nuw i8, ptr %363, i64 32
  %414 = load i64, ptr %413, align 1
  %415 = getelementptr inbounds nuw i8, ptr %366, i64 25
  %416 = load i64, ptr %415, align 1
  %417 = xor i64 %416, %414
  %418 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %419 = load i64, ptr %418, align 8, !alias.scope !212, !noalias !215
  %420 = add i64 %419, %414
  store i64 %420, ptr %418, align 8, !alias.scope !212, !noalias !215
  %421 = lshr i64 %417, 32
  %422 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %423 = load i64, ptr %422, align 8, !alias.scope !212, !noalias !215
  %424 = and i64 %417, 4294967295
  %425 = mul nuw i64 %424, %421
  %426 = add i64 %425, %423
  store i64 %426, ptr %422, align 8, !alias.scope !212, !noalias !215
  %427 = getelementptr inbounds nuw i8, ptr %363, i64 40
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds nuw i8, ptr %366, i64 33
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %428
  %432 = add i64 %426, %428
  store i64 %432, ptr %422, align 8, !alias.scope !212, !noalias !215
  %433 = lshr i64 %431, 32
  %434 = and i64 %431, 4294967295
  %435 = mul nuw i64 %434, %433
  %436 = add i64 %435, %420
  store i64 %436, ptr %418, align 8, !alias.scope !212, !noalias !215
  %437 = getelementptr inbounds nuw i8, ptr %363, i64 48
  %438 = load i64, ptr %437, align 1
  %439 = getelementptr inbounds nuw i8, ptr %366, i64 41
  %440 = load i64, ptr %439, align 1
  %441 = xor i64 %440, %438
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %443 = load i64, ptr %442, align 8, !alias.scope !212, !noalias !215
  %444 = add i64 %443, %438
  store i64 %444, ptr %442, align 8, !alias.scope !212, !noalias !215
  %445 = lshr i64 %441, 32
  %446 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %447 = load i64, ptr %446, align 8, !alias.scope !212, !noalias !215
  %448 = and i64 %441, 4294967295
  %449 = mul nuw i64 %448, %445
  %450 = add i64 %449, %447
  store i64 %450, ptr %446, align 8, !alias.scope !212, !noalias !215
  %451 = getelementptr inbounds nuw i8, ptr %363, i64 56
  %452 = load i64, ptr %451, align 1
  %453 = getelementptr inbounds nuw i8, ptr %366, i64 49
  %454 = load i64, ptr %453, align 1
  %455 = xor i64 %454, %452
  %456 = add i64 %450, %452
  store i64 %456, ptr %446, align 8, !alias.scope !212, !noalias !215
  %457 = lshr i64 %455, 32
  %458 = and i64 %455, 4294967295
  %459 = mul nuw i64 %458, %457
  %460 = add i64 %459, %444
  store i64 %460, ptr %442, align 8, !alias.scope !212, !noalias !215
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #29, !noalias !218
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
  br i1 %125, label %126, label %31, !llvm.loop !73

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
  br i1 %160, label %161, label %19, !llvm.loop !74

161:                                              ; preds = %126
  store i64 %130, ptr %4, align 8, !noalias !218
  store i64 %134, ptr %12, align 8, !noalias !218
  store i64 %138, ptr %14, align 8, !noalias !218
  store i64 %142, ptr %13, align 8, !noalias !218
  store i64 %146, ptr %16, align 8, !noalias !218
  store i64 %150, ptr %15, align 8, !noalias !218
  store i64 %154, ptr %18, align 8, !noalias !218
  store i64 %158, ptr %17, align 8, !noalias !218
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
  br i1 %279, label %280, label %185, !llvm.loop !73

280:                                              ; preds = %185
  store i64 %213, ptr %4, align 8, !alias.scope !222, !noalias !225
  store i64 %217, ptr %178, align 8, !alias.scope !222, !noalias !225
  store i64 %233, ptr %180, align 8, !alias.scope !222, !noalias !225
  store i64 %237, ptr %179, align 8, !alias.scope !222, !noalias !225
  store i64 %253, ptr %182, align 8, !alias.scope !222, !noalias !225
  store i64 %257, ptr %181, align 8, !alias.scope !222, !noalias !225
  store i64 %273, ptr %184, align 8, !alias.scope !222, !noalias !225
  store i64 %277, ptr %183, align 8, !alias.scope !222, !noalias !225
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
  store i64 %303, ptr %4, align 8, !alias.scope !228, !noalias !231
  %304 = lshr i64 %302, 32
  %305 = and i64 %302, 4294967295
  %306 = mul nuw i64 %305, %304
  %307 = add i64 %306, %295
  store i64 %307, ptr %294, align 8, !alias.scope !228, !noalias !231
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
  store i64 %321, ptr %314, align 8, !alias.scope !228, !noalias !231
  %322 = lshr i64 %320, 32
  %323 = and i64 %320, 4294967295
  %324 = mul nuw i64 %323, %322
  %325 = add i64 %324, %312
  store i64 %325, ptr %311, align 8, !alias.scope !228, !noalias !231
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
  store i64 %339, ptr %332, align 8, !alias.scope !228, !noalias !231
  %340 = lshr i64 %338, 32
  %341 = and i64 %338, 4294967295
  %342 = mul nuw i64 %341, %340
  %343 = add i64 %342, %330
  store i64 %343, ptr %329, align 8, !alias.scope !228, !noalias !231
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
  store i64 %357, ptr %350, align 8, !alias.scope !228, !noalias !231
  %358 = lshr i64 %356, 32
  %359 = and i64 %356, 4294967295
  %360 = mul nuw i64 %359, %358
  %361 = add i64 %360, %348
  store i64 %361, ptr %347, align 8, !alias.scope !228, !noalias !231
  %362 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %4, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192, i64 noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #29, !noalias !218
  br label %876

363:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #29, !noalias !234
  %364 = add i64 %2, -4734510112055689544
  %365 = sub i64 2066345149520216444, %2
  store i64 %364, ptr %5, align 8, !noalias !234
  %366 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %365, ptr %366, align 8, !noalias !234
  %367 = add i64 %2, -2623469361688619810
  %368 = sub i64 2262974939099578482, %2
  %369 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %367, ptr %369, align 8, !noalias !234
  %370 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %368, ptr %370, align 8, !noalias !234
  %371 = add i64 %2, 8711581037947681227
  %372 = sub i64 2410270004345854594, %2
  %373 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %371, ptr %373, align 8, !noalias !234
  %374 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %372, ptr %374, align 8, !noalias !234
  %375 = add i64 %2, -8204357891075471176
  %376 = sub i64 5487137525590930912, %2
  %377 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %375, ptr %377, align 8, !noalias !234
  %378 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %376, ptr %378, align 8, !noalias !234
  %379 = add i64 %2, -3818837453329782724
  %380 = sub i64 -6688317018830679928, %2
  %381 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %379, ptr %381, align 8, !noalias !234
  %382 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %380, ptr %382, align 8, !noalias !234
  %383 = add i64 %2, 5690594596133299313
  %384 = sub i64 -2833645246901970632, %2
  %385 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %383, ptr %385, align 8, !noalias !234
  %386 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %384, ptr %386, align 8, !noalias !234
  %387 = add i64 %2, 4554437623014685352
  %388 = sub i64 2111919702937427193, %2
  %389 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %387, ptr %389, align 8, !noalias !234
  %390 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %388, ptr %390, align 8, !noalias !234
  %391 = add i64 %2, 3556072174620004746
  %392 = sub i64 7238261902898274248, %2
  %393 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %391, ptr %393, align 8, !noalias !234
  %394 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %392, ptr %394, align 8, !noalias !234
  %395 = add i64 %2, -4329134394285701654
  %396 = sub i64 -1485321483350670907, %2
  %397 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %395, ptr %397, align 8, !noalias !234
  %398 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %396, ptr %398, align 8, !noalias !234
  %399 = add i64 %2, 5321830579834785047
  %400 = sub i64 -7032137544937171245, %2
  %401 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %399, ptr %401, align 8, !noalias !234
  %402 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %400, ptr %402, align 8, !noalias !234
  %403 = add i64 %2, -242834301215959509
  %404 = sub i64 -3588858202114426737, %2
  %405 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %403, ptr %405, align 8, !noalias !234
  %406 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %404, ptr %406, align 8, !noalias !234
  %407 = add i64 %2, 2883454493032893253
  %408 = sub i64 9097354517224871855, %2
  %409 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %407, ptr %409, align 8, !noalias !234
  %410 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %408, ptr %410, align 8, !noalias !234
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
  br i1 %521, label %522, label %427, !llvm.loop !73

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
  br i1 %556, label %557, label %415, !llvm.loop !74

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
  br i1 %666, label %667, label %572, !llvm.loop !73

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
  %759 = load i64, ptr %757, align 1, !alias.scope !237, !noalias !244
  %760 = xor i64 %759, %692
  %761 = getelementptr inbounds nuw i8, ptr %5, i64 19
  %762 = load i64, ptr %761, align 1, !alias.scope !237, !noalias !244
  %763 = xor i64 %762, %696
  %764 = zext i64 %760 to i128
  %765 = zext i64 %763 to i128
  %766 = mul nuw i128 %765, %764
  %767 = lshr i128 %766, 64
  %768 = xor i128 %767, %766
  %769 = trunc i128 %768 to i64
  %770 = add i64 %758, %769
  %771 = getelementptr inbounds nuw i8, ptr %5, i64 27
  %772 = load i64, ptr %771, align 1, !alias.scope !237, !noalias !244
  %773 = xor i64 %772, %712
  %774 = getelementptr inbounds nuw i8, ptr %5, i64 35
  %775 = load i64, ptr %774, align 1, !alias.scope !237, !noalias !244
  %776 = xor i64 %775, %716
  %777 = zext i64 %773 to i128
  %778 = zext i64 %776 to i128
  %779 = mul nuw i128 %778, %777
  %780 = lshr i128 %779, 64
  %781 = xor i128 %780, %779
  %782 = trunc i128 %781 to i64
  %783 = add i64 %770, %782
  %784 = getelementptr inbounds nuw i8, ptr %5, i64 43
  %785 = load i64, ptr %784, align 1, !alias.scope !237, !noalias !244
  %786 = xor i64 %785, %732
  %787 = getelementptr inbounds nuw i8, ptr %5, i64 51
  %788 = load i64, ptr %787, align 1, !alias.scope !237, !noalias !244
  %789 = xor i64 %788, %736
  %790 = zext i64 %786 to i128
  %791 = zext i64 %789 to i128
  %792 = mul nuw i128 %791, %790
  %793 = lshr i128 %792, 64
  %794 = xor i128 %793, %792
  %795 = trunc i128 %794 to i64
  %796 = add i64 %783, %795
  %797 = getelementptr inbounds nuw i8, ptr %5, i64 59
  %798 = load i64, ptr %797, align 1, !alias.scope !237, !noalias !244
  %799 = xor i64 %798, %752
  %800 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %801 = load i64, ptr %800, align 1, !alias.scope !237, !noalias !244
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
  %818 = load i64, ptr %815, align 1, !alias.scope !248, !noalias !251
  %819 = xor i64 %818, %692
  %820 = getelementptr inbounds nuw i8, ptr %5, i64 125
  %821 = load i64, ptr %820, align 1, !alias.scope !248, !noalias !251
  %822 = xor i64 %821, %696
  %823 = zext i64 %819 to i128
  %824 = zext i64 %822 to i128
  %825 = mul nuw i128 %824, %823
  %826 = lshr i128 %825, 64
  %827 = xor i128 %826, %825
  %828 = trunc i128 %827 to i64
  %829 = add i64 %828, %817
  %830 = getelementptr inbounds nuw i8, ptr %5, i64 133
  %831 = load i64, ptr %830, align 1, !alias.scope !248, !noalias !251
  %832 = xor i64 %831, %712
  %833 = getelementptr inbounds nuw i8, ptr %5, i64 141
  %834 = load i64, ptr %833, align 1, !alias.scope !248, !noalias !251
  %835 = xor i64 %834, %716
  %836 = zext i64 %832 to i128
  %837 = zext i64 %835 to i128
  %838 = mul nuw i128 %837, %836
  %839 = lshr i128 %838, 64
  %840 = xor i128 %839, %838
  %841 = trunc i128 %840 to i64
  %842 = add i64 %829, %841
  %843 = getelementptr inbounds nuw i8, ptr %5, i64 149
  %844 = load i64, ptr %843, align 1, !alias.scope !248, !noalias !251
  %845 = xor i64 %844, %732
  %846 = getelementptr inbounds nuw i8, ptr %5, i64 157
  %847 = load i64, ptr %846, align 1, !alias.scope !248, !noalias !251
  %848 = xor i64 %847, %736
  %849 = zext i64 %845 to i128
  %850 = zext i64 %848 to i128
  %851 = mul nuw i128 %850, %849
  %852 = lshr i128 %851, 64
  %853 = xor i128 %852, %851
  %854 = trunc i128 %853 to i64
  %855 = add i64 %842, %854
  %856 = getelementptr inbounds nuw i8, ptr %5, i64 165
  %857 = load i64, ptr %856, align 1, !alias.scope !248, !noalias !251
  %858 = xor i64 %857, %752
  %859 = getelementptr inbounds nuw i8, ptr %5, i64 173
  %860 = load i64, ptr %859, align 1, !alias.scope !248, !noalias !251
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
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #29, !noalias !234
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
  br i1 %225, label %313, label %226, !llvm.loop !253

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
  br i1 %269, label %313, label %270, !llvm.loop !253

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %6 = mul i64 %3, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %7 = load i64, ptr %0, align 8, !alias.scope !264, !noalias !267
  %8 = load i64, ptr %5, align 1, !alias.scope !269, !noalias !270
  %9 = xor i64 %8, %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 8, !alias.scope !264, !noalias !267
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %13 = load i64, ptr %12, align 1, !alias.scope !269, !noalias !270
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
  %24 = load i64, ptr %22, align 8, !alias.scope !264, !noalias !267
  %25 = load i64, ptr %23, align 1, !alias.scope !269, !noalias !270
  %26 = xor i64 %25, %24
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 8, !alias.scope !264, !noalias !267
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 35
  %30 = load i64, ptr %29, align 1, !alias.scope !269, !noalias !270
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
  %41 = load i64, ptr %39, align 8, !alias.scope !264, !noalias !267
  %42 = load i64, ptr %40, align 1, !alias.scope !269, !noalias !270
  %43 = xor i64 %42, %41
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %45 = load i64, ptr %44, align 8, !alias.scope !264, !noalias !267
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 51
  %47 = load i64, ptr %46, align 1, !alias.scope !269, !noalias !270
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
  %58 = load i64, ptr %56, align 8, !alias.scope !264, !noalias !267
  %59 = load i64, ptr %57, align 1, !alias.scope !269, !noalias !270
  %60 = xor i64 %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !264, !noalias !267
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 67
  %64 = load i64, ptr %63, align 1, !alias.scope !269, !noalias !270
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
  %82 = load i64, ptr %79, align 1, !alias.scope !271, !noalias !274
  %83 = xor i64 %82, %7
  %84 = getelementptr inbounds i8, ptr %78, i64 -67
  %85 = load i64, ptr %84, align 1, !alias.scope !271, !noalias !274
  %86 = xor i64 %85, %11
  %87 = zext i64 %83 to i128
  %88 = zext i64 %86 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %92, %81
  %94 = getelementptr inbounds i8, ptr %78, i64 -59
  %95 = load i64, ptr %94, align 1, !alias.scope !271, !noalias !274
  %96 = xor i64 %95, %24
  %97 = getelementptr inbounds i8, ptr %78, i64 -51
  %98 = load i64, ptr %97, align 1, !alias.scope !271, !noalias !274
  %99 = xor i64 %98, %28
  %100 = zext i64 %96 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %93, %105
  %107 = getelementptr inbounds i8, ptr %78, i64 -43
  %108 = load i64, ptr %107, align 1, !alias.scope !271, !noalias !274
  %109 = xor i64 %108, %41
  %110 = getelementptr inbounds i8, ptr %78, i64 -35
  %111 = load i64, ptr %110, align 1, !alias.scope !271, !noalias !274
  %112 = xor i64 %111, %45
  %113 = zext i64 %109 to i128
  %114 = zext i64 %112 to i128
  %115 = mul nuw i128 %114, %113
  %116 = lshr i128 %115, 64
  %117 = xor i128 %116, %115
  %118 = trunc i128 %117 to i64
  %119 = add i64 %106, %118
  %120 = getelementptr inbounds i8, ptr %78, i64 -27
  %121 = load i64, ptr %120, align 1, !alias.scope !271, !noalias !274
  %122 = xor i64 %121, %58
  %123 = getelementptr inbounds i8, ptr %78, i64 -19
  %124 = load i64, ptr %123, align 1, !alias.scope !271, !noalias !274
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #29, !noalias !276
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
  br i1 %121, label %122, label %27, !llvm.loop !73

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
  br i1 %156, label %157, label %15, !llvm.loop !74

157:                                              ; preds = %122
  store i64 %126, ptr %3, align 8, !noalias !276
  store i64 %130, ptr %8, align 8, !noalias !276
  store i64 %134, ptr %10, align 8, !noalias !276
  store i64 %138, ptr %9, align 8, !noalias !276
  store i64 %142, ptr %12, align 8, !noalias !276
  store i64 %146, ptr %11, align 8, !noalias !276
  store i64 %150, ptr %14, align 8, !noalias !276
  store i64 %154, ptr %13, align 8, !noalias !276
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
  br i1 %275, label %276, label %181, !llvm.loop !73

276:                                              ; preds = %181
  store i64 %209, ptr %3, align 8, !alias.scope !280, !noalias !283
  store i64 %213, ptr %174, align 8, !alias.scope !280, !noalias !283
  store i64 %229, ptr %176, align 8, !alias.scope !280, !noalias !283
  store i64 %233, ptr %175, align 8, !alias.scope !280, !noalias !283
  store i64 %249, ptr %178, align 8, !alias.scope !280, !noalias !283
  store i64 %253, ptr %177, align 8, !alias.scope !280, !noalias !283
  store i64 %269, ptr %180, align 8, !alias.scope !280, !noalias !283
  store i64 %273, ptr %179, align 8, !alias.scope !280, !noalias !283
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
  store i64 %299, ptr %3, align 8, !alias.scope !286, !noalias !289
  %300 = lshr i64 %298, 32
  %301 = and i64 %298, 4294967295
  %302 = mul nuw i64 %301, %300
  %303 = add i64 %302, %291
  store i64 %303, ptr %290, align 8, !alias.scope !286, !noalias !289
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
  store i64 %317, ptr %310, align 8, !alias.scope !286, !noalias !289
  %318 = lshr i64 %316, 32
  %319 = and i64 %316, 4294967295
  %320 = mul nuw i64 %319, %318
  %321 = add i64 %320, %308
  store i64 %321, ptr %307, align 8, !alias.scope !286, !noalias !289
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
  store i64 %335, ptr %328, align 8, !alias.scope !286, !noalias !289
  %336 = lshr i64 %334, 32
  %337 = and i64 %334, 4294967295
  %338 = mul nuw i64 %337, %336
  %339 = add i64 %338, %326
  store i64 %339, ptr %325, align 8, !alias.scope !286, !noalias !289
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
  store i64 %353, ptr %346, align 8, !alias.scope !286, !noalias !289
  %354 = lshr i64 %352, 32
  %355 = and i64 %352, 4294967295
  %356 = mul nuw i64 %355, %354
  %357 = add i64 %356, %344
  store i64 %357, ptr %343, align 8, !alias.scope !286, !noalias !289
  %358 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %3, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192, i64 noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #29, !noalias !276
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #29, !noalias !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !292
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
  br i1 %517, label %518, label %423, !llvm.loop !73

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
  br i1 %552, label %411, label %553, !llvm.loop !74

553:                                              ; preds = %518
  store i64 %522, ptr %5, align 8, !noalias !292
  store i64 %526, ptr %389, align 8, !noalias !292
  store i64 %530, ptr %391, align 8, !noalias !292
  store i64 %534, ptr %390, align 8, !noalias !292
  store i64 %538, ptr %393, align 8, !noalias !292
  store i64 %542, ptr %392, align 8, !noalias !292
  store i64 %546, ptr %395, align 8, !noalias !292
  store i64 %550, ptr %394, align 8, !noalias !292
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
  br i1 %671, label %577, label %672, !llvm.loop !73

672:                                              ; preds = %577
  store i64 %605, ptr %5, align 8, !alias.scope !299, !noalias !302
  store i64 %609, ptr %570, align 8, !alias.scope !299, !noalias !302
  store i64 %625, ptr %572, align 8, !alias.scope !299, !noalias !302
  store i64 %629, ptr %571, align 8, !alias.scope !299, !noalias !302
  store i64 %645, ptr %574, align 8, !alias.scope !299, !noalias !302
  store i64 %649, ptr %573, align 8, !alias.scope !299, !noalias !302
  store i64 %665, ptr %576, align 8, !alias.scope !299, !noalias !302
  store i64 %669, ptr %575, align 8, !alias.scope !299, !noalias !302
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
  store i64 %700, ptr %5, align 8, !alias.scope !305, !noalias !308
  %701 = lshr i64 %699, 32
  %702 = and i64 %699, 4294967295
  %703 = mul nuw i64 %702, %701
  %704 = add i64 %703, %690
  store i64 %704, ptr %689, align 8, !alias.scope !305, !noalias !308
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
  store i64 %722, ptr %713, align 8, !alias.scope !305, !noalias !308
  %723 = lshr i64 %721, 32
  %724 = and i64 %721, 4294967295
  %725 = mul nuw i64 %724, %723
  %726 = add i64 %725, %711
  store i64 %726, ptr %710, align 8, !alias.scope !305, !noalias !308
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
  store i64 %744, ptr %735, align 8, !alias.scope !305, !noalias !308
  %745 = lshr i64 %743, 32
  %746 = and i64 %743, 4294967295
  %747 = mul nuw i64 %746, %745
  %748 = add i64 %747, %733
  store i64 %748, ptr %732, align 8, !alias.scope !305, !noalias !308
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
  store i64 %766, ptr %757, align 8, !alias.scope !305, !noalias !308
  %767 = lshr i64 %765, 32
  %768 = and i64 %765, 4294967295
  %769 = mul nuw i64 %768, %767
  %770 = add i64 %769, %755
  store i64 %770, ptr %754, align 8, !alias.scope !305, !noalias !308
  %771 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %5, ptr noundef nonnull %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %1) #33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #29, !noalias !292
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { inlinehint mustprogress nofree nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #19 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #22 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!9 = !{i64 2148229211}
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
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !8}
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
!72 = distinct !{!72, !8}
!73 = distinct !{!73, !6}
!74 = distinct !{!74, !6}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"XXH3_mergeAccs: argument 1"}
!77 = distinct !{!77, !"XXH3_mergeAccs"}
!78 = distinct !{!78, !79, !"XXH3_finalizeLong_64b: argument 1"}
!79 = distinct !{!79, !"XXH3_finalizeLong_64b"}
!80 = !{!81, !82}
!81 = distinct !{!81, !77, !"XXH3_mergeAccs: argument 0"}
!82 = distinct !{!82, !79, !"XXH3_finalizeLong_64b: argument 0"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"XXH3_consumeStripes: argument 1"}
!85 = distinct !{!85, !"XXH3_consumeStripes"}
!86 = distinct !{!86, !6}
!87 = !{!88, !90}
!88 = distinct !{!88, !89, !"XXH3_mergeAccs: argument 1"}
!89 = distinct !{!89, !"XXH3_mergeAccs"}
!90 = distinct !{!90, !91, !"XXH3_finalizeLong_64b: argument 1"}
!91 = distinct !{!91, !"XXH3_finalizeLong_64b"}
!92 = !{!93, !94}
!93 = distinct !{!93, !89, !"XXH3_mergeAccs: argument 0"}
!94 = distinct !{!94, !91, !"XXH3_finalizeLong_64b: argument 0"}
!95 = !{!96, !98}
!96 = distinct !{!96, !97, !"XXH3_mergeAccs: argument 1"}
!97 = distinct !{!97, !"XXH3_mergeAccs"}
!98 = distinct !{!98, !99, !"XXH3_finalizeLong_64b: argument 1"}
!99 = distinct !{!99, !"XXH3_finalizeLong_64b"}
!100 = !{!101, !102}
!101 = distinct !{!101, !97, !"XXH3_mergeAccs: argument 0"}
!102 = distinct !{!102, !99, !"XXH3_finalizeLong_64b: argument 0"}
!103 = !{i64 2152218510}
!104 = distinct !{!104, !6}
!105 = !{!106}
!106 = distinct !{!106, !107, !"XXH3_update: argument 1"}
!107 = distinct !{!107, !"XXH3_update"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"XXH3_update: argument 0"}
!110 = !{!109, !106}
!111 = !{!112}
!112 = distinct !{!112, !113, !"XXH3_consumeStripes: argument 0"}
!113 = distinct !{!113, !"XXH3_consumeStripes"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"XXH3_consumeStripes: argument 1"}
!116 = !{!112, !117, !118}
!117 = distinct !{!117, !113, !"XXH3_consumeStripes: argument 2"}
!118 = distinct !{!118, !113, !"XXH3_consumeStripes: argument 3"}
!119 = !{!120, !112}
!120 = distinct !{!120, !121, !"XXH3_scalarRound: argument 0"}
!121 = distinct !{!121, !"XXH3_scalarRound"}
!122 = !{!123, !124, !115, !117, !118}
!123 = distinct !{!123, !121, !"XXH3_scalarRound: argument 1"}
!124 = distinct !{!124, !121, !"XXH3_scalarRound: argument 2"}
!125 = !{!126, !112}
!126 = distinct !{!126, !127, !"XXH3_scalarScrambleRound: argument 0"}
!127 = distinct !{!127, !"XXH3_scalarScrambleRound"}
!128 = !{!129, !115, !117, !118}
!129 = distinct !{!129, !127, !"XXH3_scalarScrambleRound: argument 1"}
!130 = !{!131, !112}
!131 = distinct !{!131, !132, !"XXH3_scalarRound: argument 0"}
!132 = distinct !{!132, !"XXH3_scalarRound"}
!133 = !{!134, !135, !115, !117, !118}
!134 = distinct !{!134, !132, !"XXH3_scalarRound: argument 1"}
!135 = distinct !{!135, !132, !"XXH3_scalarRound: argument 2"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"XXH3_consumeStripes: argument 0"}
!138 = distinct !{!138, !"XXH3_consumeStripes"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"XXH3_consumeStripes: argument 1"}
!141 = !{!137, !142, !143}
!142 = distinct !{!142, !138, !"XXH3_consumeStripes: argument 2"}
!143 = distinct !{!143, !138, !"XXH3_consumeStripes: argument 3"}
!144 = !{!140, !142, !143}
!145 = !{!146, !137}
!146 = distinct !{!146, !147, !"XXH3_scalarScrambleRound: argument 0"}
!147 = distinct !{!147, !"XXH3_scalarScrambleRound"}
!148 = !{!149, !140, !142, !143}
!149 = distinct !{!149, !147, !"XXH3_scalarScrambleRound: argument 1"}
!150 = !{!151, !137}
!151 = distinct !{!151, !152, !"XXH3_scalarRound: argument 0"}
!152 = distinct !{!152, !"XXH3_scalarRound"}
!153 = !{!154, !155, !140, !142, !143}
!154 = distinct !{!154, !152, !"XXH3_scalarRound: argument 1"}
!155 = distinct !{!155, !152, !"XXH3_scalarRound: argument 2"}
!156 = !{!157, !137}
!157 = distinct !{!157, !158, !"XXH3_scalarRound: argument 0"}
!158 = distinct !{!158, !"XXH3_scalarRound"}
!159 = !{!160, !161, !140, !142, !143}
!160 = distinct !{!160, !158, !"XXH3_scalarRound: argument 1"}
!161 = distinct !{!161, !158, !"XXH3_scalarRound: argument 2"}
!162 = !{!163, !165}
!163 = distinct !{!163, !164, !"XXH3_mergeAccs: argument 1"}
!164 = distinct !{!164, !"XXH3_mergeAccs"}
!165 = distinct !{!165, !166, !"XXH3_finalizeLong_64b: argument 1"}
!166 = distinct !{!166, !"XXH3_finalizeLong_64b"}
!167 = !{!168, !169}
!168 = distinct !{!168, !164, !"XXH3_mergeAccs: argument 0"}
!169 = distinct !{!169, !166, !"XXH3_finalizeLong_64b: argument 0"}
!170 = !{!171, !173, !174, !176}
!171 = distinct !{!171, !172, !"XXH3_hashLong_128b_internal: argument 0"}
!172 = distinct !{!172, !"XXH3_hashLong_128b_internal"}
!173 = distinct !{!173, !172, !"XXH3_hashLong_128b_internal: argument 1"}
!174 = distinct !{!174, !175, !"XXH3_hashLong_128b_withSecret: argument 0"}
!175 = distinct !{!175, !"XXH3_hashLong_128b_withSecret"}
!176 = distinct !{!176, !175, !"XXH3_hashLong_128b_withSecret: argument 1"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"XXH3_scalarRound: argument 0"}
!179 = distinct !{!179, !"XXH3_scalarRound"}
!180 = !{!181, !182, !171, !173, !174, !176}
!181 = distinct !{!181, !179, !"XXH3_scalarRound: argument 1"}
!182 = distinct !{!182, !179, !"XXH3_scalarRound: argument 2"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"XXH3_scalarRound: argument 0"}
!185 = distinct !{!185, !"XXH3_scalarRound"}
!186 = !{!187, !188, !171, !173, !174, !176}
!187 = distinct !{!187, !185, !"XXH3_scalarRound: argument 1"}
!188 = distinct !{!188, !185, !"XXH3_scalarRound: argument 2"}
!189 = !{!190, !192}
!190 = distinct !{!190, !191, !"XXH3_scalarScrambleRound: argument 0"}
!191 = distinct !{!191, !"XXH3_scalarScrambleRound"}
!192 = distinct !{!192, !193, !"XXH3_consumeStripes: argument 0"}
!193 = distinct !{!193, !"XXH3_consumeStripes"}
!194 = !{!195, !196, !197, !198}
!195 = distinct !{!195, !191, !"XXH3_scalarScrambleRound: argument 1"}
!196 = distinct !{!196, !193, !"XXH3_consumeStripes: argument 1"}
!197 = distinct !{!197, !193, !"XXH3_consumeStripes: argument 2"}
!198 = distinct !{!198, !193, !"XXH3_consumeStripes: argument 3"}
!199 = !{!200, !192}
!200 = distinct !{!200, !201, !"XXH3_scalarRound: argument 0"}
!201 = distinct !{!201, !"XXH3_scalarRound"}
!202 = !{!203, !204, !196, !197, !198}
!203 = distinct !{!203, !201, !"XXH3_scalarRound: argument 1"}
!204 = distinct !{!204, !201, !"XXH3_scalarRound: argument 2"}
!205 = !{!196}
!206 = !{!207, !192}
!207 = distinct !{!207, !208, !"XXH3_scalarRound: argument 0"}
!208 = distinct !{!208, !"XXH3_scalarRound"}
!209 = !{!210, !211, !196, !197, !198}
!210 = distinct !{!210, !208, !"XXH3_scalarRound: argument 1"}
!211 = distinct !{!211, !208, !"XXH3_scalarRound: argument 2"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"XXH3_scalarRound: argument 0"}
!214 = distinct !{!214, !"XXH3_scalarRound"}
!215 = !{!216, !217}
!216 = distinct !{!216, !214, !"XXH3_scalarRound: argument 1"}
!217 = distinct !{!217, !214, !"XXH3_scalarRound: argument 2"}
!218 = !{!219, !221}
!219 = distinct !{!219, !220, !"XXH3_hashLong_128b_internal: argument 0"}
!220 = distinct !{!220, !"XXH3_hashLong_128b_internal"}
!221 = distinct !{!221, !220, !"XXH3_hashLong_128b_internal: argument 1"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"XXH3_scalarRound: argument 0"}
!224 = distinct !{!224, !"XXH3_scalarRound"}
!225 = !{!226, !227, !219, !221}
!226 = distinct !{!226, !224, !"XXH3_scalarRound: argument 1"}
!227 = distinct !{!227, !224, !"XXH3_scalarRound: argument 2"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"XXH3_scalarRound: argument 0"}
!230 = distinct !{!230, !"XXH3_scalarRound"}
!231 = !{!232, !233, !219, !221}
!232 = distinct !{!232, !230, !"XXH3_scalarRound: argument 1"}
!233 = distinct !{!233, !230, !"XXH3_scalarRound: argument 2"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!236 = distinct !{!236, !"XXH3_hashLong_128b_withSeed_internal"}
!237 = !{!238, !240, !242}
!238 = distinct !{!238, !239, !"XXH3_mergeAccs: argument 1"}
!239 = distinct !{!239, !"XXH3_mergeAccs"}
!240 = distinct !{!240, !241, !"XXH3_finalizeLong_64b: argument 1"}
!241 = distinct !{!241, !"XXH3_finalizeLong_64b"}
!242 = distinct !{!242, !243, !"XXH3_finalizeLong_128b: argument 1"}
!243 = distinct !{!243, !"XXH3_finalizeLong_128b"}
!244 = !{!245, !246, !247}
!245 = distinct !{!245, !239, !"XXH3_mergeAccs: argument 0"}
!246 = distinct !{!246, !241, !"XXH3_finalizeLong_64b: argument 0"}
!247 = distinct !{!247, !243, !"XXH3_finalizeLong_128b: argument 0"}
!248 = !{!249, !242}
!249 = distinct !{!249, !250, !"XXH3_mergeAccs: argument 1"}
!250 = distinct !{!250, !"XXH3_mergeAccs"}
!251 = !{!252, !247}
!252 = distinct !{!252, !250, !"XXH3_mergeAccs: argument 0"}
!253 = distinct !{!253, !6}
!254 = !{!255}
!255 = distinct !{!255, !256, !"XXH3_finalizeLong_64b: argument 0"}
!256 = distinct !{!256, !"XXH3_finalizeLong_64b"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"XXH3_finalizeLong_64b: argument 1"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"XXH3_mergeAccs: argument 0"}
!261 = distinct !{!261, !"XXH3_mergeAccs"}
!262 = !{!263}
!263 = distinct !{!263, !261, !"XXH3_mergeAccs: argument 1"}
!264 = !{!265, !260, !255}
!265 = distinct !{!265, !266, !"XXH3_mix2Accs: argument 0"}
!266 = distinct !{!266, !"XXH3_mix2Accs"}
!267 = !{!268, !263, !258}
!268 = distinct !{!268, !266, !"XXH3_mix2Accs: argument 1"}
!269 = !{!263, !258}
!270 = !{!260, !255}
!271 = !{!272}
!272 = distinct !{!272, !273, !"XXH3_mergeAccs: argument 1"}
!273 = distinct !{!273, !"XXH3_mergeAccs"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"XXH3_mergeAccs: argument 0"}
!276 = !{!277, !279}
!277 = distinct !{!277, !278, !"XXH3_hashLong_128b_internal: argument 0"}
!278 = distinct !{!278, !"XXH3_hashLong_128b_internal"}
!279 = distinct !{!279, !278, !"XXH3_hashLong_128b_internal: argument 1"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"XXH3_scalarRound: argument 0"}
!282 = distinct !{!282, !"XXH3_scalarRound"}
!283 = !{!284, !285, !277, !279}
!284 = distinct !{!284, !282, !"XXH3_scalarRound: argument 1"}
!285 = distinct !{!285, !282, !"XXH3_scalarRound: argument 2"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"XXH3_scalarRound: argument 0"}
!288 = distinct !{!288, !"XXH3_scalarRound"}
!289 = !{!290, !291, !277, !279}
!290 = distinct !{!290, !288, !"XXH3_scalarRound: argument 1"}
!291 = distinct !{!291, !288, !"XXH3_scalarRound: argument 2"}
!292 = !{!293, !295, !296, !298}
!293 = distinct !{!293, !294, !"XXH3_hashLong_128b_internal: argument 0"}
!294 = distinct !{!294, !"XXH3_hashLong_128b_internal"}
!295 = distinct !{!295, !294, !"XXH3_hashLong_128b_internal: argument 1"}
!296 = distinct !{!296, !297, !"XXH3_hashLong_128b_withSecret: argument 0"}
!297 = distinct !{!297, !"XXH3_hashLong_128b_withSecret"}
!298 = distinct !{!298, !297, !"XXH3_hashLong_128b_withSecret: argument 1"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"XXH3_scalarRound: argument 0"}
!301 = distinct !{!301, !"XXH3_scalarRound"}
!302 = !{!303, !304, !293, !295, !296, !298}
!303 = distinct !{!303, !301, !"XXH3_scalarRound: argument 1"}
!304 = distinct !{!304, !301, !"XXH3_scalarRound: argument 2"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"XXH3_scalarRound: argument 0"}
!307 = distinct !{!307, !"XXH3_scalarRound"}
!308 = !{!309, !310, !293, !295, !296, !298}
!309 = distinct !{!309, !307, !"XXH3_scalarRound: argument 1"}
!310 = distinct !{!310, !307, !"XXH3_scalarRound: argument 2"}
