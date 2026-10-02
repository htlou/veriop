
namespace Base64SliceClean
open Aeneas Aeneas.Std Aeneas.Std.Result

private theorem mode_bind_congr {C₁ C₂ α : Type}
    (config₁ : Result C₁) (config₂ : Result C₂)
    (mode₁ : C₁ → Result Bool) (mode₂ : C₂ → Result Bool)
    (hmode : Aeneas.Std.bind config₁ mode₁ = Aeneas.Std.bind config₂ mode₂)
    (next : Bool → Result α) :
    Aeneas.Std.bind config₁ (fun c => Aeneas.Std.bind (mode₁ c) next) =
    Aeneas.Std.bind config₂ (fun c => Aeneas.Std.bind (mode₂ c) next) := by
  simpa only [Aeneas.Std.bind_assoc] using
    congrArg (fun m => Aeneas.Std.bind m next) hmode

theorem encode_with_padding_congr {E₁ C₁ D₁ E₂ C₂ D₂ : Type}
    (ref : engine.Engine E₁ C₁ D₁) (opt : engine.Engine E₂ C₂ D₂)
    (before : E₁) (after : E₂)
    (hencode : ∀ input output, ref.internal_encode before input output =
      opt.internal_encode after input output)
    (hmode : Aeneas.Std.bind (ref.config before) ref.ConfigInst.encode_padding =
      Aeneas.Std.bind (opt.config after) opt.ConfigInst.encode_padding)
    (hpadding : ref.padding before = opt.padding after)
    (input output : Slice U8) (size : Usize) :
    encode.encode_with_padding ref input output before size =
    encode.encode_with_padding opt input output after size := by
  simp only [encode.encode_with_padding, hencode, hpadding]
  congr 1
  funext _
  congr 1
  funext ⟨written, output⟩
  exact mode_bind_congr _ _ _ _ hmode _

theorem encode_slice_inner_congr {E₁ C₁ D₁ E₂ C₂ D₂ : Type}
    (ref : engine.Engine E₁ C₁ D₁) (opt : engine.Engine E₂ C₂ D₂)
    (before : E₁) (after : E₂)
    (hencode : ∀ input output, ref.internal_encode before input output =
      opt.internal_encode after input output)
    (hmode : Aeneas.Std.bind (ref.config before) ref.ConfigInst.encode_padding =
      Aeneas.Std.bind (opt.config after) opt.ConfigInst.encode_padding)
    (hpadding : ref.padding before = opt.padding after)
    (input output : Slice U8) :
    engine.Engine.encode_slice.inner ref before input output =
    engine.Engine.encode_slice.inner opt after input output := by
  simp only [engine.Engine.encode_slice.inner,
    encode_with_padding_congr ref opt before after hencode hmode hpadding]
  exact mode_bind_congr _ _ _ _ hmode _

theorem encode_slice_congr {E₁ C₁ D₁ E₂ C₂ D₂ T : Type}
    (ref : engine.Engine E₁ C₁ D₁) (opt : engine.Engine E₂ C₂ D₂)
    (before : E₁) (after : E₂)
    (hencode : ∀ input output, ref.internal_encode before input output =
      opt.internal_encode after input output)
    (hmode : Aeneas.Std.bind (ref.config before) ref.ConfigInst.encode_padding =
      Aeneas.Std.bind (opt.config after) opt.ConfigInst.encode_padding)
    (hpadding : ref.padding before = opt.padding after)
    (asRef : core.convert.AsRef T (Slice U8)) (input : T) (output : Slice U8) :
    engine.Engine.encode_slice.default ref asRef before input output =
    engine.Engine.encode_slice.default opt asRef after input output := by
  simp only [engine.Engine.encode_slice.default,
    encode_slice_inner_congr ref opt before after hencode hmode hpadding]

#print axioms encode_with_padding_congr
#print axioms encode_slice_inner_congr
#print axioms encode_slice_congr
end Base64SliceClean
