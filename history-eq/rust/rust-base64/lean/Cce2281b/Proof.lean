import Cce2281b.GpencOld.GpencOld
import Cce2281b.GpencNew.GpencNew
open Aeneas Aeneas.Std Result WP

namespace Cce2281bProof

theorem add_cases (x y : Usize) :
    (∃ z : Usize, x + y = ok z ∧ z.val = x.val + y.val) ∨ (∃ e, x + y = fail e) := by
  have h := UScalar.add_equiv x y
  generalize hr : x + y = r at h
  cases r with
  | ret r => simp at h; left; exact ⟨r, rfl, h.2.1⟩
  | vis i k =>
    cases i with
    | fail e =>
      right; refine ⟨e, ?_⟩
      rw [Result.fail_eq_vis]; congr; funext o; exact o.elim
  | div => simp at h


theorem bind_congr' {α β : Type} {x : Result α} {f g : α → Result β} (h : ∀ a, f a = g a) :
    Std.bind x f = Std.bind x g := by
  have : f = g := funext h
  rw [this]

/-- Walk two syntactically parallel `do` blocks, one bind at a time, destructuring pairs. -/
macro "bind_walk" : tactic => `(tactic| repeat (first
  | with_reducible rfl
  | (refine bind_congr' ?_; intro a; (try (rcases (a : _ × _) with ⟨a1, a2⟩)); (try simp only [Std.uncurry_apply_pair, Std.bind_assoc]))
  | (simp only [bind_fail, bind_tc_fail]; done)))

theorem ite_congr2 {α : Type} {c : Prop} [Decidable c] {a b a' b' : Result α}
    (h1 : a = a') (h2 : b = b') : (if c then a else b) = (if c then a' else b') := by
  rw [h1, h2]

/-- Same walk, also descending into `if` with identical conditions, on all subgoals. -/
macro "bind_walk'" : tactic => `(tactic| repeat' (first
  | with_reducible rfl
  | (refine ite_congr2 ?_ ?_)
  | (refine bind_congr' ?_; intro a;
     (first
       | (rcases (a : _ × _ × _ × _) with ⟨a1, a2, a3, a4⟩)
       | (rcases (a : _ × _ × _) with ⟨a1, a2, a3⟩)
       | (rcases (a : _ × _) with ⟨a1, a2⟩)
       | skip);
     (try simp only [Std.uncurry_apply_pair, Std.bind_assoc, bind_ok]))
  | (simp only [bind_fail, bind_tc_fail]; done)))

abbrev OGP := Bce2281bGpencOld.engine.general_purpose.GeneralPurpose
abbrev NGP := Bce2281bGpencNew.engine.general_purpose.GeneralPurpose

theorem c_u8 : Bce2281bGpencOld.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.LOW_SIX_BITS_U8
    = Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8 := by
  unfold Bce2281bGpencOld.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.LOW_SIX_BITS_U8
    Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8; rfl
theorem c_u64 : Bce2281bGpencOld.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.LOW_SIX_BITS
    = Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS := by
  unfold Bce2281bGpencOld.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.LOW_SIX_BITS
    Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS; rfl
theorem c_blocks : Bce2281bGpencOld.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.BLOCKS_PER_FAST_LOOP
    = Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP := by
  unfold Bce2281bGpencOld.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.BLOCKS_PER_FAST_LOOP
    Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP; rfl

theorem read_u64_eq : Bce2281bGpencOld.engine.general_purpose.read_u64 = Bce2281bGpencNew.engine.general_purpose.read_u64 := by
  funext s
  unfold Bce2281bGpencOld.engine.general_purpose.read_u64 Bce2281bGpencNew.engine.general_purpose.read_u64
  rfl

