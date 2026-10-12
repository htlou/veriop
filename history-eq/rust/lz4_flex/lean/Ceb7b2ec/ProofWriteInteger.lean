import Ceb7b2ec.HlpcBoth
open Aeneas Aeneas.Std Result

namespace Ceb7b2ec.WI

theorem eq_ok_of_spec {α} {m : Result α} {v : α} (h : m ⦃ r => r = v ⦄) : m = ok v := by
  obtain ⟨x, hx, hp⟩ := WP.spec_imp_exists h
  subst hp; exact hx

#print axioms eq_ok_of_spec

def out0 : Slice Std.U8 := Slice.from [0#u8, 0#u8] (by simp; scalar_tac)

@[simp] theorem out0_val : out0.val = [0#u8, 0#u8] := rfl
@[simp] theorem out0_length : out0.length = 2 := rfl

#print axioms out0_val
#print axioms out0_length

theorem old_spec :
    Leb7b2ecHlpcOld.block.compress.write_integer out0 0#usize 255#usize
      ⦃ r => r.1.val = [255#u8, 0#u8] ∧ r.2 = 2#usize ⦄ := by
  unfold Leb7b2ecHlpcOld.block.compress.write_integer
  rw [Leb7b2ecHlpcOld.block.compress.write_integer_loop]
  simp only [Leb7b2ecHlpcOld.block.compress.push_byte]
  split
  · step as ⟨n1, hn1⟩
    step as ⟨o1, ho1⟩
    · simp
    step as ⟨l1, hl1⟩
    rw [Leb7b2ecHlpcOld.block.compress.write_integer_loop]
    split
    · scalar_tac
    · step as ⟨i, hi⟩
      have hl1' : l1.val = 1 := by omega
      have hi0 : i = 0#u8 := by
        subst hi; apply UScalar.eq_of_val_eq; simp [UScalar.cast_val_eq]; omega
      step as ⟨o2, ho2⟩
      · simp [ho1]; omega
      step as ⟨l2, hl2⟩
      constructor
      · subst ho2 ho1 hi0
        have hl : l1 = 1#usize := by apply UScalar.eq_of_val_eq; simp; omega
        subst hl
        simp [Slice.set_val_eq]
      · apply UScalar.eq_of_val_eq; simp; omega
  · scalar_tac

#print axioms old_spec

theorem bind_ne_ok {α β} {m : Result α} {f : α → Result β} {v : β}
    (h : ∀ x, m = ok x → f x ≠ ok v) : (m >>= f) ≠ ok v := by
  cases m with
  | ret x => simpa using h x rfl
  | vis i k => simp [vis_not_ok]
  | div => simp [div_not_ok]

#print axioms bind_ne_ok

theorem push_u32_ne_ok (output : Slice Std.U8) (output_len : Std.Usize) (x : Std.U32)
    (hlen : output.length < output_len.val + 4) (v : Slice Std.U8 × Std.Usize) :
    Leb7b2ecHlpcNew.block.compress.push_u32 output output_len x ≠ ok v := by
  unfold Leb7b2ecHlpcNew.block.compress.push_u32
  apply bind_ne_ok; intro i hi
  have hadd := UScalar.add_equiv output_len 4#usize
  rw [hi, Result.match.ok] at hadd
  simp only at hadd
  apply bind_ne_ok; intro p hp
  rw [Slice.index_mut_SliceIndexRangeUsizeSliceInst] at hp
  unfold core.slice.index.SliceIndexRangeUsizeSlice.index_mut at hp
  split at hp
  · rename_i hc
    have : i.val ≤ output.length := hc.2
    scalar_tac
  · exact absurd hp fail_not_ok

#print axioms push_u32_ne_ok

theorem new_loop_small (output : Slice Std.U8) (output_len n : Std.Usize) (hn : n.val < 1020) :
    Leb7b2ecHlpcNew.block.compress.write_integer_loop output output_len n
      = ok (output, output_len, n) := by
  have e1 : (4#usize * 255#usize) = ok 1020#usize := eq_ok_of_spec (by step*)
  have h1 : ¬ (n ≥ 1020#usize) := by scalar_tac
  rw [Leb7b2ecHlpcNew.block.compress.write_integer_loop]
  simp only [e1, bind_ok, h1, if_false]

#print axioms new_loop_small

theorem new_ne_ok (output : Slice Std.U8) (output_len n : Std.Usize)
    (hn1 : 255 ≤ n.val) (hn2 : n.val < 1020)
    (hlen : output.length < output_len.val + 4) (v : Slice Std.U8 × Std.Usize) :
    Leb7b2ecHlpcNew.block.compress.write_integer output output_len n ≠ ok v := by
  unfold Leb7b2ecHlpcNew.block.compress.write_integer
  rw [if_neg (by scalar_tac)]
  apply bind_ne_ok; intro r hr
  rw [new_loop_small output output_len n hn2] at hr
  have hr' := Result.ok_injective hr
  subst hr'
  iterate 10 (apply bind_ne_ok; intro _ _)
  apply bind_ne_ok; intro p hp
  exact absurd hp (push_u32_ne_ok _ _ _ hlen p)

#print axioms new_ne_ok

/-- (a) Counterexample: output = [0, 0], output_len = 0, n = 255.
    Old succeeds writing [0xFF, 0x00] with new length 2; New does not return `ok`
    (whatever the opaque `to_be` does). -/
theorem old_ok_witness :
    Leb7b2ecHlpcOld.block.compress.write_integer out0 0#usize 255#usize
      = ok (Slice.from [255#u8, 0#u8] (by simp; scalar_tac), 2#usize) := by
  obtain ⟨y, hy, h1, h2⟩ := WP.spec_imp_exists old_spec
  rw [hy]
  obtain ⟨s, l⟩ := y
  simp only at h1 h2
  subst h2
  congr
  apply Slice.eq_iff _ _ |>.mpr
  simp [h1]

#print axioms old_ok_witness

theorem write_integer_not_equiv :
    Leb7b2ecHlpcOld.block.compress.write_integer out0 0#usize 255#usize ≠
    Leb7b2ecHlpcNew.block.compress.write_integer out0 0#usize 255#usize := by
  intro h
  rw [old_ok_witness] at h
  exact new_ne_ok out0 0#usize 255#usize (by simp) (by simp) (by simp) _ h.symm

#print axioms write_integer_not_equiv

theorem write_integer_not_equiv' :
    ¬ ∀ (output : Slice Std.U8) (output_len n : Std.Usize),
      Leb7b2ecHlpcOld.block.compress.write_integer output output_len n =
      Leb7b2ecHlpcNew.block.compress.write_integer output output_len n :=
  fun h => write_integer_not_equiv (h _ _ _)

#print axioms write_integer_not_equiv'

/-- (b) For `n < 255` both versions coincide. -/
theorem write_integer_eq_small (output : Slice Std.U8) (output_len n : Std.Usize)
    (hn : n.val < 255) :
    Leb7b2ecHlpcOld.block.compress.write_integer output output_len n =
    Leb7b2ecHlpcNew.block.compress.write_integer output output_len n := by
  have h1 : ¬ (n ≥ 255#usize) := by scalar_tac
  have h2 : n < 255#usize := by scalar_tac
  unfold Leb7b2ecHlpcOld.block.compress.write_integer
    Leb7b2ecHlpcNew.block.compress.write_integer
  rw [Leb7b2ecHlpcOld.block.compress.write_integer_loop]
  simp only [h1, h2, if_false, if_true, bind_ok, lift,
    Leb7b2ecHlpcOld.block.compress.push_byte, Leb7b2ecHlpcNew.block.compress.push_byte]
  rfl

#print axioms write_integer_eq_small

/-! ### Partial result: lengths agree whenever both succeed -/

theorem bind_eq_ok {α β} {m : Result α} {f : α → Result β} {v : β}
    (h : (m >>= f) = ok v) : ∃ x, m = ok x ∧ f x = ok v := by
  cases m with
  | ret x => exact ⟨x, rfl, by simpa using h⟩
  | vis i k => simp at h
  | div => simp at h

#print axioms bind_eq_ok

theorem old_push_byte_len {output : Slice Std.U8} {output_len : Std.Usize} {x : Std.U8}
    {o l} (h : Leb7b2ecHlpcOld.block.compress.push_byte output output_len x = ok (o, l)) :
    l.val = output_len.val + 1 := by
  unfold Leb7b2ecHlpcOld.block.compress.push_byte at h
  obtain ⟨o1, h1, h⟩ := bind_eq_ok h
  obtain ⟨l1, h2, h⟩ := bind_eq_ok h
  have hadd := UScalar.add_equiv output_len 1#usize
  rw [h2, Result.match.ok] at hadd
  simp only at hadd
  have := Result.ok_injective h
  simp only [Prod.mk.injEq] at this
  obtain ⟨_, rfl⟩ := this
  simp at hadd; omega

#print axioms old_push_byte_len

theorem old_loop_len : ∀ (k : Nat) (output : Slice Std.U8) (output_len n : Std.Usize) o l m,
    n.val = k →
    Leb7b2ecHlpcOld.block.compress.write_integer_loop output output_len n = ok (o, l, m) →
    l.val = output_len.val + n.val / 255 ∧ m.val = n.val % 255 := by
  intro k
  induction k using Nat.strong_induction_on with
  | _ k ih =>
  intro output output_len n o l m hk h
  rw [Leb7b2ecHlpcOld.block.compress.write_integer_loop] at h
  split at h
  · obtain ⟨n1, hn1, h⟩ := bind_eq_ok h
    obtain ⟨⟨o1, l1⟩, hp, h⟩ := bind_eq_ok h
    have hsub := UScalar.sub_equiv n 255#usize
    rw [hn1, Result.match.ok] at hsub
    simp only at hsub
    have hl1 := old_push_byte_len hp
    have := ih n1.val (by simp at hsub; omega) o1 l1 n1 o l m rfl h
    simp at hsub
    omega
  · have := Result.ok_injective h
    simp only [Prod.mk.injEq] at this
    obtain ⟨rfl, rfl, rfl⟩ := this
    have : n.val < 255 := by scalar_tac
    omega

#print axioms old_loop_len

theorem spec_of_eq_ok {α} {m : Result α} {P : α → Prop} {x : α}
    (hs : m ⦃ r => P r ⦄) (h : m = ok x) : P x := by
  obtain ⟨y, hy, hp⟩ := WP.spec_imp_exists hs
  rw [h] at hy
  have := Result.ok_injective hy
  subst this; exact hp

#print axioms spec_of_eq_ok

theorem new_push_u32_len {output : Slice Std.U8} {output_len : Std.Usize} {x : Std.U32}
    {o l} (h : Leb7b2ecHlpcNew.block.compress.push_u32 output output_len x = ok (o, l)) :
    l.val = output_len.val + 4 := by
  unfold Leb7b2ecHlpcNew.block.compress.push_u32 at h
  obtain ⟨i, hi, h⟩ := bind_eq_ok h
  have hadd := UScalar.add_equiv output_len 4#usize
  rw [hi, Result.match.ok] at hadd
  simp only at hadd
  obtain ⟨_, _, h⟩ := bind_eq_ok h
  obtain ⟨_, _, h⟩ := bind_eq_ok h
  obtain ⟨_, _, h⟩ := bind_eq_ok h
  obtain ⟨_, _, h⟩ := bind_eq_ok h
  have := Result.ok_injective h
  simp only [Prod.mk.injEq] at this
  obtain ⟨_, rfl⟩ := this
  simp at hadd; omega

#print axioms new_push_u32_len

theorem new_loop_len : ∀ (k : Nat) (output : Slice Std.U8) (output_len n : Std.Usize) o l m,
    n.val = k →
    Leb7b2ecHlpcNew.block.compress.write_integer_loop output output_len n = ok (o, l, m) →
    l.val = output_len.val + 4 * (n.val / 1020) ∧ m.val = n.val % 1020 := by
  have e1 : (4#usize * 255#usize) = ok 1020#usize := eq_ok_of_spec (by step*)
  intro k
  induction k using Nat.strong_induction_on with
  | _ k ih =>
  intro output output_len n o l m hk h
  rw [Leb7b2ecHlpcNew.block.compress.write_integer_loop] at h
  simp only [e1, bind_ok] at h
  split at h
  · obtain ⟨n1, hn1, h⟩ := bind_eq_ok h
    obtain ⟨⟨o1, l1⟩, hp, h⟩ := bind_eq_ok h
    have hsub := UScalar.sub_equiv n 1020#usize
    rw [hn1, Result.match.ok] at hsub
    simp only at hsub
    have hl1 := new_push_u32_len hp
    have := ih n1.val (by simp at hsub; omega) o1 l1 n1 o l m rfl h
    simp at hsub
    omega
  · have := Result.ok_injective h
    simp only [Prod.mk.injEq] at this
    obtain ⟨rfl, rfl, rfl⟩ := this
    have : n.val < 1020 := by scalar_tac
    omega

#print axioms new_loop_len

/-- (b, partial) Whenever both versions return `ok`, the returned lengths agree
    (for every `n`, including `n ≥ 255`). The written bytes for `n ≥ 255` depend on the
    opaque `core.num.U32.to_be` and are therefore not comparable. -/
theorem write_integer_len_eq (output : Slice Std.U8) (output_len n : Std.Usize)
    (o1 o2 : Slice Std.U8) (l1 l2 : Std.Usize)
    (h1 : Leb7b2ecHlpcOld.block.compress.write_integer output output_len n = ok (o1, l1))
    (h2 : Leb7b2ecHlpcNew.block.compress.write_integer output output_len n = ok (o2, l2)) :
    l1 = l2 := by
  by_cases hn : n.val < 255
  · rw [write_integer_eq_small output output_len n hn, h2] at h1
    have := Result.ok_injective h1
    simp only [Prod.mk.injEq] at this
    exact this.2.symm
  · -- Old side
    unfold Leb7b2ecHlpcOld.block.compress.write_integer at h1
    obtain ⟨⟨a, b, c⟩, hl, h1⟩ := bind_eq_ok h1
    obtain ⟨i, hi, h1⟩ := bind_eq_ok h1
    have hb := old_push_byte_len h1
    have hloop := old_loop_len _ _ _ _ _ _ _ rfl hl
    -- New side
    unfold Leb7b2ecHlpcNew.block.compress.write_integer at h2
    rw [if_neg (by scalar_tac)] at h2
    obtain ⟨⟨a', b', c'⟩, hl', h2⟩ := bind_eq_ok h2
    have hloop' := new_loop_len _ _ _ _ _ _ _ rfl hl'
    obtain ⟨ffs, hffs, h2⟩ := bind_eq_ok h2
    obtain ⟨z, hz, hzv⟩ := UScalar.div_spec c' (y := 255#usize) (by simp)
    rw [hz] at hffs
    have hffs' := Result.ok_injective hffs
    subst hffs'
    obtain ⟨rm, hrm, h2⟩ := bind_eq_ok h2
    obtain ⟨_, _, h2⟩ := bind_eq_ok h2
    obtain ⟨_, _, h2⟩ := bind_eq_ok h2
    obtain ⟨_, _, h2⟩ := bind_eq_ok h2
    obtain ⟨i3, hi3, h2⟩ := bind_eq_ok h2
    have hsub := UScalar.sub_equiv 3#usize z
    rw [hi3, Result.match.ok] at hsub
    simp only at hsub
    obtain ⟨_, _, h2⟩ := bind_eq_ok h2
    obtain ⟨_, _, h2⟩ := bind_eq_ok h2
    obtain ⟨_, _, h2⟩ := bind_eq_ok h2
    obtain ⟨_, _, h2⟩ := bind_eq_ok h2
    obtain ⟨⟨o2', l2'⟩, hp, h2⟩ := bind_eq_ok h2
    have hl2' := new_push_u32_len hp
    obtain ⟨l3, hl3, h2⟩ := bind_eq_ok h2
    have hsub2 := UScalar.sub_equiv l2' i3
    rw [hl3, Result.match.ok] at hsub2
    simp only at hsub2
    have := Result.ok_injective h2
    simp only [Prod.mk.injEq] at this
    obtain ⟨_, rfl⟩ := this
    apply UScalar.eq_of_val_eq
    simp at hsub hzv
    omega

#print axioms write_integer_len_eq

end Ceb7b2ec.WI