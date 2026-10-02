import Base64LoopGroupProof
import Base64TailProof
import Mathlib.Tactic.IntervalCases

open Aeneas Aeneas.Std Aeneas.Std.Result
open Base64GroupProof
namespace Base64RemainderProof
set_option maxHeartbeats 2000000
set_option maxRecDepth 8192

theorem word_nat_indices (a b c d e f g h : U8) (word : U64)
    (hword : word.bv = (BitVec.fromBEBytes [a.bv, b.bv, c.bv, d.bv, e.bv, f.bv, g.bv, h.bv]).cast (by simp)) :
    (word.val >>> 58) &&& 63 = a.val >>> 2 ∧
    (word.val >>> 52) &&& 63 = (((a.val <<< 4) % 256) ||| (b.val >>> 4)) &&& 63 ∧
    (word.val >>> 46) &&& 63 = (((b.val <<< 2) % 256) ||| (c.val >>> 6)) &&& 63 ∧
    (word.val >>> 40) &&& 63 = c.val &&& 63 ∧
    (word.val >>> 34) &&& 63 = d.val >>> 2 ∧
    (word.val >>> 28) &&& 63 = (((d.val <<< 4) % 256) ||| (e.val >>> 4)) &&& 63 ∧
    (word.val >>> 22) &&& 63 = (((e.val <<< 2) % 256) ||| (f.val >>> 6)) &&& 63 ∧
    (word.val >>> 16) &&& 63 = f.val &&& 63 := by
  have indices := word_indices a.bv b.bv c.bv d.bv e.bv f.bv g.bv h.bv
  dsimp only at indices
  rw [← hword] at indices
  obtain ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩ := indices
  have n0 := congrArg BitVec.toNat h0
  have n1 := congrArg BitVec.toNat h1
  have n2 := congrArg BitVec.toNat h2
  have n3 := congrArg BitVec.toNat h3
  have n4 := congrArg BitVec.toNat h4
  have n5 := congrArg BitVec.toNat h5
  have n6 := congrArg BitVec.toNat h6
  have n7 := congrArg BitVec.toNat h7
  have hm (n : Nat) : n &&& 63 < 256 := Nat.lt_of_le_of_lt Nat.and_le_right (by decide)
  have h63 : (63 : BitVec 64).toNat = 63 := rfl
  have h63b : (63 : BitVec 8).toNat = 63 := rfl
  simp only [BitVec.toNat_setWidth, BitVec.toNat_and, BitVec.toNat_ushiftRight,
    BitVec.toNat_or, BitVec.toNat_shiftLeft, UScalar.bv_toNat, h63, h63b,
    Nat.reducePow, Nat.mod_eq_of_lt (hm _)] at n0 n1 n2 n3 n4 n5 n6 n7
  exact ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩

