import Aeneas.Tactic.Elab.TraitDefault.Init

namespace TraitHelperDefault

structure Codec (α : Type) where
  encode : α → Nat
  encodeSlice : α → Nat

def withPadding (self : Codec α) (input : α) : Nat := self.encode input + 1
def inner (self : Codec α) (input : α) : Nat := withPadding self input

@[trait_default]
def Codec.encodeSlice.default (self : Codec α) (input : α) : Nat := inner self input

impl_def codec (n : Nat) : Codec Nat := {
  encode := fun input => input + n
  encodeSlice := Codec.encodeSlice.default (codec n)
}

theorem encodeSlice_eq (n input : Nat) : (codec n).encodeSlice input = input + n + 1 := rfl

#print axioms encodeSlice_eq

def recursiveHelper (self : Codec Nat) : Nat → Nat
  | 0 => self.encode 0
  | n + 1 => recursiveHelper self n

@[trait_default]
def recursiveDefault (self : Codec Nat) (input : Nat) : Nat := recursiveHelper self input

/-- error: impl_def: could not resolve recursive fields: [encodeSlice] -/
#guard_msgs in
impl_def recursiveCodec : Codec Nat := {
  encode := id
  encodeSlice := recursiveDefault recursiveCodec
}
end TraitHelperDefault
