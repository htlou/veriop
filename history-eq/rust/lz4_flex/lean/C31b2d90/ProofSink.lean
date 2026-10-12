import C31b2d90.ModsinkBoth
open Aeneas Aeneas.Std Result

namespace C31b2d90.ProofSink

abbrev OldLoop := L31b2d90ModsinkOld.sink.SliceSink.extend_from_within_overlapping_loop
abbrev NewLoop := L31b2d90ModsinkNew.sink.SliceSink.extend_from_within_overlapping_loop

def cp (l : List U8) (off a : Nat) : Nat → List U8
  | 0 => l
  | k+1 => cp (l.set a l[a-off]!) off (a+1) k

theorem cp_length (l : List U8) (off a k : Nat) : (cp l off a k).length = l.length := by
  induction k generalizing l a with
  | zero => simp [cp]
  | succ k ih => simp [cp, ih]

theorem new_loop_spec (k : Nat) (it : core.ops.range.Range Usize) (s : Slice U8) (off : Usize)
    (hb : it.end.val = it.start.val + k) (hoff : off.val ≤ it.start.val)
    (hlen : it.start.val + k ≤ s.length) :
    NewLoop it s off ⦃ r => r.val = cp s.val off.val it.start.val k ⦄ := by
  induction k generalizing it s with
  | zero =>
    unfold NewLoop L31b2d90ModsinkNew.sink.SliceSink.extend_from_within_overlapping_loop
    step with core.iter.range.IteratorRange.next_Usize_none_spec as ⟨o, it1, ho, hit⟩
    simp [ho, cp]
  | succ k ih =>
    unfold NewLoop L31b2d90ModsinkNew.sink.SliceSink.extend_from_within_overlapping_loop
    step with core.iter.range.IteratorRange.next_Usize_some_spec as ⟨o, it1, ho, h1, h2⟩
    subst ho
    simp only
    step as ⟨i1, hi1⟩
    step as ⟨x, hx⟩
    step as ⟨s1, hs1⟩
    apply WP.spec_mono (ih it1 s1 (by scalar_tac) (by scalar_tac) (by simp [hs1]; scalar_tac))
    intro r hr
    rw [hr, hs1, h1]
    simp only [cp, Slice.set_val_eq, hx, hi1]
    have hlt : it.start.val - off.val < s.val.length := by scalar_tac
    simp [List.getElem!_eq_getElem?_getD, List.getElem?_eq_getElem hlt]

theorem old_loop_spec (k : Nat) (it : core.ops.range.Range Usize) (off : Usize) (s : Slice U8)
    (hb : it.end.val = it.start.val + k) (hoff : off.val ≤ it.start.val)
    (hlen : it.start.val + k ≤ s.length) :
    OldLoop it off s ⦃ r => r.val = cp s.val off.val it.start.val k ⦄ := by
  induction k generalizing it s with
  | zero =>
    unfold OldLoop L31b2d90ModsinkOld.sink.SliceSink.extend_from_within_overlapping_loop
    step with core.iter.range.IteratorRange.next_Usize_none_spec as ⟨o, it1, ho, hit⟩
    simp [ho, cp]
  | succ k ih =>
    unfold OldLoop L31b2d90ModsinkOld.sink.SliceSink.extend_from_within_overlapping_loop
    step with core.iter.range.IteratorRange.next_Usize_some_spec as ⟨o, it1, ho, h1, h2⟩
    subst ho
    simp only
    step as ⟨i1, hi1⟩
    step as ⟨x, hx⟩
    step as ⟨s1, hs1⟩
    apply WP.spec_mono (ih it1 s1 (by scalar_tac) (by scalar_tac) (by simp [hs1]; scalar_tac))
    intro r hr
    rw [hr, hs1, h1]
    simp only [cp, Slice.set_val_eq, hx, hi1]
    have hlt : it.start.val - off.val < s.val.length := by scalar_tac
    simp [List.getElem!_eq_getElem?_getD, List.getElem?_eq_getElem hlt]

abbrev Old := L31b2d90ModsinkOld.sink.SliceSink.extend_from_within_overlapping
abbrev New := L31b2d90ModsinkNew.sink.SliceSink.extend_from_within_overlapping

