from common import U, E
FR = 'frame API: Aeneas "Dynamic trait types are not supported yet" (io::Error/io::Read/Write), FrameEncoder reaches compress_internal ("Continue to outer loops are not supported yet")'
E('6e39a69', perf='"add backtrack for better compression ratio ... improve compression speed by ~5%"',
  change='compress_into_with_table extends matches backwards (backtrack) before emitting; hashtable get_at/put_at and helpers only re-annotated. Changes compressed output (intended; still valid LZ4).',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', '"Continue to outer loops are not supported yet" in compress_into_with_table (both sides)', 'work/6e39a69 (apic-*)', reason='aeneas-error'),
         U('compress helpers (token_from_literal, handle_last_literals, ...) + hashtable get_at/put_at', 'raw', 'EQUIV', 'identical LLBC; Lean: Old.f = New.f by with_unfolding_all rfl for every helper', 'lean/C6e39a69/ProofHlpcRfl.lean, ProofModhashRfl.lean', identical=True)],
  verdict='UNSUPPORTED', raw='EQUIV', reason='aeneas-error', coverage='partial', notes='Perf-carrying change is inside compress_into_with_table (untranslatable). Intended compressed-output change; decompress(compress(x)) unaffected.')
E('b06df70', perf='"Improve Compression Speed by ~5%"',
  change='count_same_bytes takes the candidate index instead of a sub-slice (unsafe variant walks a raw pointer); safe/unsafe copy_literals_wild introduced (unsafe = 8-byte wild copy via raw pointers).',
  units=[U('lz4_flex::block::compress::count_same_bytes (safe)', 'raw', 'UNSUPPORTED', 'Aeneas "Internal error" (Interp.ml:617) on the chunks_exact().zip() loop on both sides; body emitted as sorry; Iterator::zip missing', 'work/b06df70 (hlpc-*), lean/Cb06df70/ProofCountSameBytes.lean (only unchanged helpers proved equal)', reason='aeneas-error'),
         U('lz4_flex::block::compress::count_same_bytes / copy_literals_wild (unsafe)', 'raw', 'UNSUPPORTED', 'raw-pointer reads/writes (ptr::add, read_usize_ptr, wild_copy_from_src_8)', 'repos diff', reason='unsafe-raw-pointers'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', '"Continue to outer loops are not supported yet"', 'work/b06df70 (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', notes='Informally the safe count_same_bytes is the old body behind `&input[candidate..]` (LLBC diff is just that prefix) but this could not be checked in Lean.')
E('489d1c1', perf='"write 4byte blocks for match length"',
  change='unsafe (non-safe-encode) write_integer writes 0xFFFFFFFF words via push_u32 (ptr::copy_nonoverlapping) and fixes up the Vec length with set_len.',
  units=[U('lz4_flex::block::compress::write_integer (unsafe-encode)', 'raw', 'UNSUPPORTED', 'only compiled without safe-encode; push_u32 uses ptr::copy_nonoverlapping + Vec::set_len (raw pointers / uninitialised length); compress_into_with_table fails ("Continue to outer loops")', 'work/489d1c1 (apiuc-*, hlpc-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('6362614', perf='"Use 16byte block wildcopy instead of 8bytes, up to +20% Decomp"',
  change='Unsafe decoder: wild_copy_from_src_16 (raw-pointer 16-byte copies) for matches.',
  units=[U('lz4_flex::block::decompress::decompress_into (unsafe decoder)', 'api', 'UNSUPPORTED', 'duplicate / wild_copy_from_src_16 / read_u16 not translated (raw pointers); decompress_into: "Early returns inside of loops"', 'work/6362614 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', notes='Safe decoder untouched: identical LLBC (apid).')
E('7e23ed4', perf='"Pull backtrack_match bounds checking to outside of the loop"',
  change='safe backtrack_match: while-loop with indexed compares -> iterator `input[lit..cur].iter().rev().copied().zip(source[..cand].iter().rev().copied())` loop.',
  units=[U('lz4_flex::block::compress::backtrack_match', 'raw', 'UNSUPPORTED', 'old (while loop) translates and typechecks; new iterator version: Aeneas "Internal error, please file an issue" (Rev/Zip/Copied adapters)', 'work/7e23ed4 (hlpc-*)', reason='aeneas-error'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', '"Continue to outer loops are not supported yet"', 'work/7e23ed4 (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error')
E('135ef44', perf='"agressive inline so performance is not dependent on LTO"',
  change='#[inline] -> #[inline(always)] on compress helpers and hashtable methods.',
  units=[U('lz4_flex::block::compress (whole module incl. compress_internal)', 'api', 'EQUIV', 'normalised LLBC of the whole compress module identical (only inline attributes / a trailing space differ); Aeneas cannot translate compress_internal', 'work/135ef44 (modcomp.llbc.norm.diff)', identical=True),
         U('lz4_flex::block::hashtable (get_at/put_at, all tables)', 'raw', 'EQUIV', 'Lean: Old.f = New.f by with_unfolding_all rfl for all hashtable defs (and identical LLBC)', 'lean/C135ef44/ProofModhashRfl.lean')],
  verdict='EQUIV')
E('9270dc0', perf='"no overallocation in safe mode"',
  change='safe decoder: decompress_sink_size(n) = n instead of n + 4 + BLOCK_COPY_SIZE; decompress/decompress_size_prepended allocate (and return) a Vec of exactly n bytes.',
  units=[U('lz4_flex::block::decompress_safe::decompress_sink_size', 'raw', 'NOT_EQUIV', 'TODO', 'lean/C9270dc0/ProofSinkSize.lean', kind='intended-output-change'),
         U('lz4_flex::block::decompress_safe::decompress', 'api', 'UNSUPPORTED', 'Aeneas: "Early returns inside of loops are not supported yet" / "Internal error" — body of decompress_into ignored in this translation, so decompress is a sorry', 'work/9270dc0 (dec-*)', reason='aeneas-error'),
         U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'EQUIV', 'identical LLBC (decompress_into does not use decompress_sink_size)', 'work/9270dc0 (apid.llbc.norm.diff)', identical=True)],
  verdict='UNSUPPORTED', raw='NOT_EQUIV', reason='aeneas-error', kind='intended-output-change',
  notes='In the old code `decompress()` returned a Vec whose length is uncompressed_size + 28 (zero padded); the new code returns exactly uncompressed_size bytes, i.e. the public result changes (the old behaviour was in effect a latent bug). Checked only at raw level.')
E('e3884b1', perf='"Replace inline(always) with plain inline annotations"',
  change='#[inline(always)] -> #[inline] on all compress helpers and hashtable methods. Unrelated hunk: new overflow assertion in compress_internal / compress_into_with_dict.',
  units=[U('compress helpers (hash, hash5, get_batch(_arch), get_hash_at, token_from_*, count_same_bytes, write_integer, handle_last_literals, backtrack_match, push_*, copy_literals_wild)', 'raw', 'EQUIV', 'per-item comparison of the printed LLBC of the compress module: all 54 helper items identical; only compress_internal / compress_into_with_dict differ (non-perf assert hunk)', 'work/e3884b1 (modcomp.llbc.norm.diff; scripts/llbcitems.py)', identical=True),
         U('lz4_flex::block::hashtable (all tables get_at/put_at)', 'raw', 'EQUIV', 'Lean: Old.f = New.f by with_unfolding_all rfl for all hashtable defs', 'lean/Ce3884b1/ProofModhashRfl.lean')],
  verdict='EQUIV', coverage='full', notes='Mixed commit: the added `assert!(input_stream_offset.checked_add(..) <= usize::MAX/2)` in compress_internal is not a perf change and was not checked (compress_internal is untranslatable: "Continue to outer loops").')
E('eb7b2ec', perf='"Restore fast version of write_integer" (writes 0xFF bytes four at a time, "a predictable branch for the common case")',
  change='safe write_integer: fast path for n < 255; otherwise writes 4-byte 0xFFFFFFFF words via new push_u32 and a final 4-byte word built with to_be(), then rewinds output_len.',
  units=[U('lz4_flex::block::compress::write_integer', 'raw', 'TODO', 'TODO', 'lean/Ceb7b2ec/ProofWriteInteger.lean', kind='ub-domain-change'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'compress_internal: "Continue to outer loops are not supported yet"', 'work/eb7b2ec', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error')
E('3887b63', perf='"Use simple while loop for backtrack_match" (code comment: the iterator version "in practice seems to make it slower")',
  change='Reverts 7e23ed4: backtrack_match goes back from the iterator zip/rev form to a while loop.',
  units=[U('lz4_flex::block::compress::backtrack_match', 'raw', 'UNSUPPORTED', 'old (iterator) side: Aeneas "Internal error, please file an issue"; new (while) side translates/typechecks; other helpers identical LLBC', 'work/3887b63 (hlpc-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error')
E('81f95e6', perf='"Intentionally ignore trailling bytes for performance" ("makes safe compressor 10% faster")',
  change='safe count_same_bytes no longer compares the last <8 bytes byte-wise (removes the iter().zip().skip().take_while().count() tail) — intentionally finds slightly shorter matches.',
  units=[U('lz4_flex::block::compress::count_same_bytes', 'raw', 'UNSUPPORTED', 'old side: iterator adapters (Skip/TakeWhile/count) only as opaque axioms and the generated model does not typecheck ("`count` is not a field of structure core.iter.traits.iterator.Iterator"); new side typechecks', 'work/81f95e6 (hlpc-*)', reason='lean-model-typecheck-error'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'unsafe config does not build at this revision; safe config: compress_internal "Continue to outer loops"', 'work/81f95e6', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='lean-model-typecheck-error', notes='Intended output change (shorter matches near the end of input).')
E('ae7823d', perf='"Use const generics to generate optimized (de)compressor functions"',
  change='decompress_internal::<USE_DICT> / compress_internal::<.., USE_DICT>: the dictionary branch is compiled out for the dict-less entry points; copy_from_dict simplified.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'TODO', 'TODO', 'lean/Cae7823d/ProofDecompress.lean'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'compress_internal: "Continue to outer loops are not supported yet"', 'work/ae7823d (apic-*)', reason='aeneas-error'),
         U('compress helpers (backtrack_match etc.)', 'raw', 'EQUIV', 'identical; Lean rfl', 'lean/Cae7823d/ProofHlpcRfl.lean')],
  verdict='TODO')
E('69eb2fe', perf='"Inline annotate wildcopy and remove dead code"',
  change='#[inline] on wild_copy_from_src_{8,16} in block/mod.rs and removal of unused code.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'EQUIV', 'identical LLBC; Lean: Old.decompress_into = New.decompress_into by with_unfolding_all rfl', 'lean/C69eb2fe/ProofApidRfl.lean'),
         U('lz4_flex::block::compress::compress_into', 'api', 'EQUIV', 'identical LLBC (Aeneas cannot translate compress_internal)', 'work/69eb2fe (apic.llbc.norm.diff)', identical=True),
         U('lz4_flex::block::wild_copy_from_src_8/16 (unsafe)', 'raw', 'UNSUPPORTED', 'raw-pointer functions ("cast_expose<*mut u8, usize>"), only compiled in the unsafe config', 'work/69eb2fe (hlpc-old)', reason='unsafe-raw-pointers')],
  verdict='EQUIV', raw='UNSUPPORTED', coverage='partial', notes='The annotated functions themselves are raw-pointer code; safe-config public entry points are provably unchanged.')
_CW = 'the changed decision selects between a byte loop and `copy_within` (an opaque Aeneas axiom, no model): old/new results on the distinguishing inputs depend on copy_within semantics'
E('2e0de8a', perf='"Use precise bounds checking for optimized copies" (fast 20-byte copy taken more often)',
  change='safe decoder hot loop: overlap test `match_length + 20 >= offset` -> `offset < 20`, capacity test `<` -> `<=`; copy_from_dict cleanup.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', 'both models translate and typecheck, but ' + _CW, 'work/2e0de8a, lean/C2e0de8a/Apid*', reason='missing-std-model')],
  verdict='UNSUPPORTED', reason='missing-std-model')
E('3e4d780', perf='"Optimize safe decoder"',
  change='safe decoder hot loop: literal copied with a fixed 16-byte copy_from_slice (wild), match copied with a fixed 20-byte copy_within; new safe_input_pos/safe_output_pos thresholds.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', 'both models translate and typecheck, but ' + _CW, 'work/3e4d780', reason='missing-std-model')],
  verdict='UNSUPPORTED', reason='missing-std-model', notes='The wild 16-byte literal copy also changes bytes beyond the reported output length.')
E('5514720', perf='"Relax hot-lop condition" ("theoretically ... improve chances of entering the hot loop")',
  change='safe/unsafe decoder: 20 -> 18 in the hot-loop distance and copy length.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', 'models typecheck; the only differences (7 lines) are the constants 20->18 in the copy_within range and the offset/capacity thresholds: ' + _CW, 'work/5514720', reason='missing-std-model'),
         U('lz4_flex::block::decompress::decompress_into (unsafe)', 'api', 'UNSUPPORTED', '"Invalid inputs for binop" (pointer arithmetic)', 'work/5514720 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='missing-std-model')
E('b9fa440', perf='"Optimize safe decoder"',
  change='safe decoder: duplicate_slice uses `match_length > offset` for the overlap test and drops overflow/capacity checks ("assumes output will fit"); duplicate_overlapping_slice moves the overflow check first and drops the checked-decode empty-output check.',
  units=[U('lz4_flex::block::decompress_safe::duplicate_overlapping_slice', 'raw', 'TODO', 'TODO', 'lean/Cb9fa440/ProofOverlap.lean'),
         U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'TODO', 'TODO', 'lean/Cb9fa440/ProofOverlap.lean')],
  verdict='TODO')
E('97b0c32', perf='"Use inline always in safe duplicate_slice. Otherwise the compiler fails to inline it, resulting in -10% performance."',
  change='#[inline] -> #[inline(always)] on duplicate_slice.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'EQUIV', 'Lean: theorem L97b0c32_apid_equiv_1 : Old.decompress_into = New.decompress_into := by with_unfolding_all rfl (models identical)', 'lean/C97b0c32/ProofApidRfl.lean')],
  verdict='EQUIV')
E('c17c157', perf='"Add missing inline annotations"',
  change='#[inline] on several compress/decompress helpers.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'EQUIV', 'Lean rfl on identical models', 'lean/Cc17c157/ProofApidRfl.lean'),
         U('lz4_flex::block::compress (module)', 'api', 'EQUIV', 'normalised LLBC of the compress module identical', 'work/c17c157 (modcomp.llbc.norm.diff)', identical=True)],
  verdict='EQUIV')
E('b222194', perf='"Don\'t zero fill buffers when unsafe is allowed"',
  change='Frame encoder/decoder: in the non-safe configuration allocate src/dst with set_len instead of zero-filling (safe config: resize instead of vec![0; n]).',
  units=[U('lz4_flex::frame::decompress / FrameEncoder', 'api', 'UNSUPPORTED', FR + '; the perf path itself uses Vec::set_len on uninitialised memory', 'work/b222194 (apif-*, fdec-*)', reason='missing-std-model'),
         U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'EQUIV', 'block API untouched: Lean rfl on identical models', 'lean/Cb222194/ProofApidRfl.lean')],
  verdict='UNSUPPORTED', reason='missing-std-model', coverage='partial')
E('0a15895', perf='"8~12%+ increase in decompression of medium compressible input"',
  change='Hot loop: copy 18 bytes (ptr::copy / copy_within) whenever offset >= match_length, otherwise an overlapping byte loop (safe: push loop).',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', 'new side: Aeneas "Could not match the contexts" (body emitted as sorry); old side typechecks; also depends on copy_within', 'work/0a15895 (apid-*)', reason='aeneas-error'),
         U('lz4_flex::block::decompress::decompress_into (unsafe)', 'api', 'UNSUPPORTED', '"Invalid inputs for binop" (pointer arithmetic), ptr::copy', 'work/0a15895 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='aeneas-error')
E('39bba71', perf='"10% faster safe compressor"',
  change='safe copy_literals_wild: exact extend_from_slice -> fixed 8/16/24-byte copy_from_slice wild copies (inline(always)).',
  units=[U('lz4_flex::block::compress::copy_literals_wild', 'raw', 'TODO', 'TODO', 'lean/C39bba71/ProofCopyWild.lean'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'compress_internal: "Continue to outer loops are not supported yet"', 'work/39bba71 (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error')
E('6b6348e', perf='"5~10% faster unsafe compressor"',
  change='unsafe copy_literals_wild (get_unchecked_mut + copy_from_slice / ptr::copy_nonoverlapping) and unsafe decoder wild_copy_from_src_16 moved into decompress.rs.',
  units=[U('lz4_flex::block::compress::copy_literals_wild / decompress duplicate (unsafe)', 'raw', 'UNSUPPORTED', 'raw pointers; unsafe-config decoder: "Invalid inputs for binop"; compress_internal: "Continue to outer loops"', 'work/6b6348e (apiuc-*, apiud-*)', reason='unsafe-raw-pointers'),
         U('safe-config compress helpers / decoder', 'api', 'EQUIV', 'identical LLBC in the safe configuration (hlpc, apid)', 'work/6b6348e', identical=True)],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('1a57451', perf='"Provide optimized read_to_string and read_to_end methods"',
  change='FrameDecoder gets read_to_end/read_to_string overrides that decompress directly into the caller buffer.',
  units=[U('lz4_flex::frame::decompress (FrameDecoder::read_to_end)', 'api', 'UNSUPPORTED', FR, 'work/1a57451 (fdec-*)', reason='missing-std-model')],
  verdict='UNSUPPORTED', reason='missing-std-model')
E('f5d96e1', perf='"Matches hashtable size should account for position size ... 20% speedup when compressing small data"',
  change='get_table_size: 16_001..=65535 -> (8192,3) and larger inputs -> (4096,4) (was 16_001..=30_000 -> (8192,3), else (16384,2)); FrameEncoder uses a fixed 4K table.',
  units=[U('lz4_flex::block::hashtable::get_table_size', 'raw', 'NOT_EQUIV', 'kernel-checked: Old.get_table_size 40000 = ok (16384,2), New = ok (8192,3) (f5d96e1_get_table_size_not_equiv; axioms: propext, Classical.choice, Quot.sound)', 'lean/Cf5d96e1/ProofTableSize.lean, work/f5d96e1/prooftablesize.log', kind='intended-output-change'),
         U('lz4_flex::block::compress::compress_into / frame', 'api', 'UNSUPPORTED', 'compress_internal: "Continue to outer loops"; frame: ' + FR, 'work/f5d96e1 (apic-*, apif-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', raw='NOT_EQUIV', reason='aeneas-error', kind='intended-output-change',
  notes='Table size only affects which matches are found: compressed output changes (still valid LZ4).')
E('110f6c9', perf='"Modify FrameEncoder/Decoder buffering to be lazy ... Compression (725) => 71% faster"',
  change='Frame encoder/decoder allocate their buffers lazily (with_capacity + vec_copy_overwriting / vec_set_len) instead of zero-filling up front.',
  units=[U('lz4_flex::frame::{decompress, FrameEncoder}', 'api', 'UNSUPPORTED', FR, 'work/110f6c9 (apif-*, fdec-*)', reason='missing-std-model')],
  verdict='UNSUPPORTED', reason='missing-std-model', notes='Block API untouched (identical LLBC for compress_into/decompress_into).')
E('d197a09', perf='"Size dict according to input ... so the overhead of zeroing the table is not too large for small inputs"',
  change='get_table_size for inputs <= 65535 computes next_power_of_two(len).clamp(256, 16K)/2 instead of a fixed range table (different table sizes -> different compressed output).',
  units=[U('lz4_flex::block::hashtable::get_table_size', 'raw', 'UNSUPPORTED', 'both sides translate; new side calls usize::next_power_of_two, Ord::clamp and trailing_zeros which are opaque axioms in the model, so neither equality nor a concrete difference is derivable', 'work/d197a09 (gts-*), lean/Cd197a09/Gts*', reason='missing-std-model'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', '"Continue to outer loops are not supported yet"', 'work/d197a09 (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='missing-std-model', notes='Natively get_table_size(300) is (128,9) old vs (256,8) new — an intended change, but the checker cannot evaluate the new side.')
E('9777ea3', perf='"Adjust preallocation numbers" (memory: preallocate ~50% of the worst-case size)',
  change='frame::compress_with preallocates get_maximum_output_size(len)/2 instead of the full worst case; comment change in frame::decompress.',
  units=[U('lz4_flex::frame::{compress_with, decompress}', 'api', 'UNSUPPORTED', FR, 'work/9777ea3 (apif-*, fdec-*)', reason='missing-std-model')],
  verdict='UNSUPPORTED', reason='missing-std-model', notes='Only a Vec capacity changes; Aeneas Vec models carry no capacity, so the change would be invisible even if translation succeeded.')
E('f46d8ba', perf='"improve safe decomp performance up to 10%"',
  change='safe decoder: copy_24 helper and restructured duplicate_slice / duplicate_overlapping_slice; unsafe decoder small tweak.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', 'Aeneas: "Early returns inside of loops are not supported yet" (both sides)', 'work/f46d8ba (apid-*)', reason='aeneas-error'),
         U('compress helpers', 'raw', 'EQUIV', 'identical; Lean rfl', 'lean/Cf46d8ba/ProofHlpcRfl.lean')],
  verdict='UNSUPPORTED', raw='UNSUPPORTED', reason='aeneas-error')
