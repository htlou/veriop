import Cd021c39.EsliceOld.EsliceOld
import Cd021c39.EsliceNew.EsliceNew
import Cd021c39.EncOld.EncOld
import Cd021c39.EncNew.EncNew
import Cd021c39.DecOld.DecOld
import Cd021c39.DecNew.DecNew
import Cd021c39.DvecOld.DvecOld
import Cd021c39.DvecNew.DvecNew
import Cd021c39.DsliceOld.DsliceOld
import Cd021c39.DsliceNewFix.DsliceNewFix
import Cd021c39.DsuOld.DsuOld
import Cd021c39.DsuNewFix.DsuNewFix
open Aeneas Aeneas.Std Result

/-! d021c39 "Optimize generic functions" (rust-base64).

The `Engine` trait's generic default methods (`encode`, `encode_string`, `encode_slice`,
`decode`, `decode_vec`, `decode_slice`, `decode_slice_unchecked`) get their bodies moved into
nested non-`AsRef`-generic `fn inner<E: Engine + ?Sized>` helpers (`#[inline]` added).
These default methods are the public API, so raw = api.

For every method we quantify over two *arbitrary* engine impls, `instO` (old copy of the
`Engine` trait record) and `instN` (new copy), whose fields used by the method agree.
Old and new Aeneas outputs live in different namespaces, so every crate type exists twice:
we map new-copy values to old-copy values with the evident constructor-wise maps below
(they are bijections) and state `Old.m instO .. = (do let r ← New.m instN ..; ok (map r))`.

`encode_string` is separate: its raw Aeneas Lean does not typecheck; see
`EncodeStringProof.lean` for a conditional result over manually repaired models.
`decode_slice` / `decode_slice_unchecked`: the new-side Aeneas output fails to typecheck
(binder `engine : E` shadows the namespace prefix `engine.`); `DsliceNewFix`/`DsuNewFix` are
copies of the generated files with only that binder alpha-renamed to `engine_`.
-/

namespace Cd021c39Proof

/-- `f <$>`-style post-processing of a Rust `Result`. -/
def rmap {α α' ε ε' : Type} (fa : α → α') (fe : ε → ε') :
    core.result.Result α ε → core.result.Result α' ε'
  | .Ok v => .Ok (fa v)
  | .Err e => .Err (fe e)

/-! ## encode_slice -/
section eslice
theorem es_loop : @Bd021c39EsliceOld.encode.add_padding_loop
    = @Bd021c39EsliceNew.encode.add_padding_loop := by
  with_unfolding_all rfl

theorem es_encoded_len
    (h : @Bd021c39EsliceOld.core.option.Option.and_then
      = @Bd021c39EsliceNew.core.option.Option.and_then) :
    Bd021c39EsliceOld.encode.encoded_len = Bd021c39EsliceNew.encode.encoded_len := by
  funext n b
  simp only [Bd021c39EsliceOld.encode.encoded_len, Bd021c39EsliceNew.encode.encoded_len, h]
  rfl

theorem es_ewp {S C D : Type}
    (instO : Bd021c39EsliceOld.engine.Engine S C D) (instN : Bd021c39EsliceNew.engine.Engine S C D)
    (h_enc : instO.internal_encode = instN.internal_encode)
    (h_cfg : instO.config = instN.config)
    (h_pad : instO.ConfigInst.encode_padding = instN.ConfigInst.encode_padding)
    (input out : Slice U8) (e : S) (n : Usize) :
    Bd021c39EsliceOld.encode.encode_with_padding instO input out e n =
    Bd021c39EsliceNew.encode.encode_with_padding instN input out e n := by
  simp only [Bd021c39EsliceOld.encode.encode_with_padding,
    Bd021c39EsliceNew.encode.encode_with_padding,
    Bd021c39EsliceOld.encode.add_padding, Bd021c39EsliceNew.encode.add_padding,
    h_enc, h_cfg, h_pad, es_loop]

