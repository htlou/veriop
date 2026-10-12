from common import ENTRIES
def setu(c, idx, **kw):
    ENTRIES[c]['units'][idx].update(kw)
def setc(c, **kw):
    ENTRIES[c].update(kw)
# 9270dc0
setu('9270dc0', 0, evidence='kernel-checked: Old.decompress_sink_size 0 = ok 28, New.decompress_sink_size n = ok n (decompress_sink_size_not_equiv; axioms propext, Classical.choice, Quot.sound)')
# 39bba71
setu('39bba71', 0, verdict='NOT_EQUIV', kind='other', evidence='kernel-checked: (1) input=[7], len=1, 8-byte sink: Old ok (output [7,0..0]) / New = fail panic (reads input[0..8]); (2) input of 8 bytes, len=1: Old output [7,0,..,0] vs New [7,1,..,1] (wild bytes beyond pos) — copy_wild_not_equiv_1/2')
setc('39bba71', raw_verdict='NOT_EQUIV', not_equiv_kind=None, notes='Raw difference = bytes written beyond the advanced position (wild copy) and the extra slack the new code needs; the compressor guarantees that slack (END_OFFSET/LAST_LITERALS), so this is not expected to be api-visible except in scratch bytes of the caller-provided output buffer beyond the returned length — not checkable at api level.')
# 4d36f98
setu('4d36f98', 0, evidence='kernel-checked: slice_copy_equiv (fastcpy::slice_copy src dst = copy_from_slice dst src, all slices incl. length mismatch), extend_from_slice_wild_equiv, extend_from_slice_equiv (Old = New as functions); axioms: propext, Classical.choice, Quot.sound, core.fmt.Formatter')
setu('4d36f98', 1, verdict='NOT_EQUIV', kind='other', evidence='kernel-checked: for every Sink instance Old.copy_literals_wild _ out [7] 0 1 = fail panic (reads input[0..8]) while New = inst.extend_from_slice_wild out [7] 1; concrete SliceSink-like instance gives New ok -> Old ≠ New (copy_wild_not_equiv)')
setc('4d36f98', raw_verdict='NOT_EQUIV', notes='The memcpy replacement itself (fastcpy::slice_copy) is proved equivalent for all inputs; the simultaneous removal of the 8/16/24-byte wild literal copies in the compressor changes the raw helper (new is more defined and writes no scratch bytes). The concrete Sink instance in the counterexample is hand-written (copy of the generated SliceSink method), the generic theorem holds for every instance whose extend_from_slice_wild does not panic.')
# eb7b2ec
setu('eb7b2ec', 0, verdict='NOT_EQUIV', kind='ub-domain-change', evidence='kernel-checked: output=[0,0], len=0, n=255: Old = ok ([255,0], 2) while New ≠ ok _ for any result of the opaque to_be (needs 4 bytes of room) — write_integer_not_equiv; also proved: equal for n < 255 (write_integer_eq_small) and equal returned length whenever both succeed (write_integer_len_eq); bytes for n >= 255 depend on opaque U32::to_be')
setc('eb7b2ec', raw_verdict='NOT_EQUIV', notes='New write_integer needs up to 3 bytes of extra output slack (4-byte stores then rewinds). The compressor sizes the output with get_maximum_output_size so this is likely unreachable via the api, which is untranslatable (compress_internal).')
# ae7823d: the decompressor models typecheck, but the attempted API proof still
# contains `sorry`; it is not a verified result. Compression cannot translate.
setu('ae7823d', 0, verdict='UNKNOWN', evidence='Both decompressor models typecheck; ProofDecompress.lean contains sorry, so no API equivalence or counterexample has been proved')
setc('ae7823d', commit_verdict='UNSUPPORTED', unsupported_reason='aeneas-error', coverage='partial', notes='Decompressor API remains UNKNOWN; compressor API is untranslatable (continue to outer loop). The unfinished Lean file is not counted as proof.')
# b9fa440: only the helper is decided. In the small, valid Sink witness with
# empty output, Old returns Err(UnexpectedOutputEmpty) while New returns Ok.
setu('b9fa440', 0, verdict='NOT_EQUIV', kind='other', evidence='Lean cexB_ne: empty output, pos=0, offset=0, match_length=0: Old returns Err(UnexpectedOutputEmpty), New returns Ok; proof log has no sorryAx or non-standard axioms')
setu('b9fa440', 1, verdict='UNSUPPORTED', unsupported_reason='missing-std-model', evidence='Both decompress_into models typecheck, but the changed branch selects core.slice.Slice.copy_within, which is an opaque axiom; the API-level effect cannot be established with this Aeneas model')
setc('b9fa440', commit_verdict='UNSUPPORTED', raw_verdict='NOT_EQUIV', unsupported_reason='missing-std-model', coverage='partial', notes='Raw helper difference is kernel-checked (ProofOverlap.lean). The API-level effect depends on opaque copy_within; do not promote the helper counterexample to a commit-level semantic change.')
# 31b2d90: the helper writes a different byte for a concrete Sink state; the
# surrounding decompressor model fails to typecheck, so API impact is unknown.
setu('31b2d90', 0, verdict='NOT_EQUIV', kind='other', evidence='Lean ProofSink.not_equiv: output=[5], pos=0, start=0, len=1: Old outputs [0], New [5]; proof axioms only propext/Classical.choice/Quot.sound')
setc('31b2d90', commit_verdict='UNSUPPORTED', raw_verdict='NOT_EQUIV', unsupported_reason='lean-model-typecheck-error', coverage='partial', notes='The raw witness has start=pos, outside the start<pos condition under which ProofSink.equiv_under_pre proves equal successful results. The API model does not typecheck.')
# 7dd9275: forward refinement is proved, but the missing std::copy_within
# model prevents a kernel-checked strictness witness or reverse verdict.
setu('7dd9275', 0, verdict='UNKNOWN', evidence='Lean ProofSink.refines proves Old=New whenever Old does not fail; reverse strictness only conditional on opaque Slice.copy_within succeeding', reason='missing-std-model', fwd_proved=True, bwd_proved=False)
setc('7dd9275', commit_verdict='UNSUPPORTED', raw_verdict='UNKNOWN', unsupported_reason='lean-model-typecheck-error', coverage='partial', notes='Raw forward refinement is proved; reverse direction is unresolved because Slice.copy_within is opaque. The changed decoder API model fails to typecheck.')

