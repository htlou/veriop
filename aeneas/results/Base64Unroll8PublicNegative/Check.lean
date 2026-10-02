import Base64Unroll8Proof
import Base64CapacityProof
import Base64Unroll8PublicRef.Base64Unroll8PublicRef
import Base64Unroll8PublicNegative

open Aeneas Aeneas.Std Aeneas.Std.Result
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Base64Unroll8PublicProof

abbrev RefEngine := Base64Unroll8PublicRef.engine.general_purpose.GeneralPurpose
abbrev OptEngine := Base64Unroll8PublicNegative.engine.general_purpose.GeneralPurpose
noncomputable abbrev refInst :=
  Base64Unroll8PublicRef.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate
noncomputable abbrev optInst :=
  Base64Unroll8PublicNegative.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate
abbrev refEncode :=
  Base64Unroll8PublicRef.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode
abbrev optEncode :=
  Base64Unroll8PublicNegative.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode

theorem internal_encode_equiv (before : RefEngine) (after : OptEngine)
    (htable : before.encode_table = after.encode_table) (input output : Slice U8)
    (hout : 4 * (input.length / 3) ≤ output.length) :
    refEncode before input output = optEncode after input output := by
  with_unfolding_all
    exact Base64Unroll8Proof.internal_encode_equiv
      { encode_table := before.encode_table, decode_table := before.decode_table,
        padding := before.padding,
        config := { encode_padding := false, decode_allow_trailing_bits := false,
                    decode_padding_mode := .Indifferent } }
      { encode_table := after.encode_table, decode_table := after.decode_table,
        padding := after.padding,
        config := { encode_padding := false, decode_allow_trailing_bits := false,
                    decode_padding_mode := .Indifferent } }
      htable input output hout

#print axioms internal_encode_equiv

theorem padding_body_equiv : Base64Unroll8PublicRef.encode.add_padding_loop.body =
    Base64Unroll8PublicNegative.encode.add_padding_loop.body := by
  with_unfolding_all rfl

theorem padding_loop_equiv : Base64Unroll8PublicRef.encode.add_padding_loop =
    Base64Unroll8PublicNegative.encode.add_padding_loop := by
  funext iter padding output
  simp only [Base64Unroll8PublicRef.encode.add_padding_loop,
    Base64Unroll8PublicNegative.encode.add_padding_loop, padding_body_equiv]

theorem add_padding_equiv : Base64Unroll8PublicRef.encode.add_padding =
    Base64Unroll8PublicNegative.encode.add_padding := by
  funext n padding output
  simp only [Base64Unroll8PublicRef.encode.add_padding, Base64Unroll8PublicNegative.encode.add_padding,
    padding_loop_equiv]

theorem with_padding_equiv (before : RefEngine) (after : OptEngine)
    (htable : before.encode_table = after.encode_table)
    (hmode : before.config.encode_padding = after.config.encode_padding)
    (hpadding : before.padding = after.padding)
    (input output : Slice U8) (size : Usize)
    (hout : 4 * (input.length / 3) ≤ output.length) :
    Base64Unroll8PublicRef.encode.encode_with_padding refInst input output before size =
    Base64Unroll8PublicNegative.encode.encode_with_padding optInst input output after size := by
  simp only [Base64Unroll8PublicRef.encode.encode_with_padding,
    Base64Unroll8PublicNegative.encode.encode_with_padding]
  congr 1
  funext _
  have henc := internal_encode_equiv before after htable input output hout
  dsimp only [refEncode, optEncode] at henc
  rw [henc]
  congr 1
  funext ⟨written, out⟩
  simp only [Aeneas.Std.uncurry_apply_pair]
  simp only [
    Base64Unroll8PublicRef.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.config,
    Base64Unroll8PublicNegative.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.config,
    Base64Unroll8PublicRef.engine.general_purpose.GeneralPurposeConfig.Insts.Base64EngineConfig.encode_padding,
    Base64Unroll8PublicNegative.engine.general_purpose.GeneralPurposeConfig.Insts.Base64EngineConfig.encode_padding,
    Base64Unroll8PublicRef.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.padding,
    Base64Unroll8PublicNegative.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.padding,
    Aeneas.Std.bind_ok, hmode, hpadding, add_padding_equiv]

#print axioms with_padding_equiv

abbrev RefReturn := core.result.Result Usize Base64Unroll8PublicRef.encode.EncodeSliceError
abbrev OptReturn := core.result.Result Usize Base64Unroll8PublicNegative.encode.EncodeSliceError

/-- Rename the sole API error constructor between the two extracted namespaces. -/
def translateReturn : RefReturn → OptReturn
  | .Ok n => .Ok n
  | .Err .OutputSliceTooSmall => .Err .OutputSliceTooSmall

def untranslateReturn : OptReturn → RefReturn
  | .Ok n => .Ok n
  | .Err .OutputSliceTooSmall => .Err .OutputSliceTooSmall

theorem return_translation_lossless (r : RefReturn) :
    untranslateReturn (translateReturn r) = r := by
  cases r with
  | Ok n => rfl
  | Err e => cases e; rfl

/-- Preserve the complete buffer and all outer effects, failures, and divergence. -/
def translateResult (r : Result (RefReturn × Slice U8)) : Result (OptReturn × Slice U8) :=
  Aeneas.Std.bind r fun (ret, output) => ok (translateReturn ret, output)

theorem translateResult_bind {α : Type} (r : Result α)
    (f : α → Result (RefReturn × Slice U8)) :
    translateResult (Aeneas.Std.bind r f) =
      Aeneas.Std.bind r (fun x => translateResult (f x)) := by
  simp only [translateResult, Aeneas.Std.bind_assoc]