/-- the (common) backward function of both versions -/
def backF (self : sink.SliceSink) : sink.SliceSink → sink.SliceSink :=
  fun self1 => { self with output := self1.output }

theorem old_spec (self : sink.SliceSink) (start n : Usize)
    (h1 : start.val ≤ self.pos.val) (hn : 1 ≤ n.val) (h2 : self.pos.val + n.val ≤ self.output.length) :
    Old self start n ⦃ r =>
      r.1.output.val = self.output.val.setSlice! start.val
        (cp ((self.output.val.slice start.val (self.pos.val + n.val)).set (self.pos.val - start.val) 0#u8)
            (self.pos.val - start.val) (self.pos.val - start.val) n.val) ∧
      r.1.pos.val = self.pos.val + n.val ∧ r.2 = backF self ⦄ := by
  unfold Old L31b2d90ModsinkOld.sink.SliceSink.extend_from_within_overlapping
  step
  step as ⟨off, hoff⟩
  step as ⟨i, hi⟩
  step as ⟨out, back, hout, houtl, hback⟩
  step as ⟨out1, hout1⟩
  · scalar_tac
  step with old_loop_spec n.val as ⟨out2, hout2⟩
  · simp [hout1]; scalar_tac
  · simp [hout1]; scalar_tac
  step as ⟨i2, hi2⟩
  refine ⟨?_, hi2, rfl⟩
  rw [hback, Slice.setSlice!_val, hout2, hout1, Slice.set_val_eq, hout, hi, hoff]

theorem new_spec (self : sink.SliceSink) (start n : Usize)
    (h1 : start.val ≤ self.pos.val) (h2 : self.pos.val + n.val ≤ self.output.length) :
    New self start n ⦃ r =>
      r.1.output.val = cp self.output.val (self.pos.val - start.val) self.pos.val n.val ∧
      r.1.pos.val = self.pos.val + n.val ∧ r.2 = backF self ⦄ := by
  unfold New L31b2d90ModsinkNew.sink.SliceSink.extend_from_within_overlapping
  step as ⟨off, hoff⟩
  step as ⟨i, hi⟩
  step as ⟨i1, hi1⟩
  step with new_loop_spec n.val as ⟨out2, hout2⟩
  step as ⟨i2, hi2⟩
  have hi' : i.val = self.pos.val := by scalar_tac
  rw [hout2, hi', hoff]
  exact ⟨rfl, hi2, rfl⟩

/-! ## (a) Counterexample 1: `start == pos` -/

def out5 : Slice U8 := Slice.from [5#u8] (by simp; scalar_tac)
def self0 : sink.SliceSink := { output := out5, pos := 0#usize }

theorem cex1_old : Old self0 0#usize 1#usize ⦃ r => r.1.output.val = [0#u8] ⦄ := by
  apply WP.spec_mono (old_spec self0 0#usize 1#usize (by simp [self0]) (by simp) (by simp [self0, out5, Slice.length]))
  rintro r ⟨h, -, -⟩
  rw [h]
  simp [self0, out5, cp, List.slice, List.setSlice!]

theorem cex1_new : New self0 0#usize 1#usize ⦃ r => r.1.output.val = [5#u8] ⦄ := by
  apply WP.spec_mono (new_spec self0 0#usize 1#usize (by simp [self0]) (by simp [self0, out5, Slice.length]))
  rintro r ⟨h, -, -⟩
  rw [h]
  simp [self0, out5, cp]

theorem cex1 : Old self0 0#usize 1#usize ≠ New self0 0#usize 1#usize := by
  intro h
  obtain ⟨r1, e1, p1⟩ := WP.spec_imp_exists cex1_old
  obtain ⟨r2, e2, p2⟩ := WP.spec_imp_exists cex1_new
  rw [e1, e2] at h
  have h' := Result.ok_injective h
  subst h'
  rw [p1] at p2
  simp at p2

/-! ## (a) Counterexample 2: `start < pos`, `len = 0`: Old panics (out-of-bounds write
    `out[offset] = 0` on a subslice of length `offset`), New succeeds. -/

theorem old_fail_len0 (self : sink.SliceSink) (start : Usize)
    (h1 : start.val < self.pos.val) (h2 : self.pos.val ≤ self.output.length) :
    Old self start 0#usize = fail .arrayOutOfBounds := by
  unfold Old L31b2d90ModsinkOld.sink.SliceSink.extend_from_within_overlapping
  obtain ⟨off, e1, hoff⟩ := WP.spec_imp_exists (Usize.sub_spec (x := self.pos) (y := start) (by scalar_tac))
  obtain ⟨i, e2, hi⟩ := WP.spec_imp_exists (Usize.add_spec (x := self.pos) (y := 0#usize) (by scalar_tac))
  obtain ⟨⟨out, back⟩, e3, hout, houtl, -⟩ := WP.spec_imp_exists
    (core.slice.index.SliceIndexRangeUsizeSlice.index_mut.step_spec { start := start, «end» := i } self.output
      (by simp; scalar_tac) (by simp; scalar_tac))
  have e4 : out.update off 0#u8 = fail .arrayOutOfBounds := by
    have : out.val.length ≤ off.val := by simp at houtl; scalar_tac
    simp only [Slice.update, List.getElem?_eq_none this]
  have hle : start.val ≤ self.pos.val := by scalar_tac
  simp [massert, hle, e1, e2, e3, e4]

def self1 : sink.SliceSink := { output := out5, pos := 1#usize }

theorem cex2_old : Old self1 0#usize 0#usize = fail .arrayOutOfBounds :=
  old_fail_len0 self1 0#usize (by simp [self1]) (by simp [self1, out5, Slice.length])

theorem cex2_new : New self1 0#usize 0#usize ⦃ r => r.1.output.val = [5#u8] ∧ r.1.pos.val = 1 ⦄ := by
  apply WP.spec_mono (new_spec self1 0#usize 0#usize (by simp [self1]) (by simp [self1, out5, Slice.length]))
  rintro r ⟨h, hp, -⟩
  rw [h, hp]
  simp [self1, out5, cp]

theorem cex2 : (∃ e, Old self1 0#usize 0#usize = fail e) ∧ (∃ r, New self1 0#usize 0#usize = ok r) :=
  ⟨⟨_, cex2_old⟩, let ⟨r, e, _⟩ := WP.spec_imp_exists cex2_new; ⟨r, e⟩⟩

/-! ## (b) Equivalence under `start < pos ∧ 1 ≤ n` -/

theorem cp_outside (L : List U8) (off a k j : Nat) (hj : j < a ∨ a + k ≤ j) :
    (cp L off a k)[j]? = L[j]? := by
  induction k generalizing L a with
  | zero => simp [cp]
  | succ k ih =>
    simp only [cp]
    rw [ih _ _ (by omega), List.getElem?_set_ne (by omega)]

theorem slice_set (L : List U8) (st e a : Nat) (v : U8) (h1 : st ≤ a) (h2 : a < e) (h3 : e ≤ L.length) :
    (L.slice st e).set (a - st) v = (L.set a v).slice st e := by
  apply List.ext_getElem?
  intro j
  simp only [List.getElem?_set, List.slice, List.getElem?_take, List.getElem?_drop, List.length_take,
    List.length_drop]
  split_ifs <;> first | omega | simp_all

theorem cp_slice (st e off : Nat) (k : Nat) (L : List U8) (a : Nat)
    (h1 : st + off ≤ a) (h2 : a + k ≤ e) (h3 : e ≤ L.length) :
    cp (L.slice st e) off (a - st) k = (cp L off a k).slice st e := by
  induction k generalizing L a with
  | zero => simp [cp]
  | succ k ih =>
    simp only [cp]
    have hv : (L.slice st e)[a - st - off]! = L[a - off]! := by
      rw [List.getElem!_slice _ _ _ _ ⟨h3, by omega⟩]; congr 1; omega
    rw [hv, slice_set L st e a _ (by omega) (by omega) h3]
    have : a - st + 1 = (a+1) - st := by omega
    rw [this, ih _ _ (by omega) (by omega) (by simp; omega)]

theorem cp_set_first (M : List U8) (off n : Nat) (hoff : 1 ≤ off) (hn : 1 ≤ n) :
    cp (M.set off 0#u8) off off n = cp M off off n := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [cp, Nat.sub_self, List.set_set]
  congr 2
  simp [List.getElem!_eq_getElem?_getD, List.getElem?_set_ne (show off ≠ 0 by omega)]

theorem key (L : List U8) (st pos n : Nat) (h1 : st < pos) (hn : 1 ≤ n) (h2 : pos + n ≤ L.length) :
    L.setSlice! st (cp ((L.slice st (pos + n)).set (pos - st) 0#u8) (pos - st) (pos - st) n)
      = cp L (pos - st) pos n := by
  rw [cp_set_first _ _ _ (by omega) hn]
  rw [cp_slice st (pos+n) (pos - st) n L pos (by omega) (by omega) h2]
  apply List.ext_getElem?
  intro j
  have hlen := cp_length L (pos - st) pos n
  by_cases hj1 : j < st
  · rw [List.setSlice!_getElem?_prefix _ _ _ _ hj1, cp_outside _ _ _ _ _ (by omega)]
  by_cases hj2 : j < pos + n
  · rw [List.setSlice!_getElem?_middle _ _ _ _ ⟨by omega, by simp [List.slice_length]; omega, by omega⟩]
    rw [List.getElem?_slice _ _ _ _ ⟨by omega, by omega⟩]; congr 1; omega
  · rw [List.setSlice!_getElem?_suffix _ _ _ _ (by simp [List.slice_length]; omega),
      cp_outside _ _ _ _ _ (by omega)]

theorem equiv_inbounds (self : sink.SliceSink) (start n : Usize)
    (h1 : start.val < self.pos.val) (hn : 1 ≤ n.val) (h2 : self.pos.val + n.val ≤ self.output.length) :
    Old self start n = New self start n := by
  obtain ⟨r1, e1, p1, q1, b1⟩ := WP.spec_imp_exists (old_spec self start n (by omega) hn h2)
  obtain ⟨r2, e2, p2, q2, b2⟩ := WP.spec_imp_exists (new_spec self start n (by omega) h2)
  rw [e1, e2]
  congr 1
  obtain ⟨⟨o1, i1⟩, f1⟩ := r1
  obtain ⟨⟨o2, i2⟩, f2⟩ := r2
  simp only at p1 q1 b1 p2 q2 b2
  subst b1 b2
  have ho : o1 = o2 := by
    rw [Slice.eq_iff, p1, p2]
    exact key _ _ _ _ h1 hn (by simpa [Slice.length] using h2)
  have hi : i1 = i2 := by scalar_tac
  rw [ho, hi]

theorem usize_add_overflow (x y : Usize) (h : Usize.max < x.val + y.val) :
    (x + y : Result Usize) = fail .integerOverflow := by
  show UScalar.tryMk _ _ = _
  simp only [UScalar.tryMk, UScalar.tryMkOpt]
  rw [dif_neg]
  · rfl
  · rw [UScalar.check_bounds_eq_inBounds]
    simp [UScalar.inBounds]
    rw [Usize.max_def] at h
    simp only [Usize.numBits, UScalarTy.numBits] at h ⊢
    omega

theorem new_loop_fail_base (it : core.ops.range.Range Usize) (s : Slice U8) (off : Usize)
    (hoff : off.val ≤ it.start.val) (hlt : it.start.val < it.end.val) (hge : s.length ≤ it.start.val) :
    ∃ e, NewLoop it s off = fail e := by
  unfold NewLoop L31b2d90ModsinkNew.sink.SliceSink.extend_from_within_overlapping_loop
  obtain ⟨⟨o, it1⟩, en, ho, -, -⟩ :=
    WP.spec_imp_exists (core.iter.range.IteratorRange.next_Usize_some_spec it hlt)
  obtain ⟨i1, ei1, hi1⟩ := WP.spec_imp_exists (Usize.sub_spec (x := it.start) (y := off) hoff)
  subst ho
  have eu : ∀ x, s.update it.start x = fail .arrayOutOfBounds := by
    intro x
    have : s.val.length ≤ it.start.val := by simpa [Slice.length] using hge
    simp only [Slice.update, List.getElem?_eq_none this]
  by_cases hix : i1.val < s.length
  · obtain ⟨x, ex, -⟩ := WP.spec_imp_exists (Slice.index_usize_spec s i1 hix)
    exact ⟨.arrayOutOfBounds, by simp [en, ei1, ex, eu]⟩
  · have ex : s.index_usize i1 = fail .arrayOutOfBounds := by
      have : s.val.length ≤ i1.val := by simp [Slice.length] at hix; omega
      simp only [Slice.index_usize, Slice.getElem?_Usize_eq, List.getElem?_eq_none this]
    exact ⟨.arrayOutOfBounds, by simp [en, ei1, ex]⟩

theorem new_loop_fail (m : Nat) (it : core.ops.range.Range Usize) (s : Slice U8) (off : Usize)
    (hm : s.length - it.start.val ≤ m) (hoff : off.val ≤ it.start.val) (hlt : it.start.val < it.end.val)
    (hend : s.length < it.end.val) : ∃ e, NewLoop it s off = fail e := by
  induction m generalizing it s with
  | zero => exact new_loop_fail_base it s off hoff hlt (by omega)
  | succ m ih =>
    by_cases hge : s.length ≤ it.start.val
    · exact new_loop_fail_base it s off hoff hlt hge
    unfold NewLoop L31b2d90ModsinkNew.sink.SliceSink.extend_from_within_overlapping_loop
    obtain ⟨⟨o, it1⟩, en, ho, h1, h2⟩ :=
      WP.spec_imp_exists (core.iter.range.IteratorRange.next_Usize_some_spec it hlt)
    obtain ⟨i1, ei1, hi1⟩ := WP.spec_imp_exists (Usize.sub_spec (x := it.start) (y := off) hoff)
    subst ho
    obtain ⟨x, ex, -⟩ := WP.spec_imp_exists (Slice.index_usize_spec s i1 (by scalar_tac))
    obtain ⟨s1, es1, hs1⟩ := WP.spec_imp_exists (Slice.update_spec s it.start x (by scalar_tac))
    obtain ⟨e, he⟩ := ih it1 s1 (by simp [hs1]; scalar_tac) (by scalar_tac) (by scalar_tac)
      (by simp [hs1]; scalar_tac)
    exact ⟨e, by simp [en, ei1, ex, es1]; exact he⟩

theorem old_fail_oob (self : sink.SliceSink) (start n : Usize)
    (h1 : start.val ≤ self.pos.val) (h2 : self.output.length < self.pos.val + n.val) :
    ∃ e, Old self start n = fail e := by
  unfold Old L31b2d90ModsinkOld.sink.SliceSink.extend_from_within_overlapping
  have hle : start.val ≤ self.pos.val := h1
  obtain ⟨off, e1, hoff⟩ := WP.spec_imp_exists (Usize.sub_spec (x := self.pos) (y := start) h1)
  by_cases hov : self.pos.val + n.val ≤ Usize.max
  · obtain ⟨i, e2, hi⟩ := WP.spec_imp_exists (Usize.add_spec (x := self.pos) (y := n) hov)
    have e3 : core.slice.index.SliceIndexRangeUsizeSlice.index_mut { start := start, «end» := i } self.output
        = fail .panic := by
      simp only [core.slice.index.SliceIndexRangeUsizeSlice.index_mut]
      rw [if_neg (by scalar_tac)]
    exact ⟨.panic, by simp [massert, hle, e1, e2, e3]⟩
  · have e2 := usize_add_overflow self.pos n (by omega)
    exact ⟨.integerOverflow, by simp [massert, hle, e1, e2]⟩

theorem new_fail_oob (self : sink.SliceSink) (start n : Usize)
    (h1 : start.val ≤ self.pos.val) (hn : 1 ≤ n.val) (h2 : self.output.length < self.pos.val + n.val) :
    ∃ e, New self start n = fail e := by
  unfold New L31b2d90ModsinkNew.sink.SliceSink.extend_from_within_overlapping
  obtain ⟨off, e1, hoff⟩ := WP.spec_imp_exists (Usize.sub_spec (x := self.pos) (y := start) h1)
  obtain ⟨i, e2, hi⟩ := WP.spec_imp_exists (Usize.add_spec (x := start) (y := off) (by scalar_tac))
  by_cases hov : i.val + n.val ≤ Usize.max
  · obtain ⟨i1, e3, hi1⟩ := WP.spec_imp_exists (Usize.add_spec (x := i) (y := n) hov)
    obtain ⟨e, he⟩ := new_loop_fail self.output.length { start := i, «end» := i1 } self.output off
      (by simp) (by simp; scalar_tac) (by simp; scalar_tac) (by simp; scalar_tac)
    exact ⟨e, by simp [e1, e2, e3, he]⟩
  · have e3 := usize_add_overflow i n (by omega)
    exact ⟨.integerOverflow, by simp [e1, e2, e3]⟩

/-- (b) Under `start < pos ∧ 1 ≤ n`: either both versions return the very same result,
    or both fail (the error tags may differ: Old panics in `index_mut`, New reports
    `arrayOutOfBounds` inside the loop; overflow of `pos + n` gives `integerOverflow` on both). -/
theorem equiv_under_pre (self : sink.SliceSink) (start n : Usize)
    (h1 : start.val < self.pos.val) (hn : 1 ≤ n.val) :
    Old self start n = New self start n ∨
      ((∃ e, Old self start n = fail e) ∧ (∃ e, New self start n = fail e)) := by
  by_cases h2 : self.pos.val + n.val ≤ self.output.length
  · exact Or.inl (equiv_inbounds self start n h1 hn h2)
  · exact Or.inr ⟨old_fail_oob self start n (by omega) (by omega),
      new_fail_oob self start n (by omega) hn (by omega)⟩

/-- (b') Corollary: under `start < pos ∧ 1 ≤ n`, the successful results coincide exactly,
    and Old fails iff New fails. -/
theorem equiv_under_pre' (self : sink.SliceSink) (start n : Usize)
    (h1 : start.val < self.pos.val) (hn : 1 ≤ n.val) :
    (∀ r, Old self start n = ok r ↔ New self start n = ok r) ∧
    ((∃ e, Old self start n = fail e) ↔ (∃ e, New self start n = fail e)) := by
  rcases equiv_under_pre self start n h1 hn with h | ⟨⟨e1, h1⟩, ⟨e2, h2⟩⟩
  · rw [h]; exact ⟨fun _ => Iff.rfl, Iff.rfl⟩
  · rw [h1, h2]
    exact ⟨fun r => ⟨fun h => absurd h.symm ok_not_fail, fun h => absurd h.symm ok_not_fail⟩,
      ⟨fun _ => ⟨e2, rfl⟩, fun _ => ⟨e1, rfl⟩⟩⟩

/-- Counterexample 1 stated on the generated names (self = {output := [5], pos := 0}, start = 0, len = 1). -/
theorem not_equiv :
    L31b2d90ModsinkOld.sink.SliceSink.extend_from_within_overlapping
        { output := Slice.from [5#u8] (by simp; scalar_tac), pos := 0#usize } 0#usize 1#usize ≠
    L31b2d90ModsinkNew.sink.SliceSink.extend_from_within_overlapping
        { output := Slice.from [5#u8] (by simp; scalar_tac), pos := 0#usize } 0#usize 1#usize := cex1

#print axioms not_equiv
#print axioms cp_length
#print axioms cp_outside
#print axioms slice_set
#print axioms cp_slice
#print axioms cp_set_first
#print axioms usize_add_overflow
#print axioms new_loop_fail_base
#print axioms new_loop_fail
#print axioms new_loop_spec
#print axioms old_loop_spec
#print axioms old_spec
#print axioms new_spec
#print axioms cex1_old
#print axioms cex1_new
#print axioms cex1
#print axioms old_fail_len0
#print axioms cex2_old
#print axioms cex2_new
#print axioms cex2
#print axioms key
#print axioms equiv_inbounds
#print axioms old_fail_oob
#print axioms new_fail_oob
#print axioms equiv_under_pre
#print axioms equiv_under_pre'

end C31b2d90.ProofSink