/-- The two copies of `base64::encode::EncodeSliceError`. -/
def esErr : Bd021c39EsliceNew.encode.EncodeSliceError → Bd021c39EsliceOld.encode.EncodeSliceError
  | .OutputSliceTooSmall => .OutputSliceTooSmall

theorem encode_slice_equiv {S T C D : Type}
    (instO : Bd021c39EsliceOld.engine.Engine S C D) (instN : Bd021c39EsliceNew.engine.Engine S C D)
    (h_enc : instO.internal_encode = instN.internal_encode)
    (h_cfg : instO.config = instN.config)
    (h_pad : instO.ConfigInst.encode_padding = instN.ConfigInst.encode_padding)
    (h_and_then : @Bd021c39EsliceOld.core.option.Option.and_then
      = @Bd021c39EsliceNew.core.option.Option.and_then)
    (asRef : core.convert.AsRef T (Slice U8)) (self : S) (input : T) (out : Slice U8) :
    Bd021c39EsliceOld.engine.Engine.encode_slice.default instO asRef self input out =
    (do let p ← Bd021c39EsliceNew.engine.Engine.encode_slice.default instN asRef self input out
        ok (rmap id esErr p.1, p.2)) := by
  simp only [Bd021c39EsliceOld.engine.Engine.encode_slice.default,
    Bd021c39EsliceNew.engine.Engine.encode_slice.default,
    Bd021c39EsliceNew.engine.Engine.encode_slice.inner,
    es_ewp instO instN h_enc h_cfg h_pad, es_encoded_len h_and_then, h_cfg, h_pad]
  simp only [Std.bind_assoc]
  congr 1; funext ib
  congr 1; funext t
  congr 1; funext b
  congr 1; funext o
  congr 1; funext es
  split
  · simp [rmap, esErr]
  · simp only [Std.bind_assoc]
    congr 1; funext p; obtain ⟨s, back⟩ := p
    simp [Std.bind_assoc, rmap]
end eslice

/-! ## encode -/
section enc

theorem en_loop : @Bd021c39EncOld.encode.add_padding_loop
    = @Bd021c39EncNew.encode.add_padding_loop := by
  with_unfolding_all rfl

theorem en_encoded_len
    (h : @Bd021c39EncOld.core.option.Option.and_then
      = @Bd021c39EncNew.core.option.Option.and_then) :
    Bd021c39EncOld.encode.encoded_len = Bd021c39EncNew.encode.encoded_len := by
  funext n b
  simp only [Bd021c39EncOld.encode.encoded_len, Bd021c39EncNew.encode.encoded_len, h]
  rfl

theorem en_ewp {S C D : Type}
    (instO : Bd021c39EncOld.engine.Engine S C D) (instN : Bd021c39EncNew.engine.Engine S C D)
    (h_enc : instO.internal_encode = instN.internal_encode)
    (h_cfg : instO.config = instN.config)
    (h_pad : instO.ConfigInst.encode_padding = instN.ConfigInst.encode_padding)
    (input out : Slice U8) (e : S) (n : Usize) :
    Bd021c39EncOld.encode.encode_with_padding instO input out e n =
    Bd021c39EncNew.encode.encode_with_padding instN input out e n := by
  simp only [Bd021c39EncOld.encode.encode_with_padding,
    Bd021c39EncNew.encode.encode_with_padding,
    Bd021c39EncOld.encode.add_padding, Bd021c39EncNew.encode.add_padding,
    h_enc, h_cfg, h_pad, en_loop]

