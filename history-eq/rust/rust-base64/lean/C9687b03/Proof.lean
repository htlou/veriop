import C9687b03.EwpOld.EwpOld
import C9687b03.EwpNew.EwpNew
open Aeneas Aeneas.Std Result WP
set_option linter.auxLemma false

/-!
# rust-base64 commit 9687b03 "Switch add_padding() to use encoded len"

Unit 1 (raw `encode::add_padding`): NOT_EQUIV — `add_padding_not_equiv` (parameter meaning changed:
  old takes the raw input length and writes `(3 - n%3)%3` pads, new takes the unpadded encoded length
  and writes `(4 - n%4)%4` pads). `add_padding_rel` shows they agree whenever the pad counts agree.
Unit 2 (api `encode::encode_with_padding<E: Engine>`): EQUIV_UNDER_PRECOND —
  `encode_with_padding_equiv`. Hypotheses: the two (Old/New namespace) engine instances agree on
  `internal_encode`, `config`, `ConfigInst.encode_padding` (same Rust impl, duplicated by namespacing);
  library contract: if `internal_encode engine input output` returns `ok (k, _)` then
  `k = input.len()/3*4 + [0,2,3][input.len()%3]`. Panics/divergence of `internal_encode` are covered
  (both sides then fail/diverge identically). Both debug assertions (`massert`) are part of the model.
-/

namespace C9687b03Proof

/-- Old loop (index carried in `bytes_written`) and new loop (index taken from the iterator)
    compute the same slice; old additionally returns `end`. Holds for failures too. -/