theorem encode_slice_equiv (before : RefEngine) (after : OptEngine)
    (htable : before.encode_table = after.encode_table)
    (hmode : before.config.encode_padding = after.config.encode_padding)
    (hpadding : before.padding = after.padding) (input output : Slice U8) :
    translateResult (Base64Unroll8PublicRef.__veriop_encode_slice_probe before input output) =
    Base64Unroll8PublicNegative.__veriop_encode_slice_probe after input output := by
  simp only [Base64Unroll8PublicRef.__veriop_encode_slice_probe,
    Base64Unroll8PublicNegative.__veriop_encode_slice_probe,
    Base64Unroll8PublicRef.engine.Engine.encode_slice.default,
    Base64Unroll8PublicNegative.engine.Engine.encode_slice.default,
    Base64Unroll8PublicRef.Shared0T.Insts.CoreConvertAsRef.as_ref,
    Base64Unroll8PublicNegative.Shared0T.Insts.CoreConvertAsRef.as_ref,
    Base64Unroll8PublicRef.Slice.Insts.CoreConvertAsRefSlice.as_ref,
    Base64Unroll8PublicNegative.Slice.Insts.CoreConvertAsRefSlice.as_ref,
    Aeneas.Std.bind_ok]
  unfold Base64Unroll8PublicRef.engine.Engine.encode_slice.inner
    Base64Unroll8PublicNegative.engine.Engine.encode_slice.inner
  simp only [translateResult_bind,
    Base64Unroll8PublicRef.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.config,
    Base64Unroll8PublicNegative.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.config,
    Base64Unroll8PublicRef.engine.general_purpose.GeneralPurposeConfig.Insts.Base64EngineConfig.encode_padding,
    Base64Unroll8PublicNegative.engine.general_purpose.GeneralPurposeConfig.Insts.Base64EngineConfig.encode_padding,
    Aeneas.Std.bind_ok, hmode]
  have hlen : Base64Unroll8PublicRef.encode.encoded_len = Base64Unroll8PublicNegative.encode.encoded_len := by
    with_unfolding_all rfl
  rw [← hlen]
  obtain ⟨len, hr, hcap⟩ := WP.spec_imp_exists
    (Base64CapacityProof.encoded_len_spec (Slice.len input) after.config.encode_padding)
  rw [hr]
  simp only [Aeneas.Std.bind_ok]
  cases len with
  | none =>
    simp only [core.option.Option.expect, Result.ofOption, Aeneas.Std.bind_fail,
      translateResult, Aeneas.Std.bind_fail]
  | some size =>
    have hcapacity : 4 * (input.length / 3) ≤ size.val := by
      simpa only [Slice.len_val] using hcap size rfl
    simp only [core.option.Option.expect, Result.ofOption, Aeneas.Std.bind_ok]
    split
    · simp only [translateResult, Aeneas.Std.bind_ok, translateReturn]
    · rename_i hspace
      have hs : core.slice.index.Slice.index_mut
          (core.slice.index.SliceIndexRangeUsizeSlice U8) output
          { start := 0#usize, «end» := size }
          ⦃ (chunk : Slice U8) (back : Slice U8 → Slice U8) => chunk.length = size.val ⦄ := by
        step as ⟨chunk, back, hv, hl, hb⟩
        scalar_tac
      obtain ⟨⟨out, back⟩, hs, houtlen⟩ := WP.spec_imp_exists hs
      change out.length = size.val at houtlen
      rw [hs]
      simp only [Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair, translateResult_bind]
      have hp := with_padding_equiv before after htable hmode hpadding input out size (by omega)
      dsimp only [refInst, optInst] at hp
      rw [hp]
      simp only [translateResult, Aeneas.Std.bind_assoc,
        Aeneas.Std.bind_ok, translateReturn]

#print axioms encode_slice_equiv
#print axioms return_translation_lossless

theorem encode_slice_generic_equiv {T : Type}
    (asRef : core.convert.AsRef T (Slice U8))
    (before : RefEngine) (after : OptEngine)
    (htable : before.encode_table = after.encode_table)
    (hmode : before.config.encode_padding = after.config.encode_padding)
    (hpadding : before.padding = after.padding) (input : T) (output : Slice U8) :
    translateResult (Base64Unroll8PublicRef.engine.Engine.encode_slice.default
      refInst asRef before input output) =
    Base64Unroll8PublicNegative.engine.Engine.encode_slice.default optInst asRef after input output := by
  simp only [Base64Unroll8PublicRef.engine.Engine.encode_slice.default,
    Base64Unroll8PublicNegative.engine.Engine.encode_slice.default, translateResult_bind]
  congr 1
  funext bytes
  have h := encode_slice_equiv before after htable hmode hpadding bytes output
  simpa only [Base64Unroll8PublicRef.__veriop_encode_slice_probe,
    Base64Unroll8PublicNegative.__veriop_encode_slice_probe,
    Base64Unroll8PublicRef.engine.Engine.encode_slice.default,
    Base64Unroll8PublicNegative.engine.Engine.encode_slice.default,
    Base64Unroll8PublicRef.Shared0T.Insts.CoreConvertAsRef.as_ref,
    Base64Unroll8PublicNegative.Shared0T.Insts.CoreConvertAsRef.as_ref,
    Base64Unroll8PublicRef.Slice.Insts.CoreConvertAsRefSlice.as_ref,
    Base64Unroll8PublicNegative.Slice.Insts.CoreConvertAsRefSlice.as_ref,
    Aeneas.Std.bind_ok] using h

#print axioms encode_slice_generic_equiv

end Base64Unroll8PublicProof
