import Lz4CopyRef.Lz4CopyRef
import Lz4CopyOpt.Lz4CopyOpt

open Aeneas Aeneas.Std
set_option maxHeartbeats 4000000

private theorem double_copy_cover (src dst : List U8) (k : Nat)
    (hlen : dst.length = src.length) (hk : k ≤ src.length)
    (hcover : src.length ≤ 2 * k) :
    (dst.setSlice! 0 (src.take k)).setSlice! (src.length - k)
      (src.drop (src.length - k)) = src := by
  have hprefix : src.length - k ≤ k := by omega
  have hsub : src.length - (src.length - k) = k := by omega
  have hadd : src.length - k + k = src.length := by omega
  have htake : (src.drop (src.length - k)).take k = src.drop (src.length - k) :=
    List.take_of_length_le (by simp; omega)
  have hdrop : (src.take k).drop src.length = [] :=
    List.drop_eq_nil_of_le (by simp)
  simp [List.setSlice!, hlen, Nat.min_eq_left hk, List.take_append,
    Nat.min_eq_left hprefix, Nat.sub_eq_zero_of_le hprefix,
    List.take_take, hsub, hadd, List.drop_append, htake, hdrop]

theorem double_copy_trick_spec (size : Usize) (src dst : Slice U8)
    (hlen : dst.length = src.length) (hk : size.val ≤ src.length)
    (hcover : src.length ≤ 2 * size.val) :
    Lz4CopyRef.fastcpy.double_copy_trick size src dst ⦃ result => result = src ⦄ := by
  unfold Lz4CopyRef.fastcpy.double_copy_trick
  step as ⟨first, back, hfirst, hfirstlen, hback⟩
  step as ⟨source, hsource, hsourcelen⟩
  step as ⟨copied, hcopied⟩
  step as ⟨offset, hoffset⟩
  step as ⟨last, backlast, hlast, hlastlen, hbacklast⟩
  step as ⟨offset2, hoffset2⟩
  step as ⟨sourcelast, hsourcelast, hsourcelastlen⟩
  step as ⟨copiedlast, hcopiedlast⟩
  apply (Slice.eq_iff _ _).mpr
  simp_all [Slice.setSlice!_val, List.slice]
  exact double_copy_cover src.val dst.val size.val hlen hk hcover

#print axioms double_copy_trick_spec

theorem short_copy_spec (src dst : Slice U8)
    (hlen : dst.length = src.length) (hpos : 0 < src.length)
    (hsmall : src.length < 4) :
    Lz4CopyRef.fastcpy.short_copy src dst ⦃ result => result = src ⦄ := by
  unfold Lz4CopyRef.fastcpy.short_copy
  step as ⟨byte, hbyte⟩
  step as ⟨old, back, hold, hback⟩
  split
  · apply double_copy_trick_spec
    all_goals simp_all <;> scalar_tac
  · simp only [WP.spec_ok]
    apply (Slice.eq_iff _ _).mpr
    have hs : src.val.length = 1 := by scalar_tac
    have hd : dst.val.length = 1 := by scalar_tac
    obtain ⟨s, hs⟩ := List.length_eq_one_iff.mp hs
    obtain ⟨d, hd⟩ := List.length_eq_one_iff.mp hd
    simp_all [Slice.set_val_eq]

#print axioms short_copy_spec

theorem slice_copy_spec (src dst : Slice U8) (hlen : dst.length = src.length) :
    Lz4CopyRef.fastcpy.slice_copy src dst ⦃ result => result = src ⦄ := by
  unfold Lz4CopyRef.fastcpy.slice_copy
  have hlen' : Slice.len src = Slice.len dst := by scalar_tac
  simp only [hlen', bne_self_eq_false, Bool.false_eq_true, if_false]
  step as ⟨empty, hempty⟩
  split
  · simp only [WP.spec_ok]
    apply (Slice.eq_iff _ _).mpr
    have hs : src.val = [] := by simp_all
    have hd : dst.val = [] := by simpa [hs] using hlen
    simp [hs, hd]
  · split
    · apply short_copy_spec <;> scalar_tac
    · split
      · apply double_copy_trick_spec <;> scalar_tac
      · split
        · apply double_copy_trick_spec <;> scalar_tac
        · split
          · apply double_copy_trick_spec <;> scalar_tac
          · step as ⟨result, hresult⟩
            exact hresult

#print axioms slice_copy_spec

theorem slice_copy_equiv :
    Lz4CopyRef.fastcpy.slice_copy = Lz4CopyOpt.fastcpy.slice_copy := by
  funext src dst
  by_cases hlen : dst.length = src.length
  · obtain ⟨result, href, hresult⟩ := WP.spec_imp_exists (slice_copy_spec src dst hlen)
    subst result
    have hlen' : Slice.len src = Slice.len dst := by scalar_tac
    rw [href]
    simp [Lz4CopyOpt.fastcpy.slice_copy, hlen', core.slice.Slice.copy_from_slice]
  · have hlen' : Slice.len src ≠ Slice.len dst := by
      intro h
      apply hlen
      scalar_tac
    simp only [Lz4CopyRef.fastcpy.slice_copy, Lz4CopyOpt.fastcpy.slice_copy,
      bne_iff_ne]
    split <;> try scalar_tac
    with_unfolding_all rfl

#print axioms slice_copy_equiv