theorem loop_rel : ∀ (n : Nat) (r : core.ops.range.Range Usize) (s : Slice U8),
    r.end.val - r.start.val = n → r.start.val ≤ r.end.val →
    B9687b03EwpOld.encode.add_padding_loop r s r.start =
      (do let s' ← B9687b03EwpNew.encode.add_padding_loop r s; ok (r.end, s')) := by
  intro n
  induction n with
  | zero =>
    intro r s hn hle
    rw [B9687b03EwpOld.encode.add_padding_loop, B9687b03EwpNew.encode.add_padding_loop]
    obtain ⟨⟨o, r'⟩, hnext, hP⟩ := spec_imp_exists (core.iter.range.IteratorRange.next_Usize_none_spec r (by omega))
    obtain ⟨rfl, hr⟩ := hP
    simp only [hnext, bind_ok]
    have : r.start = r.end := by scalar_tac
    simp [this]
  | succ n ih =>
    intro r s hn hle
    rw [B9687b03EwpOld.encode.add_padding_loop, B9687b03EwpNew.encode.add_padding_loop]
    obtain ⟨⟨o, r'⟩, hnext, hP⟩ := spec_imp_exists (core.iter.range.IteratorRange.next_Usize_some_spec r (by omega))
    obtain ⟨rfl, h1, h2⟩ := hP
    simp only [hnext, bind_ok]
    have hpad : B9687b03EwpNew.PAD_BYTE = B9687b03EwpOld.PAD_BYTE := by
      unfold B9687b03EwpNew.PAD_BYTE B9687b03EwpOld.PAD_BYTE; rfl
    have hadd : r.start + 1#usize = ok r'.start := by
      obtain ⟨z, hz, hzv⟩ := spec_imp_exists (UScalar.add_spec (x := r.start) (y := 1#usize) (by scalar_tac))
      rw [hz]; congr 1; scalar_tac
    have ih' := fun s1 => ih r' s1 (by rw [h2]; omega) (by rw [h2]; omega)
    simp [hpad, hadd, ih', h2]

/-- The new loop succeeds whenever the range end is within the slice. -/
theorem new_loop_ok : ∀ (n : Nat) (r : core.ops.range.Range Usize) (s : Slice U8),
    r.end.val - r.start.val = n → r.end.val ≤ s.length →
    ∃ s', B9687b03EwpNew.encode.add_padding_loop r s = ok s' := by
  intro n
  induction n with
  | zero =>
    intro r s hn hle
    rw [B9687b03EwpNew.encode.add_padding_loop]
    obtain ⟨⟨o, r'⟩, hnext, hP⟩ := spec_imp_exists (core.iter.range.IteratorRange.next_Usize_none_spec r (by omega))
    obtain ⟨rfl, hr⟩ := hP
    simp [hnext]
  | succ n ih =>
    intro r s hn hle
    rw [B9687b03EwpNew.encode.add_padding_loop]
    obtain ⟨⟨o, r'⟩, hnext, hP⟩ := spec_imp_exists (core.iter.range.IteratorRange.next_Usize_some_spec r (by omega))
    obtain ⟨rfl, h1, h2⟩ := hP
    obtain ⟨s1, hs1, hs1v⟩ := spec_imp_exists (Slice.update_spec s r.start B9687b03EwpNew.PAD_BYTE (by scalar_tac))
    obtain ⟨s2, hs2⟩ := ih r' s1 (by rw [h2]; omega) (by rw [h2]; simp_all)
    exact ⟨s2, by simp [hnext, hs1, hs2]⟩

/-- Old `add_padding L s` = new loop over `0..c` then return `(c, _)`, with `c = (3 - L % 3) % 3`. -/
theorem old_add_padding_eq (L : Usize) (s : Slice U8) :
    ∃ c : Usize, c.val = (3 - L.val % 3) % 3 ∧
      B9687b03EwpOld.encode.add_padding L s =
        (do let s' ← B9687b03EwpNew.encode.add_padding_loop {start := 0#usize, «end» := c} s; ok (c, s')) := by
  unfold B9687b03EwpOld.encode.add_padding
  obtain ⟨a, ha, hav⟩ := spec_imp_exists (UScalar.rem_spec L (y := 3#usize) (by simp))
  obtain ⟨b, hb, hbv⟩ := spec_imp_exists (UScalar.sub_spec (x := 3#usize) (y := a) (by scalar_tac))
  obtain ⟨c, hc, hcv⟩ := spec_imp_exists (UScalar.rem_spec b (y := 3#usize) (by simp))
  refine ⟨c, by scalar_tac, ?_⟩
  simp only [ha, hb, hc, bind_ok]
  rw [loop_rel c.val {start := 0#usize, «end» := c} s (by simp) (by simp)]

/-- New `add_padding k s` = new loop over `0..c` then return `(c, _)`, with `c = (4 - k % 4) % 4`. -/
theorem new_add_padding_eq (k : Usize) (s : Slice U8) :
    ∃ c : Usize, c.val = (4 - k.val % 4) % 4 ∧
      B9687b03EwpNew.encode.add_padding k s =
        (do let s' ← B9687b03EwpNew.encode.add_padding_loop {start := 0#usize, «end» := c} s; ok (c, s')) := by
  unfold B9687b03EwpNew.encode.add_padding
  obtain ⟨a, ha, hav⟩ := spec_imp_exists (UScalar.rem_spec k (y := 4#usize) (by simp))
  obtain ⟨b, hb, hbv⟩ := spec_imp_exists (UScalar.sub_spec (x := 4#usize) (y := a) (by scalar_tac))
  obtain ⟨c, hc, hcv⟩ := spec_imp_exists (UScalar.rem_spec b (y := 4#usize) (by simp))
  refine ⟨c, by scalar_tac, ?_⟩
  simp only [ha, hb, hc, bind_ok]

/-- Raw-level relation: old and new `add_padding` agree whenever they compute the same pad count. -/
theorem add_padding_rel (L k : Usize) (s : Slice U8)
    (h : (3 - L.val % 3) % 3 = (4 - k.val % 4) % 4) :
    B9687b03EwpOld.encode.add_padding L s = B9687b03EwpNew.encode.add_padding k s := by
  obtain ⟨c, hc, hO⟩ := old_add_padding_eq L s
  obtain ⟨c', hc', hN⟩ := new_add_padding_eq k s
  have : c = c' := by scalar_tac
  rw [hO, hN, this]

/-- Spec of the old `add_padding`: returns `(3 - input_len % 3) % 3` when the slice is long enough. -/
theorem old_add_padding_spec (L : Usize) (s : Slice U8) (h : (3 - L.val % 3) % 3 ≤ s.length) :
    B9687b03EwpOld.encode.add_padding L s ⦃ r => r.1.val = (3 - L.val % 3) % 3 ⦄ := by
  obtain ⟨c, hc, hO⟩ := old_add_padding_eq L s
  obtain ⟨s', hs'⟩ := new_loop_ok c.val {start := 0#usize, «end» := c} s (by simp) (by show c.val ≤ s.length; omega)
  rw [hO, hs']
  simp [hc]

/-- Spec of the new `add_padding`: returns `(4 - unpadded_output_len % 4) % 4`. -/
theorem new_add_padding_spec (k : Usize) (s : Slice U8) (h : (4 - k.val % 4) % 4 ≤ s.length) :
    B9687b03EwpNew.encode.add_padding k s ⦃ r => r.1.val = (4 - k.val % 4) % 4 ⦄ := by
  obtain ⟨c, hc, hN⟩ := new_add_padding_eq k s
  obtain ⟨s', hs'⟩ := new_loop_ok c.val {start := 0#usize, «end» := c} s (by simp) (by show c.val ≤ s.length; omega)
  rw [hN, hs']
  simp [hc]

/-- A concrete 3-byte output buffer. -/
def s3 : Slice U8 := Slice.from [0#u8, 0#u8, 0#u8] (by scalar_tac)

/-- Unit 1 (raw `add_padding`): NOT_EQUIV. With first argument 1 and a 3-byte buffer the old
    function writes/returns 2 pads (input_len = 1), the new one 3 (unpadded_output_len = 1). -/
theorem add_padding_not_equiv :
    B9687b03EwpOld.encode.add_padding 1#usize s3 ≠ B9687b03EwpNew.encode.add_padding 1#usize s3 := by
  have hl : s3.length = 3 := by simp [s3]
  obtain ⟨⟨p1, o1⟩, h1, hp1⟩ := spec_imp_exists (old_add_padding_spec 1#usize s3 (by simp [hl]))
  obtain ⟨⟨p2, o2⟩, h2, hp2⟩ := spec_imp_exists (new_add_padding_spec 1#usize s3 (by simp [hl]))
  rw [h1, h2]
  intro heq
  simp at heq hp1 hp2
  obtain ⟨rfl, -⟩ := heq
  omega

/-! ## Unit 2: `encode::encode_with_padding` (api, generic over `Engine`) -/

/-- Every `Result` is `ok`, `fail` or `div` (the only effect is `fail`, with empty output),
    so a bind only depends on the continuation at values the computation can return. -/
theorem bind_congr_ok {α β : Type} (m : Result α) (f g : α → Result β)
    (h : ∀ x, m = ok x → f x = g x) :
    (do let x ← m; f x) = (do let x ← m; g x) := by
  show Std.bind m f = Std.bind m g
  cases m with
  | ret r => rw [bind_ok, bind_ok]; exact h r rfl
  | vis i k =>
    cases i with
    | fail e =>
      have hk : k = PEmpty.elim := funext (fun x => x.elim)
      subst hk
      rw [← Result.fail_eq_vis, bind_fail, bind_fail]
  | div => rw [bind_div, bind_div]

/-- Unpadded base64 length of `n` input bytes: `n/3*4 + [0,2,3][n%3]`. -/
def unpaddedLen (n : Nat) : Nat := n / 3 * 4 + (if n % 3 = 0 then 0 else n % 3 + 1)

theorem pad_counts_agree (n k : Nat) (hk : k = unpaddedLen n) :
    (3 - n % 3) % 3 = (4 - k % 4) % 4 := by
  subst hk; unfold unpaddedLen
  split <;> omega

/-- Unit 2 (api): `encode_with_padding` old = new, for any two engine instances that agree on
    `internal_encode`, `config` and `ConfigInst.encode_padding`, under the library contract that
    whenever `internal_encode engine input output` returns normally with `(k, out')`,
    `k` is the unpadded encoded length of `input`. -/
theorem encode_with_padding_equiv {E C DO DN : Type}
    (instO : B9687b03EwpOld.engine.Engine E C DO) (instN : B9687b03EwpNew.engine.Engine E C DN)
    (h_enc : instO.internal_encode = instN.internal_encode)
    (h_cfg : instO.config = instN.config)
    (h_pad : instO.ConfigInst.encode_padding = instN.ConfigInst.encode_padding)
    (input output : Slice U8) (engine : E) (expected_encoded_size : Usize)
    (h_contract : ∀ k out', instO.internal_encode engine input output = ok (k, out') →
        k.val = unpaddedLen input.length) :
    B9687b03EwpOld.encode.encode_with_padding instO input output engine expected_encoded_size =
      B9687b03EwpNew.encode.encode_with_padding instN input output engine expected_encoded_size := by
  unfold B9687b03EwpOld.encode.encode_with_padding B9687b03EwpNew.encode.encode_with_padding
  rw [← h_enc, ← h_cfg, ← h_pad]
  dsimp only
  apply bind_congr_ok; intro _ _
  apply bind_congr_ok
  rintro ⟨k, out'⟩ hie
  have hrel : ∀ s, B9687b03EwpOld.encode.add_padding (Slice.len input) s =
      B9687b03EwpNew.encode.add_padding k s := fun s =>
    add_padding_rel _ _ s (pad_counts_agree _ _ (by simpa using h_contract k out' hie))
  have hstr : toStr "usize overflow when calculating b64 length"
        B9687b03EwpOld.encode.encode_with_padding._proof_1 =
      toStr "usize overflow when calculating b64 length"
        B9687b03EwpNew.encode.encode_with_padding._proof_1 := rfl
  simp only [uncurry_apply_pair, hrel, hstr]

end C9687b03Proof
#print axioms C9687b03Proof.loop_rel
#print axioms C9687b03Proof.new_loop_ok
#print axioms C9687b03Proof.add_padding_rel
#print axioms C9687b03Proof.old_add_padding_spec
#print axioms C9687b03Proof.new_add_padding_spec
#print axioms C9687b03Proof.add_padding_not_equiv
#print axioms C9687b03Proof.encode_with_padding_equiv
