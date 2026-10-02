import Aeneas
open Aeneas.Std

def kernelString : Str := toStr "usize overflow when calculating buffer size"
  (by simp only [U32.max, U32.numBits]; decide)
#print axioms kernelString