def emitTriple (output : Slice U8) (pos : Nat) (table : Array U8 64#usize)
    (a b c : U8) : Slice U8 :=
  let output := output.setAtNat pos table.val[a.val >>> 2]!
  let output := output.setAtNat (pos + 1)
    table.val[(((a.val <<< 4) % 256) ||| (b.val >>> 4)) &&& 63]!
  let output := output.setAtNat (pos + 2)
    table.val[(((b.val <<< 2) % 256) ||| (c.val >>> 6)) &&& 63]!
  output.setAtNat (pos + 3) table.val[c.val &&& 63]!

theorem triple_body_spec (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi stop : Usize) (hguard : ii.val < stop.val)
    (hin : ii.val + 3 ≤ input.length) (hout : oi.val + 4 ≤ output.length) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1.body
      table input stop output ii oi ⦃ r =>
      ∃ ii' oi', r = ControlFlow.cont (emitTriple output oi.val table
        input.val[ii.val]! input.val[ii.val + 1]! input.val[ii.val + 2]!, ii', oi') ∧
        ii'.val = ii.val + 3 ∧ oi'.val = oi.val + 4 ⦄ := by
  have hshr (a : U8) : a.val >>> 2 < 64 := by
    have ha : a.val < 256 := by scalar_tac
    simp only [Nat.shiftRight_eq_div_pow]
    omega
  have hmask (n : Nat) : n &&& 63 < 64 := Nat.lt_of_le_of_lt Nat.and_le_right (by decide)
  have hsize : U8.size = 256 := by norm_num [U8.size, U8.numBits]
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1.body
  simp only [UScalar.lt_equiv, if_pos hguard,
    Base64StepRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8]
  step as ⟨iend, hiend⟩
  step as ⟨input_chunk, hinput, hinputlen⟩
  step as ⟨oend, hoend⟩
  step as ⟨chunk, back, hchunk, hchunklen, hback⟩
  have hinputlen' : input_chunk.length = 3 := by scalar_tac
  have hchunklen' : chunk.length = 4 := by scalar_tac
  step*
  all_goals try scalar_tac
  refine ⟨iend, oend, ?_, by scalar_tac, by scalar_tac⟩
  simp only [hback, s_post, output_chunk3_post, output_chunk2_post, output_chunk1_post,
    Slice.set, UScalar.ofNatCore_val_eq]
  simp (disch := (simp only [Slice.setAtNat_length, hchunklen']; omega)) only [setSlice_setAt]
  rw [setSlice_original output chunk oi.val oend.val hchunk (by scalar_tac) (by scalar_tac)]
  simp [emitTriple, i5_post, i12_post, i19_post, i22_post,
    i4_post, i11_post, i18_post, i21_post, i20_post, i17_post, i16_post,
    i15_post, i13_post, i10_post, i9_post, i8_post, i6_post, i3_post, hsize,
    i2_post, i7_post, i14_post, hinput]
  simp_lists
  simp (disch := scalar_tac) only [List.getElem?_eq_getElem, Option.getD_some]

#print axioms word_nat_indices
#print axioms triple_body_spec

theorem wordAt_bytes (input : Slice U8) (start : Nat) (hin : start + 8 ≤ input.length) :
    (wordAt input start hin).bv =
      (BitVec.fromBEBytes [input.val[start]!.bv, input.val[start + 1]!.bv,
        input.val[start + 2]!.bv, input.val[start + 3]!.bv, input.val[start + 4]!.bv,
        input.val[start + 5]!.bv, input.val[start + 6]!.bv, input.val[start + 7]!.bv]).cast (by simp) := by
  have hin' : start + 8 ≤ input.val.length := hin
  have hlist : (input.val.drop start).take 8 =
      [input.val[start]!, input.val[start + 1]!, input.val[start + 2]!, input.val[start + 3]!,
        input.val[start + 4]!, input.val[start + 5]!, input.val[start + 6]!, input.val[start + 7]!] := by
    apply List.ext_getElem
    · simp only [List.length_take, List.length_drop, List.length_cons, List.length_nil]
      omega
    · intro j hj hk
      have hj8 : j < 8 := by simpa using hk
      interval_cases j <;> simp_lists
      all_goals rfl
  have hword : wordAt input start hin = core.num.U64.from_be_bytes
      (Array.make 8#usize [input.val[start]!, input.val[start + 1]!, input.val[start + 2]!,
        input.val[start + 3]!, input.val[start + 4]!, input.val[start + 5]!,
        input.val[start + 6]!, input.val[start + 7]!] (by simp)) := by
    unfold wordAt
    congr 1
    apply (Array.eq_iff _ _).mpr
    simpa only [Array.make_val] using hlist
  rw [hword]
  rfl

theorem emitWord_at (output : Slice U8) (pos : Nat) (table : Array U8 64#usize)
    (input : Slice U8) (start : Nat) (hin : start + 8 ≤ input.length) :
    emitWord output pos table (wordAt input start hin) =
      emitTriple (emitTriple output pos table input.val[start]! input.val[start + 1]! input.val[start + 2]!)
        (pos + 4) table input.val[start + 3]! input.val[start + 4]! input.val[start + 5]! := by
  obtain ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩ := word_nat_indices
    input.val[start]! input.val[start + 1]! input.val[start + 2]! input.val[start + 3]!
    input.val[start + 4]! input.val[start + 5]! input.val[start + 6]! input.val[start + 7]!
    (wordAt input start hin) (wordAt_bytes input start hin)
  simp only [emitWord, emitTriple, h0, h1, h2, h3, h4, h5, h6, h7, Nat.add_assoc]

#print axioms wordAt_bytes
#print axioms emitWord_at

@[simp] theorem emitTriple_length (output : Slice U8) (pos : Nat) (table : Array U8 64#usize)
    (a b c : U8) : (emitTriple output pos table a b c).length = output.length := by
  simp [emitTriple]

theorem tail_loop_unfold (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi stop : Usize) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input output ii oi stop =
    (do
      let r ← Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1.body table input stop output ii oi
      match r with
      | .cont (out, next_i, next_o) =>
        Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input out next_i next_o stop
      | .done state => ok state) := by
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1
  rw [loop]
  congr 1
  funext r
  cases r with
  | cont state =>
    rcases state with ⟨out, next_i, next_o⟩
    rfl
  | done state => rfl

theorem finish4_absorbed_active (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last4 stop : Usize) (hguard : ii.val ≤ last4.val)
    (hin : ii.val + 26 ≤ input.length) (hstop : ii.val + 24 ≤ stop.val)
    (hout : oi.val + 32 ≤ output.length) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input output ii oi stop =
    (do
      let (out, next_i, next_o) ← Base64LoopGroupProof.finish4 table input last4 output ii oi
      Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input out next_i next_o stop) := by
  obtain ⟨r, hr, fi, fo, he, hfi, hfo⟩ := WP.spec_imp_exists
    (scalar4_body_spec table input output ii oi last4 hguard hin hout)
  subst r
  unfold Base64LoopGroupProof.finish4
  simp only [hr, Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
  obtain ⟨r1, hr1, i1, o1, he1, hi1, ho1⟩ := WP.spec_imp_exists
    (triple_body_spec table input output ii oi stop (by omega) (by omega) (by omega))
  subst r1
  let out1 := emitTriple output oi.val table input.val[ii.val]!
    input.val[ii.val + 1]! input.val[ii.val + 2]!
  have hlen1 : out1.length = output.length := by simp [out1 ]
  rw [tail_loop_unfold, hr1]
  simp only [Aeneas.Std.bind_ok]
  obtain ⟨r2, hr2, i2, o2, he2, hi2, ho2⟩ := WP.spec_imp_exists
    (triple_body_spec table input out1 i1 o1 stop (by omega) (by omega) (by omega))
  subst r2
  let out2 := emitTriple out1 o1.val table input.val[i1.val]!
    input.val[i1.val + 1]! input.val[i1.val + 2]!
  have hlen2 : out2.length = output.length := by simp [out2, hlen1 ]
  rw [tail_loop_unfold, hr2]
  simp only [Aeneas.Std.bind_ok]
  obtain ⟨r3, hr3, i3, o3, he3, hi3, ho3⟩ := WP.spec_imp_exists
    (triple_body_spec table input out2 i2 o2 stop (by omega) (by omega) (by omega))
  subst r3
  let out3 := emitTriple out2 o2.val table input.val[i2.val]!
    input.val[i2.val + 1]! input.val[i2.val + 2]!
  have hlen3 : out3.length = output.length := by simp [out3, hlen2 ]
  rw [tail_loop_unfold, hr3]
  simp only [Aeneas.Std.bind_ok]
  obtain ⟨r4, hr4, i4, o4, he4, hi4, ho4⟩ := WP.spec_imp_exists
    (triple_body_spec table input out3 i3 o3 stop (by omega) (by omega) (by omega))
  subst r4
  let out4 := emitTriple out3 o3.val table input.val[i3.val]!
    input.val[i3.val + 1]! input.val[i3.val + 2]!
  have hlen4 : out4.length = output.length := by simp [out4, hlen3 ]
  rw [tail_loop_unfold, hr4]
  simp only [Aeneas.Std.bind_ok]
  obtain ⟨r5, hr5, i5, o5, he5, hi5, ho5⟩ := WP.spec_imp_exists
    (triple_body_spec table input out4 i4 o4 stop (by omega) (by omega) (by omega))
  subst r5
  let out5 := emitTriple out4 o4.val table input.val[i4.val]!
    input.val[i4.val + 1]! input.val[i4.val + 2]!
  have hlen5 : out5.length = output.length := by simp [out5, hlen4 ]
  rw [tail_loop_unfold, hr5]
  simp only [Aeneas.Std.bind_ok]
  obtain ⟨r6, hr6, i6, o6, he6, hi6, ho6⟩ := WP.spec_imp_exists
    (triple_body_spec table input out5 i5 o5 stop (by omega) (by omega) (by omega))
  subst r6
  let out6 := emitTriple out5 o5.val table input.val[i5.val]!
    input.val[i5.val + 1]! input.val[i5.val + 2]!
  have hlen6 : out6.length = output.length := by simp [out6, hlen5 ]
  rw [tail_loop_unfold, hr6]
  simp only [Aeneas.Std.bind_ok]
  obtain ⟨r7, hr7, i7, o7, he7, hi7, ho7⟩ := WP.spec_imp_exists
    (triple_body_spec table input out6 i6 o6 stop (by omega) (by omega) (by omega))
  subst r7
  let out7 := emitTriple out6 o6.val table input.val[i6.val]!
    input.val[i6.val + 1]! input.val[i6.val + 2]!
  have hlen7 : out7.length = output.length := by simp [out7, hlen6 ]
  rw [tail_loop_unfold, hr7]
  simp only [Aeneas.Std.bind_ok]
  obtain ⟨r8, hr8, i8, o8, he8, hi8, ho8⟩ := WP.spec_imp_exists
    (triple_body_spec table input out7 i7 o7 stop (by omega) (by omega) (by omega))
  subst r8
  let out8 := emitTriple out7 o7.val table input.val[i7.val]!
    input.val[i7.val + 1]! input.val[i7.val + 2]!
  have hlen8 : out8.length = output.length := by simp [out8, hlen7 ]
  rw [tail_loop_unfold, hr8]
  simp only [Aeneas.Std.bind_ok]
  have hii : i8 = fi := by scalar_tac
  have hoo : o8 = fo := by scalar_tac
  rw [hii, hoo]
  have hout_eq : out8 = emitFour output oi.val table input ii.val hin := by
    simp only [out8, out7, out6, out5, out4, out3, out2, out1, emitFour, emitWord_at,
      hi1, hi2, hi3, hi4, hi5, hi6, hi7,
      ho1, ho2, ho3, ho4, ho5, ho6, ho7, Nat.add_assoc]
  exact congrArg (fun out =>
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input out fi fo stop) hout_eq

#print axioms finish4_absorbed_active

theorem finish4_absorbed (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last4 stop : Usize) (hlast4 : last4.val + 26 = input.length)
    (hstop : input.length ≤ stop.val + 2)
    (hout : oi.val + 4 * ((input.length - ii.val) / 3) ≤ output.length) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input output ii oi stop =
    (do
      let (out, next_i, next_o) ← Base64LoopGroupProof.finish4 table input last4 output ii oi
      Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input out next_i next_o stop) := by
  by_cases hguard : ii.val ≤ last4.val
  · exact finish4_absorbed_active table input output ii oi last4 stop hguard
      (by omega) (by omega) (by omega)
  · unfold Base64LoopGroupProof.finish4
    simp only [Base64LoopGroupProof.body4_done table input output ii oi last4 hguard,
      Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]

theorem scalar_fast_loop_spec (table : Array U8 64#usize) (input : Slice U8)
    (last8 : Usize) (hlast8 : last8.val + 50 = input.length)
    (output : Slice U8) (ii oi : Usize) (hin : ii.val ≤ input.length)
    (hout : oi.val + 4 * ((input.length - ii.val) / 3) ≤ output.length) :
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0
      48#usize table input output ii oi false last8 ⦃ r =>
        r.2.1.val ≤ input.length ∧
        r.2.2.val + 4 * ((input.length - r.2.1.val) / 3) ≤ r.1.length ∧
        last8.val < r.2.1.val ⦄ := by
  generalize hn : input.length - ii.val = remaining
  induction remaining using Nat.strong_induction_on generalizing output ii oi with
  | h remaining ih =>
    rw [Base64LoopGroupProof.loop8_unfold]
    by_cases hguard : ii.val ≤ last8.val
    · obtain ⟨r, hr, next_i, next_o, he, hi, ho⟩ := WP.spec_imp_exists
        (scalar8_body_spec table input output ii oi last8 hguard (by omega) (by omega))
      subst r
      rw [hr]
      simp only [Aeneas.Std.bind_ok]
      have hlen : (emitEight output oi.val table input ii.val (by omega)).length = output.length := by
        simp [emitEight]
      apply ih (input.length - next_i.val) (by omega) _ next_i next_o
      · omega
      · omega
      · rfl
    · rw [Base64LoopGroupProof.body8_done table input output ii oi last8 hguard]
      simp only [Aeneas.Std.bind_ok, WP.spec_ok]
      exact ⟨hin, hout, by omega⟩

theorem scalar_fast_tail_equiv (table : Array U8 64#usize) (input : Slice U8)
    (last4 last8 stop : Usize) (hlast4 : last4.val + 26 = input.length)
    (hlast8 : last8.val + 50 = input.length) (hstop : input.length ≤ stop.val + 2)
    (output : Slice U8) (ii oi : Usize) (hin : ii.val ≤ input.length)
    (hout : oi.val + 4 * ((input.length - ii.val) / 3) ≤ output.length) :
    (do
      let (out, next_i, next_o) ← Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
        24#usize table input output ii oi last4
      Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input out next_i next_o stop) =
    (do
      let (out, next_i, next_o) ← Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0
        48#usize table input output ii oi false last8
      Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input out next_i next_o stop) := by
  obtain ⟨⟨out, next_i, next_o⟩, hr, hi, ho, hlast⟩ := WP.spec_imp_exists
    (scalar_fast_loop_spec table input last8 hlast8 output ii oi hin hout)
  rw [Base64LoopGroupProof.scalar_fast_loops_equiv table input last4 last8 hlast4 hlast8 output ii oi hin hout]
  simp only [Aeneas.Std.bind_assoc, hr, Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
  exact (finish4_absorbed table input out next_i next_o last4 stop hlast4 hstop ho).symm

#print axioms finish4_absorbed
#print axioms scalar_fast_loop_spec
#print axioms scalar_fast_tail_equiv

theorem tail_loop_equiv (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi stop : Usize) (flag : Bool)
    (hflag : flag = true → table = Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input output ii oi stop =
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop1 table input output ii oi flag stop := by
  have heq : Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop1 =
      Base64TailOpt.engine.general_purpose.encode_scalar_tail_loop1 := by with_unfolding_all rfl
  have ha : Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET =
      Base64TailOpt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET := by with_unfolding_all rfl
  rw [heq]
  exact Base64TailProof.tail_loop1_equiv table input output ii oi stop flag (fun h => (hflag h).trans ha)

theorem fast_tail_equiv (table : Array U8 64#usize) (input : Slice U8)
    (last4 last8 stop : Usize) (hlast4 : last4.val + 26 = input.length)
    (hlast8 : last8.val + 50 = input.length) (hstop : input.length ≤ stop.val + 2)
    (output : Slice U8) (ii oi : Usize) (hin : ii.val ≤ input.length)
    (hout : oi.val + 4 * ((input.length - ii.val) / 3) ≤ output.length)
    (flag : Bool)
    (hflag : flag = true → table = Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET) :
    (do
      let (out, next_i, next_o) ← Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
        24#usize table input output ii oi last4
      Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input out next_i next_o stop) =
    (do
      let (out, next_i, next_o) ← Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0
        48#usize table input output ii oi flag last8
      Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop1 table input out next_i next_o flag stop) := by
  simp only [Base64Unroll8Step.fast_loop_pairs_equiv_if 48#usize table input output ii oi flag last8 hflag,
    ← tail_loop_equiv table input _ _ _ stop flag hflag]
  exact scalar_fast_tail_equiv table input last4 last8 stop hlast4 hlast8 hstop output ii oi hin hout

theorem fast4_small_eq_finish4 (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last4 : Usize) (hlast4 : last4.val + 26 = input.length) (hsmall : input.length < 50)
    (hout : oi.val + 4 * ((input.length - ii.val) / 3) ≤ output.length) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
      24#usize table input output ii oi last4 =
    Base64LoopGroupProof.finish4 table input last4 output ii oi := by
  unfold Base64LoopGroupProof.finish4
  rw [Base64LoopGroupProof.loop4_unfold]
  by_cases hguard : ii.val ≤ last4.val
  · obtain ⟨r, hr, next_i, next_o, he, hi, ho⟩ := WP.spec_imp_exists
      (scalar4_body_spec table input output ii oi last4 hguard (by omega) (by omega))
    subst r
    simp only [hr, Aeneas.Std.bind_ok]
    rw [Base64LoopGroupProof.loop4_unfold,
      Base64LoopGroupProof.body4_done table input _ next_i next_o last4 (by omega)]
    simp only [Aeneas.Std.bind_ok]
  · simp only [Base64LoopGroupProof.body4_done table input output ii oi last4 hguard,
      Aeneas.Std.bind_ok]

#print axioms tail_loop_equiv
#print axioms fast_tail_equiv
#print axioms fast4_small_eq_finish4

end Base64RemainderProof