# A byte-identical *normalized LLBC* is a useful sanity check but not a Lean
# theorem. These units were previously overcounted as Aeneas-proved EQUIV.
for commit, index in [('8961caa', 0), ('8961caa', 1), ('073d918', 1),
                      ('cd7af6e', 1), ('5822016', 1), ('d044920', 0),
                      ('135ef44', 0), ('9270dc0', 2), ('e3884b1', 0),
                      ('69eb2fe', 1), ('c17c157', 1), ('6b6348e', 1),
                      ('517f1da', 0), ('712d4be', 0), ('712d4be', 1),
                      ('712d4be', 2)]:
    setu(commit, index, verdict='UNSUPPORTED', unsupported_reason='other')

for commit, reason in [('8961caa', 'aeneas-error'), ('d044920', 'aeneas-error'),
                       ('135ef44', 'aeneas-error'), ('e3884b1', 'aeneas-error'),
                       ('69eb2fe', 'aeneas-error'), ('c17c157', 'aeneas-error'),
                       ('517f1da', 'aeneas-error'),
                       ('712d4be', 'lean-model-typecheck-error')]:
    setc(commit, commit_verdict='UNSUPPORTED', unsupported_reason=reason,
         coverage='partial', notes=ENTRIES[commit]['notes'] +
         ' Structural LLBC identity is retained as evidence but is not an Aeneas/Lean proof.')
setc('e3884b1', raw_verdict='UNSUPPORTED')
setc('d044920', raw_verdict='UNSUPPORTED')
setc('c17c157', raw_verdict='UNSUPPORTED')
setc('712d4be', raw_verdict='UNSUPPORTED')
setu('6e39a69', 1, evidence_type='lean+identical-llbc')
setu('dd79989', 0, unsupported_reason='new-code-does-not-build')
setc('dd79989', unsupported_reason='new-code-does-not-build')
