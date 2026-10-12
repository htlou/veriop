# CUTLASS SM90 wait-hoist metadata screen

Seeded nonkeyword draw 228 is `e1b2ec57e3f1b5c34367c1de27faa0217dc39fcd`, “Hoist waits above the warp specialized region.” It changes two existing SM90 GEMM kernel headers: `sm90_gemm_array_tma_warpspecialized_cooperative.hpp` and `sm90_gemm_array_tma_warpspecialized_pingpong.hpp`. This is an explicit scheduling change in an existing execution path, so it is included in the optimization-intent sample.

The [full fixed-order audit](cutlass-nonkeyword-first416-blob-audit.json) shows four missing historical changed blobs for this commit; none of the 416 nonkeyword commits has every changed blob locally. No faithful before/after PTX was built, and neither Volta nor Kuiper checked this pair. The verdict is `UNKNOWN`, not a proof of equivalence or a measured performance improvement. Other unselected nonkeyword titles mostly describe feature additions, fixes, or maintenance; this screen is not a complete semantic review of all 416 diffs.
