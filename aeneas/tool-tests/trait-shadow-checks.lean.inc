
namespace TraitShadow
theorem call_spec {T : Type} (inst : Codec T) (value : T) :
    call inst value = inst.encode_slice value := by rfl
#print axioms call_spec
end TraitShadow