/-- `encode` returns a plain `String` (no crate types), so the statement is a plain `=`.
`alloc::string::String::from_utf8` is external and its error type `FromUtf8Error` is an
opaque external type declared once per namespace: the hypothesis says both copies of
`from_utf8` are the same function up to an (arbitrary) correspondence `fe` of the two
copies of `FromUtf8Error`. (`Result::expect` is modelled by Aeneas and ignores the payload.) -/
theorem encode_equiv {S T C D : Type}
    (instO : Bd021c39EncOld.engine.Engine S C D) (instN : Bd021c39EncNew.engine.Engine S C D)
    (h_enc : instO.internal_encode = instN.internal_encode)
    (h_cfg : instO.config = instN.config)
    (h_pad : instO.ConfigInst.encode_padding = instN.ConfigInst.encode_padding)
    (h_and_then : @Bd021c39EncOld.core.option.Option.and_then
      = @Bd021c39EncNew.core.option.Option.and_then)
    (fe : Bd021c39EncNew.alloc.string.FromUtf8Error → Bd021c39EncOld.alloc.string.FromUtf8Error)
    (h_from_utf8 : ∀ v, Bd021c39EncOld.alloc.string.String.from_utf8 v =
      (do let r ← Bd021c39EncNew.alloc.string.String.from_utf8 v; ok (rmap id fe r)))
    (asRef : core.convert.AsRef T (Slice U8)) (self : S) (input : T) :
    Bd021c39EncOld.engine.Engine.encode.default instO asRef self input =
    Bd021c39EncNew.engine.Engine.encode.default instN asRef self input := by
  simp only [Bd021c39EncOld.engine.Engine.encode.default,
    Bd021c39EncNew.engine.Engine.encode.default,
    Bd021c39EncNew.engine.Engine.encode.inner,
    en_ewp instO instN h_enc h_cfg h_pad, en_encoded_len h_and_then, h_cfg, h_pad, h_from_utf8]
  simp only [Std.bind_assoc]
  congr 1; funext ib
  congr 1; funext t
  congr 1; funext b
  congr 1; funext o
  congr 1; funext es
  congr 1; funext buf
  congr 1; funext p; obtain ⟨s, back⟩ := p
  congr 1; funext s3
  congr 1; funext s4
  congr 1; funext y
  congr 1; funext z
  cases z <;> simp [rmap, core.result.Result.expect]
end enc

/-! ## decode -/
section dec

def deErr : Bd021c39DecNew.decode.DecodeError → Bd021c39DecOld.decode.DecodeError
  | .InvalidByte i b => .InvalidByte i b
  | .InvalidLength => .InvalidLength
  | .InvalidLastSymbol i b => .InvalidLastSymbol i b
  | .InvalidPadding => .InvalidPadding

def deMeta (m : Bd021c39DecNew.engine.DecodeMetadata) : Bd021c39DecOld.engine.DecodeMetadata :=
  { decoded_len := m.decoded_len, padding_offset := m.padding_offset }

theorem decode_equiv {S T C D : Type}
    (instO : Bd021c39DecOld.engine.Engine S C D) (instN : Bd021c39DecNew.engine.Engine S C D)
    (h_est : instO.internal_decoded_len_estimate = instN.internal_decoded_len_estimate)
    (h_dle : instO.DecodeEstimateInst.decoded_len_estimate
      = instN.DecodeEstimateInst.decoded_len_estimate)
    (h_dec : ∀ e i o est, instO.internal_decode e i o est =
      (do let p ← instN.internal_decode e i o est; ok (rmap deMeta deErr p.1, p.2)))
    (h_trunc : @Bd021c39DecOld.alloc.vec.Vec.truncate = @Bd021c39DecNew.alloc.vec.Vec.truncate)
    (asRef : core.convert.AsRef T (Slice U8)) (self : S) (input : T) :
    Bd021c39DecOld.engine.Engine.decode.default instO asRef self input =
    (do let r ← Bd021c39DecNew.engine.Engine.decode.default instN asRef self input
        ok (rmap id deErr r)) := by
  simp only [Bd021c39DecOld.engine.Engine.decode.default,
    Bd021c39DecNew.engine.Engine.decode.default,
    Bd021c39DecNew.engine.Engine.decode.inner, h_est, h_dle, h_dec, h_trunc]
  simp only [Std.bind_assoc]
  congr 1; funext ib
  congr 1; funext est
  congr 1; funext n
  congr 1; funext buf
  simp only [lift, bind_ok]
  generalize alloc.vec.Vec.deref_mut buf = p
  obtain ⟨s, back⟩ := p
  simp
  congr 1; funext x; obtain ⟨r, s1⟩ := x
  cases r with
  | Ok v =>
    simp [rmap, deMeta, core.result.Result.Insts.CoreOpsTry.branch]
  | Err e =>
    simp [rmap, core.result.Result.Insts.CoreOpsTry.branch,
      core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
      core.convert.FromSame]