theorem loop1_eq : ∀ (n : Nat) (e : OGP) (input output : Slice U8) (ii oi sor : Usize),
    sor.val - ii.val ≤ n →
    Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode_loop1
      e input output ii oi sor =
    (do let (o, x) ← Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail_loop1 e.encode_table input output ii oi sor
        ok (e, o, x)) := by
  intro n
  induction n with
  | zero =>
    intro e input output ii oi sor hn
    rw [Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode_loop1,
      Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail_loop1]
    have : ¬ ii < sor := by scalar_tac
    simp [this]
  | succ n ih =>
    intro e input output ii oi sor hn
    rw [Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode_loop1,
      Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail_loop1]
    by_cases hlt : ii < sor
    · simp only [hlt, if_true]
      rcases add_cases ii 3#usize with ⟨z, hz, hv⟩ | ⟨err, he⟩
      · have ih' := fun output oi => ih e input output z oi sor (by scalar_tac)
        simp only [hz, bind_ok, ih', c_u8]
        simp only [Std.bind_assoc]
        bind_walk
      · simp [he]
    · simp [hlt]

theorem loop2_eq : ∀ (n : Nat) (e : OGP) (input output : Slice U8) (ii oi sor : Usize),
    sor.val - ii.val ≤ n →
    Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode_loop2
      e input output ii oi sor =
    (do let (o, x) ← Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail_loop2 e.encode_table input output ii oi sor
        ok (e, o, x)) := by
  intro n
  induction n with
  | zero =>
    intro e input output ii oi sor hn
    rw [Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode_loop2,
      Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail_loop2]
    have : ¬ ii < sor := by scalar_tac
    simp [this]
  | succ n ih =>
    intro e input output ii oi sor hn
    rw [Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode_loop2,
      Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail_loop2]
    by_cases hlt : ii < sor
    · simp only [hlt, if_true]
      rcases add_cases ii 3#usize with ⟨z, hz, hv⟩ | ⟨err, he⟩
      · have ih' := fun output oi => ih e input output z oi sor (by scalar_tac)
        simp only [hz, bind_ok, ih', c_u8]
        simp only [Std.bind_assoc]
        bind_walk
      · simp [he]
    · simp [hlt]


set_option maxRecDepth 20000 in
theorem loop0_eq : ∀ (n : Nat) (i : Usize) (e : OGP) (input output : Slice U8) (ii lfi oi : Usize),
    0 < i.val → lfi.val + 1 - ii.val ≤ n →
    Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode_loop0 i e input output ii lfi oi =
    (do let (o, a, b) ← Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail_loop0 i e.encode_table input output ii oi lfi
        ok (e, o, a, b)) := by
  intro n
  induction n with
  | zero =>
    intro i e input output ii lfi oi hi hn
    rw [Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode_loop0, Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail_loop0]
    have : ¬ ii ≤ lfi := by scalar_tac
    simp [this]
  | succ n ih =>
    intro i e input output ii lfi oi hi hn
    rw [Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode_loop0, Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail_loop0]
    by_cases hle : ii ≤ lfi
    · simp only [hle, if_true]
      rcases add_cases ii i with ⟨z, hz, hv⟩ | ⟨err, he⟩
      · have ih' := fun output oi => ih i e input output z lfi oi hi (by scalar_tac)
        simp only [hz, bind_ok, ih', c_u64, c_blocks, read_u64_eq]
        simp only [Std.bind_assoc]
        bind_walk
      · simp only [he, bind_fail, c_u64, c_blocks, read_u64_eq]
        simp only [Std.bind_assoc]
        bind_walk
    · simp [hle]


/-- New `internal_encode`: the no-op SIMD prefix closure returns `(0, 0)`, all `debug_assert`s
    (compiled as `massert`) hold, and the call reduces to `encode_scalar_tail table input output 0 0`. -/
theorem new_internal_encode_eq (e : NGP) (input output : Slice U8) :
    Bce2281bGpencNew.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode e input output =
    Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail e.encode_table input output 0#usize 0#usize := by
  unfold Bce2281bGpencNew.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode Bce2281bGpencNew.engine.general_purpose.encode_helper
  simp only [Bce2281bGpencNew.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.closure.Insts.CoreOpsFunctionFnOncePairShared0SliceU8Mut1SliceU8PairUsizeUsize.call_once]
  obtain ⟨r, hr, hrv⟩ := spec_imp_exists (Usize.rem_spec 0#usize (y := 3#usize) (by simp))
  obtain ⟨d, hd, hdv⟩ := spec_imp_exists (Usize.div_spec 0#usize (y := 3#usize) (by simp))
  have hr0 : r = 0#usize := by scalar_tac
  have hd0 : d = 0#usize := by scalar_tac
  subst hr0 hd0
  obtain ⟨m, hm, hmv⟩ := spec_imp_exists (Usize.mul_spec (x := 0#usize) (y := 4#usize) (by scalar_tac))
  have hm0 : m = 0#usize := by scalar_tac
  subst hm0
  simp [hr, hd, hm, massert]


set_option maxRecDepth 20000 in
/-- Old monolithic `internal_encode` = new factored-out `encode_scalar_tail` started at (0, 0). -/
theorem old_internal_encode_eq (e : OGP) (input output : Slice U8) :
    Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode e input output =
    Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail e.encode_table input output 0#usize 0#usize := by
  unfold Bce2281bGpencOld.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail
  rw [c_blocks]
  obtain ⟨z, hz, hzv⟩ := spec_imp_exists (Usize.mul_spec
    (x := Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP) (y := 6#usize)
    (by unfold Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP; scalar_tac))
  have hzpos : 0 < z.val := by
    rw [hzv]; unfold Bce2281bGpencNew.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP; scalar_tac
  have L0 := fun e input output ii lfi oi =>
    loop0_eq (lfi.val + 1 - ii.val) z e input output ii lfi oi hzpos (Nat.le_refl _)
  have L1 := fun e input output ii oi sor =>
    loop1_eq (sor.val - ii.val) e input output ii oi sor (Nat.le_refl _)
  have L2 := fun e input output ii oi sor =>
    loop2_eq (sor.val - ii.val) e input output ii oi sor (Nat.le_refl _)
  simp only [hz, bind_ok, L0, L1, L2, c_u8]
  simp only [Std.bind_assoc]
  bind_walk'


/-! ## Unit 1: `GeneralPurpose::internal_encode` (via harness `__histeq_gp_internal_encode`)

Old and New are generated into different namespaces, so the engine struct exists twice.
Relation: the theorem holds for ANY old engine `eO` and new engine `eN` with equal `encode_table`
(the only field `internal_encode` reads); in particular for engines built from the same field values
(`engO_to_new` below maps every field verbatim). No hypotheses on external functions are needed. -/

theorem gp_internal_encode_equiv (eO : OGP) (eN : NGP) (h : eO.encode_table = eN.encode_table)
    (input output : Slice U8) :
    Bce2281bGpencOld.__histeq_gp_internal_encode eO input output =
    Bce2281bGpencNew.__histeq_gp_internal_encode eN input output := by
  unfold Bce2281bGpencOld.__histeq_gp_internal_encode Bce2281bGpencNew.__histeq_gp_internal_encode
  rw [old_internal_encode_eq, new_internal_encode_eq, h]

/-- Field-wise transport of an old engine value to the new namespace. -/
def padO_to_new : Bce2281bGpencOld.engine.DecodePaddingMode → Bce2281bGpencNew.engine.DecodePaddingMode
  | .Indifferent => .Indifferent
  | .RequireCanonical => .RequireCanonical
  | .RequireNone => .RequireNone

def engO_to_new (e : OGP) : NGP :=
  { encode_table := e.encode_table, decode_table := e.decode_table,
    config := { encode_padding := e.config.encode_padding,
                decode_allow_trailing_bits := e.config.decode_allow_trailing_bits,
                decode_padding_mode := padO_to_new e.config.decode_padding_mode } }

theorem gp_internal_encode_equiv_same_fields (e : OGP) (input output : Slice U8) :
    Bce2281bGpencOld.__histeq_gp_internal_encode e input output =
    Bce2281bGpencNew.__histeq_gp_internal_encode (engO_to_new e) input output :=
  gp_internal_encode_equiv e (engO_to_new e) rfl input output

#print axioms add_cases
#print axioms loop1_eq
#print axioms loop2_eq
#print axioms loop0_eq
#print axioms new_internal_encode_eq
#print axioms old_internal_encode_eq
#print axioms gp_internal_encode_equiv
#print axioms gp_internal_encode_equiv_same_fields

end Cce2281bProof
