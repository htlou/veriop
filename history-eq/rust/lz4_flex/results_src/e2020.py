# Entries for 2020 perf commits.  U(name, level, verdict, evidence, artifact, **kw)
from common import U, E
E('4f385c8', perf='"improve decrompression": replaces the byte-by-byte self-copy in Decoder::duplicate by an unsafe ptr::copy_nonoverlapping (copy_on_self)',
  change='Decoder::duplicate calls new copy_on_self (Vec::reserve + raw-pointer copy_nonoverlapping + set_len) when the match does not overlap.',
  units=[U('lz4_flex::decompress::decompress_into', 'api', 'UNSUPPORTED', 'Aeneas: "Found a case of unsupported nested borrows" (both sides)', 'work/4f385c8 (apid-*)', reason='aeneas-error'),
         U('lz4_flex::decompress::copy_on_self', 'raw', 'UNSUPPORTED', 'translates, but ptr::add/copy_nonoverlapping/Vec::set_len become uninterpreted axioms (no memory model); new-only function', 'work/4f385c8 (cos-new), lean/C4f385c8/CosNew', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', coverage='full')
E('dd79989', perf='"some tests & optimizations" (decompressor rewrite, adds unchecked decoder)',
  change='Rewrites decompress.rs (Decoder) and adds decompress_unchecked.rs / decompress_old.rs; lib.rs declares a module compress_new that is not in the commit.',
  units=[U('lz4_flex::compress::compress_into / decompress::decompress_into', 'api', 'UNSUPPORTED', 'new revision does not build: error[E0583]: file not found for module `compress_new`; old side: Aeneas "Unexpected return"/"Internal error"', 'work/dd79989', reason='old-code-does-not-build')],
  verdict='UNSUPPORTED', reason='old-code-does-not-build', coverage='full', notes='The *new* snapshot does not compile (missing src/compress_new.rs).')
E('8961caa', perf='"add faster hash function"',
  change='Adds `block::hash` (multiplicative hash) and some constants in block/mod.rs; the new hash is not yet called anywhere (it is wired in by 05bc4a6).',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'EQUIV', 'Charon LLBC of compress_into (and everything it reaches) is identical old vs new (0 diff lines); Aeneas itself cannot translate it ("Unexpected return")', 'work/8961caa (apic.llbc.norm.diff)', identical=True),
         U('lz4_flex::block::decompress::decompress_into', 'api', 'EQUIV', 'identical LLBC (0 diff lines)', 'work/8961caa (apid.llbc.norm.diff)', identical=True),
         U('lz4_flex::block::hash', 'raw', 'UNSUPPORTED', 'new function without an old counterpart (dead code at this commit)', 'repos diff', reason='interface-or-state-layout-change')],
  verdict='EQUIV', raw='UNSUPPORTED', coverage='full',
  notes='Dead code: the faster hash is added but unused, so observable behaviour (all public entry points) is unchanged; checked as identical Charon LLBC. The output-changing switch to this hash happens in 05bc4a6.')
_RP = 'raw-pointer operations (ptr::add/copy_nonoverlapping/read/write, Vec::as_mut_ptr/set_len) are rejected by Aeneas ("Unsupported operation: &raw mut", "cast_expose") or become uninterpreted axioms'
E('05bc4a6', perf='"compression performance improvement ... use faster hashing algorithm, try larger stepsize when calculating match length"',
  change='Encoder::get_cur_hash switches from a PCG hash to the multiplicative `hash` (changes the compressed output); find_duplicate extends matches 4/2/1 bytes at a time via byteorder reads; trap-value check via overflowing_sub.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'Aeneas: "Unexpected return" / "Could not match the contexts" in Encoder methods (find_duplicate/complete) on both sides; byteorder::read_u32/u16 and iterator adapters only as opaque axioms', 'work/05bc4a6 (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error', notes='Hash change is an intended compressed-output change (still valid LZ4), but the checker cannot translate the encoder on either side.')
E('c10b91c', perf='"manually inline for performance improvements"',
  change='Inlines find_duplicate/pop_block into Encoder::complete (restructured main loop).',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'Aeneas: "Unexpected return", "Internal error" on Encoder::complete (both sides)', 'work/c10b91c (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error')
E('d5b0ebe', perf='"impove compression performance by 2x"',
  change='Encoder writes into &mut Vec<u8> instead of a generic io::Write; get_batch reads via ptr::copy_nonoverlapping; new count_same_bytes (8/4/2-byte xor + trailing_zeros); also adds compress_write.rs.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'new side: "Unsupported operation: &raw mut" in get_batch/read_u16/u32/u64; old side: "Unexpected return"/"Internal error"', 'work/d5b0ebe (apic-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('073d918', perf='"Improve Compression speed ... using a pointer to the input ... reduces bounds checks"',
  change='Encoder keeps raw pointer into the input, preallocates output and copies without resizing; safe version moved to compress_slice.rs.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', '"Unsupported operation: &raw mut/const" in Encoder::get_batch/count_same_bytes/complete (both sides)', 'work/073d918 (apic-*)', reason='unsafe-raw-pointers'),
         U('lz4_flex::block::decompress::decompress_into', 'api', 'EQUIV', 'decompressor untouched: identical LLBC', 'work/073d918 (apid.llbc.norm.diff)', identical=True)],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', coverage='full')
E('54c5f02', perf='"Improve Compression Speed (on par with C++ for several cases)": output pointer instead of vec, wildcopy',
  change='Encoder writes through a raw output pointer (copy_into_vec, wildcopy 8-byte blocks); decompress_unchecked duplicate/read_integer tweaks.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', '"Unsupported operation: &raw mut (*_7)", "cast_expose<*mut u8, usize>" in Encoder::complete (both sides)', 'work/54c5f02 (apic-*)', reason='unsafe-raw-pointers'),
         U('lz4_flex::block::decompress_unchecked::decompress', 'api', 'UNSUPPORTED', 'unchecked decoder is raw-pointer code (get_unchecked/ptr copies)', 'repos diff', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('64b1eb3', perf='"use unchecked access to hashtable. Increases performance around 10%"',
  change='dict[hash] -> unsafe get_unchecked/get_unchecked_mut in Encoder::complete.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'Encoder::complete not translatable ("Unsupported operation: &raw mut", cast_expose) on both sides; get_unchecked_mut only an opaque axiom', 'work/64b1eb3 (apic-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('d9990d6', perf='"improve compression speed for uncompressed data"',
  change='Skip-trigger acceleration: step size grows with the number of non-matches (LZ4_SKIPTRIGGER = 6); changes which matches are found (intended output change).',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'Encoder::complete (raw output pointer) not translatable on either side', 'work/d9990d6 (apic-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('f296911', perf='dictionary size chosen by input size (smaller tables for small inputs: less zeroing)', 
  change='compress_into selects (dict_size, dict_bitshift) from input.len(); dict becomes a Vec. Changes compressed output for most sizes.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'Encoder::complete (raw output pointer) not translatable on either side', 'work/f296911 (apic-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('1e9a072', perf='"cleanup, add inline"',
  change='Adds #[inline] to Encoder helpers and restructures some Encoder code (not attribute-only: LLBC differs in Encoder::complete).',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'Encoder::complete not translatable (raw output pointer) on either side; normalised LLBC differs (1758 lines)', 'work/1e9a072 (apic-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('6dc25f8', perf='"improve duplicate check loop"',
  change='Rewrites the match-search loop of Encoder::complete as a while-condition loop.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'Encoder::complete/get_batch/handle_last_literals not translatable (raw pointers) on either side', 'work/6dc25f8 (apic-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('cd7af6e', perf='"remove inline(never)" (+ "fix end check")',
  change='#[inline(never)] -> #[inline] on handle_last_literals; MFLIMIT 12 -> 16 and end_pos_check change (output change).',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'Encoder methods with raw output pointer not translatable on either side', 'work/cd7af6e (apic-*)', reason='unsafe-raw-pointers'),
         U('lz4_flex::block::decompress::decompress_into', 'api', 'EQUIV', 'identical LLBC', 'work/cd7af6e (apid.llbc.norm.diff)', identical=True)],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', notes='Mixed commit: inline hint plus a functional end-of-block check change.')
E('e6ef192', perf='"refactor loop for inlining"',
  change='Splits the Encoder main loop so that helper calls can be inlined.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'Encoder::complete not translatable: raw pointers ("Invalid inputs for binop" on pointer arithmetic, &raw mut)', 'work/e6ef192 (apic-*, hlpc-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('f8ccd0a', perf='"move cur to function and remove temp pos, gain 4%"',
  change='Encoder struct removed; compress_into becomes a free function with local cursor; raw output pointer.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', 'raw-pointer helpers (read_usize_ptr, wild_copy_from_src, push_unsafe) not translatable; compress_into body fails', 'work/f8ccd0a (apic-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('7f4159c', perf='"safe_decode conditional, fix bound checks, performance improvements"',
  change='Decoder rewritten with unchecked accesses / pointer copies, safe-decode feature introduced.',
  units=[U('lz4_flex::block::decompress::decompress_into', 'api', 'UNSUPPORTED', 'new side with safe-decode does not build (E0433 LittleEndian); without features new side: "cast_expose<*mut u8, usize>" (raw pointers); old: Internal error', 'work/7f4159c (apid0-*, apid-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('d1cb17c', perf='"add fast check loop for not filled tokens"',
  change='Decoder replaced by a free-function hot loop that handles tokens whose lengths fit in the token byte with 16-byte pointer copies.',
  units=[U('lz4_flex::block::decompress::decompress_into', 'api', 'UNSUPPORTED', 'old side does not build with safe-decode; without features old: cast_expose raw pointer, new: "Early returns inside of loops are not supported yet"; block_copy_from_src/duplicate use raw pointers', 'work/d1cb17c (apid0-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('5822016', perf='"check literal != 0 before copying (performance)"',
  change='Skips the literal copy when literal length is 0 in decompress_into; removes decompress_unchecked module.',
  units=[U('lz4_flex::block::decompress::decompress_into', 'api', 'UNSUPPORTED', 'Aeneas: "Early returns inside of loops are not supported yet" (both sides); duplicate/block_copy_from_src are raw-pointer code', 'work/5822016 (apid-*)', reason='aeneas-error'),
         U('lz4_flex::block::compress (helpers)', 'raw', 'EQUIV', 'compress helpers touched by the cleanup have identical LLBC', 'work/5822016 (hlpc.llbc.norm.diff)', identical=True)],
  verdict='UNSUPPORTED', raw='UNSUPPORTED', reason='aeneas-error')
E('d044920', perf='"add inline"',
  change='Adds #[inline] to one decoder helper.',
  units=[U('lz4_flex::block::decompress::decompress_into', 'api', 'EQUIV', 'normalised LLBC identical (only an #[inline(hint)] attribute line differs); Aeneas cannot translate the decoder ("Early returns inside of loops")', 'work/d044920 (apid0.llbc.diff, apid0.llbc.norm.diff)', identical=True)],
  verdict='EQUIV', notes='Attribute-only change; with safe-decode the crate did not build at this revision on either side (E0369), so the default no-feature configuration was used.')
E('07478dd', perf='"improve safe compression speed"',
  change='Safe count_same_bytes compares 8-byte chunks (chunks_exact/zip) read with read_usize_ptr, get_common_bytes on the xor.',
  units=[U('lz4_flex::block::compress::count_same_bytes', 'raw', 'UNSUPPORTED', 'both sides read via read_usize_ptr/read_u32_ptr (ptr::copy_nonoverlapping): "Unsupported operation: &raw mut"', 'work/07478dd (hlpc-*)', reason='unsafe-raw-pointers'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', '"Continue to outer loops are not supported yet" (both sides)', 'work/07478dd (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('46d0e1d', perf='"avoid bounds check by casting to array first (as_u32_le)"',
  change='safe-encode get_batch: from assert + unsafe read_u32_ptr to input[n..n+4].try_into() + as_u32_le; count_same_bytes reads usize via as_usize_le instead of read_usize_ptr.',
  units=[U('lz4_flex::block::compress::get_batch', 'raw', 'UNSUPPORTED', 'old side reads through read_u32_ptr: Aeneas "Unsupported operation: &raw mut (*_7)" (body of read_u32_ptr not translated); new side translates and typechecks', 'work/46d0e1d (batch-*), lean/C46d0e1d/Batch*', reason='unsafe-raw-pointers'),
         U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', '"Continue to outer loops are not supported yet" (both sides)', 'work/46d0e1d (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers')
E('1bf2784', perf='"copy 16bytes in fastloop ... increases performance up to 80%"',
  change='Unsafe decoder hot loop copies literals with a fixed 16-byte ptr::copy_nonoverlapping.',
  units=[U('lz4_flex::block::decompress::decompress_into (unsafe decoder)', 'api', 'UNSUPPORTED', 'raw-pointer copies; Aeneas: "Early returns inside of loops" + raw-pointer helpers untranslated (block_copy_from_src, duplicate, wild_copy_from_src_8)', 'work/1bf2784 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', notes='Safe decoder (safe-decode) untouched: identical LLBC (work/1bf2784/apid.llbc.norm.diff).')
E('cff2c35', perf='"optimize hot loop copy duplicate performance"',
  change='Unsafe decoder: new copy_24/duplicate fast paths with raw-pointer 24-byte copies.',
  units=[U('lz4_flex::block::decompress::decompress_into (unsafe decoder)', 'api', 'UNSUPPORTED', 'new revision does not build without safe-decode (E0425 `token`); old: raw-pointer helpers untranslated; change itself is raw-pointer code', 'work/cff2c35 (apiud-*)', reason='unsafe-raw-pointers')],
  verdict='UNSUPPORTED', reason='unsafe-raw-pointers', notes='Safe decoder untouched: identical LLBC (apid).')
E('45d1538', perf='"increase safe decompression speed about 50%"',
  change='Safe decoder (Vec output): replaces duplicate_slice by fixed 16/24-byte block copies from the output followed by truncate; copy_24 helper; Vec preallocation without slack.',
  units=[U('lz4_flex::block::decompress_safe::decompress_into', 'api', 'UNSUPPORTED', 'Aeneas: "Early returns inside of loops are not supported yet" (both sides)', 'work/45d1538 (apid-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error', notes='compress.rs hunk is cosmetic (variable scoping).')
E('89c7441', perf='"improve compression ratio and speed (10%)"',
  change='Introduces hashtable.rs (HashTable trait with U16/U32/Usize tables chosen by input size), compress_into_with_table; changes compressed output.',
  units=[U('lz4_flex::block::compress::compress_into', 'api', 'UNSUPPORTED', '"Continue to outer loops are not supported yet" in compress_into_with_table; count_same_bytes not translated (raw pointers)', 'work/89c7441 (apic-*)', reason='aeneas-error')],
  verdict='UNSUPPORTED', reason='aeneas-error', notes='Intended output change (different hash tables); no old counterpart of the HashTable trait (interface change).')
