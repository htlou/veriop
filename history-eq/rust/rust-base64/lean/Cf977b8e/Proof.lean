import Cf977b8e.EszOld.EszOld
import Cf977b8e.EszNew.EszNew
open Aeneas Aeneas.Std Result
set_option linter.unusedSimpArgs false

/-! f977b8e "Make encoded_size() calculation precisely correct".
Raw unit: private `encoded_size(bytes_len)`.
old: `4 * (len - len % 3) / 3 + if len % 3 == 0 { 4 } else { 0 }`
new: `(len / 3) * 4 + if len % 3 == 0 { 0 } else { 4 }`
Counterexample: len = 0 (old 4, new 0); in fact they differ for every len. -/

namespace Cf977b8eProof

theorem old_zero : Bf977b8eEszOld.encoded_size 0#usize ⦃ r => r.val = 4 ⦄ := by
  unfold Bf977b8eEszOld.encoded_size
  step*
  have hr : rem = 0#usize := by apply UScalar.eq_of_val_eq; scalar_tac
  simp only [if_pos hr, bind_tc_eq, bind_ok]
  step*

theorem new_zero : Bf977b8eEszNew.encoded_size 0#usize ⦃ r => r.val = 0 ⦄ := by
  unfold Bf977b8eEszNew.encoded_size
  step*
  have hr : rem = 0#usize := by apply UScalar.eq_of_val_eq; scalar_tac
  simp only [if_pos hr, bind_tc_eq, bind_ok]
  step*

theorem encoded_size_not_equiv :
    Bf977b8eEszOld.encoded_size 0#usize ≠ Bf977b8eEszNew.encoded_size 0#usize := by
  obtain ⟨a, ha, hav⟩ := WP.spec_imp_exists old_zero
  obtain ⟨b, hb, hbv⟩ := WP.spec_imp_exists new_zero
  rw [ha, hb]
  intro h
  have := Result.ok_injective h
  subst this
  omega

end Cf977b8eProof

#print axioms Cf977b8eProof.old_zero
#print axioms Cf977b8eProof.new_zero
#print axioms Cf977b8eProof.encoded_size_not_equiv
