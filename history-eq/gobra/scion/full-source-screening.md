# SCION complete pinned source-history intent screen

All 293 non-merge commits touching the selected Go source scopes at the pinned revision received a message/path intent screen. The 52 fixed keyword candidates retain their prior source-audited labels. Five additional nonkeyword commits explicitly avoid repeated work or packet drops; each lacks at least one exact historical changed blob, so no Gobra old/new check or official benchmark was run for them. The screen may miss unstated performance effects; unresolved intent is not counted as an optimization.

| # | Commit | Subject | Intent screen |
|---:|---|---|---|
| 1 | [`1881a669`](https://github.com/scionproto/scion/commit/1881a6690efb7b54dd09057c4db0cf6584ac4d43) | deps: bump @redocly/cli from 2.54.2 to 2.54.3 in /private/mgmtapi/tools in the npm-tools group (#4992) | excluded_non_optimization |
| 2 | [`54f0df4d`](https://github.com/scionproto/scion/commit/54f0df4dfe15087099a3309a3cd83be6663be06d) | deps: bump @redocly/cli from 2.53.0 to 2.53.3 in /private/mgmtapi/tools in the npm-tools group (#4991) | excluded_non_optimization |
| 3 | [`eb8dc2e3`](https://github.com/scionproto/scion/commit/eb8dc2e3a4fba68e4632fedcf143ac8b5205de06) | deps: bump @redocly/cli from 2.51.2 to 2.52.0 in /private/mgmtapi/tools in the npm-tools group (#4988) | excluded_non_optimization |
| 4 | [`8226b1da`](https://github.com/scionproto/scion/commit/8226b1dac9e5b8b5b51b67ec2bc9cd492190a23e) | deps: bump @redocly/cli from 2.49.0 to 2.51.1 in /private/mgmtapi/tools in the npm-tools group (#4986) | excluded_non_optimization |
| 5 | [`66387499`](https://github.com/scionproto/scion/commit/66387499cade6f506b828d540a507ab8a525911b) | scion-pki: support additional extended key usage (#4899) | excluded_non_optimization |
| 6 | [`eed065d8`](https://github.com/scionproto/scion/commit/eed065d8994b1dbe36bb3fdee10547198a229e99) | build: move to go.yaml.in/yaml/v4 (#4950) | excluded_non_optimization |
| 7 | [`5307183a`](https://github.com/scionproto/scion/commit/5307183af4fc9c39dc14dd508f132a4b72f28f4b) | deps: bump @redocly/cli from 2.47.0 to 2.49.0 in /private/mgmtapi/tools in the npm-tools group (#4982) | excluded_non_optimization |
| 8 | [`681d9a82`](https://github.com/scionproto/scion/commit/681d9a82bda1176f12dc6e91ec4e97ce74bee5be) | deps: bump @redocly/cli from 2.46.1 to 2.47.0 in /private/mgmtapi/tools in the npm-tools group (#4969) | excluded_non_optimization |
| 9 | [`9f5b8b29`](https://github.com/scionproto/scion/commit/9f5b8b294cb6652ede4f6d3d3a82c3dbe665d8d6) | deps: bump the npm-tools group in /private/mgmtapi/tools with 2 updates (#4965) | excluded_non_optimization |
| 10 | [`bb10ec5e`](https://github.com/scionproto/scion/commit/bb10ec5e2e60c2691ae4e93f821f66e93272688a) | gateway: fix nil-deref panic on session events after routing table close (#4954) | excluded_non_optimization |
| 11 | [`d7da485e`](https://github.com/scionproto/scion/commit/d7da485e226da9cd0ec7c27e25bb87f1298f2aa2) | deps: bump github.com/oapi-codegen/oapi-codegen/v2 from 2.4.1 to 2.7.1 (#4957) | excluded_non_optimization |
| 12 | [`c89ec5b6`](https://github.com/scionproto/scion/commit/c89ec5b6204f93b289cd7d484c7925810785d554) | deps: bump google.golang.org/grpc from 1.79.3 to 1.82.1 (#4955) | excluded_non_optimization |
| 13 | [`c83afab1`](https://github.com/scionproto/scion/commit/c83afab1937164161da5a75207e1d1bc085ffa5d) | testing/clab: add init process (#4941) | excluded_non_optimization |
| 14 | [`0b77330a`](https://github.com/scionproto/scion/commit/0b77330a2ae437ace37840dbe33c47d4e8de1fbf) | deps: fix Dependabot alerts (#4949) | excluded_non_optimization |
| 15 | [`be52bab8`](https://github.com/scionproto/scion/commit/be52bab805a7bd86695d07a3a328db64f864a2f3) | build: upgrade to bazel 9.1.1 (#4939) | excluded_non_optimization |
| 16 | [`f9a49890`](https://github.com/scionproto/scion/commit/f9a498900fdeb208456c0d9336163dead92306db) | graph: fix how topogen's random interface IDs get replaced with the graph package's fixed ones (#4940) | excluded_non_optimization |
| 17 | [`1e8d5faa`](https://github.com/scionproto/scion/commit/1e8d5faaddf8b81d2e71838bd9e0ab504d6e66d6) | deps: fix Dependabot alerts (#4930) | excluded_non_optimization |
| 18 | [`1f66c092`](https://github.com/scionproto/scion/commit/1f66c0923d09be564668ad81f6eeffe2c4f672d3) | deps: bump handlebars to 4.7.9 (#4916) | excluded_non_optimization |
| 19 | [`dd1c1bfe`](https://github.com/scionproto/scion/commit/dd1c1bfeaff11d7d3a8fd8a76851645e49e4c244) | fix: use mattn sqlite (#4906) | excluded_non_optimization |
| 20 | [`35a2b6d8`](https://github.com/scionproto/scion/commit/35a2b6d8d5d98d16731c256c7e16fe54fcdadfd4) | deps: bump rollup and minimatch, remove outdated dependency overrides (#4914) | excluded_non_optimization |
| 21 | [`c72cf2b2`](https://github.com/scionproto/scion/commit/c72cf2b24cda3554dca5cf9965384ed2cea46747) | deps: bump redocly/cli to 2.25.1 (#4913) | excluded_non_optimization |
| 22 | [`8b01ba46`](https://github.com/scionproto/scion/commit/8b01ba46194081938ef261c3c9058ba69df97654) | chore: upgrade bazel rules (#4883) | excluded_non_optimization |
| 23 | [`2dac2d5d`](https://github.com/scionproto/scion/commit/2dac2d5dfdf732084126b30295395ef3e59dd6b2) | control/beaconing: handle repeated registration errors gracefully (#4896) | excluded_non_optimization |
| 24 | [`bea7df4b`](https://github.com/scionproto/scion/commit/bea7df4b353063cf961ce918a19847f18fba16a8) | drkey: take into account grace period (#4894) | excluded_non_optimization |
| 25 | [`8e4f8b10`](https://github.com/scionproto/scion/commit/8e4f8b10e2454e94047a469bb1d7a487ea04b84e) | cmd/scion-pki: improve CLI UX (#4803) | excluded_non_optimization |
| 26 | [`8053b9e3`](https://github.com/scionproto/scion/commit/8053b9e32372f2b8b86b71ec379850547cc5b556) | fix: add "do not edit" header to generated doc files (#4889) | excluded_non_optimization |
| 27 | [`16596d59`](https://github.com/scionproto/scion/commit/16596d595c1980620876ce9710c866d7ab2ea49c) | fix: correctly apply pr #4872 (#4888) | excluded_non_optimization |
| 28 | [`64f3b664`](https://github.com/scionproto/scion/commit/64f3b664c27a6a6364cf8bb5feeef64d62774abc) | private/storage/db: use immediate transactions on write connection only (#4873) | intent_unresolved |
| 29 | [`969d3e50`](https://github.com/scionproto/scion/commit/969d3e50e2a68327e4ee343e956e14c32915024d) | chore: upgrade to go 1.26.0 (#4881) | excluded_non_optimization |
| 30 | [`26def56a`](https://github.com/scionproto/scion/commit/26def56accc15bbd28584d158c8a6327747fa2e5) | refactor: modernize code base after go 1.25 upgrade (#4859) | excluded_non_optimization |
| 31 | [`8e07e8f0`](https://github.com/scionproto/scion/commit/8e07e8f088f935e38d17d393748d17cb93277605) | chore: upgrade to go 1.25.6 (#4875) | excluded_non_optimization |
| 32 | [`08f6cdb2`](https://github.com/scionproto/scion/commit/08f6cdb2a377b142194bf019cd609494846aca15) | snet: implement STUN for NAT traversal (#4863) | excluded_non_optimization |
| 33 | [`484576c5`](https://github.com/scionproto/scion/commit/484576c5c2f7f86bb9ade7b901e54b040630d209) | scion-cli: use standalone daemon by default (#4870) | excluded_non_optimization |
| 34 | [`cce7754b`](https://github.com/scionproto/scion/commit/cce7754b652c7f425ea297091468cd0f7518e4c3) | daemon: implement support for standalone operation (#4869) | excluded_non_optimization |
| 35 | [`dc2bb39c`](https://github.com/scionproto/scion/commit/dc2bb39cd413d49935a53921fc585817ac336d16) | daemon: refactor and modularize daemon and pkg/daemon (#4868) | excluded_non_optimization |
| 36 | [`8d42e157`](https://github.com/scionproto/scion/commit/8d42e1571269b8bb24478b53f4606c30d8bd4b54) | router: add STUN implementation (#4740) | excluded_non_optimization |
| 37 | [`2148dfbe`](https://github.com/scionproto/scion/commit/2148dfbe67b1ad744792fb0fb42ee097aa0d3b26) | fix: break loop and the not select (#4860) | excluded_non_optimization |
| 38 | [`8b89e769`](https://github.com/scionproto/scion/commit/8b89e769c5e46ad5683f31419b713dfd502d2a90) | proto/crypto: rename HeaderAndBody (#4840) | excluded_non_optimization |
| 39 | [`b0a3b46b`](https://github.com/scionproto/scion/commit/b0a3b46b3b2c9ac5b5a93bf7d21ec468ebee5625) | deps: bump golang.org/x/crypto from 0.39.0 to 0.45.0 (#4847) | excluded_non_optimization |
| 40 | [`ec75acb4`](https://github.com/scionproto/scion/commit/ec75acb4e2134a7299b6ea55731e38e6f9cd1597) | deps: fix glob vulnerability (#4848) | excluded_non_optimization |
| 41 | [`d23064e9`](https://github.com/scionproto/scion/commit/d23064e9f661c4f1bb2de36cb4d7786114ad0164) | deps: fix vulnerabilities reported by Dependabot (#4846) | excluded_non_optimization |
| 42 | [`cf8767be`](https://github.com/scionproto/scion/commit/cf8767be84cdbe4f9e9077d00dce82b605ead28f) | test: connectrpc/grpc compatibility via  happy eyeballs (#4811) | excluded_non_optimization |
| 43 | [`38e79c43`](https://github.com/scionproto/scion/commit/38e79c43faf38ebec719ac71fb65e1f814050e3b) | private/storage: improve sqlite usage (#4836) | confirmed_optimization; UNKNOWN |
| 44 | [`7f774b0b`](https://github.com/scionproto/scion/commit/7f774b0bd846b9691e12ea54fb7a2315d94a8b6a) | pkg/scrypto/cppki: ignore trailing whitespace on PEM certificate bundles (#4822) | excluded_non_optimization |
| 45 | [`fab47110`](https://github.com/scionproto/scion/commit/fab47110e9c400891ed7147ceb5b83cf017b4eeb) | chore: fix pnpm-related Dependabot alerts (#4818) | excluded_non_optimization |
| 46 | [`1615ae80`](https://github.com/scionproto/scion/commit/1615ae80e004f1753028a9990abd9928c8aa332d) | control: pluggable segment registration (#4782) | excluded_non_optimization |
| 47 | [`35221632`](https://github.com/scionproto/scion/commit/35221632539dcd033c93bdc4edf82c2eeef7b903) | path-combinator: fix path mtu when segment is shortcut (#4805) | excluded_non_optimization |
| 48 | [`5263253f`](https://github.com/scionproto/scion/commit/5263253fc9e2b836549618aad4610cd5bb88acd4) | refactor: use generic slice reverse (#4809) | excluded_non_optimization |
| 49 | [`e5a3a695`](https://github.com/scionproto/scion/commit/e5a3a69555e42c72eddf35a0a654acf288780f9e) | rpc: make eyeballs happier (#4808) | intent_unresolved |
| 50 | [`150bf583`](https://github.com/scionproto/scion/commit/150bf5830b5efc85e77d81545aff2d58f76566e4) | controlplane: do less SVC resolution (#4789) | confirmed_optimization; UNKNOWN |
| 51 | [`e766e205`](https://github.com/scionproto/scion/commit/e766e2054b21fb38666f68caadd519c849c8c85d) | chore: upgrade quic-go to new api v0.53.0 (#4797) | excluded_non_optimization |
| 52 | [`ee958708`](https://github.com/scionproto/scion/commit/ee958708546726a8cf28e6ca60f8517c4a915856) | test: use capsh at runtime instead of setcap at buildtime (#4802) | excluded_non_optimization |
| 53 | [`ad39a826`](https://github.com/scionproto/scion/commit/ad39a826931ce404b6fb922052e5d99d0e22ed2a) | pkg/snet: change snet.Fingerprint to take interface list (#4800) | excluded_non_optimization |
| 54 | [`30627687`](https://github.com/scionproto/scion/commit/3062768739e5e5bfebf07f1f7ff1f5a60c29b4c7) | cppki: use appropriate digest algorithm during CMS signature creation (#4785) | excluded_non_optimization |
| 55 | [`150ee877`](https://github.com/scionproto/scion/commit/150ee877b96aafffcd9e0dfafef16a018bf68483) | connectrpc: add support for server and client side (#4788) | excluded_non_optimization |
| 56 | [`379c6c7d`](https://github.com/scionproto/scion/commit/379c6c7db20695a53b758190cd6c4302d0c3ab20) | chore: use tablewriter latest version v1.0.7 (#4796) | excluded_non_optimization |
| 57 | [`1918cb46`](https://github.com/scionproto/scion/commit/1918cb46408a70e9308dfa74777e9cff6158ac66) | chore: replace gopkg.in/yaml.v2 with gopkg.in/yaml.v3 (#4794) | excluded_non_optimization |
| 58 | [`7fa5b344`](https://github.com/scionproto/scion/commit/7fa5b3448fbc6b61b582ad1f03cc731c266b129d) | chore: migrate to golangci-lint v2 (#4769) | excluded_non_optimization |
| 59 | [`51a243d5`](https://github.com/scionproto/scion/commit/51a243d5b756ce97b8720838320b871904fe0d15) | cppki: correct struct tag asn1 (#4778) | excluded_non_optimization |
| 60 | [`00f45c3d`](https://github.com/scionproto/scion/commit/00f45c3df1620cb214f9b0708d0b5f77e5ed4a08) | tests: generate topology.json files using the graph info (#4767) | excluded_non_optimization |
| 61 | [`87e8ab84`](https://github.com/scionproto/scion/commit/87e8ab847cda6343c83f22b653c77c94867c92c4) | tests: let graphupdater generate multiple graphs (#4766) | excluded_non_optimization |
| 62 | [`3779e30a`](https://github.com/scionproto/scion/commit/3779e30aad2bce9210043999742fb6c9c5fadcfe) | fix: specify linux headers include in ebpf build (#4768) | excluded_non_optimization |
| 63 | [`92283b9e`](https://github.com/scionproto/scion/commit/92283b9ecaa228771c37209e5b66a7a2fc27a7cd) | chore: fix pnpm-related Dependabot alerts (#4709) | excluded_non_optimization |
| 64 | [`efbdd4c0`](https://github.com/scionproto/scion/commit/efbdd4c03573ce1d6ab170fc97f31eb921480e6b) | underlay: support bpf port filter (#4759) | excluded_non_optimization |
| 65 | [`4c3f3cc3`](https://github.com/scionproto/scion/commit/4c3f3cc3fddd936947b5b34d9b62a6d04effc04c) | chore: tools dependencies cleanup (#4760) | excluded_non_optimization |
| 66 | [`0652aaf6`](https://github.com/scionproto/scion/commit/0652aaf6daa9268956acf50e83f55b78b97a8fcd) | chore: don't rename rules_go (#4758) | excluded_non_optimization |
| 67 | [`e009325c`](https://github.com/scionproto/scion/commit/e009325c115b5009b45334ec7cf61de7cdd53d57) | chore: upgrade go and dependencies (#4750) | excluded_non_optimization |
| 68 | [`60bc4e73`](https://github.com/scionproto/scion/commit/60bc4e7363fa2d851775bb980ef89407807a7cec) | router: add support for headroom in packet buffers (#4748) | confirmed_optimization; UNKNOWN |
| 69 | [`e34b0882`](https://github.com/scionproto/scion/commit/e34b088258d794e28e3dfd417256f48bc371e8c0) | chore: fix typos (#4756) | excluded_non_optimization |
| 70 | [`1c6e245f`](https://github.com/scionproto/scion/commit/1c6e245f071da46fe8c53ae19099adb373648b74) | fix: print formatting of ip addresses (#4754) | excluded_non_optimization |
| 71 | [`90de96d6`](https://github.com/scionproto/scion/commit/90de96d6404a5e4fa56ea020187bff8ab5b501bc) | router: refactor phase 5 (#4745) | confirmed_optimization; UNKNOWN |
| 72 | [`914b1a2e`](https://github.com/scionproto/scion/commit/914b1a2e09d4dc6144dd55a2a5d164c3af0bb74e) | fix: enable linter contextcheck and fix potential problems (#4714) | excluded_non_optimization |
| 73 | [`b38553d3`](https://github.com/scionproto/scion/commit/b38553d3f41a0a59fc9ea4234deb3455caf43f9c) | refactor: apply error naming convention (#4749) | excluded_non_optimization |
| 74 | [`16461b09`](https://github.com/scionproto/scion/commit/16461b099f45d0582ad1db62fe68589477ad686d) | router: refactor phase 4 (#4737) | excluded_non_optimization |
| 75 | [`a654e4ba`](https://github.com/scionproto/scion/commit/a654e4ba8fb9d53ed9b4e82289d8988d792005ee) | chore: fix typos (#4744) | excluded_non_optimization |
| 76 | [`acb79b94`](https://github.com/scionproto/scion/commit/acb79b9444dbdc2a545722c405a8e553ff4d270f) | build: use bzlmod (#4723) | excluded_non_optimization |
| 77 | [`2783a17e`](https://github.com/scionproto/scion/commit/2783a17e76714bc0b13023265e595a3e3ae034f0) | refactor: provide more/better context in panic messages (#4725) | excluded_non_optimization |
| 78 | [`cf714402`](https://github.com/scionproto/scion/commit/cf7144020526cdfce6f92f77fa41b0d80c1c8fd0) | router: move some more work into the links so it can be specialized (#4716) | confirmed_optimization; UNKNOWN |
| 79 | [`0d6bbb79`](https://github.com/scionproto/scion/commit/0d6bbb79bdb83a58e09c28df1cb39bf102c4dc42) | build: use rules_distroless instead of rules_debian_packages (#4710) | excluded_non_optimization |
| 80 | [`588788fb`](https://github.com/scionproto/scion/commit/588788fbde637d3d70cc5610103202a1bae0e11b) | snet: fix UDP port selection on Windows (#4656) | excluded_non_optimization |
| 81 | [`32ca8235`](https://github.com/scionproto/scion/commit/32ca8235c036728b66e41ddd1c8007674da2c93a) | test: remove testify from benchmarking code (#4711) | excluded_non_optimization |
| 82 | [`90da24df`](https://github.com/scionproto/scion/commit/90da24df1028666d26d6707325f3871643e343cf) | refactor: remove unnecessary defers in tests (#4713) | excluded_non_optimization |
| 83 | [`abd39afe`](https://github.com/scionproto/scion/commit/abd39afe0a83199aca5ad59d6cc4cc383c89d4cf) | refactor: enable linter copyloopvar (#4708) | excluded_non_optimization |
| 84 | [`17a6ae17`](https://github.com/scionproto/scion/commit/17a6ae17acea14f7fb9c546ce5e4da1187908bb6) | build: upgrade to Bazel 7.5 (without migrating to modules) (#4705) | excluded_non_optimization |
| 85 | [`eea75b9e`](https://github.com/scionproto/scion/commit/eea75b9e4e087ef3a2accccf991cda7cd2aa40a8) | router: refactor phase 2 (#4697) | excluded_non_optimization |
| 86 | [`896d7904`](https://github.com/scionproto/scion/commit/896d79047050da2842843d81b3fc1260c944359b) | chore: upgrade mgmtapi tools dependencies (#4706) | excluded_non_optimization |
| 87 | [`ecb4eaa0`](https://github.com/scionproto/scion/commit/ecb4eaa08a1ce7caf613b4da18f7ab2aecd04e46) | chore: upgrade go to v1.24.0 (#4702) | excluded_non_optimization |
| 88 | [`c30fb32a`](https://github.com/scionproto/scion/commit/c30fb32a09c26e0b25aad5a119b85f2f830e6e9f) | router: add tcp support for dispatching to endhost (#4703) | excluded_non_optimization |
| 89 | [`527d879f`](https://github.com/scionproto/scion/commit/527d879fe2cd59c1a698e551f8661b7401e78da0) | refactor: remove pkg/daemon dependency from pkg/snet (#4704) | excluded_non_optimization |
| 90 | [`14c7a71f`](https://github.com/scionproto/scion/commit/14c7a71f6098a45cdbc0b2be21b4e779fdba9464) | chore: resolve dependabot security alert #82 (#4694) | excluded_non_optimization |
| 91 | [`33de3e51`](https://github.com/scionproto/scion/commit/33de3e5142c76ab79f6edbe2c081e811de52ebf3) | refactor: remove deprecated type ErrMsg (#4693) | excluded_non_optimization |
| 92 | [`4771d86c`](https://github.com/scionproto/scion/commit/4771d86c3fd60a9e9ab4c3886b927fdd7c1b0bc7) | snet: include revocation info in snet.OpError (#4695) | excluded_non_optimization |
| 93 | [`ca467d2f`](https://github.com/scionproto/scion/commit/ca467d2fefef818119b91d58e346ce0e259e7375) | router: make room for multiple underlay impls phase 1 (#4658) | excluded_non_optimization |
| 94 | [`09895b95`](https://github.com/scionproto/scion/commit/09895b95dcf02a22f8b998b458c996abd96f61bd) | drkey: simplify Epoch type (#4690) | excluded_non_optimization |
| 95 | [`a9beead8`](https://github.com/scionproto/scion/commit/a9beead824dddb904b91fe5e74ba83d2679a765f) | refactor: use math/rand/v2 (#4692) | confirmed_optimization; UNKNOWN |
| 96 | [`29ef0b75`](https://github.com/scionproto/scion/commit/29ef0b75c21bbecc65bbb8ddb0fa43c84f8cc7c8) | test: replace xtest.MustTempDir with t.TempDir (#4691) | excluded_non_optimization |
| 97 | [`6ac5a000`](https://github.com/scionproto/scion/commit/6ac5a00035c2723f2292344caae87dcf507e6c54) | refactor: use maintained gopacket fork (#4688) | excluded_non_optimization |
| 98 | [`ebbfca93`](https://github.com/scionproto/scion/commit/ebbfca93c590204dded5661db07a780b6aab2e10) | chore: replace interface{} with any (#4684) | excluded_non_optimization |
| 99 | [`c4863f5b`](https://github.com/scionproto/scion/commit/c4863f5bf143c5c68b0e90bbc34c7b613cdf602a) | refactor: replace deprecated grpc packages (#4686) | excluded_non_optimization |
| 100 | [`f6ef8642`](https://github.com/scionproto/scion/commit/f6ef8642cea06cb2dd3b897867ccbffcff3f9e7c) | sig: retry when connecting to sciond (#4679) | excluded_non_optimization |
| 101 | [`b01e71d4`](https://github.com/scionproto/scion/commit/b01e71d4fbfda0e9dffd057e73375c97aa66d849) | doc: mild doc improvements (#4676) | excluded_non_optimization |
| 102 | [`05dfe815`](https://github.com/scionproto/scion/commit/05dfe8158ab4fc87efdebd0ed518b3308f133525) | pkg/snet: change snet.Topology to a struct (#4673) | excluded_non_optimization |
| 103 | [`efbbd583`](https://github.com/scionproto/scion/commit/efbbd5835f33ab52389976d4b69d68fa7c087230) | pkg/daemon: use grpc.NewClient instead of Dial (#4660) | excluded_non_optimization |
| 104 | [`ca52e4f5`](https://github.com/scionproto/scion/commit/ca52e4f5a1c3c0f8a6dcbb22aa78104bfb645fd9) | pkg/snet: fix isShimDispatcher condition (#4672) | excluded_non_optimization |
| 105 | [`0b42cbc4`](https://github.com/scionproto/scion/commit/0b42cbc424868bd6cc0c31d2187c0cc871fb1868) | pkg/snet: ignore decoding/parsing reading errors on SCIONPacketConn (#4670) | excluded_non_optimization |
| 106 | [`870900ff`](https://github.com/scionproto/scion/commit/870900ffbac5f38e37277ed9b6b1061b6b08e0d5) | run SCION as services on Windows (#4657) | excluded_non_optimization |
| 107 | [`228ab0df`](https://github.com/scionproto/scion/commit/228ab0dfeac557d37550573735f5b2f217b5b62b) | app/path: fix path selection for Windows (#4663) | excluded_non_optimization |
| 108 | [`3c8e30fb`](https://github.com/scionproto/scion/commit/3c8e30fbdb64f27f8d166a3a116c12ca353aa601) | router: serialize directly into packet buffers (#4654) | confirmed_optimization; UNKNOWN |
| 109 | [`a118737f`](https://github.com/scionproto/scion/commit/a118737fd69e61ac1ace3331bb32ee8259b6b136) | build: address upstream vulnerability (#4655) | excluded_non_optimization |
| 110 | [`5c3b50dc`](https://github.com/scionproto/scion/commit/5c3b50dce3ba227579b1f18420c3e28790fc385d) | router: small refactoring to remove the need for a batchconn.WriteTo (#4651) | excluded_non_optimization |
| 111 | [`db3e6c50`](https://github.com/scionproto/scion/commit/db3e6c50f2e610bba806b7a2360e245648ca8c1a) | pkg/snet: format UDPAddr to comply with net.SplitHostPort (#4648) | excluded_non_optimization |
| 112 | [`cccd8f62`](https://github.com/scionproto/scion/commit/cccd8f6284d95f5477e8234d2189d930999a81a6) | build: address vulnerability reported by depend-a-bot (#4639) | excluded_non_optimization |
| 113 | [`aa917bb4`](https://github.com/scionproto/scion/commit/aa917bb458d6675efc55b4a23fda2c694094553e) | build: update antlr version (#4555) | excluded_non_optimization |
| 114 | [`355515dd`](https://github.com/scionproto/scion/commit/355515dda82262197fdafcb00bf858580fe8c5f6) | connectrpc: generate code with buf (#4540) | excluded_non_optimization |
| 115 | [`9ceb22a4`](https://github.com/scionproto/scion/commit/9ceb22a4ec08ff69278540cfcf0c84845e0e8e99) | daemon/combinator: memoize calculated fingerprints (IDs) (#4608) | confirmed_optimization; UNKNOWN |
| 116 | [`59c70dca`](https://github.com/scionproto/scion/commit/59c70dcadeed44a3b9acdc5c8a655cf256974987) | pkg/private/common: move IfIDType out of private/common and to its own package (#4604) | excluded_non_optimization |
| 117 | [`a192c66d`](https://github.com/scionproto/scion/commit/a192c66db0041fdbfda27ab1056559b0447dde9b) | doc: rewrite TRC ceremony documentation to include scion-pki (#4615) | excluded_non_optimization |
| 118 | [`2663569d`](https://github.com/scionproto/scion/commit/2663569dcb32d8023c98a9b5fe9be53d7b88a2f6) | tracing: wrap existing logger instead of creating a new one (#4616) | excluded_non_optimization |
| 119 | [`a9e9256f`](https://github.com/scionproto/scion/commit/a9e9256f2af464e348db2342be7e905c054a174a) | router: make `AddLinkType` acquire the DataPlane mutex (#4614) | excluded_non_optimization |
| 120 | [`79e7080b`](https://github.com/scionproto/scion/commit/79e7080b3f9471434c3b2e35026ae43dec794c9d) | underlay: support SockOptInt on all platforms incl Windows (#4610) | excluded_non_optimization |
| 121 | [`a864a8c1`](https://github.com/scionproto/scion/commit/a864a8c12e228cf0a891f6ab81ce5daf8f3673c8) | topology: allow peering links between core ASes (#4605) | excluded_non_optimization |
| 122 | [`f51e6dab`](https://github.com/scionproto/scion/commit/f51e6dab7a36efbccbd2a08aea4a2b4ca1cedc68) | daemon: improve revcache performance (#4607) | confirmed_optimization; UNKNOWN |
| 123 | [`9e58974d`](https://github.com/scionproto/scion/commit/9e58974dd6181f8ae91e7fc15fc2c189b49176c3) | build: bump go version to 1.23 (#4603) | excluded_non_optimization |
| 124 | [`fbd9eb0d`](https://github.com/scionproto/scion/commit/fbd9eb0d92615dec753cf878058f506d29fd795c) | crypto: do not load already loaded TRC files (#4588) | confirmed_optimization; UNKNOWN |
| 125 | [`4c929f6b`](https://github.com/scionproto/scion/commit/4c929f6b440c568663b4194c125df15cad544bb4) | pkg/private/serrors: act the constructors deprecations (#4595) | excluded_non_optimization |
| 126 | [`4648e333`](https://github.com/scionproto/scion/commit/4648e333ddd582bf9dd4cef628a2969912137f9f) | private/app/path: include IA in Sort function (#4600) | excluded_non_optimization |
| 127 | [`6d392eee`](https://github.com/scionproto/scion/commit/6d392eeea0a3fa46fdd7a8ce03c65b72624e3397) | control: check certificates available for beacons (#4587) | excluded_non_optimization |
| 128 | [`ad503c1f`](https://github.com/scionproto/scion/commit/ad503c1fb89ba583093e2ea8004c7acd5027e010) | serrors: delete error context merging and code cleanup (#4586) | excluded_non_optimization |
| 129 | [`5b4d3a67`](https://github.com/scionproto/scion/commit/5b4d3a67d36b5fa0971e0cd33e590fc5efe144ff) | pkg/private/serrors: do not use reflect encoder for all context (#4594) | excluded_non_optimization |
| 130 | [`6a96adf2`](https://github.com/scionproto/scion/commit/6a96adf2b5354109c062c04b54810399bb5c454d) | scrypto: use ecdsa.VerifyASN1 instead of ecdsa.Verify (#4592) | confirmed_optimization; NOT_EQUIV |
| 131 | [`47b7cacd`](https://github.com/scionproto/scion/commit/47b7cacd0c1827088289d5aeb7ee710ad5f5f4be) | naming: make the spelling of ifid, ifidtype, and trc compliant with our guidelines (#4569) | excluded_non_optimization |
| 132 | [`169a6986`](https://github.com/scionproto/scion/commit/169a6986fe6ea96a73d1410e75beb98fc87bd4df) | router: clarified cryptic comment (#4580) | excluded_non_optimization |
| 133 | [`d9c3e2da`](https://github.com/scionproto/scion/commit/d9c3e2da48b4e86ba8c17d3c238fd6635b1e7d8b) | router: drop packets with v4 mapped v6 src/dst or unspecified dst hosts (#4579) | excluded_non_optimization |
| 134 | [`ad0d3bc8`](https://github.com/scionproto/scion/commit/ad0d3bc87a29e80b4462dd8e9d1003d03ef6fbc5) | pkg/slayers: remove unnecessary sub-slicing (#4576) | intent_unresolved |
| 135 | [`8ba6b382`](https://github.com/scionproto/scion/commit/8ba6b38202a24b79b6875562f6b1233932406a1c) | router: implement a proper shutdown mechanism (#4578) | excluded_non_optimization |
| 136 | [`799204fe`](https://github.com/scionproto/scion/commit/799204fe6fa639924abb0f0cf0534853d6378a7c) | monitoring: give a timeout to our prometheus request handler (#4575) | excluded_non_optimization |
| 137 | [`db65d82e`](https://github.com/scionproto/scion/commit/db65d82ead1e885b6aabbe88ddfc2adb93408ac5) | Cleanup use of snet.UDPAddr from ping and traceroute. (#4573) | excluded_non_optimization |
| 138 | [`8598eda9`](https://github.com/scionproto/scion/commit/8598eda94207c32d1cf9a1b6b367eaf1cdcadb3f) | revcache: remove goconvey (#4570) | excluded_non_optimization |
| 139 | [`36128d65`](https://github.com/scionproto/scion/commit/36128d659ef9bc9b5c49a42c951e2825efddaca0) | build: update rules_js and pnpm version (#4568) | excluded_non_optimization |
| 140 | [`93ac2391`](https://github.com/scionproto/scion/commit/93ac2391a9c0f01d36058deb4c6ee1d05dd84b46) | router: strengthen the checks performed by parsePath (#4556) | excluded_non_optimization |
| 141 | [`b01d0191`](https://github.com/scionproto/scion/commit/b01d0191daf17816c7c5893c05bc53a08e596d7c) | deps: update web tooling deps (#4567) | excluded_non_optimization |
| 142 | [`68bd2bca`](https://github.com/scionproto/scion/commit/68bd2bcae41dc398146e978a86e11fb7088e8e0c) | pkg/addr: add missing MustParseIA,AS,ISD functions (#4564) | excluded_non_optimization |
| 143 | [`be9b1593`](https://github.com/scionproto/scion/commit/be9b15933cfb5ecbe1a1d7f66e70de967b76d80e) | router: avoid gc and copy (#4539) | confirmed_optimization; UNKNOWN |
| 144 | [`a1ed6246`](https://github.com/scionproto/scion/commit/a1ed6246ecd6beae9c82544032de4f9fecab1058) | private/appnet: remove SvcResolutionFraction (#4561) | excluded_non_optimization |
| 145 | [`eacdeef5`](https://github.com/scionproto/scion/commit/eacdeef5732b67dd5fda83f2cf28bef33c3a9f8d) | router: return SCMP on invalid dst address (#4506) | excluded_non_optimization |
| 146 | [`27f725a7`](https://github.com/scionproto/scion/commit/27f725a75c03fc0f134e2232ead8814d93ef1840) | pkg/metrics: introduce v2 (#4530) | excluded_non_optimization |
| 147 | [`50b971ca`](https://github.com/scionproto/scion/commit/50b971ca2d4bdbb6b1a5826186918921418a8c7b) | Remove unused QUIC config field from CS (#4548) | excluded_non_optimization |
| 148 | [`15bdf63e`](https://github.com/scionproto/scion/commit/15bdf63eab3b7e2191e14cb6bfac36637b24f00a) | end host, router: dispatch UDP in router, remove dispatcher socket (#4344) | excluded_non_optimization |
| 149 | [`3f4629dc`](https://github.com/scionproto/scion/commit/3f4629dcebf258dc828020c542d88b9673de416c) | build: update various go dependencies (#4522) | excluded_non_optimization |
| 150 | [`4c9c3420`](https://github.com/scionproto/scion/commit/4c9c342047d9bbaa1f8bb722cf55a29de581a669) | router: optimize computeProcID (#4520) | confirmed_optimization; NOT_EQUIV |
| 151 | [`f82aabe4`](https://github.com/scionproto/scion/commit/f82aabe41beaf72569d78f28e83f932b5554a700) | router: forbid bouncing packets internally (#4502) | excluded_non_optimization |
| 152 | [`8340757f`](https://github.com/scionproto/scion/commit/8340757f72b341ca6435634fd32e612da54451d0) | control: select a signer that covers the segment (#4516) | excluded_non_optimization |
| 153 | [`5b133c0a`](https://github.com/scionproto/scion/commit/5b133c0abecbbe77f2b50cc77587c134e108d17a) | pathpol: ensure deserialized ACL has default rule (#4505) | excluded_non_optimization |
| 154 | [`f248f15b`](https://github.com/scionproto/scion/commit/f248f15bf623b5a1188dff0ed59096b5735c0be1) | router: factor out platform-dependent underlay conn flags (#4507) | excluded_non_optimization |
| 155 | [`f9c96390`](https://github.com/scionproto/scion/commit/f9c96390aa3d2456b99c5842a32595757be44a8a) | private/env: remove RunsInDocker during startup log (#4499) | excluded_non_optimization |
| 156 | [`d1c7dafa`](https://github.com/scionproto/scion/commit/d1c7dafa2f499a775c2561aa6801ff678783923b) | pkg/slayers: simplify Decoded.Reverse (#4498) | confirmed_optimization; EQUIV_PARTIAL |
| 157 | [`25e37a00`](https://github.com/scionproto/scion/commit/25e37a00237859ca04129d15909173ab1cee72f1) | cppki/segverifer: enforce AS certificate to cover AS entry (#4492) | excluded_non_optimization |
| 158 | [`17ee3013`](https://github.com/scionproto/scion/commit/17ee3013ce726c758c7001f70d1d1365a123ccda) | testing: simplify the process of configuring routers, brload for benchmarking (#4479) | excluded_non_optimization |
| 159 | [`b6aefe0e`](https://github.com/scionproto/scion/commit/b6aefe0ec2a2c2fd5b233f26eb5a28f86a21931c) | cmd/scion, snet: reduce range of IDs for SCMP requests (#4495) | excluded_non_optimization |
| 160 | [`cb7fa6d6`](https://github.com/scionproto/scion/commit/cb7fa6d6aab55c9eb90556c2b996b87539f8aa02) | serrors: remove bottom of stacktrace, test without lineno (#4494) | excluded_non_optimization |
| 161 | [`27983125`](https://github.com/scionproto/scion/commit/27983125bccac6b84d1f96f406853aab0e460405) | topology: simplify local address configuration (#4489) | excluded_non_optimization |
| 162 | [`61bf7840`](https://github.com/scionproto/scion/commit/61bf784092a751ed0d5404310a74ac8042af3dba) | paths: Add check for hopfield count <= 64 when deserializing a scion path (#4483) | excluded_non_optimization |
| 163 | [`4a8bc98e`](https://github.com/scionproto/scion/commit/4a8bc98ec7d969dd622c5a90fe677e3c980aaa88) | testing: Move /share/conf to /etc/scion and rename br.toml to router.toml. (#4478) | excluded_non_optimization |
| 164 | [`6ed7c8fc`](https://github.com/scionproto/scion/commit/6ed7c8fcdc62ab7bfa8bde2ca45883ec0d25c682) | deps: use v2 of go-toml (#4342) | excluded_non_optimization |
| 165 | [`b3447037`](https://github.com/scionproto/scion/commit/b3447037ce8c15605426e8f3b3bc1a2ff4ff6a10) | mgmtapi: support deleting segments and beacons (#4465) | excluded_non_optimization |
| 166 | [`059f500f`](https://github.com/scionproto/scion/commit/059f500f6265d2b00172271a3ff2120c35f45678) | deps: update web tooling deps (#4463) | excluded_non_optimization |
| 167 | [`2f4d3e9d`](https://github.com/scionproto/scion/commit/2f4d3e9d25a22a382c594d7f866325445990261f) | gateway: etags added to prefix discovery protobuf (#4461) | excluded_non_optimization |
| 168 | [`e476aa86`](https://github.com/scionproto/scion/commit/e476aa86a7080ebf425bc9e577f9e507271e0d6f) | control: pluggable segment signer (#4460) | excluded_non_optimization |
| 169 | [`4fc6ad85`](https://github.com/scionproto/scion/commit/4fc6ad85fc827a84a7214f988dd5d419577cf989) | dist: build debian packages for multiple platforms (#4448) | excluded_non_optimization |
| 170 | [`b878f8f6`](https://github.com/scionproto/scion/commit/b878f8f61d3773fd2a605b109a343b9f473e6eda) | router: make the benchmark and the router more adaptive to core count (#4456) | confirmed_optimization; UNKNOWN |
| 171 | [`d9c6c00b`](https://github.com/scionproto/scion/commit/d9c6c00b3d6036f47eda03a6b546cd8493298b6c) | testing: an improved router benchmark that only runs one router (#4444) | excluded_non_optimization |
| 172 | [`b4e65a6e`](https://github.com/scionproto/scion/commit/b4e65a6e3189a37d658cc56f5be4e9403305d45d) | pkg/log: fix panic when using custom Logger (#4452) | excluded_non_optimization |
| 173 | [`85b8a13a`](https://github.com/scionproto/scion/commit/85b8a13a8e3abfc57ae66ff81f4dd2fdae5fe82e) | daemon: error out when using drkey endpoints without configured drkey (#4453) | excluded_non_optimization |
| 174 | [`7fc08e4e`](https://github.com/scionproto/scion/commit/7fc08e4e8057451cddfe28b034e1744ac1cbe328) | prometheus: fix copying of metrics labels (#4450) | excluded_non_optimization |
| 175 | [`799ed128`](https://github.com/scionproto/scion/commit/799ed12888fc923ec7201e51527ef5c25210194a) | processmetrics: explicit type conversion to support arm64 (#4446) | excluded_non_optimization |
| 176 | [`2136a634`](https://github.com/scionproto/scion/commit/2136a634bba330c133b0bee1a0737fdf78453834) | testing: add router benchmark program and use it as integration test (#4437) | excluded_non_optimization |
| 177 | [`5d697c07`](https://github.com/scionproto/scion/commit/5d697c079858050d7cb6dee220e33f1fa4bdacf2) | deps: update oapi-codegen to v2 (#4432) | excluded_non_optimization |
| 178 | [`a0a89d4b`](https://github.com/scionproto/scion/commit/a0a89d4b109a2132516cfc2cfa70f8d6ea519346) | router: fix interface label of router metrics (#4430) | excluded_non_optimization |
| 179 | [`9ebc8900`](https://github.com/scionproto/scion/commit/9ebc8900303bf25d99bf2d996bcf97cad1b4060a) | deps: update bazel & bazel libs (#4426) | excluded_non_optimization |
| 180 | [`576fa432`](https://github.com/scionproto/scion/commit/576fa432582a4de1f2f181329d3a16cbf4570cf8) | build: drop @cgrindel_bazel_starlib//updatesrc (#4427) | excluded_non_optimization |
| 181 | [`fa437825`](https://github.com/scionproto/scion/commit/fa437825ee6dcbba2a084da4be8eb13f8b631a41) | router: extend packet processing metrics (#4422) | excluded_non_optimization |
| 182 | [`a82e4fb9`](https://github.com/scionproto/scion/commit/a82e4fb9817fe30e60ee5a8740cc1075df10b438) | deps: bump google.golang.org/grpc, set MaxConcurrentStreams (#4424) | intent_unresolved |
| 183 | [`bfa5fe2b`](https://github.com/scionproto/scion/commit/bfa5fe2b1354e9494d1eb96757ffe0cb490c5773) | snet/metrics: use registry in snet metrics (#4423) | excluded_non_optimization |
| 184 | [`46b055af`](https://github.com/scionproto/scion/commit/46b055afc1ccbf3f604690bdc2e34758920d670e) | control: formatted duration for config trustengine.cache.expiration (#4417) | excluded_non_optimization |
| 185 | [`44c2f676`](https://github.com/scionproto/scion/commit/44c2f6766c74bc6e4df797952b68128004fba574) | router: feature toggle for experimental SCMP authentication (#4418) | excluded_non_optimization |
| 186 | [`734f9091`](https://github.com/scionproto/scion/commit/734f90919732f22dc07fb1026a6cac518708fbc6) | cppki: limit segment expiration by certificate lifetime (#4369) | excluded_non_optimization |
| 187 | [`1774cbfc`](https://github.com/scionproto/scion/commit/1774cbfccb4cd3814906034e28c802f4dd17c4e3) | slayers: unmap IPv4-mapped IPv6 addresses (#4377) | excluded_non_optimization |
| 188 | [`b4a20118`](https://github.com/scionproto/scion/commit/b4a20118b05e5bb9e385f8ba13e0a7aad8d8dc36) | router: slow-path in async packet processing (#4383) | confirmed_optimization; UNKNOWN |
| 189 | [`ba355f1b`](https://github.com/scionproto/scion/commit/ba355f1bbebba054d36b0d883ce6b675d8ed3fc3) | spao: Update timestamp / Sequence Number field (#4366) | excluded_non_optimization |
| 190 | [`e80afbfc`](https://github.com/scionproto/scion/commit/e80afbfc43a40acf1264559c571804a986fa51aa) | protocol: implement peering links (#4390) | excluded_non_optimization |
| 191 | [`d176fc02`](https://github.com/scionproto/scion/commit/d176fc029ca351b82e7d14f89a8e9a9551f2f4b6) | scion/ping: wait for send go routine to terminate (#4392) | excluded_non_optimization |
| 192 | [`783896ee`](https://github.com/scionproto/scion/commit/783896ee19158e94978b1d2d7cbed564b3b22c55) | build: update to Go 1.21.1 (#4378) | excluded_non_optimization |
| 193 | [`5e04af02`](https://github.com/scionproto/scion/commit/5e04af0208ab87451671036b64087e79a4a488d6) | build: update quic-go version (#4385) | excluded_non_optimization |
| 194 | [`9bdd29cc`](https://github.com/scionproto/scion/commit/9bdd29ccfe7994e50a689d4d0fe9f7b8c43de3ca) | hidden_paths: enable registration of hiddenpaths both locally and remotely. | excluded_non_optimization |
| 195 | [`4096d879`](https://github.com/scionproto/scion/commit/4096d879b05a0a7e287bfb79590941facdf40bf4) | build: support fedora (#4371) | excluded_non_optimization |
| 196 | [`49b3f90c`](https://github.com/scionproto/scion/commit/49b3f90cb1a946fa64f7fbd7eee2dde4351a1e0d) | router: configuration for async packet processing (#4374) | intent_unresolved |
| 197 | [`708bdc24`](https://github.com/scionproto/scion/commit/708bdc2493788a47605d187302380b38a0db73ec) | repo: drop partial colibri implementation (#4372) | excluded_non_optimization |
| 198 | [`ab37c7af`](https://github.com/scionproto/scion/commit/ab37c7af9060b949ba35de8f24f510af9b0817c6) | router: perf improvement by async packet processing (#4351) | confirmed_optimization; UNKNOWN |
| 199 | [`9f77b13e`](https://github.com/scionproto/scion/commit/9f77b13ed8b36273de21f72d01d67bb0cd301e4e) | refactor: replace addr.HostAddr hierarchy with tagged union addr.Host (#4346) | excluded_non_optimization |
| 200 | [`8bace733`](https://github.com/scionproto/scion/commit/8bace733b17dc534f9d4925994fe2851cd89f6e0) | fix spelling of Daemon (#4354) | excluded_non_optimization |
| 201 | [`b2fdbc79`](https://github.com/scionproto/scion/commit/b2fdbc79ea5abc8298f1c36731061435a935184e) | slayers: fix decoding and serializing wide DT/ST (#4352) | excluded_non_optimization |
| 202 | [`8d65af28`](https://github.com/scionproto/scion/commit/8d65af280cfea9e4c2f5f5a99f8c9523ea57367a) | doc: consistent naming of the Traffic Class field (#4347) | excluded_non_optimization |
| 203 | [`efd0aa15`](https://github.com/scionproto/scion/commit/efd0aa15d78e248a1c93d7b15f216c773931dbd9) | router: fix minimal SCMP checks in dataplane tests (#4343) | excluded_non_optimization |
| 204 | [`c43f942c`](https://github.com/scionproto/scion/commit/c43f942cc59aa2687f60e7cdddf8212bf52a2987) | deps: replace inet.af/netaddr with net/netip and go4.org/netipx (#4313) | excluded_non_optimization |
| 205 | [`91d8cfbe`](https://github.com/scionproto/scion/commit/91d8cfbec689a82303ff5768a5edb0790c5307d5) | rules_openapi: add rule to build HTML doc (#4338) | excluded_non_optimization |
| 206 | [`c3dc46d0`](https://github.com/scionproto/scion/commit/c3dc46d0aa5f4558d1cbe7cdda6a533a942c1abd) | topology: deprecate unused attributes (#4333) | excluded_non_optimization |
| 207 | [`1fd088bd`](https://github.com/scionproto/scion/commit/1fd088bddf3a22fb23ae6a66f7bcf3f523dc9d6f) | deps: update a lot of dependencies (#4323) | excluded_non_optimization |
| 208 | [`2ab6125d`](https://github.com/scionproto/scion/commit/2ab6125dc8c35544105e64df2f320b2ad85fb04e) | doc: fix conf and rst files to get clean build (#4319) | excluded_non_optimization |
| 209 | [`fd821384`](https://github.com/scionproto/scion/commit/fd821384375a300256c2b13aa49b43d5d634469b) | pkt/spao: fix computation of header length metadata item (#4318) | excluded_non_optimization |
| 210 | [`3318edbf`](https://github.com/scionproto/scion/commit/3318edbf50c7a9e79e3d11607805922b15466273) | pkt/spao: support empty path value as input for SPAO MAC computation (#4317) | excluded_non_optimization |
| 211 | [`18986094`](https://github.com/scionproto/scion/commit/18986094e9060e035604fd86c67152a9df8f59b1) | control: close connection in SVC resolver (#4314) | excluded_non_optimization |
| 212 | [`91b6a48d`](https://github.com/scionproto/scion/commit/91b6a48de72429d5a807e19a4d4ac2e6d3a49cbe) | seg: fix AddASEntry with multiple PeerEntries (#4315) | excluded_non_optimization |
| 213 | [`fc5c897f`](https://github.com/scionproto/scion/commit/fc5c897fc640b6f769cbf2a44577265f717eafa6) | lint: fix errcheck violations (#4310) | excluded_non_optimization |
| 214 | [`3590d24c`](https://github.com/scionproto/scion/commit/3590d24ce6778fad1d6735ec7cc993222b82b4ab) | control: cached loading of keys/certs from disk for TLS (#4281) | confirmed_optimization; UNKNOWN |
| 215 | [`756c8b4e`](https://github.com/scionproto/scion/commit/756c8b4e0d61444f9216b586d368082e448df079) | pkg/private: cleanup common, util, xtest packages (#4311) | excluded_non_optimization |
| 216 | [`f3b508f1`](https://github.com/scionproto/scion/commit/f3b508f14f8c38c9cc1c50f74195b6fba9fff16d) | control: use AS certs in QUIC TLS, for DRKey auth (#4268) | excluded_non_optimization |
| 217 | [`e453564e`](https://github.com/scionproto/scion/commit/e453564eb17e43ba70036a8093eb1f8063eaddc7) | pkt/spao: add support for authenticated SCMP error messages (#4255) | excluded_non_optimization |
| 218 | [`8b738d9a`](https://github.com/scionproto/scion/commit/8b738d9ae220f758a4d2530ea8399e644e60f52a) | slayers: reset Options in extension DecodeFromBytes (#4308) | excluded_non_optimization |
| 219 | [`013b5cfb`](https://github.com/scionproto/scion/commit/013b5cfb0c939da71145ebc63f8fe16637fcd2c2) | db: check tx.Rollback error / serrors: add Join (#4307) | excluded_non_optimization |
| 220 | [`a0e8d00b`](https://github.com/scionproto/scion/commit/a0e8d00b2b024d5785c3ef7bec8b3236eda2fd0a) | slayers: type-safe SetNetworkLayerForChecksum (#4305) | excluded_non_optimization |
| 221 | [`270b5522`](https://github.com/scionproto/scion/commit/270b5522af2f145e0e9589a145a89a438918089f) | pkg/log: improve performance for disabled log levels (#4304) | confirmed_optimization; NOT_EQUIV |
| 222 | [`5823c617`](https://github.com/scionproto/scion/commit/5823c6177e3a741111e340da0c42573d13c49e79) | lint: cleanup lint output, consolidate lint steps (#4303) | excluded_non_optimization |
| 223 | [`3b3c9365`](https://github.com/scionproto/scion/commit/3b3c9365857968bfc94efbafdc4fcc6e6b110cdf) | router: add checks for intra-segment forwarding (#4294) | excluded_non_optimization |
| 224 | [`cd5f8d04`](https://github.com/scionproto/scion/commit/cd5f8d043157304df21a3d1344eeb7477f06a9ce) | router: check src/dst IA, check transit source IP (#4157) | excluded_non_optimization |
| 225 | [`82198c64`](https://github.com/scionproto/scion/commit/82198c64e2c6fecc83713f56c894698b95d7cdef) | cmd/scion: add json/yaml format to ping and traceroute (#4287) | excluded_non_optimization |
| 226 | [`c70e8cca`](https://github.com/scionproto/scion/commit/c70e8cca6aad9dd5aa516b2e43b9175a5f5bd4f7) | slayers: fix typo in doc comment for slayers.EndToEndExtnSkipper (#4298) | excluded_non_optimization |
| 227 | [`0c58ad5f`](https://github.com/scionproto/scion/commit/0c58ad5f8072e148ebdc171a009a896adf301de4) | gateway: discard malformed packets on data port (#4291) | excluded_non_optimization |
| 228 | [`004ab189`](https://github.com/scionproto/scion/commit/004ab1897fd4f0849a0cc478313d2107368ca5b8) | slayers: combine AddrType/Len (#4160) | excluded_non_optimization |
| 229 | [`2bb6b83c`](https://github.com/scionproto/scion/commit/2bb6b83c71b044f64c73839c55d2b448be33449b) | build: upgrade to Go 1.19.2 (#4271) | excluded_non_optimization |
| 230 | [`780bf4cb`](https://github.com/scionproto/scion/commit/780bf4cb9863838b3c901d4a015cd3c7f09664ec) | build: update gobra to support the new rules of gofmt (#4279) | excluded_non_optimization |
| 231 | [`874783b5`](https://github.com/scionproto/scion/commit/874783b531a46306631a5a21280535b4972c0dd0) | pkg/snet: support URI style UDPAddr encoding (#4254) | excluded_non_optimization |
| 232 | [`1d865eec`](https://github.com/scionproto/scion/commit/1d865eec33b542f3621a3add87b7ed18932de991) | lint: bump golangci-lint version for go-1.18, enable caching (#4269) | confirmed_optimization; UNSUPPORTED |
| 233 | [`159f8f45`](https://github.com/scionproto/scion/commit/159f8f45cc4bfc0a79e1afdf8e95fc457b1b6331) | doc, slayers: correct maximum for HdrLen (#4259) | excluded_non_optimization |
| 234 | [`a13f61dc`](https://github.com/scionproto/scion/commit/a13f61dc26b0a3f7931ec24b8878b0e5cc49da58) | segfetcher: log fetch error (#4258) | excluded_non_optimization |
| 235 | [`d644ecf9`](https://github.com/scionproto/scion/commit/d644ecf96ac2d41a1b80ee650ccab99f0c633768) | cmd/scion: add a ping flag that allows setting the final packet size (#4251) | excluded_non_optimization |
| 236 | [`8b91ff08`](https://github.com/scionproto/scion/commit/8b91ff08b801ae0eec4a403b218daacb022dcb25) | Update SPAO extension header (#4190) | excluded_non_optimization |
| 237 | [`248ce0de`](https://github.com/scionproto/scion/commit/248ce0dea758c2fa772bd0fb1b8cf0a42fd12483) | cmd/scion: set payload size appropriately if --max-mtu is set (#4250) | excluded_non_optimization |
| 238 | [`83661066`](https://github.com/scionproto/scion/commit/836610663766dc1ec2779fc823a471de105a48f5) | deps: upgrade to Go 1.18.5 (#4248) | excluded_non_optimization |
| 239 | [`199f8e49`](https://github.com/scionproto/scion/commit/199f8e4924db1e2cfcaacf46019bd47109fd4a2c) | Pass parameter by reference in `Path.Reverse` in package `onehop` (#4243) | confirmed_optimization; NOT_EQUIV |
| 240 | [`bc05c933`](https://github.com/scionproto/scion/commit/bc05c933a92ead6f3f061711ef2648c471cd236e) | Return an error when reversing an empty SCION path (#4242) | excluded_non_optimization |
| 241 | [`2ba92797`](https://github.com/scionproto/scion/commit/2ba92797a320d3102ab71e3dacd96fe8b1e2fdb4) | Add Gobra to the CI and specify and verify infofield.go and hopfield.go (experimental) (#4187) | excluded_non_optimization |
| 242 | [`3f277e44`](https://github.com/scionproto/scion/commit/3f277e447fbd6ad6e45b434e52acb862492318cc) | control: refactor renewal metrics (#4239) | excluded_non_optimization |
| 243 | [`aea5e4f1`](https://github.com/scionproto/scion/commit/aea5e4f1a8120dc97935767b528a917c9a858221) | drkey: control and daemon main code (#4240) | excluded_non_optimization |
| 244 | [`e6539d59`](https://github.com/scionproto/scion/commit/e6539d59998e239bef7ab25e58fc8753d99599f4) | drkey: add cs fetcher (#4235) | excluded_non_optimization |
| 245 | [`8b0209f5`](https://github.com/scionproto/scion/commit/8b0209f579296f6f29aa4aeb6e70d3fb5c66a9e3) | drkey: add daemon api + daemon config (#4238) | excluded_non_optimization |
| 246 | [`2ade8219`](https://github.com/scionproto/scion/commit/2ade82199e4bfceea98b2b4594171df58633b4c0) | grpc: remove roundrobin dependency from dialer.go (#4237) | excluded_non_optimization |
| 247 | [`c61d7198`](https://github.com/scionproto/scion/commit/c61d7198b166c44bbaec17ed7619ed13cf5ea1be) | drkey: add grpc pkg in daemon (#4233) | excluded_non_optimization |
| 248 | [`971f851a`](https://github.com/scionproto/scion/commit/971f851ae63d015431bac194d132a6bd2146b3d1) | drkey: daemon grpc RPC methods implementation (#4234) | excluded_non_optimization |
| 249 | [`f365b07b`](https://github.com/scionproto/scion/commit/f365b07ba96b9bc57965ce9f429dd698dba96d41) | drkey: add daemon client engine (#4232) | excluded_non_optimization |
| 250 | [`a8003f13`](https://github.com/scionproto/scion/commit/a8003f1302b1de4b7bba564e4b34f216bbc664c1) | dispatcher: set large send buffer size on underlay socket (#4228) | confirmed_optimization; UNKNOWN |
| 251 | [`b7455f07`](https://github.com/scionproto/scion/commit/b7455f077322c875b6ee2e7faeb02f7ab9c11160) | drkey: add config for control (#4227) | excluded_non_optimization |
| 252 | [`ca9c4532`](https://github.com/scionproto/scion/commit/ca9c4532931380e8504651a67e53bbbc86ea6aff) | drkey: add RPC cs/daemon (#4226) | excluded_non_optimization |
| 253 | [`b353321b`](https://github.com/scionproto/scion/commit/b353321bbe12278d5442325bfeabe0d7bb0b3ec7) | drkey: add ServiceEngine and secretValueEngine (#4225) | excluded_non_optimization |
| 254 | [`daf3416e`](https://github.com/scionproto/scion/commit/daf3416e1c298b6532a4c37dee149844a88ee2d5) | slayers: return appropriate error in path reversal (#4229) | excluded_non_optimization |
| 255 | [`39b8fd4a`](https://github.com/scionproto/scion/commit/39b8fd4acbc2773e04e022bd66cf7cffae1f48a7) | drkey: add level2 DB (#4223) | excluded_non_optimization |
| 256 | [`87a21fac`](https://github.com/scionproto/scion/commit/87a21fac3ef55077f0754ce2ff144a880758bdf2) | trust: add X509KeyPairProvider (#4224) | excluded_non_optimization |
| 257 | [`ec9074cd`](https://github.com/scionproto/scion/commit/ec9074cda5e88b0e8406e584f4d0e98d0756a9c8) | trust: extend TLSCryptoManager with support for verifying correctness of extKeyUsage extensions (#4222) | excluded_non_optimization |
| 258 | [`75f01806`](https://github.com/scionproto/scion/commit/75f018065252adfde91148d88db8d7723eceff2b) | drkey: Add Level1 DB (#4221) | excluded_non_optimization |
| 259 | [`d0961fff`](https://github.com/scionproto/scion/commit/d0961fff350dd81515630038b776e9b6c504f505) | drkey: Add SecretValue DB (#4220) | excluded_non_optimization |
| 260 | [`6ed6b84a`](https://github.com/scionproto/scion/commit/6ed6b84abdb549e6356750401d056ecc5265b9dc) | drkey: public library and protobuf definitions (#4217) | excluded_non_optimization |
| 261 | [`93f69bdb`](https://github.com/scionproto/scion/commit/93f69bdb1527af31965c1bc312abba21091bfc80) | lib/periodic: add function to inject metrics in task (#4204) | excluded_non_optimization |
| 262 | [`35510dfd`](https://github.com/scionproto/scion/commit/35510dfdddbe975cb2a48bb0a4a09d2b7d750c0e) | deps: update dependencies to support go-1.18 (#4213) | excluded_non_optimization |
| 263 | [`6344ddbb`](https://github.com/scionproto/scion/commit/6344ddbbf5065f406503bc7cc3198cd15a975f46) | serrors: append to existing context in WithCtx (#4207) | excluded_non_optimization |
| 264 | [`63e532b8`](https://github.com/scionproto/scion/commit/63e532b820fa5d68d1f3e5bacb707f79aeacf613) | gateway: pass path information around as a data structure (#4206) | excluded_non_optimization |
| 265 | [`41c45c44`](https://github.com/scionproto/scion/commit/41c45c44a96793c470fd9899290bdf4efc88fca6) | lint: detect captured loop var in go/defer statement (#4202) | excluded_non_optimization |
| 266 | [`8f96bcdd`](https://github.com/scionproto/scion/commit/8f96bcdd1f44d5165fdee0c192ff550ec827977c) | squic: remove unused leaking Dial/Listen API (#4200) | excluded_non_optimization |
| 267 | [`64b403a1`](https://github.com/scionproto/scion/commit/64b403a1886caa56fd42d7d6c89dcaf6deb54765) | refactor: remove logger struct field from BFD | excluded_non_optimization |
| 268 | [`36bdd436`](https://github.com/scionproto/scion/commit/36bdd436accd30ec189e27395ea5329631a091c8) | serrors: only attach stacktrace on inner most wrapping | intent_unresolved |
| 269 | [`e68d7741`](https://github.com/scionproto/scion/commit/e68d7741bf113fa7d8fe3de0df09300280776cba) | trust: reduce number of committed test data | excluded_non_optimization |
| 270 | [`707bd142`](https://github.com/scionproto/scion/commit/707bd1422bff651bb03d48cf40d6fbf3109c66a6) | snet: return *snet.UDPAddr from snet.Conn.LocalAddr | excluded_non_optimization |
| 271 | [`f1793e31`](https://github.com/scionproto/scion/commit/f1793e31fc9ffa94c2c0a4c9c77868a9dd4c4024) | doc: now published on docs.scion.org | excluded_non_optimization |
| 272 | [`a0ef1712`](https://github.com/scionproto/scion/commit/a0ef17123ecccdf6b58c03747a63c9618dd4ae15) | renewal: remove legacy request handler | excluded_non_optimization |
| 273 | [`dd4024c5`](https://github.com/scionproto/scion/commit/dd4024c50d1ff748db52f654973aa0feb2353042) | scion-pki: use TCP/IP for cert renewal in the local AS | excluded_non_optimization |
| 274 | [`53c3e7b9`](https://github.com/scionproto/scion/commit/53c3e7b961015d6ad2381257153a5f0a08a3e5df) | daemon: properly close connections to the daemon in various places | excluded_non_optimization |
| 275 | [`b87ad0f9`](https://github.com/scionproto/scion/commit/b87ad0f99aeb906d61c10944c7df177a1d22f09d) | gateway: rename gateway_path_changes metric to gateway_session_path_changes | excluded_non_optimization |
| 276 | [`b8821878`](https://github.com/scionproto/scion/commit/b882187847d7cbf559f7361048bcb680e2ec52b0) | scion-pki: add --subject-isd-as flag to cert verify command | excluded_non_optimization |
| 277 | [`25c85173`](https://github.com/scionproto/scion/commit/25c8517352d3d00229b36efc51f0a98f99dc0d24) | metrics: add helper method to instantiate a histogram from a prometheus histogram | excluded_non_optimization |
| 278 | [`056899fe`](https://github.com/scionproto/scion/commit/056899fe365267bbca6234e4280bb8f044cf356c) | log: fix typo in sample config | excluded_non_optimization |
| 279 | [`19c5367e`](https://github.com/scionproto/scion/commit/19c5367efd6586b66773286de742d98c5b3faecb) | path: return error if no healthy path is available | excluded_non_optimization |
| 280 | [`d13f572b`](https://github.com/scionproto/scion/commit/d13f572bf2cf61000080da2ac6a8d7ebdf93ed38) | fix typo in `MarshalYAML` and add linter to catch such typos | excluded_non_optimization |
| 281 | [`f4b4e9f5`](https://github.com/scionproto/scion/commit/f4b4e9f5d9cad168e4649a1805113618fd5439d4) | gateway: remove DataPlaneRunner interface | excluded_non_optimization |
| 282 | [`4279b4c7`](https://github.com/scionproto/scion/commit/4279b4c7c0b181dd4f797a7df945c8bc4a614370) | Let `pathpol.ACL` and `pathpol.Sequence` implement the yaml Marshaller and Unmarshaller interfaces. | excluded_non_optimization |
| 283 | [`5b8e32a2`](https://github.com/scionproto/scion/commit/5b8e32a28efcf7cc4dbb73275cf5633c18fb29cf) | doc: generate command documentation for scion and scion-pki tools | excluded_non_optimization |
| 284 | [`ea83919d`](https://github.com/scionproto/scion/commit/ea83919d5698104d8dea82e42a3ed8d111b8f35e) | build: do not bundle management API docs by default | confirmed_optimization; UNSUPPORTED |
| 285 | [`a574cee1`](https://github.com/scionproto/scion/commit/a574cee1da8c159d7e860472a359ed7706e1f27a) | repo: consolidate tools | excluded_non_optimization |
| 286 | [`03034e35`](https://github.com/scionproto/scion/commit/03034e35b1fcb404d41ae891187f3c6014f48416) | scion-pki: add --isd flag to trc verify command | excluded_non_optimization |
| 287 | [`1940c156`](https://github.com/scionproto/scion/commit/1940c156e7fb19b6e02329049dee2ebd0cba76f5) | control: only wrap errors in revhandler | excluded_non_optimization |
| 288 | [`c9f4465e`](https://github.com/scionproto/scion/commit/c9f4465e3768b8b46def9c537c997848ca0c29af) | ci: increase timeout fo gprc/dialer test | excluded_non_optimization |
| 289 | [`a7a11810`](https://github.com/scionproto/scion/commit/a7a1181011d26ab8157e7ab84375eac82719b25f) | build: enable more go vet analysis passes in nogo | excluded_non_optimization |
| 290 | [`bb4dd91c`](https://github.com/scionproto/scion/commit/bb4dd91c0790a1671ba0c5d95ba7589bdfd3356a) | repo: cleanup leftover references to the go directory | excluded_non_optimization |
| 291 | [`309ecd90`](https://github.com/scionproto/scion/commit/309ecd907d66c2b5990173d1b483889dfded550d) | Add the maincheck linter that ensures all the main functions are declared in a file that is called main.go | excluded_non_optimization |
| 292 | [`cb5bfa69`](https://github.com/scionproto/scion/commit/cb5bfa696d88f40e089731f925709e418b2d2747) | ci: enable race detector for unit tests | excluded_non_optimization |
| 293 | [`15d455f1`](https://github.com/scionproto/scion/commit/15d455f11eb8d717f3a91880506cbabdf780b21c) | repo: restructure the repository layout | excluded_non_optimization |
