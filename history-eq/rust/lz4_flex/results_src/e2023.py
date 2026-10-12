from common import U, E
SINKTRAIT = 'generated model does not typecheck: methods of `impl Sink for SliceSink` return an extra back-function absent from the trait signature ("Type mismatch ... Lz4_flexSinkSink.byte_at")'
SHADOW = 'generated model does not typecheck: a local variable named `sink` shadows the module prefix in `sink.SliceSink.impl.pos sink` ("Invalid field `SliceSink`")'
CONT = 'compress_internal: "Continue to outer loops are not supported yet"'
E('cb4eef3', perf='"perf: faster duplicate_overlapping" (copy 4 bytes per iteration to avoid bad unrolling)',
  change='unsafe duplicate_overlapping copies via raw pointers 4 bytes at a time.',
  units=[U('lz4_flex::block::decompress::duplicate_overlapping (unsafe decoder)', 'raw', 'UNSUPPORTED', 'raw pointers; unsafe decoder: "Unsupported operation: &raw mut (*_11)"', 'work/cb4eef3 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', notes='Safe decoder untouched (identical LLBC).')
E('370f22a', perf='"refactor: remove VecSink ... this will reduce code bloat from generics"',
  change='Removes the VecSink type and the generic Sink parameter; all paths use SliceSink.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', 'old: ' + SINKTRAIT + '; new: ' + SHADOW, 'work/370f22a (apid-*)', reason='lean-model-typecheck-error'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', CONT, 'work/370f22a (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='lean-model-typecheck-error', notes='Internal interface change (VecSink removed); public signatures unchanged.')
E('31b2d90', perf='"perf: simplify extend_from_within_overlapping" (uiCA cycles 28.7 -> 13.0)',
  change='SliceSink::extend_from_within_overlapping: drops the assert, the temporary sub-slice and the `out[offset] = 0` zero-fill; loops directly over output[pos..pos+n].',
  units=[U('lz4_flex::sink::SliceSink::extend_from_within_overlapping', 'raw', 'TODO', 'TODO', 'lean/C31b2d90/ProofSink.lean'),
         U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', SHADOW, 'work/31b2d90 (apid-*)', reason='lean-model-typecheck-error')],
  verdict='TODO')
E('7dd9275', perf='"perf: remove unnecessary assertions"',
  change='SliceSink::extend_from_within loses its two asserts; duplicate_slice replaces the overflowing_sub check (returning Err(OffsetOutOfBounds)) by a plain subtraction.',
  units=[U('lz4_flex::sink::SliceSink::extend_from_within', 'raw', 'TODO', 'TODO', 'lean/C7dd9275/ProofSink.lean'),
         U('lz4_flex::block::decompress_safe::duplicate_slice', 'raw', 'UNSUPPORTED', SHADOW + ' (in duplicate_overlapping_slice, which duplicate_slice calls)', 'work/7dd9275 (hlpd-*)', reason='lean-model-typecheck-error'),
         U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', SHADOW, 'work/7dd9275 (apid-*)', reason='lean-model-typecheck-error')],
  verdict='TODO', notes='Natively, duplicate_slice now panics (slice index out of range after the wrapping subtraction) where it used to return Err(OffsetOutOfBounds) for offset > pos with match_length <= offset; not checkable at api level.')
E('9ea7f65', perf='"perf: improve safe decompression performance 8-18%"',
  change='safe hot loop takes a fixed &[u8;16] input window, reads the offset from it, drops the LiteralOutOfBounds / OffsetOutOfBounds error checks (rely on panicking bounds checks); SliceSink fields made pub, filled_slice removed.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', SHADOW, 'work/9ea7f65 (apid-*)', reason='lean-model-typecheck-error'),
         U('lz4_flex::block::decompress_safe::duplicate_overlapping_slice', 'raw', 'UNSUPPORTED', SHADOW, 'work/9ea7f65 (hlpd-*)', reason='lean-model-typecheck-error')],
  verdict='UNSUPPORTED', reason='lean-model-typecheck-error', notes='Behaviour on malformed input changes natively (Err -> panic).')
E('ebbb561', perf='"perf: improve safe frame compression performance 7-15%" (fixed Box<[u32;4096]> table lets the compiler drop bounds checks)',
  change='New HashTable4K (fixed 4096-entry boxed array, shift const 4) used by FrameEncoder instead of the dynamically sized HashTableU32.',
  units=[U('lz4_flex::block::hashtable (HashTable4K vs HashTableU32)', 'raw', 'UNSUPPORTED', 'hashtable module model does not typecheck: hash5 literal 889523592379#usize exceeds the platform-generic Usize bound ("scalar_tac failed ... 889523592379 ≤ UScalar.cMax Usize"); also a new type without old counterpart', 'work/ebbb561 (modhash-*)', reason='lean-model-typecheck-error'),
         U('lz4_flex::frame::FrameEncoder', 'api', 'UNSUPPORTED', 'frame: ' + CONT + ' / dyn io traits', 'work/ebbb561 (apif-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='lean-model-typecheck-error')
E('ff35a35', perf='"perf: switch to use only 3 kinds of hashtable ... that allow to remove bounds checks"',
  change='get_table_size and the dynamically sized tables are replaced by three fixed tables (HashTable4KU16 / HashTable8K / HashTable4K) selected by input size; table sizes change (compressed output changes).',
  units=[U('lz4_flex::block::hashtable', 'raw', 'UNSUPPORTED', 'hashtable module model does not typecheck (hash5 64-bit literal vs generic Usize); tables are new types (interface change)', 'work/ff35a35 (modhash-*)', reason='lean-model-typecheck-error'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', CONT, 'work/ff35a35 (apic-*)', reason='aeneas-error'),
         U('other compress helpers', 'raw', 'EQUIV', 'identical; Lean rfl', 'lean/Cff35a35/ProofHlpcRfl.lean')],
  verdict='UNSUPPORTED', raw='UNSUPPORTED', reason='lean-model-typecheck-error')
E('517f1da', perf='"readd unintentionally removed inline never" (comment: inlining compress_internal "often significantly detrimental")',
  change='#[inline] -> #[inline(never)] on compress_internal; parameter renames in frame vec_copy_overwriting.',
  units=[U('lz4_flex::block::compress (module incl. compress_internal)', 'api', 'EQUIV', 'normalised LLBC of the compress module identical (attribute-only); Aeneas cannot translate compress_internal', 'work/517f1da (modcomp.llbc.norm.diff)', identical=True),
         U('compress helpers', 'raw', 'EQUIV', 'Lean rfl on identical models', 'lean/C517f1da/ProofHlpcRfl.lean')],
  verdict='EQUIV', notes='The frame hunk (variable renames in vec_copy_overwriting) is not a perf change.')
E('7b1d51d', perf='"feat: autodetect frame blocksize ... increases compression ratio and speed"',
  change='FrameInfo default block size becomes Auto (chosen from the first write); changes frame output.',
  units=[U('lz4_flex::frame::FrameEncoder', 'api', 'UNSUPPORTED', 'frame encoder: ' + CONT + '; io traits', 'work/7b1d51d (apif-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error', notes='Intended output change (different default block size).')
E('d11df17', perf='"perf: use input_prt instead of input_pos, improve checks ... Improve checked-decode performance by 3-15%"',
  change='unsafe decoder walks raw input pointers and merges two bounds checks.',
  units=[U('lz4_flex::block::decompress::decompress_into (unsafe decoder)', 'api', 'UNSUPPORTED', '"Unsupported operation: &raw mut" (both sides)', 'work/d11df17 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('2dd38d7', perf='"increase unsafe compression speed by 3%"',
  change='unsafe count_same_bytes ignores the last 7 bytes (removes the cold tail function).',
  units=[U('lz4_flex::block::compress::count_same_bytes (unsafe)', 'raw', 'UNSUPPORTED', 'only compiled without safe-encode; raw-pointer reads; compress_internal "Continue to outer loops"', 'work/2dd38d7 (apiuc-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', notes='Intended (slightly shorter matches).')
E('29914d4', perf='"Shrink vec after block compression" (memory)',
  change='compress_into_vec_with_dict calls shrink_to_fit on the returned Vec.',
  units=[U('lz4_flex::block::compress::compress / compress_prepend_size', 'api', 'UNSUPPORTED', 'reaches compress_internal: ' + CONT, 'work/29914d4', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error', notes='Capacity-only change; Aeneas Vec models have no capacity, so it would be invisible in the model.')
E('712d4be', perf='"perf: use nightly feature to avoid loop unrolling"',
  change='#[cfg_attr(nightly, optimize(size))] on duplicate_overlapping and SliceSink::extend_from_within_overlapping.',
  units=[U('lz4_flex::sink (SliceSink::extend_from_within_overlapping)', 'raw', 'EQUIV', 'identical LLBC (cfg `nightly` not set; attribute only); the sink model itself does not typecheck (' + SINKTRAIT + ')', 'work/712d4be (modsink.llbc.norm.diff)', identical=True),
         U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'EQUIV', 'identical LLBC', 'work/712d4be (apid.llbc.norm.diff)', identical=True),
         U('lz4_flex::block::decompress::decompress_into (unsafe)', 'api', 'EQUIV', 'identical LLBC', 'work/712d4be (apiud.llbc.norm.diff)', identical=True)],
  verdict='EQUIV', notes='With --cfg nightly only an optimisation attribute would be added; semantics unchanged.')
E('b8cdd97', perf='"optimize wildcopy" (drop the redundant initial check)',
  change='unsafe wild_copy_from_src_16 becomes a do-while; duplicate_overlapping compares pointers directly.',
  units=[U('lz4_flex::block::decompress::wild_copy_from_src_16 (unsafe)', 'raw', 'UNSUPPORTED', '"Unsupported operation: &raw mut (*_7)"', 'work/b8cdd97 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', notes='Natively not equivalent for num_items = 0 (new copies 16 bytes once) — callers never pass 0.')
E('4d36f98', perf='"improve safe Decompression 3-28% ... Replace calls to memcpy with custom function"',
  change='SliceSink::extend_from_slice_wild uses the new fastcpy::slice_copy (double-copy trick for short slices) instead of copy_from_slice; compress copy_literals_wild drops its 8/16/24-byte wild-copy cases.',
  units=[U('lz4_flex::sink::{impl Sink for SliceSink}::extend_from_slice_wild / extend_from_slice', 'raw', 'EQUIV', 'TODO', 'lean/C4d36f98/ProofFastcpy.lean'),
         U('lz4_flex::block::compress::copy_literals_wild', 'raw', 'TODO', 'TODO', 'lean/C4d36f98/ProofCopyWild.lean'),
         U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', SINKTRAIT, 'work/4d36f98 (apid-*)', reason='lean-model-typecheck-error'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', CONT, 'work/4d36f98 (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='lean-model-typecheck-error')
E('ab128d1', perf='"improve unsafe Decompression 0-8% by replacing memcmp calls with a custom function"',
  change='new fastcpy_unsafe::slice_copy (raw pointers) used in the unsafe decoder.',
  units=[U('lz4_flex::fastcpy_unsafe::slice_copy', 'raw', 'UNSUPPORTED', '"Aeneas does not yet support dereferencing raw pointers."', 'work/ab128d1 (modfast-new, apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('e81e6e3', perf='"improve unsafe Decompression Performance ~4%"',
  change='unsafe decoder: manual less-aggressive unrolling of the overlapping copy.',
  units=[U('lz4_flex::block::decompress::decompress_into (unsafe)', 'api', 'UNSUPPORTED', '"Aeneas does not yet support dereferencing raw pointers."', 'work/e81e6e3 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('8ca5f9a', perf='"reenable custom copy" (fastcpy_unsafe::slice_copy for literals)',
  change='unsafe decoder uses fastcpy_unsafe::slice_copy instead of ptr::copy_nonoverlapping.',
  units=[U('lz4_flex::block::decompress::decompress_into (unsafe)', 'api', 'UNSUPPORTED', '"Unsupported operation: &raw mut (*_7)"', 'work/8ca5f9a (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('1b30e04', perf='"use smaller Hashtable" (4K instead of 8K entries; memory)',
  change='compress_into_sink_with_dict uses HashTable4K instead of HashTable8K for inputs >= 64KB (fewer table bits -> different matches -> different compressed output).',
  units=[U('lz4_flex::block::hashtable', 'raw', 'UNSUPPORTED', 'hashtable model does not typecheck (hash5 64-bit literal vs generic Usize)', 'work/1b30e04 (modhash-*)', reason='lean-model-typecheck-error'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', CONT, 'work/1b30e04 (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error', notes='Intended output change.')
E('23b05b0', perf='"Replace check with truncate ... Improves unsafe decompression performance ~4% and safe decompression by ~2%"',
  change='hot loop: an out-of-range match offset is clamped (min / saturating_sub) instead of returning Err(OffsetOutOfBounds) — "we don\'t return on corrupted data".',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', SINKTRAIT, 'work/23b05b0 (apid-*)', reason='lean-model-typecheck-error'),
         U('lz4_flex::block::decompress::decompress_into (unsafe)', 'api', 'UNSUPPORTED', '"Aeneas does not yet support dereferencing raw pointers."', 'work/23b05b0 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='lean-model-typecheck-error', notes='Natively a deliberate behaviour change on corrupted input (Err -> garbage output).')
