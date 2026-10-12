import Cfa6a11f.EcfgoOld.EcfgoOld
import Cfa6a11f.EcfgoNew.EcfgoNew
open Aeneas Aeneas.Std Result
set_option linter.unusedSimpArgs false

/-! fa6a11f "Eliminated a call to encoded_size function".
`encode::encode_config` (public API): old calls `encode_config_slice(input.as_ref(), config,
&mut buf[..])` (which recomputes `encoded_size`, slices `output[0..encoded_size]` and calls
`encode_with_padding`) followed by `debug_assert_eq!(encoded_len, buf.len())`; new calls
`encode_with_padding(input.as_ref(), config, buf.len(), &mut buf[..])` directly.
Extraction: `--start-from base64::encode::encode_config --opaque base64::encode::encode_with_padding
--include core::convert` (encode_with_padding is byte-identical in old and new; it is opaque
because its body (encode_table returning &'static [u8;64]) makes Aeneas fail). -/

namespace Cfa6a11fProof

def csMap : Bfa6a11fEcfgoOld.CharacterSet → Bfa6a11fEcfgoNew.CharacterSet
  | .Standard => .Standard
  | .UrlSafe => .UrlSafe
  | .Crypt => .Crypt

/-- The two Aeneas copies of `base64::Config` (same Rust type). -/
def cfgMap (c : Bfa6a11fEcfgoOld.Config) : Bfa6a11fEcfgoNew.Config :=
  { char_set := csMap c.char_set, pad := c.pad,
    decode_allow_trailing_bits := c.decode_allow_trailing_bits }

section
variable
  (hand_then : @Bfa6a11fEcfgoOld.core.option.Option.and_then = @Bfa6a11fEcfgoNew.core.option.Option.and_then)
  (hunreach : @Bfa6a11fEcfgoOld.core.panicking.unreachable_display = @Bfa6a11fEcfgoNew.core.panicking.unreachable_display)
  (hfmt1 : @Bfa6a11fEcfgoOld.Shared0T.Insts.CoreFmtDisplay.fmt = @Bfa6a11fEcfgoNew.Shared0T.Insts.CoreFmtDisplay.fmt)
  (hfmt2 : @Bfa6a11fEcfgoOld.Str.Insts.CoreFmtDisplay.fmt = @Bfa6a11fEcfgoNew.Str.Insts.CoreFmtDisplay.fmt)

include hand_then hunreach hfmt1 hfmt2 in
theorem encoded_size_eq (i : Usize) (c : Bfa6a11fEcfgoOld.Config) :
    Bfa6a11fEcfgoNew.encode.encoded_size i (cfgMap c) = Bfa6a11fEcfgoOld.encode.encoded_size i c := by
  unfold Bfa6a11fEcfgoNew.encode.encoded_size Bfa6a11fEcfgoOld.encode.encoded_size
  simp only [cfgMap,
    Bfa6a11fEcfgoOld.Shared0T.Insts.CoreFmtDisplay, Bfa6a11fEcfgoNew.Shared0T.Insts.CoreFmtDisplay,
    Bfa6a11fEcfgoOld.Str.Insts.CoreFmtDisplay, Bfa6a11fEcfgoNew.Str.Insts.CoreFmtDisplay,
    Bfa6a11fEcfgoOld.encode.encoded_size.closure.Insts.CoreOpsFunctionFnOnceTupleUsizeOptionUsize,
    Bfa6a11fEcfgoNew.encode.encoded_size.closure.Insts.CoreOpsFunctionFnOnceTupleUsizeOptionUsize,
    Bfa6a11fEcfgoOld.encode.encoded_size.closure_1.Insts.CoreOpsFunctionFnOnceTupleUsizeOptionUsize,
    Bfa6a11fEcfgoNew.encode.encoded_size.closure_1.Insts.CoreOpsFunctionFnOnceTupleUsizeOptionUsize,
    Bfa6a11fEcfgoOld.encode.encoded_size.closure.Insts.CoreOpsFunctionFnOnceTupleUsizeOptionUsize.call_once,
    Bfa6a11fEcfgoNew.encode.encoded_size.closure.Insts.CoreOpsFunctionFnOnceTupleUsizeOptionUsize.call_once,
    Bfa6a11fEcfgoOld.encode.encoded_size.closure_1.Insts.CoreOpsFunctionFnOnceTupleUsizeOptionUsize.call_once,
    Bfa6a11fEcfgoNew.encode.encoded_size.closure_1.Insts.CoreOpsFunctionFnOnceTupleUsizeOptionUsize.call_once,
    ← hand_then, ← hunreach, ← hfmt1, ← hfmt2]
  rfl


def utf8ErrRes (φ : Bfa6a11fEcfgoOld.alloc.string.FromUtf8Error → Bfa6a11fEcfgoNew.alloc.string.FromUtf8Error) :
    core.result.Result String Bfa6a11fEcfgoOld.alloc.string.FromUtf8Error →
    core.result.Result String Bfa6a11fEcfgoNew.alloc.string.FromUtf8Error
  | .Ok v => .Ok v
  | .Err e => .Err (φ e)

include hand_then hunreach hfmt1 hfmt2 in
theorem encode_config_equiv
    /- `encode_with_padding` is byte-identical on both sides and made opaque: both copies of the
       axiom denote the same function (modulo the Config copy). -/
    (hewp : ∀ i c n o, Bfa6a11fEcfgoNew.encode.encode_with_padding i (cfgMap c) n o =
                         Bfa6a11fEcfgoOld.encode.encode_with_padding i c n o)
    /- Rust fact for any implementation: a `&mut [u8]` argument keeps its length. -/
    (hlen : ∀ i c n o r, Bfa6a11fEcfgoOld.encode.encode_with_padding i c n o = ok r → r.length = o.length)
    /- `String::from_utf8` is the same function on both sides; `FromUtf8Error` is an opaque type
       duplicated by Aeneas, related by some map φ. -/
    (φ : Bfa6a11fEcfgoOld.alloc.string.FromUtf8Error → Bfa6a11fEcfgoNew.alloc.string.FromUtf8Error)
    (hutf : ∀ b, Bfa6a11fEcfgoNew.alloc.string.String.from_utf8 b =
                 (do let r ← Bfa6a11fEcfgoOld.alloc.string.String.from_utf8 b; ok (utf8ErrRes φ r)))
    {T : Type} (asRef : core.convert.AsRef T (Slice U8)) (input : T) (config : Bfa6a11fEcfgoOld.Config) :
    Bfa6a11fEcfgoNew.encode.encode_config asRef input (cfgMap config) =
      Bfa6a11fEcfgoOld.encode.encode_config asRef input config := by
  unfold Bfa6a11fEcfgoNew.encode.encode_config Bfa6a11fEcfgoOld.encode.encode_config
  simp only [bind_tc_eq]
  congr 1; funext s
  rw [encoded_size_eq hand_then hunreach hfmt1 hfmt2]
  cases h : Bfa6a11fEcfgoOld.encode.encoded_size s.len config with
  | vis i k =>
    rw [bind_vis, bind_vis]; congr 1; funext x
    cases i with
    | fail e => exact PEmpty.elim x
  | div => rw [bind_div, bind_div]
  | ret o =>
  rw [bind_ok, bind_ok]
  cases o with
  | none => rfl
  | some n =>
  obtain ⟨v, hv, -, hvlen⟩ := WP.spec_imp_exists
    (alloc.vec.from_elem_spec core.clone.CloneU8 0#u8 n (by rfl))
  simp only []
  rw [hv, bind_ok, bind_ok]
  unfold Bfa6a11fEcfgoOld.encode.encode_config_slice
  simp only [alloc.vec.Vec.index_mut, core.slice.index.SliceIndexRangeFullSlice,
    core.slice.index.SliceIndexRangeFullSlice.index_mut, bind_tc_eq, bind_ok, Std.bind_assoc,
    Bfa6a11fEcfgoOld.Slice.Insts.CoreConvertAsRefSlice,
    Bfa6a11fEcfgoOld.Slice.Insts.CoreConvertAsRefSlice.as_ref, h, core.option.Option.expect,
    hewp]
  have hvl : v.len = n := by
    apply UScalar.eq_of_val_eq; simp only [alloc.vec.Vec.len]; scalar_tac
  have hsl : v.slice.length = n.val := hvlen
  have hidx : core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8) v.slice
      { start := 0#usize, «end» := n } =
      ok (v.slice, fun s' => Slice.from (List.setSlice! v.slice.val 0 s'.val) (by simp)) := by
    simp only [core.slice.index.Slice.index_mut, core.slice.index.SliceIndexRangeUsizeSlice,
      core.slice.index.SliceIndexRangeUsizeSlice.index_mut]
    rw [if_pos (by scalar_tac)]
    have h0 : ((0#usize : Usize) : Nat) = 0 := by simp
    simp only [h0]
    congr 2
    apply Slice.ext
    simp only [Slice.from_val, List.slice_zero_j]
    rw [List.take_of_length_le (by simp only [Slice.length] at hsl; omega)]
  simp only [pure_tc_eq, bind_ok, Aeneas.Std.uncurry_apply_pair, Result.ofOption, hvl, hidx,
    Std.bind_assoc]
  cases hw : Bfa6a11fEcfgoOld.encode.encode_with_padding s config n v.slice with
  | vis i k =>
    rw [bind_vis, bind_vis]; congr 1; funext x
    cases i with
    | fail e => exact PEmpty.elim x
  | div => rw [bind_div, bind_div]
  | ret r =>
  have hrl := hlen _ _ _ _ _ hw
  have hset : Slice.from (List.setSlice! v.slice.val 0 r.val) (by simp) = r := by
    apply Slice.ext
    simp only [Slice.from_val, List.setSlice!, List.take_zero, List.nil_append, Nat.sub_zero, Nat.zero_add]
    simp only [Slice.length] at hrl
    rw [← hrl, Nat.min_self, List.take_of_length_le (le_refl _), List.drop_of_length_le (by omega),
      List.append_nil]
  have hrlen : r.len = n := by
    apply UScalar.eq_of_val_eq; simp only [Slice.len_val, Slice.length] at *; omega
  simp only [bind_ok, Aeneas.Std.uncurry_apply_pair, hset, alloc.vec.Vec.len, hrlen, massert, if_pos,
    hutf, Std.bind_assoc]
  rw [if_pos (by rw [← hrlen]; rfl), bind_ok]
  congr 1; funext x
  cases x <;> rfl

end
end Cfa6a11fProof

#print axioms Cfa6a11fProof.encoded_size_eq
#print axioms Cfa6a11fProof.encode_config_equiv