end dec

/-! ## decode_vec -/
section dvec

def dvErr : Bd021c39DvecNew.decode.DecodeError → Bd021c39DvecOld.decode.DecodeError
  | .InvalidByte i b => .InvalidByte i b
  | .InvalidLength => .InvalidLength
  | .InvalidLastSymbol i b => .InvalidLastSymbol i b
  | .InvalidPadding => .InvalidPadding

def dvMeta (m : Bd021c39DvecNew.engine.DecodeMetadata) : Bd021c39DvecOld.engine.DecodeMetadata :=
  { decoded_len := m.decoded_len, padding_offset := m.padding_offset }

theorem decode_vec_equiv {S T C D : Type}
    (instO : Bd021c39DvecOld.engine.Engine S C D) (instN : Bd021c39DvecNew.engine.Engine S C D)
    (h_est : instO.internal_decoded_len_estimate = instN.internal_decoded_len_estimate)
    (h_dle : instO.DecodeEstimateInst.decoded_len_estimate
      = instN.DecodeEstimateInst.decoded_len_estimate)
    (h_dec : ∀ e i o est, instO.internal_decode e i o est =
      (do let p ← instN.internal_decode e i o est; ok (rmap dvMeta dvErr p.1, p.2)))
    (h_trunc : @Bd021c39DvecOld.alloc.vec.Vec.truncate = @Bd021c39DvecNew.alloc.vec.Vec.truncate)
    (h_asmut : @Bd021c39DvecOld.alloc.vec.Vec.as_mut_slice
      = @Bd021c39DvecNew.alloc.vec.Vec.as_mut_slice)
    (asRef : core.convert.AsRef T (Slice U8)) (self : S) (input : T) (buffer : alloc.vec.Vec U8) :
    Bd021c39DvecOld.engine.Engine.decode_vec.default instO asRef self input buffer =
    (do let p ← Bd021c39DvecNew.engine.Engine.decode_vec.default instN asRef self input buffer
        ok (rmap id dvErr p.1, p.2)) := by
  simp only [Bd021c39DvecOld.engine.Engine.decode_vec.default,
    Bd021c39DvecNew.engine.Engine.decode_vec.default,
    Bd021c39DvecNew.engine.Engine.decode_vec.inner, h_est, h_dle, h_dec, h_trunc, h_asmut]
  simp only [Std.bind_assoc]
  congr 1; funext ib
  congr 1; funext est
  congr 1; funext n
  congr 1; funext o
  congr 1; funext tle
  congr 1; funext buf1
  congr 1; funext p; obtain ⟨s, back⟩ := p
  simp
  congr 1; funext p; obtain ⟨bs, iback⟩ := p
  simp
  congr 1; funext x; obtain ⟨r, s1⟩ := x
  cases r with
  | Ok v =>
    simp [rmap, dvMeta, core.result.Result.Insts.CoreOpsTry.branch]
  | Err e =>
    simp [rmap, core.result.Result.Insts.CoreOpsTry.branch,
      core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
      core.convert.FromSame]
end dvec

/-! ## decode_slice_unchecked (new side: binder-renamed model `DsuNewFix`) -/
section dsu

def duErr : Bd021c39DsuNew.decode.DecodeError → Bd021c39DsuOld.decode.DecodeError
  | .InvalidByte i b => .InvalidByte i b
  | .InvalidLength => .InvalidLength
  | .InvalidLastSymbol i b => .InvalidLastSymbol i b
  | .InvalidPadding => .InvalidPadding

def duMeta (m : Bd021c39DsuNew.engine.DecodeMetadata) : Bd021c39DsuOld.engine.DecodeMetadata :=
  { decoded_len := m.decoded_len, padding_offset := m.padding_offset }

