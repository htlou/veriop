# AWS Encryption SDK complete pinned source-history screen

All 138 non-merge commits touching the pinned source scope received a commit-message and changed-path intent screen at the exact pin; ambiguous changes were inspected in their diffs. Four identified commits change runtime paths for performance; the other 134 show features, fixes, proof/build/test changes, dependency updates, or refactors without an identified runtime-speed optimization. All four identified optimizations are retained; this screen cannot rule out every unstated performance effect in other commits.

The verdicts for the four optimizations retain the scope of the [earlier source and Dafny audit](README.md). Dafny's local target checks do not prove whole-commit equivalence, and upstream performance claims are not locally measured official benchmark scores.

| History # | Commit | Subject | Decision | Changed paths |
|---:|---|---|---|---:|
| 1 | [`a952bed1`](https://github.com/aws/aws-encryption-sdk/commit/a952bed13ecfe448525c328df05da698161dc111) | chore(rust): sync aws-lc-sys to 0.45 to match aws-lc-rs (#961) | excluded | 1 |
| 2 | [`88157eaf`](https://github.com/aws/aws-encryption-sdk/commit/88157eaf5d61e526746d6dea294270d4fd0a843f) | fix(rust): resolve aws-lc-sys versions, add deduping in TestVectors (#951) | excluded | 1 |
| 3 | [`f0358fe5`](https://github.com/aws/aws-encryption-sdk/commit/f0358fe56a355c9f1fc057be5a14c9dabff4d44f) | ci(rust): publish to crates.io via Trusted Publishing (OIDC) (#930) | excluded | 1 |
| 4 | [`f462146b`](https://github.com/aws/aws-encryption-sdk/commit/f462146b95095c3853c792190c18ee9f620f8811) | fix(rust): bump aws-lc-rs to 1.17.0, de-dupe aws-lc-sys (#927) | excluded | 1 |
| 5 | [`96ded8cf`](https://github.com/aws/aws-encryption-sdk/commit/96ded8cfe718ed179ae17af9f7ea6d4f69780abe) | fix: rust plaintext limits patch fix (#903) | excluded | 1 |
| 6 | [`592a5d47`](https://github.com/aws/aws-encryption-sdk/commit/592a5d47661df411ab6d82de78fb2f6b0812093c) | feat: Add plaintext size limits for Go and Rust (#896) | excluded | 4 |
| 7 | [`9a445cfc`](https://github.com/aws/aws-encryption-sdk/commit/9a445cfca647a6ee1740a50646f2c9edaeaea4ab) | chore: upgrade dafny runtime go v4.11.3 (#890) | excluded | 6 |
| 8 | [`ec18c70c`](https://github.com/aws/aws-encryption-sdk/commit/ec18c70c7ac9907b9f04e46029be758f5e3b70f2) | fix: match arms in Fixtures.dfy use CD to match datatype variant (#889) | excluded | 1 |
| 9 | [`c5313ba2`](https://github.com/aws/aws-encryption-sdk/commit/c5313ba2ccf9172d1685676d243e375d6679c6b7) | chore(rust,release): Update CHANGELOG.md for 1.2.4 (#885) | excluded | 1 |
| 10 | [`e1a1c9e1`](https://github.com/aws/aws-encryption-sdk/commit/e1a1c9e1d7acc6658a22ecdc3d0377243fcc5282) | chore(rust): release v1.2.4 (#881) | excluded | 1 |
| 11 | [`ab3fa821`](https://github.com/aws/aws-encryption-sdk/commit/ab3fa821cae76c400ea68602651b23f76604caf5) | chore(rust): run clippy on CI and allow large error for Clippy (#880) | excluded | 1 |
| 12 | [`03d88b90`](https://github.com/aws/aws-encryption-sdk/commit/03d88b904eb01348324307f4bbf9009951842a8a) | chore(deps): update aws-lc-sys requirement from 0.38 to 0.39 in /AwsEncryptionSDK/runtimes/rust (#871) | excluded | 1 |
| 13 | [`302b3173`](https://github.com/aws/aws-encryption-sdk/commit/302b3173442950961534c6d97de27fbe63eb1efa) | chore: uncomment release steps for dotnet (#879) | excluded | 1 |
| 14 | [`26dd9748`](https://github.com/aws/aws-encryption-sdk/commit/26dd974818b8b0c2dca603d218f274edb5c86925) | chore: update smithy dafny deps order installation (#878) | excluded | 2 |
| 15 | [`7faa5375`](https://github.com/aws/aws-encryption-sdk/commit/7faa53751db326400c08afb1eff6d1de4175d8cf) | chore: build test vectors in the release (#877) | excluded | 2 |
| 16 | [`95c72b04`](https://github.com/aws/aws-encryption-sdk/commit/95c72b04dca0654f402b087d85d2c92570a74b28) | chore: fix version leakage in esdk release (#876) | excluded | 3 |
| 17 | [`4413074e`](https://github.com/aws/aws-encryption-sdk/commit/4413074e3be8d647919e804f420a8277d51b0245) | chore(.net): add polymorph dependencies to release (#875) | excluded | 4 |
| 18 | [`9979e51d`](https://github.com/aws/aws-encryption-sdk/commit/9979e51dc365a2e11f1873dccdbe923f61022219) | chore(release): 5.0.0 (#873) | excluded | 2 |
| 19 | [`9ddae5cd`](https://github.com/aws/aws-encryption-sdk/commit/9ddae5cdf6a6668cbaf43e551958100533d46fae) | feat!: Bump to MPL V2 (#869) | excluded | 1 |
| 20 | [`025f9992`](https://github.com/aws/aws-encryption-sdk/commit/025f9992f83bbd815eb3e1b02fe3fedba63e3c40) | chore(release): Update RELEASE.md (#865) | excluded | 1 |
| 21 | [`6fb96aa3`](https://github.com/aws/aws-encryption-sdk/commit/6fb96aa34a7fcf06ba9827d979ac28e333b34ae6) | chore: release aws-esdk v1.2.3 (#866) | excluded | 4 |
| 22 | [`16eb473d`](https://github.com/aws/aws-encryption-sdk/commit/16eb473daaac61ad960091e15d4fed8b14924bd9) | chore(deps): update aws-lc-sys requirement from 0.37 to 0.38 in /AwsEncryptionSDK/runtimes/rust (#864) | excluded | 1 |
| 23 | [`c630cc19`](https://github.com/aws/aws-encryption-sdk/commit/c630cc19d0767f47479d67af1134681ce46da0ab) | chore(rust): release 1.2.2 (#854) | excluded | 1 |
| 24 | [`8133da80`](https://github.com/aws/aws-encryption-sdk/commit/8133da80a7cc8eaeaef14f72f01b4a53a74758c3) | chore(rust): better blocking (#852) | excluded | 7 |
| 25 | [`e419dffe`](https://github.com/aws/aws-encryption-sdk/commit/e419dffe748deb87847044d64414dd0b7b8381ed) | chore(deps): update aws-lc-sys requirement from 0.33 to 0.36 in /AwsEncryptionSDK/runtimes/rust (#851) | excluded | 1 |
| 26 | [`57ba7730`](https://github.com/aws/aws-encryption-sdk/commit/57ba773072e95d5d3e3c77d577dea7bb991df8fc) | chore(rust): release 1.2.1 (#844) | excluded | 2 |
| 27 | [`ffc1e2de`](https://github.com/aws/aws-encryption-sdk/commit/ffc1e2ded7a7a4be2d554c04eb466870b382f9ce) | fix(go): dafny array performance (#825) | optimization; UNSUPPORTED | 8 |
| 28 | [`54d36853`](https://github.com/aws/aws-encryption-sdk/commit/54d36853be5574c911811e9b927f36d9b461e0d7) | chore: remove aws sdk core dep (#822) | excluded | 1 |
| 29 | [`3c019341`](https://github.com/aws/aws-encryption-sdk/commit/3c019341aa6ccf733c08c602dbad04dc50cee429) | chore: bump mpl to latest (#809) | excluded | 2 |
| 30 | [`678ca043`](https://github.com/aws/aws-encryption-sdk/commit/678ca043e420c5ac77ae06811bc3605f501bca1a) | chore(rust): prepare release of 1.2.0 (#807) | excluded | 2 |
| 31 | [`9f511598`](https://github.com/aws/aws-encryption-sdk/commit/9f511598307b458d4c560d3642cf8d789a99d4e3) | chore(go): cleanup files generated by examples  (#806) | excluded | 2 |
| 32 | [`fe49c73d`](https://github.com/aws/aws-encryption-sdk/commit/fe49c73d430f56ae17583580c26c71a6b1a13a3b) | chore(go): add Go release workflow  (#792) | excluded | 1 |
| 33 | [`d7d8bf13`](https://github.com/aws/aws-encryption-sdk/commit/d7d8bf1366a3bac139de07b806538587dc6f7dbf) | chore(rust): add fips feature (#805) | excluded | 6 |
| 34 | [`93810066`](https://github.com/aws/aws-encryption-sdk/commit/938100668332700373d7774b83546a47c57777be) | fix(go): fix and refactor go mod  (#793) | excluded | 2 |
| 35 | [`1be4d62a`](https://github.com/aws/aws-encryption-sdk/commit/1be4d62a8cd926cde7b2c0aa5b16d88962290815) | chore: bump mpl (#787) | excluded | 3 |
| 36 | [`3aeddc99`](https://github.com/aws/aws-encryption-sdk/commit/3aeddc990237e7239ba9ee38f8102bfdd162dfbb) | chore(rust): prepare 1.1.1 release (#784) | excluded | 1 |
| 37 | [`b321a46a`](https://github.com/aws/aws-encryption-sdk/commit/b321a46a5ecf355445ca06c57c81f9db057fc8f6) | chore(rust): prepare rust 1.1.0 release (#782) | excluded | 2 |
| 38 | [`dbe55d7f`](https://github.com/aws/aws-encryption-sdk/commit/dbe55d7f8230b874fa38c69cfd26fbcbf8e938ce) | chore(dafny): remove more usage of BigInteger (#781) | optimization; UNKNOWN | 18 |
| 39 | [`2ea5e47a`](https://github.com/aws/aws-encryption-sdk/commit/2ea5e47a78e0254acfe9fa83da2a54d82b9bc23d) | chore(rust): update smithy-dafny and use small-int feature (#777) | optimization; UNSUPPORTED | 1 |
| 40 | [`79e13061`](https://github.com/aws/aws-encryption-sdk/commit/79e1306184e9aee5394c1280dd01a2191210abbe) | chore: improve performance (#764) | optimization; UNSUPPORTED | 8 |
| 41 | [`5ea20b75`](https://github.com/aws/aws-encryption-sdk/commit/5ea20b7560af97a0fc814efc7ffdf1d876ac423c) | chore: bump MPL to latest version (#775) | excluded | 2 |
| 42 | [`9fd4b48b`](https://github.com/aws/aws-encryption-sdk/commit/9fd4b48b8aeabb0225f6f2e37611465433ba041b) | chore: bump smithy-dafny to latest (#774) | excluded | 3 |
| 43 | [`90f55dbd`](https://github.com/aws/aws-encryption-sdk/commit/90f55dbd990cb1f2b3950ae54ea689db4f2b6e21) | chore(dafny): allow FileIO to deal in uint8, rather than bv8 (#770) | excluded | 1 |
| 44 | [`7236084d`](https://github.com/aws/aws-encryption-sdk/commit/7236084db6abdc2172c5be689ce92f72351540b5) | chore: Fail verification on warnings (#766) | excluded | 6 |
| 45 | [`5604983b`](https://github.com/aws/aws-encryption-sdk/commit/5604983b35c38edfd02967e0439b9edf2161a067) | fix(Go): adds high unicode char Test Vectors (#762) | excluded | 37 |
| 46 | [`366e6e7a`](https://github.com/aws/aws-encryption-sdk/commit/366e6e7a8ee01911fab2707cf58f22feabc5d011) | chore: Bump MPL dependency to 1.9.0, consolidate `project.properties` files (#753) | excluded | 2 |
| 47 | [`f4683de4`](https://github.com/aws/aws-encryption-sdk/commit/f4683de40aa0c7300f366807cb0b256a6f3cf06e) | docs(examples): fix readme of examples in all languages (#734) | excluded | 3 |
| 48 | [`7e492d7d`](https://github.com/aws/aws-encryption-sdk/commit/7e492d7d6e2ff2f603d3b7ae028b034849c39cb9) | chore: Release of 1.0.0 for Rust (#751) | excluded | 1 |
| 49 | [`fad048c4`](https://github.com/aws/aws-encryption-sdk/commit/fad048c47a3e331263842a0fa5d19a5e3d785f08) | chore: update to async-friendly Rust (#749) | excluded | 16 |
| 50 | [`3ce52fa0`](https://github.com/aws/aws-encryption-sdk/commit/3ce52fa02928a14f5d1a2a68fac5d5a70edbcb61) | chore: configure with project.properties (#750) | excluded | 34 |
| 51 | [`ae8b4b7e`](https://github.com/aws/aws-encryption-sdk/commit/ae8b4b7e6cce6407df2f57c5719b11acd5247ac9) | fix: repo rename (#740) | excluded | 42 |
| 52 | [`af1e6773`](https://github.com/aws/aws-encryption-sdk/commit/af1e67734af18745a331099a7c1563b75258f10e) | chore(CI): Add a diff check for polymorph in CI (#738) | excluded | 3 |
| 53 | [`d580c4a3`](https://github.com/aws/aws-encryption-sdk/commit/d580c4a3bb0825f292f9fc4faaeee6c07a248430) | fix: repo rename (#739) | excluded | 4 |
| 54 | [`babfd01c`](https://github.com/aws/aws-encryption-sdk/commit/babfd01c5d63128a991d857dc5fd8d4b53a8b813) | feat(go): mpl bump (#737) | excluded | 49 |
| 55 | [`246aea1d`](https://github.com/aws/aws-encryption-sdk/commit/246aea1d0f2bce2e52eb5d0d6ff25c21a27227b9) | chore: add KMS Keyring example in an multithreaded environment for Go (#735) | excluded | 4 |
| 56 | [`c3ba5e31`](https://github.com/aws/aws-encryption-sdk/commit/c3ba5e314e1118efb1fd663c85e3d56578622b91) | chore(examples): Add examples for Go with CI  (#733) | excluded | 37 |
| 57 | [`fa1ca015`](https://github.com/aws/aws-encryption-sdk/commit/fa1ca015bef23eda79fbe87f468729aeb6a18e02) | fix(Example): correct doc link in limit EDK Rust example (#729) | excluded | 1 |
| 58 | [`d66248b9`](https://github.com/aws/aws-encryption-sdk/commit/d66248b956e5bce553fd64ba46189a5ac6eb69ee) | fix(.NET): Improve Collection of Errors string (#728) | excluded | 2 |
| 59 | [`0ba9adaf`](https://github.com/aws/aws-encryption-sdk/commit/0ba9adaf1967db028c13d95751e818b2963ea2e3) | fix: CI | excluded | 1 |
| 60 | [`9650048f`](https://github.com/aws/aws-encryption-sdk/commit/9650048f27ef42a6e1416aaa49fc4b8ee02e4d3a) | fix: CI | excluded | 4 |
| 61 | [`69725ef0`](https://github.com/aws/aws-encryption-sdk/commit/69725ef0c77a40d80ae522da66123c85a688ec79) | fix: CI | excluded | 1 |
| 62 | [`3533565a`](https://github.com/aws/aws-encryption-sdk/commit/3533565a227c62afb66d4b618b28d43658e8ed03) | fix: CI | excluded | 1 |
| 63 | [`1862a4ce`](https://github.com/aws/aws-encryption-sdk/commit/1862a4ce1e668f7ff17d9ae8930505ef430b6400) | fix: CI | excluded | 5 |
| 64 | [`c56dd697`](https://github.com/aws/aws-encryption-sdk/commit/c56dd697c66735ead78f45488256f9b5a4b56d92) | fix: CI | excluded | 2 |
| 65 | [`95fe4e9c`](https://github.com/aws/aws-encryption-sdk/commit/95fe4e9c58641b9968584db3a482ea561e0b7333) | chore: update mpl | excluded | 4 |
| 66 | [`a5282af7`](https://github.com/aws/aws-encryption-sdk/commit/a5282af7090ca43440b3976ddb4c9411d4c143c4) | chore(rust): release 0.2.0 (#726) | excluded | 2 |
| 67 | [`d03ab279`](https://github.com/aws/aws-encryption-sdk/commit/d03ab279b8006f5f9056fc1519936ad695e10a4a) | chore(rust): clean-up lib.rs (#725) | excluded | 32 |
| 68 | [`bea3f29a`](https://github.com/aws/aws-encryption-sdk/commit/bea3f29a1ef04b80397857636f7df0c360bbdb2b) | chore(mpl;Rust): bump mpl to include rust input validation, aes-192 tests (#722) | excluded | 8 |
| 69 | [`d03a3407`](https://github.com/aws/aws-encryption-sdk/commit/d03a3407d286b7f2e2546a6a10840717587cc6e4) | chore(examples): add version branch key id example (#710) | excluded | 4 |
| 70 | [`689624d6`](https://github.com/aws/aws-encryption-sdk/commit/689624d64671ba12456de0fa522018b81d6cf90e) | chore: rename EncryptionSdk Dafny module name (#707) | excluded | 5 |
| 71 | [`7acf387c`](https://github.com/aws/aws-encryption-sdk/commit/7acf387c3736444e9658a1e1b5c65612f9f48aa6) | chore(rust-release): add Rust release directory (#709) | excluded | 5 |
| 72 | [`c133d770`](https://github.com/aws/aws-encryption-sdk/commit/c133d770eebf6e605b2933c47f09e10ca30d4eee) | chore(README): update README; add copyright string (#708) | excluded | 5 |
| 73 | [`1628e666`](https://github.com/aws/aws-encryption-sdk/commit/1628e66672a4a62cd61641c62044cab9be10d0fc) | feat(Rust): Add support for Rust Encryption SDK (#689) | excluded | 62 |
| 74 | [`6db9ace8`](https://github.com/aws/aws-encryption-sdk/commit/6db9ace81db1046b2fec4dc211ac2920b6e2cba6) | chore: merge Golang/dev branch with mainline (#704) | excluded | 10 |
| 75 | [`2db84c00`](https://github.com/aws/aws-encryption-sdk/commit/2db84c00975772db749556255ec9d5b4cd0ccb2c) | feat: Golang | excluded | 10 |
| 76 | [`fdd25add`](https://github.com/aws/aws-encryption-sdk/commit/fdd25add4f48054cbee9349320b2152a3f583b0f) | test: initial commit of ESDK TestVectors (#678) | excluded | 10 |
| 77 | [`0067712a`](https://github.com/aws/aws-encryption-sdk/commit/0067712ad246fbc9f979f8ff7ca317494fc0f9d9) | feat: All shapes complete | excluded | 10 |
| 78 | [`bc46d0f7`](https://github.com/aws/aws-encryption-sdk/commit/bc46d0f77f2608fbdd77ce9820750c92f02a2a40) | chore(dafny-verification): fix timeout for Dafny 4.8.1 (#690) | excluded | 1 |
| 79 | [`d3cd4466`](https://github.com/aws/aws-encryption-sdk/commit/d3cd44669932d4a5d8ebebbf3cdb8b200df6f7b6) | feat: adds temp patch file for Go | excluded | 6 |
| 80 | [`7ac872c5`](https://github.com/aws/aws-encryption-sdk/commit/7ac872c5a201067ae2cead924faafcacc6880499) | feat: adds polymorped go files for esdk | excluded | 19 |
| 81 | [`2bfe9d4a`](https://github.com/aws/aws-encryption-sdk/commit/2bfe9d4a2a3a644dfc9757e46eb06934f29d6b8d) | chore(gitignore): Ignore *-cs.dtr and node_modules (#686) | excluded | 1 |
| 82 | [`8eeb14db`](https://github.com/aws/aws-encryption-sdk/commit/8eeb14db7b418fb0dbefdfca243661d04a23cb52) | chore: Rename AtomicPrimitives Dafny module name (#673) | excluded | 6 |
| 83 | [`cae7696c`](https://github.com/aws/aws-encryption-sdk/commit/cae7696c6b2c4cc981fcd3c0f367f8466bfaf604) | test(test_vectors): Support reading manifests that specify a hierarchy keyring (#649) | excluded | 3 |
| 84 | [`170b3984`](https://github.com/aws/aws-encryption-sdk/commit/170b39847f69e6594fdc9826796beb723aeb09c9) | fix: Bump more CI to Dafny 4.8 (#683) | excluded | 4 |
| 85 | [`f41a689d`](https://github.com/aws/aws-encryption-sdk/commit/f41a689d2f6f82d1cf83d9657d56f528a47cec44) | chore(examples; MPL bump): Shared cache across Hierarchical Keyrings; Bump MPL to 1.7.0 (#680) | excluded | 1 |
| 86 | [`83744dbb`](https://github.com/aws/aws-encryption-sdk/commit/83744dbb8aa887b4443772458b3a884f57aa778f) | chore(gitignore): Ignore *-cs.dtr and node_modules (#686) | excluded | 1 |
| 87 | [`e042e92e`](https://github.com/aws/aws-encryption-sdk/commit/e042e92e546c329c59356c833ffbbe44132cc94b) | chore: Rename AtomicPrimitives Dafny module name (#673) | excluded | 6 |
| 88 | [`a7466e6a`](https://github.com/aws/aws-encryption-sdk/commit/a7466e6a80dd858678bb80e55e781b2504fd1739) | test(test_vectors): Support reading manifests that specify a hierarchy keyring (#649) | excluded | 3 |
| 89 | [`56fcd130`](https://github.com/aws/aws-encryption-sdk/commit/56fcd130346c49efd8cc7599ca01a83972c574cd) | fix: Bump more CI to Dafny 4.8 (#683) | excluded | 4 |
| 90 | [`d8ca214c`](https://github.com/aws/aws-encryption-sdk/commit/d8ca214c6635b1d5bc25faee836eecdf72a93f61) | chore(examples; MPL bump): Shared cache across Hierarchical Keyrings; Bump MPL to 1.7.0 (#680) | excluded | 1 |
| 91 | [`f33187c1`](https://github.com/aws/aws-encryption-sdk/commit/f33187c1a03be4ba4193f690dcbc89bfa01d9417) | Fix: Use relative path for DafnyRuntimeGo | excluded | 4 |
| 92 | [`a9173676`](https://github.com/aws/aws-encryption-sdk/commit/a91736760726ff3224dc8d067b9b9d035f173ab0) | Impl: Checked-in go.mod files | excluded | 4 |
| 93 | [`68e75fb1`](https://github.com/aws/aws-encryption-sdk/commit/68e75fb10084cf94dc8ccbedf7a98a3c6569dd3f) | chore: regen code for 4.8.0 and bump mpl (#681) | excluded | 4 |
| 94 | [`c49af855`](https://github.com/aws/aws-encryption-sdk/commit/c49af85544d53e072b8ae8cf1a8375a19175ad06) | chore: Reduce resource usage of assertion in ReadFramedMessageBody (#665) | excluded | 1 |
| 95 | [`65447369`](https://github.com/aws/aws-encryption-sdk/commit/65447369f0d705f41be18b669d1c7e73a4bce816) | m | excluded | 1 |
| 96 | [`0cc745d8`](https://github.com/aws/aws-encryption-sdk/commit/0cc745d8a46d4d61b3d92eb7637fac9b71c753ad) | m | excluded | 1 |
| 97 | [`11da1824`](https://github.com/aws/aws-encryption-sdk/commit/11da1824943194c06aec6231d29f79be5109d97b) | m | excluded | 1 |
| 98 | [`87259906`](https://github.com/aws/aws-encryption-sdk/commit/87259906742bc7cd339a5380b2e884a30e953aea) | chore: update to MPL 1.4 | excluded | 1 |
| 99 | [`9c73845c`](https://github.com/aws/aws-encryption-sdk/commit/9c73845c1f16de330841938bb3a3bda428253c11) | chore: change the dependency from the ESDK to the MPL to a relative path ProjectReference (#656) | excluded | 1 |
| 100 | [`03b7909c`](https://github.com/aws/aws-encryption-sdk/commit/03b7909c459c13ebdf6fced40bfd0c255e6be432) | chore(release):  change PackageReference of MPL  (#654) | excluded | 1 |
| 101 | [`5a93e934`](https://github.com/aws/aws-encryption-sdk/commit/5a93e934a1afffd4eb7ecbeae30d285178902285) | chore(release): Update version to 4.1.0  (#653) | excluded | 1 |
| 102 | [`a47f14e8`](https://github.com/aws/aws-encryption-sdk/commit/a47f14e879e5cd147899a52292f4121c7ef4c64f) | chore(release): Replace all private-aws-encryption-sdk-dafny-staging (#652) | excluded | 4 |
| 103 | [`7e45f9e7`](https://github.com/aws/aws-encryption-sdk/commit/7e45f9e70f5b7556e72d4aad102d95e96f43c163) | chore(release): 4.1.0  (#651) | excluded | 1 |
| 104 | [`10daadfa`](https://github.com/aws/aws-encryption-sdk/commit/10daadfa19db0e43fc0cc6d7b989f1fb477a22b0) | feat: enforce input constraints (#646) | excluded | 7 |
| 105 | [`cd199795`](https://github.com/aws/aws-encryption-sdk/commit/cd199795003d91984e24f1c04d9a84ae9c445372) | chore: Adopt SmithyDafnyMakefile.mk, fix nightly build (#638) | excluded | 32 |
| 106 | [`5f3fd56a`](https://github.com/aws/aws-encryption-sdk/commit/5f3fd56ae136a3df47666dc2afab18f289a97c35) | chore(.NET): Add ESDK-Net v4.0.1 generated vectors | excluded | 1 |
| 107 | [`e89e2fd9`](https://github.com/aws/aws-encryption-sdk/commit/e89e2fd93a93751be0cec541dd4d14d24b38d8ac) | fix: throw an exception when MemoryStream instance has an empty backing array | excluded | 1 |
| 108 | [`3c36f7a4`](https://github.com/aws/aws-encryption-sdk/commit/3c36f7a4a19646a8dfa6073be04676394502ef23) | chore(NET-SupportPolicy): Mark 3.x as Support (#631) | excluded | 1 |
| 109 | [`fdc65ca7`](https://github.com/aws/aws-encryption-sdk/commit/fdc65ca7495402b5b51017655015413eba846e7f) | chore: split vc gen on some methods to migrate to Dafny 4.4 (#627) | excluded | 2 |
| 110 | [`98839331`](https://github.com/aws/aws-encryption-sdk/commit/98839331a2e1154913d6ba4c88b0f4cba7322233) | chore: remove unused release step in test-prod (#623) | excluded | 1 |
| 111 | [`5a5bcd9f`](https://github.com/aws/aws-encryption-sdk/commit/5a5bcd9f6e16a3da39cb370bbb4a8f335d8d22cc) | fix(ESDK): Head Auth logic and HKDF's info parameter (#621) | excluded | 63 |
| 112 | [`eaa30b37`](https://github.com/aws/aws-encryption-sdk/commit/eaa30b377be9c0c17aeae9fce11387b0fbccafba) | docs(CHANGELOG): NuGet name for >= 4.0.0 (#617) | excluded | 1 |
| 113 | [`8332e21e`](https://github.com/aws/aws-encryption-sdk/commit/8332e21e4d65d7d55873c54af34e82a48594c231) | chore(.NET): update .Net Examples (#230) | excluded | 30 |
| 114 | [`3f09bcb2`](https://github.com/aws/aws-encryption-sdk/commit/3f09bcb201d16f641588ee7983e62f1b6f7d3fbe) | feat(Decrypt)!: Encryption Context is optional input to DecryptInput  (#223) | excluded | 20 |
| 115 | [`42557994`](https://github.com/aws/aws-encryption-sdk/commit/42557994acd1d4badc138ee691cf87985f8b1083) | chore(.NET): update .NET README and Changelog (#231) | excluded | 2 |
| 116 | [`6fe688bc`](https://github.com/aws/aws-encryption-sdk/commit/6fe688bc8fb67fa69d0db098e0c2547c57d45e66) | chore: update release scripts (#229) | excluded | 7 |
| 117 | [`bae2df55`](https://github.com/aws/aws-encryption-sdk/commit/bae2df55bbe45fb28549165b35c6e609805e636c) | chore(NET): add support for .NET framework net48 (#228) | excluded | 2 |
| 118 | [`56a88a22`](https://github.com/aws/aws-encryption-sdk/commit/56a88a227633d901cff4b36fcaf7c13dd4e2391c) | chore: add cfn templates (#227) | excluded | 1 |
| 119 | [`59d36da6`](https://github.com/aws/aws-encryption-sdk/commit/59d36da6978f0c3a666f34ab798c3de7ce06fe09) | refactor: move aws-encryption-sdk-net into AwsEncryptionSDK/runtimes/net (#226) | excluded | 63 |
| 120 | [`2e2d8e4e`](https://github.com/aws/aws-encryption-sdk/commit/2e2d8e4eab22497fa6190b6ec32c3b3bb908f2cd) | refactor: take mpl as a dependency and improve verification stability in serialization (#220) | excluded | 73 |
| 121 | [`ea96cabf`](https://github.com/aws/aws-encryption-sdk/commit/ea96cabf4129fcf024e4c1620058ea3238f1ab0b) | Fix: Fix makefile codegen target (#167) | excluded | 1 |
| 122 | [`1578cbb2`](https://github.com/aws/aws-encryption-sdk/commit/1578cbb24d33a37b1888bc18a751b9a15dfe1f4e) | feat: Upgrade to Dafny 4.0 (#151) | excluded | 3 |
| 123 | [`e721f620`](https://github.com/aws/aws-encryption-sdk/commit/e721f620a6f7bee91bba2bf3b8139e5c3273d00b) | feat: refactor mpl and add get beacon key operations (#160) | excluded | 2 |
| 124 | [`b3ee50fe`](https://github.com/aws/aws-encryption-sdk/commit/b3ee50fef735150ac5dec1b00227c518a1fbe4d2) | feat: Add Local CMC (#129) | excluded | 2 |
| 125 | [`616348a4`](https://github.com/aws/aws-encryption-sdk/commit/616348a4301ee29987f20fd7f29de207f29744ad) | feat: Make the shared makefile more portable (#132) | excluded | 1 |
| 126 | [`3c66974f`](https://github.com/aws/aws-encryption-sdk/commit/3c66974f6b34616a4d03aace0a4da140985f18ee) | feat: Mpl encryption context change (#42) | excluded | 1 |
| 127 | [`52993c4a`](https://github.com/aws/aws-encryption-sdk/commit/52993c4ac5c325c00b4608ed0300871651a2c869) | feat: Generate all projects with the latest smithy-dafny | excluded | 2 |
| 128 | [`5ba9dbba`](https://github.com/aws/aws-encryption-sdk/commit/5ba9dbba96f17ca6e763239a09406f4fe9e3a22d) | feat: update submodule (#118) | excluded | 1 |
| 129 | [`d4a87cc8`](https://github.com/aws/aws-encryption-sdk/commit/d4a87cc84a9036825cb5d004e2a8c558b82761a2) | feat: change module name from Sets to SortedSets (#115) | excluded | 2 |
| 130 | [`1466e35a`](https://github.com/aws/aws-encryption-sdk/commit/1466e35aea56b3b62cd7d2a4f07503d3f8bdfebc) | feat: Add commitment policy for DBE (#105) | excluded | 1 |
| 131 | [`eff3715a`](https://github.com/aws/aws-encryption-sdk/commit/eff3715a5a20964b789cc1492627c4bb7433dd2f) | feat: add DDBEC algorithm suites for symmetric signing (#84) | excluded | 6 |
| 132 | [`90a1177f`](https://github.com/aws/aws-encryption-sdk/commit/90a1177ff7ad7298d25aa66e80a6343d1da46a04) | feat: Consolidate make targets (#92) | excluded | 1 |
| 133 | [`f3d28365`](https://github.com/aws/aws-encryption-sdk/commit/f3d283652f3203d9d499598bde1068282cd0803d) | Integrate esdk with mpl (#45) | excluded | 21 |
| 134 | [`f58f13bb`](https://github.com/aws/aws-encryption-sdk/commit/f58f13bb60213abf9f1d16a2ed57aa82a09678cf) | feat: Update Libraries (#41) | excluded | 1 |
| 135 | [`036e9578`](https://github.com/aws/aws-encryption-sdk/commit/036e957814f9cd3bab7bf2d23d19b1d983c21ddf) | feat: Message format refactor (#447) | excluded | 1 |
| 136 | [`75a24a7d`](https://github.com/aws/aws-encryption-sdk/commit/75a24a7d120dddfc7310e4fb2f6d2d5e98aa36ea) | feat: AwsKmsMrkAwareSymmetricKeyring (#383) | excluded | 1 |
| 137 | [`b3d61945`](https://github.com/aws/aws-encryption-sdk/commit/b3d61945c13893f7fc7bd605173d1af26a486b5f) | feat: aws-kms-key-arn (#379) | excluded | 1 |
| 138 | [`1503561a`](https://github.com/aws/aws-encryption-sdk/commit/1503561a53ac54a516c03b19e300e2d49c470a88) | feat!: Use standard library version of Option and Result (#371) | excluded | 1 |
