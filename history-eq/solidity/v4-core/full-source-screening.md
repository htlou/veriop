# v4-core complete pinned source-history intent screen

All 232 non-merge commits touching `src/` at the pinned revision received a message/path intent screen. The 82 fixed keyword candidates retain their prior source-audited labels. Six additional nonkeyword commits explicitly change gas-relevant arithmetic, repeated loads, or storage operations. Historical changed blobs for all six are missing locally, so no Certora old/new comparison or official gas benchmark has run for them. The screen may miss unstated gas effects; unresolved intent is not counted as an optimization.

| # | Commit | Subject | Intent screen |
|---:|---|---|---|
| 1 | [`a7cf038c`](https://github.com/Uniswap/v4-core/commit/a7cf038cd568801a79a9b4cf92cd5b52c95c8585) | fix(deps): resolve circular dependency that breaks clean builds (#964) | excluded_non_optimization |
| 2 | [`a22414e4`](https://github.com/Uniswap/v4-core/commit/a22414e4d7c0d0b0765827fe0a6c20dfd7f96291) | chore: remove unnecessary line (#903) | excluded_non_optimization |
| 3 | [`e5547d02`](https://github.com/Uniswap/v4-core/commit/e5547d021f0e6d0df2d675822830a4df5be3d429) | Natspec: Inflated feeGrowthGlobal (#906) | excluded_non_optimization |
| 4 | [`0f17b65a`](https://github.com/Uniswap/v4-core/commit/0f17b65aa61edee384d5129b7ea080f22905faa0) | update licenses (#916) | excluded_non_optimization |
| 5 | [`0a849b18`](https://github.com/Uniswap/v4-core/commit/0a849b1810210bc523da73399d6ed8e4480fd3f5) | Add initial owner as constructor argument (#914) | excluded_non_optimization |
| 6 | [`c8173143`](https://github.com/Uniswap/v4-core/commit/c8173143cf1e6f1c6c7b682a3563b263f149255f) | Update ERC-7751 revert bubbling (#889) | excluded_non_optimization |
| 7 | [`057c5320`](https://github.com/Uniswap/v4-core/commit/057c532076b7ebb3da812c07a3155efd28af709b) | Solve ToB-UNI4-3 without restricting sync (#886) | excluded_non_optimization |
| 8 | [`4e41c837`](https://github.com/Uniswap/v4-core/commit/4e41c837ab5b84d935d11227231d967d339355f6) | feat: use native gas snapshots (#911) | excluded_non_optimization |
| 9 | [`4aa6c3dd`](https://github.com/Uniswap/v4-core/commit/4aa6c3ddd3b540a3aa22021c02d2298e79ae3928) | Move initialize event (#909) | excluded_non_optimization |
| 10 | [`d9403bda`](https://github.com/Uniswap/v4-core/commit/d9403bdaaf9b2ae68e754678ecd5ba8e37289d1a) | remove IProtocolFeeController (#907) | excluded_non_optimization |
| 11 | [`f25e9fee`](https://github.com/Uniswap/v4-core/commit/f25e9fee12db6284e1af1561e97bda1a16e86a00) | Improve various comments (#908) | excluded_non_optimization |
| 12 | [`38437343`](https://github.com/Uniswap/v4-core/commit/38437343ba9cb8652e8cd9b172a5bbb8677fa1ad) | round swap fee up and check if protocol fee = swap fee (#905) | excluded_non_optimization |
| 13 | [`fc5b4cf3`](https://github.com/Uniswap/v4-core/commit/fc5b4cf317f014ba96fa92f3ea964e03c58acbdd) | Remove pull of protocol fee (#887) | excluded_non_optimization |
| 14 | [`88482f7d`](https://github.com/Uniswap/v4-core/commit/88482f7dc4356a7c395e199e454d50dc960bb6e7) | Remove initialize hookdata (#894) | excluded_non_optimization |
| 15 | [`18b223ca`](https://github.com/Uniswap/v4-core/commit/18b223cab19dc778d9d287a82d29fee3e99162b0) | Remove mandatory viaIR (#872) | confirmed_optimization; UNKNOWN |
| 16 | [`ce82aa59`](https://github.com/Uniswap/v4-core/commit/ce82aa59baf58c07dd1d4a05c9f9e02c6fad6fab) | Spearbit 105 (#870) | excluded_non_optimization |
| 17 | [`ec700768`](https://github.com/Uniswap/v4-core/commit/ec700768279d081106749b72708d8978a31bd44d) | Spearbit 43 and 44 (#867) | excluded_non_optimization |
| 18 | [`9c94b1a8`](https://github.com/Uniswap/v4-core/commit/9c94b1a8ded5b5c09bee0ed9526d10065756b83d) | SB-19: Remove revert sync (#866) | excluded_non_optimization |
| 19 | [`5a7990b1`](https://github.com/Uniswap/v4-core/commit/5a7990b127314af61998f37b6689a74f9c2db453) | gas limit as percentage (#861) | excluded_non_optimization |
| 20 | [`a7cea640`](https://github.com/Uniswap/v4-core/commit/a7cea640fd1398e2b2926b0a5e208c2900cee3cd) | NoDelegateCall.sol MIT License (#868) | excluded_non_optimization |
| 21 | [`4dc48bbd`](https://github.com/Uniswap/v4-core/commit/4dc48bbd89f4faf1e9493cd1563908d79aa10b0d) | ToB L01 (#856) | excluded_non_optimization |
| 22 | [`fbb9caf1`](https://github.com/Uniswap/v4-core/commit/fbb9caf19f0dda3e1ef822a567ea5c54ad2e9501) | :heavy_plus_sign: Add global usage of `PoolIdLibrary` for `PoolKey` struct (#819) | excluded_non_optimization |
| 23 | [`36d790b1`](https://github.com/Uniswap/v4-core/commit/36d790b1a3af38461453a13a6ff395290fbc11b2) | fix: use State for consistency, add natspec on SwapResults (#860) | excluded_non_optimization |
| 24 | [`3407bce4`](https://github.com/Uniswap/v4-core/commit/3407bce4b39869fe41ad5ec724b2df308c34900f) | Provide feesAccrued to afterLiquidity Hooks (#853) | excluded_non_optimization |
| 25 | [`0bb382b4`](https://github.com/Uniswap/v4-core/commit/0bb382b4c23c457c7e38398d89c6f4ab68d6dce1) | Spearbit M01, Certora M02, Spearbit i02 (#851) | excluded_non_optimization |
| 26 | [`352c7eee`](https://github.com/Uniswap/v4-core/commit/352c7eeea5cf9a1e6ebd080a32e23b465ceb04e1) | Revert certora L-01 (#852) | excluded_non_optimization |
| 27 | [`4da59767`](https://github.com/Uniswap/v4-core/commit/4da59767e25fdf81af7483627791dad0795ba476) | Spearbit core issues (#857) | excluded_non_optimization |
| 28 | [`19a09bb4`](https://github.com/Uniswap/v4-core/commit/19a09bb4b99acb2858d4eba3379287fb4bf1fdb6) | chore: remove unused imports (#749) | excluded_non_optimization |
| 29 | [`150a6962`](https://github.com/Uniswap/v4-core/commit/150a6962d549877fd1269c7220282f33118dd1b1) | SBi104: use consistent pragmas (#858) | excluded_non_optimization |
| 30 | [`4a2a4108`](https://github.com/Uniswap/v4-core/commit/4a2a4108a3bd48f1828c240d09739c10a583bbc7) | add mapping key names in pool state (#734) | excluded_non_optimization |
| 31 | [`8f147f1e`](https://github.com/Uniswap/v4-core/commit/8f147f1ed3b295bef0b77926bab63049feb4ef4a) | Avoid recomputing `amountIn` when `exactIn` and `amountRemainingLessF… (#718) | confirmed_optimization; UNKNOWN |
| 32 | [`d47ecf90`](https://github.com/Uniswap/v4-core/commit/d47ecf90abec6a30350edd9d18f7493a23efb39b) | SafeCast int128 to uint128 (#850) | excluded_non_optimization |
| 33 | [`fe946ca1`](https://github.com/Uniswap/v4-core/commit/fe946ca185703947df8d014b2024f8be3a7939a9) | perf: Refactor `BitMath` and use it in `TickMath.getTickAtSqrtPrice` (#822) | confirmed_optimization; UNKNOWN |
| 34 | [`165f0888`](https://github.com/Uniswap/v4-core/commit/165f0888ad347096d72dcf054c4df361dcfc559a) | spearbit I-09 (#842) | excluded_non_optimization |
| 35 | [`e85d9b80`](https://github.com/Uniswap/v4-core/commit/e85d9b80e87d0966c4221d707ae7d8a224391a68) | abdk cvf9 (#798) | excluded_non_optimization |
| 36 | [`5951b359`](https://github.com/Uniswap/v4-core/commit/5951b35966a546e1028648ddbfff3c3e473e10d5) | Spearbit Gas-08 (#844) | confirmed_optimization; UNKNOWN |
| 37 | [`0fc5a0b2`](https://github.com/Uniswap/v4-core/commit/0fc5a0b2f44032d5c67816ec9663dd4d02d5dc64) | Spearbit Gas-02: Optimize `tickSpacingToMaxLiquidityPerTick` (#823) | confirmed_optimization; UNKNOWN |
| 38 | [`9325e94e`](https://github.com/Uniswap/v4-core/commit/9325e94e850002a7ea88b3c7454db0c1203950b9) | trail of bits i02 (#831) | excluded_non_optimization |
| 39 | [`1755bfc5`](https://github.com/Uniswap/v4-core/commit/1755bfc558e91db7bf539b763754d8c8feba50b8) | trail of bits i01 (#836) | excluded_non_optimization |
| 40 | [`32f5c852`](https://github.com/Uniswap/v4-core/commit/32f5c8521960fa3e290833668dac5b5d7fc7d6e6) | fix: Don't overload `state` naming and only return necessary vars in swap (#848) | intent_unresolved |
| 41 | [`314102b3`](https://github.com/Uniswap/v4-core/commit/314102b3d3febd2ffec2bd3b6ae22a04036e33f9) | spearbit L-04 (#840) | excluded_non_optimization |
| 42 | [`dc6a1ee2`](https://github.com/Uniswap/v4-core/commit/dc6a1ee267374bb0d988237104c4b3b15517d15f) | spearbit i-05 (#838) | excluded_non_optimization |
| 43 | [`182712cf`](https://github.com/Uniswap/v4-core/commit/182712cf7146f31cd5c969749bbe3a188f030d1a) | sb14: use isAddressZero (#834) | excluded_non_optimization |
| 44 | [`35fab85b`](https://github.com/Uniswap/v4-core/commit/35fab85b127fa32a73664b2c93244d564507f9d8) | SB 12: Fix Comments (#846) | excluded_non_optimization |
| 45 | [`cd989b47`](https://github.com/Uniswap/v4-core/commit/cd989b470f1e3cb89d07da428e3785dd00b32a32) | Spearbit gas 09 (#828) | confirmed_optimization; UNKNOWN |
| 46 | [`aafc1774`](https://github.com/Uniswap/v4-core/commit/aafc177490b2756e8f9e34727072166eac4c005e) | fix _fetchProtocolFees return (#847) | excluded_non_optimization |
| 47 | [`a4b28e34`](https://github.com/Uniswap/v4-core/commit/a4b28e34f16ac38d8a55df42054cbf241b616664) | tob I04: add donate event (#845) | excluded_non_optimization |
| 48 | [`4e421219`](https://github.com/Uniswap/v4-core/commit/4e4212190368e4af29d52c9e796f5b7900f1cc73) | trail of bits i03 (#835) | excluded_non_optimization |
| 49 | [`c7a1e86e`](https://github.com/Uniswap/v4-core/commit/c7a1e86e7ae7be41f404d1e57a2f724d95e89af4) | Spearbit i-06 (#829) | excluded_non_optimization |
| 50 | [`12a1d648`](https://github.com/Uniswap/v4-core/commit/12a1d648fd2de6865b0ac56ce9fe7dcd5937db29) | chore: Minor gas optimization (#841) | confirmed_optimization; EQUIV |
| 51 | [`e8e63c87`](https://github.com/Uniswap/v4-core/commit/e8e63c87afb433b650c2387d6d839a239ee05653) | Spearbit gas-05 (#825) | confirmed_optimization; UNKNOWN |
| 52 | [`2c54be77`](https://github.com/Uniswap/v4-core/commit/2c54be774acb0653f380be1d480f4cf1891e624e) | Spearbit gas 06: Optimise clear (#826) | confirmed_optimization; UNKNOWN |
| 53 | [`e74c9bbd`](https://github.com/Uniswap/v4-core/commit/e74c9bbd42fe0fb1c20e2560e72d5c2e62fb45f1) | change variable of the fee amount going to the protocol (#837) | excluded_non_optimization |
| 54 | [`11953555`](https://github.com/Uniswap/v4-core/commit/11953555e87a976e505b9af49ec2c4c64ac821c2) | Spearbit i-12 (#830) | excluded_non_optimization |
| 55 | [`efb0dec6`](https://github.com/Uniswap/v4-core/commit/efb0dec66562c494ea54d67adfe0939d759c275e) | Spearbit gas 07 (#827) | excluded_non_optimization |
| 56 | [`3609d819`](https://github.com/Uniswap/v4-core/commit/3609d8196a87c8107a55da8f40ecaf88d7323b05) | Nonzero delta count capitalization (#815) | excluded_non_optimization |
| 57 | [`e37e0109`](https://github.com/Uniswap/v4-core/commit/e37e01097e8d949c8a2d9711960d086569cf4e62) | add salt to modLiq event (#818) | excluded_non_optimization |
| 58 | [`d3be0026`](https://github.com/Uniswap/v4-core/commit/d3be0026a60a429c76d302b3aebbc20000191256) | add parameter to bubbled revert wrapper (#817) | excluded_non_optimization |
| 59 | [`825132a5`](https://github.com/Uniswap/v4-core/commit/825132a5422e20c37296f2fc378ed109003f0ca7) | fix natspec (#807) | excluded_non_optimization |
| 60 | [`53ede9d4`](https://github.com/Uniswap/v4-core/commit/53ede9d41481479c6042e4e66fbb96af969f177f) | rm public Tick Spacing limits (#810) | excluded_non_optimization |
| 61 | [`799dd2cb`](https://github.com/Uniswap/v4-core/commit/799dd2cb980319a8d3b827b6a7aa59a606634553) | lib/solmate/src -> lib/somate (#811) | excluded_non_optimization |
| 62 | [`b3591ab6`](https://github.com/Uniswap/v4-core/commit/b3591ab61232f2598cccacb944fcf45f00e52807) | fix: add sqrtPriceX96 and tick to initialize event (#808) | excluded_non_optimization |
| 63 | [`f13e4c5f`](https://github.com/Uniswap/v4-core/commit/f13e4c5f8a6e9928a1e86b613e3ef7deb559baec) | update StateLibrary.sol (#805) | excluded_non_optimization |
| 64 | [`259ea7b0`](https://github.com/Uniswap/v4-core/commit/259ea7b0fd437117696cdf1e42f358167d67fee9) | calculate positionKey with a helper function (#803) | excluded_non_optimization |
| 65 | [`c8182099`](https://github.com/Uniswap/v4-core/commit/c8182099a5a76cf8a2175e7fbbaa0171b9f04977) | Update openzeppelin-contracts (#802) | excluded_non_optimization |
| 66 | [`7a720315`](https://github.com/Uniswap/v4-core/commit/7a72031574fc4548ca8fce197114cf87d5a2c037) | certora audit into main (#795) | excluded_non_optimization |
| 67 | [`552192f5`](https://github.com/Uniswap/v4-core/commit/552192f5912d7625b80bf6684127b96cdda18cca) | ABDK CVF 18, 19, 54: bubble-up errors (#790) | excluded_non_optimization |
| 68 | [`197b0666`](https://github.com/Uniswap/v4-core/commit/197b066687be7e2b8409cb507538333c04450a48) | remove reserves, replaced by CurrencyReserves (#796) | excluded_non_optimization |
| 69 | [`f350d10a`](https://github.com/Uniswap/v4-core/commit/f350d10ab6e186b40abe21d0eaf7a4eceb7203d9) | ABDK CVF 44 (#793) | excluded_non_optimization |
| 70 | [`ccc83abb`](https://github.com/Uniswap/v4-core/commit/ccc83abbc6f3b28ce5a6fbf7000e9682df8935f5) | ABDK: Custom error params (#789) | excluded_non_optimization |
| 71 | [`4e40e536`](https://github.com/Uniswap/v4-core/commit/4e40e536b9488d00ff8f2725941de5bf60841248) | feat: add clear (#792) | excluded_non_optimization |
| 72 | [`ad4b3f03`](https://github.com/Uniswap/v4-core/commit/ad4b3f03436e079b36001dc63f7c2eeca6f3dc84) | Certora I01 - Add recipient argument to settle... (#786) | excluded_non_optimization |
| 73 | [`63ba0559`](https://github.com/Uniswap/v4-core/commit/63ba055959c10483ec32260d18f713d6666cc57a) | ABDK-147 return bytes32 array (#791) | excluded_non_optimization |
| 74 | [`1f4e8b64`](https://github.com/Uniswap/v4-core/commit/1f4e8b647d5079a6acf054b3f5d8ead1144a0d79) | Fix #752: Reuse _computeSlot result in _accountDelta (#753) | confirmed_optimization; UNKNOWN |
| 75 | [`9b3a5f76`](https://github.com/Uniswap/v4-core/commit/9b3a5f76e7898c2dbc5c81a8c0e92915e5b5c0e7) | Certora i03, ABDK CVF 15&16 (#781) | excluded_non_optimization |
| 76 | [`71e7f56b`](https://github.com/Uniswap/v4-core/commit/71e7f56ba8b32ea5a7e435238626c60bcd5f8871) | Comments for overflow clarity (#782) | excluded_non_optimization |
| 77 | [`f9c8d784`](https://github.com/Uniswap/v4-core/commit/f9c8d784d5dd00029680283c4eb07776243c22e2) | Various ABDK audit fixes (#785) | confirmed_optimization; UNKNOWN |
| 78 | [`98f98d82`](https://github.com/Uniswap/v4-core/commit/98f98d8225722b55b657a5b0018ecf2af872a40d) | OZ M01, Certora M01: Fix memory safe assembly (#759) | excluded_non_optimization |
| 79 | [`3f49de7e`](https://github.com/Uniswap/v4-core/commit/3f49de7eaf2331e5db5e8e4e0b596e43b4e7f10e) | OZ N14: docstrings (#773) | excluded_non_optimization |
| 80 | [`d8f7a4d8`](https://github.com/Uniswap/v4-core/commit/d8f7a4d84a30cf0722d03e729d053eee623c67fc) | OZ L03, Certora I02 (#776) | excluded_non_optimization |
| 81 | [`4287ddf9`](https://github.com/Uniswap/v4-core/commit/4287ddf9c35bf37c6a81e45cfe2fb9dcae00fa28) | C01: native ERC20 double spend (#779) | excluded_non_optimization |
| 82 | [`e2844188`](https://github.com/Uniswap/v4-core/commit/e28441887a67ded29c6a82f6df34dc741e6f07b6) | OZ N01, ABDK, Standardise pragma versions (#784) | excluded_non_optimization |
| 83 | [`a13a07a4`](https://github.com/Uniswap/v4-core/commit/a13a07a43e86f9a03b48c9fbab3df25bbfcf2eff) | OZ M02: ProtocolFeeController Gas Griefing (#771) | excluded_non_optimization |
| 84 | [`7a0f530b`](https://github.com/Uniswap/v4-core/commit/7a0f530bfdb341b87c37e8be774cd0f1cb8e5865) | N04 code clarity (#777) | excluded_non_optimization |
| 85 | [`6592d5c9`](https://github.com/Uniswap/v4-core/commit/6592d5c9af6226fc6772d22cd63845dbac88c7cc) | n-06: removed discrepancies from interfaces (#762) | excluded_non_optimization |
| 86 | [`8055eb22`](https://github.com/Uniswap/v4-core/commit/8055eb22eb07244d523de47f8924a387b8954967) | n-05: added naming for parameters (#772) | excluded_non_optimization |
| 87 | [`c0844be7`](https://github.com/Uniswap/v4-core/commit/c0844be716e0a8b72d914d46bd89a8aa2c60c9b3) | OZ L01: Unsafe ABI Encoding (#770) | excluded_non_optimization |
| 88 | [`b5acb72a`](https://github.com/Uniswap/v4-core/commit/b5acb72a59e824364faf846fcce897f9eee763b4) | OZ N02 memory safe annotation (#778) | excluded_non_optimization |
| 89 | [`d81c96e1`](https://github.com/Uniswap/v4-core/commit/d81c96e16b8c80104e3bef4f14318c8001bb87d9) | n-07: removed unused namings of return variables (#758) | excluded_non_optimization |
| 90 | [`f195d92b`](https://github.com/Uniswap/v4-core/commit/f195d92bd38332e635e32a98901fbaf6ff3026d7) | n-08: remove unused imports (#763) | excluded_non_optimization |
| 91 | [`2e300d14`](https://github.com/Uniswap/v4-core/commit/2e300d146729dfdc31ade0218db00292ddc375bd) | n-09: removed unused custom error (#764) | excluded_non_optimization |
| 92 | [`0631e0b1`](https://github.com/Uniswap/v4-core/commit/0631e0b1574d5dd05d5be58f34d0c2adb837aed4) | OZ N11: state variable visibility not explicitly declared (#766) | excluded_non_optimization |
| 93 | [`7a73b198`](https://github.com/Uniswap/v4-core/commit/7a73b19896f3a425e9b0d9a07911d8f63de87ba8) | n-12: added namings for parameters in mappings (#767) | excluded_non_optimization |
| 94 | [`e142a819`](https://github.com/Uniswap/v4-core/commit/e142a819cd1da426aa0ba6bd7ecf6046048195e1) | OZ N13: lack of indexed event parameter (#768) | excluded_non_optimization |
| 95 | [`66efa4ad`](https://github.com/Uniswap/v4-core/commit/66efa4ad45ea3ffb4d04ff4efb78a872edad9e1f) | OZ N15 docstrings (#775) | excluded_non_optimization |
| 96 | [`ac475328`](https://github.com/Uniswap/v4-core/commit/ac47532844db17525769b06de106a3c98f26d12d) | fix natspec around override fee flag (#745) | excluded_non_optimization |
| 97 | [`4caac19f`](https://github.com/Uniswap/v4-core/commit/4caac19fcecbe99e830c93d4022c5acbc22ecea2) | noDelegateCall on locked functions (#743) | excluded_non_optimization |
| 98 | [`ae86975b`](https://github.com/Uniswap/v4-core/commit/ae86975b058d386c9be24e8994236f662affacdb) | fix warning (#732) | excluded_non_optimization |
| 99 | [`d5d4957b`](https://github.com/Uniswap/v4-core/commit/d5d4957b35750e8cf1f3db5584e77eef4861c21e) | annotate memory safe assembly for further gas optimizations (#723) | confirmed_optimization; UNKNOWN |
| 100 | [`9b17e038`](https://github.com/Uniswap/v4-core/commit/9b17e038f22be8949f1cc907c83f39415bb2e07f) | use bytes32 (#725) | intent_unresolved |
| 101 | [`ad4cb384`](https://github.com/Uniswap/v4-core/commit/ad4cb38481b3428c3d2b39ea9a9286c8d0a91ba7) | Remove variable assignment for constant access in assembly (#722) | confirmed_optimization; UNKNOWN |
| 102 | [`35edd8ed`](https://github.com/Uniswap/v4-core/commit/35edd8eda629b4e6eedb486e7f6e5cb74a8e4071) | Enable via IR compilation / memory safe issue fix (#692) | confirmed_optimization; UNKNOWN |
| 103 | [`c0adc1c5`](https://github.com/Uniswap/v4-core/commit/c0adc1c5404cae7ec63feee300d184c28a90cfae) | Refactor hook call to use inline assembly (#705) | confirmed_optimization; UNKNOWN |
| 104 | [`0260e43c`](https://github.com/Uniswap/v4-core/commit/0260e43cb28dae7be84e9ef1ea91cc0f5b055f1b) | Optimize `CurrencyLibrary.transfer` (#717) | confirmed_optimization; UNKNOWN |
| 105 | [`d50bfc5e`](https://github.com/Uniswap/v4-core/commit/d50bfc5eb0b90a2b93b3544b3c907128b8b7ff51) | Refactor and optimize `SwapMath` (#280) | confirmed_optimization; UNKNOWN |
| 106 | [`f265610e`](https://github.com/Uniswap/v4-core/commit/f265610ea65edb16b113ab857db1bcecfb7151b4) | tickSpacingToMaxLiquidityPerTick not the same as v3 (#666) | excluded_non_optimization |
| 107 | [`9affea63`](https://github.com/Uniswap/v4-core/commit/9affea63b38ce1cba6db97522b704bc3a2c70012) | Cleanup PoolManager comments and Readme (#715) | excluded_non_optimization |
| 108 | [`e624ffe2`](https://github.com/Uniswap/v4-core/commit/e624ffe2baccae6de6d027f1d28548ac156f5e74) | Prevent duplicate dynamic fee pools (#711) | excluded_non_optimization |
| 109 | [`5eb17c99`](https://github.com/Uniswap/v4-core/commit/5eb17c9995fb5377ce42b16c6dfe2df43ef42fa0) | v3 fuzzer (#658) | excluded_non_optimization |
| 110 | [`3118115c`](https://github.com/Uniswap/v4-core/commit/3118115c56e57b256e54eb17d0d1b0776614b14c) | just have 1 check function (#714) | excluded_non_optimization |
| 111 | [`05f986d2`](https://github.com/Uniswap/v4-core/commit/05f986d2ec2e09c8d1ed48b2d1a8d7379bfa46a8) | general cleanup (#707) | excluded_non_optimization |
| 112 | [`15ec9afd`](https://github.com/Uniswap/v4-core/commit/15ec9afd132347528f7db18151ff3836e3d63392) | rename CurrencySettleTake, move to test (#712) | excluded_non_optimization |
| 113 | [`bf06c56f`](https://github.com/Uniswap/v4-core/commit/bf06c56f8a876e26a857c49b195bd74cba2604b9) | Use `abi.encodeCall` in place of `abi.encodeWithSelector` (#704) | confirmed_optimization; UNKNOWN |
| 114 | [`65690c07`](https://github.com/Uniswap/v4-core/commit/65690c0719b3eade39a852e4c2e9ecc9af41f6e7) | Revert custom errors with new `CustomRevert` library (#695) | excluded_non_optimization |
| 115 | [`620fab1e`](https://github.com/Uniswap/v4-core/commit/620fab1ebf54a56b4fe08018c7ffc152369e322f) | Optimize `Extsload` and `Exttload`, add comments and fuzz test (#674) | confirmed_optimization; UNKNOWN |
| 116 | [`03636de8`](https://github.com/Uniswap/v4-core/commit/03636de867c3bdf3948622b4143a22ee0178add1) | Revert `SqrtPriceMath` errors in assembly (#694) | confirmed_optimization; UNKNOWN |
| 117 | [`3351c80e`](https://github.com/Uniswap/v4-core/commit/3351c80e58e6300cb263d33a4efe75b88ad7b9b2) | Protocolfees tests (#691) | excluded_non_optimization |
| 118 | [`e73be0a9`](https://github.com/Uniswap/v4-core/commit/e73be0a9c3351f6d20dc7fd772417bce5a279b07) | use better bounds for liquidity (#688) | excluded_non_optimization |
| 119 | [`4ea21e0f`](https://github.com/Uniswap/v4-core/commit/4ea21e0f3410d36d3f35a6ed8611dd4c3fc64177) | Optimize overflow check in `mulDivRoundingUp` (#667) | confirmed_optimization; UNKNOWN |
| 120 | [`e26ed2b3`](https://github.com/Uniswap/v4-core/commit/e26ed2b314278da0751042a22c85c9fb61cb1020) | Change Hook Flags to LSB (#558) | excluded_non_optimization |
| 121 | [`b5383561`](https://github.com/Uniswap/v4-core/commit/b538356117bbbf6617ee314d9b0cccb005950b6a) | refactor: Remove PoolGetters (#683) | excluded_non_optimization |
| 122 | [`86532f8d`](https://github.com/Uniswap/v4-core/commit/86532f8de7be5c0a1daf52ee2fd00ea60a8e4577) | Optimize `price` calculation in `TickMath.getSqrtPriceAtTick` (#664) | confirmed_optimization; UNKNOWN |
| 123 | [`d5c21e79`](https://github.com/Uniswap/v4-core/commit/d5c21e796c716a8e121295ce72328f34bc941b9d) | Optimize `SqrtPriceMath.getAmount1Delta` (#676) | confirmed_optimization; UNKNOWN |
| 124 | [`c32b28b8`](https://github.com/Uniswap/v4-core/commit/c32b28b8f7f8cc24e7b81d2a60a8b370a53a08f9) | Optimize `TickMath` bounds check in assembly (#669) | confirmed_optimization; UNKNOWN |
| 125 | [`eb6a6718`](https://github.com/Uniswap/v4-core/commit/eb6a6718c1cd9ccd4f8b9469f1eb34980293c643) | Refactor swap logic and add `getSqrtPriceTarget` function (#662) | excluded_non_optimization |
| 126 | [`fa5164a1`](https://github.com/Uniswap/v4-core/commit/fa5164a1e26b3b15366816a40e4e0ed6d740850b) | Optimize `absTick` calculation in `TickMath.getSqrtPriceAtTick` (#663) | confirmed_optimization; UNKNOWN |
| 127 | [`e3bef1e7`](https://github.com/Uniswap/v4-core/commit/e3bef1e743822a4a80b6497a61d933fe6a75874d) | Optimize `sqrtPriceX96` rounding in `TickMath.getSqrtPriceAtTick` (#665) | confirmed_optimization; UNKNOWN |
| 128 | [`2df9bb3b`](https://github.com/Uniswap/v4-core/commit/2df9bb3b76bf26fbc5512c320d672893da398ee0) | Optimize `TickBitmap.flipTick` using assembly (#653) | confirmed_optimization; UNKNOWN |
| 129 | [`edc9b10b`](https://github.com/Uniswap/v4-core/commit/edc9b10ba31998d0b387e49c1f8a88a0310f977b) | Optimize `position` and factor out logic to compute compressed tick in `TickBitmap` (#654) | confirmed_optimization; UNKNOWN |
| 130 | [`6786fd42`](https://github.com/Uniswap/v4-core/commit/6786fd4283c3e5af20a6a3eb4fc1da3ce8ac9e7a) | add reverting tests, fix fuzz for hooks.t.sol (#548) | excluded_non_optimization |
| 131 | [`e3cea107`](https://github.com/Uniswap/v4-core/commit/e3cea1076d7f02b98f279c68424621141a811526) | Optimize `ProtocolFeeLibrary` (#283) | confirmed_optimization; UNKNOWN |
| 132 | [`285b53e3`](https://github.com/Uniswap/v4-core/commit/285b53e36a076f419160ec3bd5d7f657b5633bae) | Use packed stack-based version of  Slot0 structure (#613) | confirmed_optimization; UNKNOWN |
| 133 | [`2e30d658`](https://github.com/Uniswap/v4-core/commit/2e30d65899e1602137ac68bc725f8000011c1c0a) | Currency unit tests (#596) | excluded_non_optimization |
| 134 | [`354c34df`](https://github.com/Uniswap/v4-core/commit/354c34df21aac4b00c25d5dc559353dd79ae1246) | remove swap cache (#597) | intent_unresolved |
| 135 | [`ebad4111`](https://github.com/Uniswap/v4-core/commit/ebad4111dc0f3aea8f17c7d06d784b81759b6672) | chore: fix typos (#657) | excluded_non_optimization |
| 136 | [`02c730e1`](https://github.com/Uniswap/v4-core/commit/02c730e129349122bff5344b986ac1e8ec0c268a) | clean up protocolfeelibrary tests (#660) | excluded_non_optimization |
| 137 | [`e3247e73`](https://github.com/Uniswap/v4-core/commit/e3247e736c62b209b79b0a885033923e3ad54257) | remove unnecessary line (#661) | intent_unresolved |
| 138 | [`975bb801`](https://github.com/Uniswap/v4-core/commit/975bb801a5d5bcef14359d4c1e631aaa0695b23f) | beforeSwap returns dynamic fee (#648) | excluded_non_optimization |
| 139 | [`7d970265`](https://github.com/Uniswap/v4-core/commit/7d970265c3cbada60158ae1e67816c045cf039b6) | Pool.State Library (extsload) (#579) | excluded_non_optimization |
| 140 | [`81a69c6f`](https://github.com/Uniswap/v4-core/commit/81a69c6ffe83e4f27fd4d4c686a129292f5d28ab) | Accurate liquidity metering (#655) | excluded_non_optimization |
| 141 | [`e4271089`](https://github.com/Uniswap/v4-core/commit/e4271089c5188009f320f527b404e7679e6e89cd) | Optimize `SafeCast` (#576) | confirmed_optimization; UNKNOWN |
| 142 | [`568f7c45`](https://github.com/Uniswap/v4-core/commit/568f7c45aed0dfa6ed04601aae18cd768d00b9d3) | Refactor and optimize `Pool.swap` (#603) | confirmed_optimization; UNKNOWN |
| 143 | [`5bcb2e65`](https://github.com/Uniswap/v4-core/commit/5bcb2e65216b9b3bf90df35fee34533311986f77) | Sparse extsload (#647) | confirmed_optimization; UNKNOWN |
| 144 | [`0f5d7394`](https://github.com/Uniswap/v4-core/commit/0f5d73947685bb8e154bf0f44060a3a55543e63a) | Move balance delta assignment into unchecked block in `Pool.donate` (#643) | confirmed_optimization; UNKNOWN |
| 145 | [`30671fdc`](https://github.com/Uniswap/v4-core/commit/30671fdcc0060dce1d0e5511e37e99cc77bfcea7) | Before swap returns unspecified delta (#642) | excluded_non_optimization |
| 146 | [`2ca3f3be`](https://github.com/Uniswap/v4-core/commit/2ca3f3beec4b11640ec5061bbb72f671d58e039c) | Accurate swap gas (#645) | excluded_non_optimization |
| 147 | [`7f062b2d`](https://github.com/Uniswap/v4-core/commit/7f062b2dc2f786a10c67e831fb35fbe334241208) | Fix typo in PoolManager.sol (#644) | excluded_non_optimization |
| 148 | [`616e9888`](https://github.com/Uniswap/v4-core/commit/616e98882ccc0dc026553173210e5a4bc7f6744a) | fix: Replace `shr` with `sar` for integer types (#586) | excluded_non_optimization |
| 149 | [`830dfffa`](https://github.com/Uniswap/v4-core/commit/830dfffa01b3e108114c358780bf88d5ab9cef65) | Make `BalanceDelta` great (#641) | confirmed_optimization; UNKNOWN |
| 150 | [`3b698eb0`](https://github.com/Uniswap/v4-core/commit/3b698eb044e8c92065ec0b53a580127ddedd3d8d) | Refactor `Position.update` (#592) | confirmed_optimization; UNKNOWN |
| 151 | [`8dfc5365`](https://github.com/Uniswap/v4-core/commit/8dfc5365d77f60db93d65a86dbb581f036d69db2) | Refactor `modifyLiquidity` function in `Pool` (#604) | confirmed_optimization; UNKNOWN |
| 152 | [`8b4473e2`](https://github.com/Uniswap/v4-core/commit/8b4473e2a3215063f6761e7da94e008cdcc75c3d) | Sqrt ratio -> sqrt price (#629) | excluded_non_optimization |
| 153 | [`e09f003b`](https://github.com/Uniswap/v4-core/commit/e09f003bf8e3410f8729a08aada29bcfd463f7be) | [Chore] Fix IHooks Return Type in comments (#638) | excluded_non_optimization |
| 154 | [`80b75259`](https://github.com/Uniswap/v4-core/commit/80b75259c9501d51046ca6e53704257495b59cf9) | Hooks return deltas (#482) | excluded_non_optimization |
| 155 | [`241e025b`](https://github.com/Uniswap/v4-core/commit/241e025bfb45e031aaac8b3d59a12f98c7559612) | Add salt to modifyLiquidity params (#608) | excluded_non_optimization |
| 156 | [`6ca9e111`](https://github.com/Uniswap/v4-core/commit/6ca9e111ceead732a6f900219a7c8b1d3e456dc4) | fix foundry warnings (#632) | excluded_non_optimization |
| 157 | [`579adfaf`](https://github.com/Uniswap/v4-core/commit/579adfafb13970c08cad1cbca9c53248ef314096) | Make TickBitmap MIT license (#634) | excluded_non_optimization |
| 158 | [`bf320765`](https://github.com/Uniswap/v4-core/commit/bf320765ba517d979e49eda02589dcbfd46cdc8f) | feat: add ASCII (#626) | excluded_non_optimization |
| 159 | [`a8ca4bc9`](https://github.com/Uniswap/v4-core/commit/a8ca4bc93e883a856a2e9eb3e62744f313af550c) | Optimise currency delta lib (#598) | confirmed_optimization; UNKNOWN |
| 160 | [`d087b73d`](https://github.com/Uniswap/v4-core/commit/d087b73d4c202756b6eb8c24828b633deebadd95) | Cache liquidity in Pool.donate function (#614) | confirmed_optimization; UNKNOWN |
| 161 | [`b9f442cc`](https://github.com/Uniswap/v4-core/commit/b9f442cc40ac13d01aa23796ed9e2523f53ed9a7) | Optimize swap state structure allocation (#617) | confirmed_optimization; UNKNOWN |
| 162 | [`da8067f7`](https://github.com/Uniswap/v4-core/commit/da8067f770a4971a129aa90a8042d6d69b7275fa) | Unsafemath tests (#612) | excluded_non_optimization |
| 163 | [`f046b135`](https://github.com/Uniswap/v4-core/commit/f046b135798834cc8d95255a9ae8e73820649f9d) | BitMath tests (#607) | excluded_non_optimization |
| 164 | [`92257892`](https://github.com/Uniswap/v4-core/commit/92257892e0e2e29232e7895789f5f638fcdddf06) | Update tests to use lastCallGas and --isolate (#619) | excluded_non_optimization |
| 165 | [`fa0de1c9`](https://github.com/Uniswap/v4-core/commit/fa0de1c96f3c76347f264566e10eeea92fd269f2) | Remove indexed modifier from select fields (#595) | excluded_non_optimization |
| 166 | [`e3c4dadb`](https://github.com/Uniswap/v4-core/commit/e3c4dadb47fde3b640166c5ab1ac241e13acac57) | Nonzero delta count test (#591) | excluded_non_optimization |
| 167 | [`18320a9f`](https://github.com/Uniswap/v4-core/commit/18320a9ff40954a62f733c71edbdfe722744b9c0) | make protocol fee additive (#547) | confirmed_optimization; UNKNOWN |
| 168 | [`bd6cce29`](https://github.com/Uniswap/v4-core/commit/bd6cce29aec544aeb015cb9ce595266712854782) | Uncheck negation after `toInt128` (#589) | confirmed_optimization; UNKNOWN |
| 169 | [`3fd55459`](https://github.com/Uniswap/v4-core/commit/3fd554596e882684a35d23817e58f2aed6994ac0) | make reservesOf transient (#511) | confirmed_optimization; UNKNOWN |
| 170 | [`c164fd09`](https://github.com/Uniswap/v4-core/commit/c164fd098fac23e9c849cb7462127e6df5469493) | Currency settle take library (#578) | excluded_non_optimization |
| 171 | [`43fa6c32`](https://github.com/Uniswap/v4-core/commit/43fa6c32ecdfdab712ec8e6f76dabd2f48a6b98e) | change protocol fee push to be via protocol fee controller (#577) | excluded_non_optimization |
| 172 | [`6b696371`](https://github.com/Uniswap/v4-core/commit/6b69637107a40ed2bb3f7beccdf45c48885ab944) | Reject native currency for non-native call (#556) | excluded_non_optimization |
| 173 | [`02ddc0f7`](https://github.com/Uniswap/v4-core/commit/02ddc0f7513d5d01ef815a36951c067e3b0d9116) | Return feeDelta from modifyLiquidity (#565) | excluded_non_optimization |
| 174 | [`d0d6b149`](https://github.com/Uniswap/v4-core/commit/d0d6b149d3289c8a2c4d202b71accd77ed59fce6) | move extsload to MIT licensed module (#484) | excluded_non_optimization |
| 175 | [`3b4cb205`](https://github.com/Uniswap/v4-core/commit/3b4cb20506b626522deae5c0271ad8a710fd1aa9) | Use `addDelta` for adding liquidity deltas in `Pool` (#568) | confirmed_optimization; UNKNOWN |
| 176 | [`126ec867`](https://github.com/Uniswap/v4-core/commit/126ec8670566e17707683edf05461a106bead129) | do `abi.encodePacked` with inline assembly in `Position.get` (#279) | confirmed_optimization; UNKNOWN |
| 177 | [`9f50d5df`](https://github.com/Uniswap/v4-core/commit/9f50d5df8bb5c2172f16306090d0653e289c1556) | Replace modulo with bit operations (#483) | confirmed_optimization; UNKNOWN |
| 178 | [`c5a23f0c`](https://github.com/Uniswap/v4-core/commit/c5a23f0cfad79ec59136ec5db614a6427172f5bb) | Simple storage and memory caching optimizations in `Pool` (#567) | confirmed_optimization; UNKNOWN |
| 179 | [`f80b503a`](https://github.com/Uniswap/v4-core/commit/f80b503a78ce17637e59b1cfec61df96b6f339c1) | revert back to relative pathing (#571) | excluded_non_optimization |
| 180 | [`11aa1f5b`](https://github.com/Uniswap/v4-core/commit/11aa1f5b86b529d6894d25f304bb2b3b5c132bbe) | Move msg.sender check to modifier (#564) | excluded_non_optimization |
| 181 | [`d6df729d`](https://github.com/Uniswap/v4-core/commit/d6df729d1698f86b468c616c2970ebbd7e664e6e) | move protocol fee logic to ProtocolFees.sol (#546) | excluded_non_optimization |
| 182 | [`8a4ebb07`](https://github.com/Uniswap/v4-core/commit/8a4ebb071120b52788a671f5674f7d0c30350079) | skip calls to hooks when msg.sender is hook contract + test (#503) | confirmed_optimization; UNKNOWN |
| 183 | [`27acc259`](https://github.com/Uniswap/v4-core/commit/27acc2599644f6788dc48f8749e92b81a4901b44) | [copy of #340] perf: optimize poolKey.toId() (skip abi.encode) (#550) | confirmed_optimization; UNKNOWN |
| 184 | [`b3bc509a`](https://github.com/Uniswap/v4-core/commit/b3bc509a0945099e06076d512160724b57f31443) | remove noDelegateCall from most functions (#549) | excluded_non_optimization |
| 185 | [`45db18c5`](https://github.com/Uniswap/v4-core/commit/45db18c582f1ff898c4e80fd42dec510f2907253) | Change protocol fee from denominator to bips (#504) | confirmed_optimization; UNKNOWN |
| 186 | [`1dd936fd`](https://github.com/Uniswap/v4-core/commit/1dd936fdc2bfc02f68901d363cf83b716a171590) | update tests to use the IPoolManager (#531) | excluded_non_optimization |
| 187 | [`b2307692`](https://github.com/Uniswap/v4-core/commit/b230769238879e1d4f58ffa57a4696b0c390d188) | Use solmate owned (#520) | excluded_non_optimization |
| 188 | [`444ffe3f`](https://github.com/Uniswap/v4-core/commit/444ffe3fa634f5667e75429da988aa634ac44107) | add swap fee lib tests (#534) | excluded_non_optimization |
| 189 | [`e4d9d907`](https://github.com/Uniswap/v4-core/commit/e4d9d90781befcfc1a9bb78eb9d1b1c352d57d63) | use CurrencyDelta library (#539) | excluded_non_optimization |
| 190 | [`85cee797`](https://github.com/Uniswap/v4-core/commit/85cee7979963d83de5c24ffac086bae90c40d84e) | Swap fee inclusive (#525) | excluded_non_optimization |
| 191 | [`0cd09ba4`](https://github.com/Uniswap/v4-core/commit/0cd09ba40098a2208cdffb7464bb2d4bf705d69f) | Make currency delta transient (#495) | confirmed_optimization; UNKNOWN |
| 192 | [`b543aaaf`](https://github.com/Uniswap/v4-core/commit/b543aaaf0a69641802d92533e24753c82f8c229f) | make max swap fee inclusive (#524) | excluded_non_optimization |
| 193 | [`1dda6f50`](https://github.com/Uniswap/v4-core/commit/1dda6f5095e88a82a6249089fbc827a4a12abcf5) | Optimize settle (#522) | confirmed_optimization; UNKNOWN |
| 194 | [`df8e7831`](https://github.com/Uniswap/v4-core/commit/df8e783191551352c1d09c1c7199df4cb1c3d75c) | make PoolTestBase.sol foundry independent (#516) | excluded_non_optimization |
| 195 | [`89e7b9d4`](https://github.com/Uniswap/v4-core/commit/89e7b9d466279d459aa503c2620a66462d1c0ceb) | fix swap fuzz (#518) | excluded_non_optimization |
| 196 | [`2f3605b4`](https://github.com/Uniswap/v4-core/commit/2f3605b48ebeaa051f1dcdde58ec2c9096dca422) | remove MaxCurrenciesTouched and NotPoolManagerToken errors (#509) | excluded_non_optimization |
| 197 | [`eff96c17`](https://github.com/Uniswap/v4-core/commit/eff96c17bed17afed7a6cf2878de29573d3b7935) | Hardcode constants (#513) | confirmed_optimization; UNKNOWN |
| 198 | [`7a7ab485`](https://github.com/Uniswap/v4-core/commit/7a7ab4852e6a3d368ab31af49aa1e93a00401a22) | rename lock to unlock (#508) | excluded_non_optimization |
| 199 | [`f5674e46`](https://github.com/Uniswap/v4-core/commit/f5674e46720c0fc4606b287cccc583d56245e724) | change modifyPosition to modifyLiquidity (#510) | excluded_non_optimization |
| 200 | [`b5b36146`](https://github.com/Uniswap/v4-core/commit/b5b3614626ccce2b317cfbeead99566388824f95) | Flip the sign of deltas (#481) | excluded_non_optimization |
| 201 | [`aea86abc`](https://github.com/Uniswap/v4-core/commit/aea86abc842731dac2fdc4b4232a8fc411e0bf72) | Push dynamic fees (#501) | excluded_non_optimization |
| 202 | [`702f547b`](https://github.com/Uniswap/v4-core/commit/702f547bb3d2f345264f58d2634067d5c18ceee2) | store boolean instead of address (#493) | intent_unresolved |
| 203 | [`0e8e6c91`](https://github.com/Uniswap/v4-core/commit/0e8e6c91bfc3695ac4f7481fd812a7262cf04897) | remove lock on initialize (#499) | intent_unresolved |
| 204 | [`8d3407aa`](https://github.com/Uniswap/v4-core/commit/8d3407aa43d718348f2fab7f2414dfeb48d20d45) | remove noop (#492) | excluded_non_optimization |
| 205 | [`aec915d1`](https://github.com/Uniswap/v4-core/commit/aec915d1fe1b2bee7f2dc4126bec8dfcb3d77cf4) | Remove EOA calling capability (#480) | excluded_non_optimization |
| 206 | [`6f5f3f2d`](https://github.com/Uniswap/v4-core/commit/6f5f3f2d20c2ff1076b989fdc07ec8317d28dca1) | Remove nested locking, access lock, and lockCaller (#442) | excluded_non_optimization |
| 207 | [`4a13732d`](https://github.com/Uniswap/v4-core/commit/4a13732dc0b9a8c516d3639a78c54af3fc3db8d4) | Pragma `0.8.24` (#479) | excluded_non_optimization |
| 208 | [`4b033f4b`](https://github.com/Uniswap/v4-core/commit/4b033f4bbbbb598219c0a1afc837ed44b98a83dc) | Remove deprecated Claims interfaces and impl (#476) | excluded_non_optimization |
| 209 | [`0147af87`](https://github.com/Uniswap/v4-core/commit/0147af870d796f94f8ff1fd6818330aeb10cc8a5) | Make TickBitmap.position internal (#460) | intent_unresolved |
| 210 | [`b8a333b0`](https://github.com/Uniswap/v4-core/commit/b8a333b0d85b2fdd21767804c754c1622bbc35c6) | Make pool getters internal (#457) | intent_unresolved |
| 211 | [`03f81025`](https://github.com/Uniswap/v4-core/commit/03f810257d9d52f66e4dc5058f8dff2faff72584) | Disallow owner from claiming protocol fees (#474) | excluded_non_optimization |
| 212 | [`cec6ef6f`](https://github.com/Uniswap/v4-core/commit/cec6ef6faa9e7e9f969c4e6ee98839029036427c) | move Swap event before afterSwap hook (#462) | excluded_non_optimization |
| 213 | [`8109ec3c`](https://github.com/Uniswap/v4-core/commit/8109ec3c2f9db321ba48fff44ed429e6c1bd3eb3) | Support ERC6909 on liquidity modification (#456) | excluded_non_optimization |
| 214 | [`1f350fa9`](https://github.com/Uniswap/v4-core/commit/1f350fa95e862ba8c56c8ff7e146d47c9043465e) | fix: Add ERC6909 support (#447) | excluded_non_optimization |
| 215 | [`36160ced`](https://github.com/Uniswap/v4-core/commit/36160ced8440fe211805f38860334359c73ef490) | Before after add/remove liquidity, remove all modifyPosition hooks (#434) | excluded_non_optimization |
| 216 | [`83557113`](https://github.com/Uniswap/v4-core/commit/83557113a0425eb3d81570c30e7a5ce550037149) | expose getters in pool interface | excluded_non_optimization |
| 217 | [`cda1f483`](https://github.com/Uniswap/v4-core/commit/cda1f483d41b0db7ee28a7de3f3bbe47c7f33cfc) | refactor: hooks callsites (#439) | excluded_non_optimization |
| 218 | [`eb32ca5e`](https://github.com/Uniswap/v4-core/commit/eb32ca5eb4a4016cda5550d8eec0b814e6b24bb6) | Remove hook fees and protocol fee on withdrawal (#432) | excluded_non_optimization |
| 219 | [`dc9f59cc`](https://github.com/Uniswap/v4-core/commit/dc9f59cccd3066afb98049750fc30013fc3109d9) | A few cleanup tasks (#437) | excluded_non_optimization |
| 220 | [`92a6ceed`](https://github.com/Uniswap/v4-core/commit/92a6ceedb45ebc42baca69894649efffcf2885b8) | add pool getters (#438) | excluded_non_optimization |
| 221 | [`7fef84ac`](https://github.com/Uniswap/v4-core/commit/7fef84ac061b1313315e7d876b61f58cf26b0055) | Prevent ProtocolFeeController from bricking pool initialization on revert (#362) | excluded_non_optimization |
| 222 | [`b9b0d2a1`](https://github.com/Uniswap/v4-core/commit/b9b0d2a1f6e6a39444ff9ab286d99efd5de5b8d2) | feat: add lock target (#300) | excluded_non_optimization |
| 223 | [`6b8ec7c6`](https://github.com/Uniswap/v4-core/commit/6b8ec7c6dff9a2bef4ff408f886b4cc1737179ae) | Access lock (#404) | excluded_non_optimization |
| 224 | [`06564d33`](https://github.com/Uniswap/v4-core/commit/06564d33b2fa6095830c914461ee64d34d39c305) | NoOp implementation with flag (#324) | excluded_non_optimization |
| 225 | [`cede34fd`](https://github.com/Uniswap/v4-core/commit/cede34fd171a664d4eb6468854475c9cba5c559c) | Lock on initialize (#424) | excluded_non_optimization |
| 226 | [`c3d17eca`](https://github.com/Uniswap/v4-core/commit/c3d17eca7060e58409e5a4a34c2a3d91100a740b) | Fix typos (#365) | excluded_non_optimization |
| 227 | [`7998e6c3`](https://github.com/Uniswap/v4-core/commit/7998e6c391b77d2a8455f902097b0180b579db1b) | Part 1: Improve forge tests (#407) | excluded_non_optimization |
| 228 | [`e22afd13`](https://github.com/Uniswap/v4-core/commit/e22afd13c54f207eed3048b96883e1f86e06907b) | Set tick spacing range as constants (#369) | excluded_non_optimization |
| 229 | [`a65bdfb2`](https://github.com/Uniswap/v4-core/commit/a65bdfb27b819dd4f401de9f078d27971d44462a) | Add solc binaries and transient storage lock library (#395) | intent_unresolved |
| 230 | [`3921fad6`](https://github.com/Uniswap/v4-core/commit/3921fad6eb075b7853258a54fae2ce0cb5ba40b0) | Implement Claims accounting as minimal balance (#379) | excluded_non_optimization |
| 231 | [`5fb47b1d`](https://github.com/Uniswap/v4-core/commit/5fb47b1d659a4ca91b6077a94d56221e806d7c82) | Improve forge tests (#391) | excluded_non_optimization |
| 232 | [`24afdec9`](https://github.com/Uniswap/v4-core/commit/24afdec9ab7c439a5d6de45ec7220d1c434a1e46) | feat: use standard forge directory structure (#389) | excluded_non_optimization |