/-- `h_map`: `core::result::Result::map` is one external (generic) std function; Aeneas declares
it once per namespace, at types that are the two copies of the crate types. "Both copies denote
the same function" is stated as its parametricity (free theorem) for functional relations:
mapping the input's `Ok`/`Err` payloads through `fT`/`fE`, with closures that agree along `fT`,
yields the output mapped through `fE`. -/
theorem decode_slice_unchecked_equiv {S T C D : Type}
    (instO : Bd021c39DsuOld.engine.Engine S C D) (instN : Bd021c39DsuNew.engine.Engine S C D)
    (h_est : instO.internal_decoded_len_estimate = instN.internal_decoded_len_estimate)
    (h_dec : ∀ e i o est, instO.internal_decode e i o est =
      (do let p ← instN.internal_decode e i o est; ok (rmap duMeta duErr p.1, p.2)))
    (h_map : ∀ {T T' E E' U F F' : Type} (fT : T' → T) (fE : E' → E)
      (inst : core.ops.function.FnOnce F T U) (inst' : core.ops.function.FnOnce F' T' U)
      (c : F) (c' : F'), (∀ t', inst.call_once c (fT t') = inst'.call_once c' t') →
      ∀ r' : core.result.Result T' E',
        Bd021c39DsuOld.core.result.Result.map inst (rmap fT fE r') c =
          (do let x ← Bd021c39DsuNew.core.result.Result.map inst' r' c'; ok (rmap id fE x)))
    (asRef : core.convert.AsRef T (Slice U8)) (self : S) (input : T) (out : Slice U8) :
    Bd021c39DsuOld.engine.Engine.decode_slice_unchecked.default instO asRef self input out =
    (do let p ← Bd021c39DsuNew.engine.Engine.decode_slice_unchecked.default instN asRef self input out
        ok (rmap id duErr p.1, p.2)) := by
  simp only [Bd021c39DsuOld.engine.Engine.decode_slice_unchecked.default,
    Bd021c39DsuNew.engine.Engine.decode_slice_unchecked.default,
    Bd021c39DsuNew.engine.Engine.decode_slice_unchecked.inner, h_est, h_dec]
  simp only [Std.bind_assoc]
  congr 1; funext ib
  congr 1; funext est
  simp only [Std.bind_assoc, bind_ok]
  congr 1; funext x; obtain ⟨r, s1⟩ := x
  simp
  rw [h_map duMeta duErr _
    (Bd021c39DsuNew.engine.Engine.decode_slice_unchecked.inner.closure.Insts.CoreOpsFunctionFnOnceTupleDecodeMetadataUsize instN)
    _ () (fun t' => rfl)]
  simp [Std.bind_assoc]
end dsu

/-! ## decode_slice (new side: binder-renamed model `DsliceNewFix`) -/
section dslice

def dsErr : Bd021c39DsliceNew.decode.DecodeError → Bd021c39DsliceOld.decode.DecodeError
  | .InvalidByte i b => .InvalidByte i b
  | .InvalidLength => .InvalidLength
  | .InvalidLastSymbol i b => .InvalidLastSymbol i b
  | .InvalidPadding => .InvalidPadding

def dsMeta (m : Bd021c39DsliceNew.engine.DecodeMetadata) : Bd021c39DsliceOld.engine.DecodeMetadata :=
  { decoded_len := m.decoded_len, padding_offset := m.padding_offset }

def dsSErr : Bd021c39DsliceNew.decode.DecodeSliceError → Bd021c39DsliceOld.decode.DecodeSliceError
  | .DecodeError e => .DecodeError (dsErr e)
  | .OutputSliceTooSmall => .OutputSliceTooSmall

theorem decode_slice_equiv {S T C D : Type}
    (instO : Bd021c39DsliceOld.engine.Engine S C D) (instN : Bd021c39DsliceNew.engine.Engine S C D)
    (h_est : instO.internal_decoded_len_estimate = instN.internal_decoded_len_estimate)
    (h_dle : instO.DecodeEstimateInst.decoded_len_estimate
      = instN.DecodeEstimateInst.decoded_len_estimate)
    (h_dec : ∀ e i o est, instO.internal_decode e i o est =
      (do let p ← instN.internal_decode e i o est; ok (rmap dsMeta dsErr p.1, p.2)))
    (h_map : ∀ {T T' E E' U F F' : Type} (fT : T' → T) (fE : E' → E)
      (inst : core.ops.function.FnOnce F T U) (inst' : core.ops.function.FnOnce F' T' U)
      (c : F) (c' : F'), (∀ t', inst.call_once c (fT t') = inst'.call_once c' t') →
      ∀ r' : core.result.Result T' E',
        Bd021c39DsliceOld.core.result.Result.map inst (rmap fT fE r') c =
          (do let x ← Bd021c39DsliceNew.core.result.Result.map inst' r' c'; ok (rmap id fE x)))
    (asRef : core.convert.AsRef T (Slice U8)) (self : S) (input : T) (out : Slice U8) :
    Bd021c39DsliceOld.engine.Engine.decode_slice.default instO asRef self input out =
    (do let p ← Bd021c39DsliceNew.engine.Engine.decode_slice.default instN asRef self input out
        ok (rmap id dsSErr p.1, p.2)) := by
  simp only [Bd021c39DsliceOld.engine.Engine.decode_slice.default,
    Bd021c39DsliceNew.engine.Engine.decode_slice.default,
    Bd021c39DsliceNew.engine.Engine.decode_slice.inner, h_est, h_dle, h_dec]
  simp only [Std.bind_assoc]
  congr 1; funext ib
  congr 1; funext est
  congr 1; funext n
  split
  · simp [rmap, dsSErr]
  · simp only [Std.bind_assoc, bind_ok]
    congr 1; funext x; obtain ⟨r, s1⟩ := x
    have hcall : ∀ t',
        (Bd021c39DsliceOld.engine.Engine.decode_slice.closure_1.Insts.CoreOpsFunctionFnOnceTupleDecodeMetadataUsize
          S C D asRef).call_once () (dsMeta t') =
        (Bd021c39DsliceNew.engine.Engine.decode_slice.inner.closure_1.Insts.CoreOpsFunctionFnOnceTupleDecodeMetadataUsize
          instN).call_once () t' := fun t' => rfl
    cases r with
    | Ok dm =>
      have hm := h_map dsMeta dsSErr _ _ () () hcall (.Ok dm)
      simp only [rmap] at hm
      simp [rmap, hm]
    | Err e =>
      have hm := h_map dsMeta dsSErr _ _ () () hcall (.Err (.DecodeError e))
      simp only [rmap, dsSErr] at hm
      simp [rmap, core.result.Result.map_err_err, Std.bind_assoc, hm,
        Bd021c39DsliceOld.engine.Engine.decode_slice.closure.Insts.CoreOpsFunctionFnOnceTupleDecodeErrorDecodeSliceError,
        Bd021c39DsliceOld.engine.Engine.decode_slice.closure.Insts.CoreOpsFunctionFnOnceTupleDecodeErrorDecodeSliceError.call_once,
        Bd021c39DsliceNew.engine.Engine.decode_slice.inner.closure.Insts.CoreOpsFunctionFnOnceTupleDecodeErrorDecodeSliceError,
        Bd021c39DsliceNew.engine.Engine.decode_slice.inner.closure.Insts.CoreOpsFunctionFnOnceTupleDecodeErrorDecodeSliceError.call_once,
        core.convert.IntoFrom.into,
        Bd021c39DsliceOld.decode.DecodeSliceError.Insts.CoreConvertFromDecodeError.from,
        Bd021c39DsliceNew.decode.DecodeSliceError.Insts.CoreConvertFromDecodeError.from]
      congr 1
end dslice

end Cd021c39Proof

#print axioms Cd021c39Proof.encode_slice_equiv
#print axioms Cd021c39Proof.encode_equiv
#print axioms Cd021c39Proof.decode_equiv
#print axioms Cd021c39Proof.decode_vec_equiv
#print axioms Cd021c39Proof.decode_slice_unchecked_equiv
#print axioms Cd021c39Proof.decode_slice_equiv
