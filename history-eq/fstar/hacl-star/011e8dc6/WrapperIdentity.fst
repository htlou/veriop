module WrapperIdentity

// A call can mutate its whole input state; the proof assumes nothing about its body.
type precomp (a:Type) = nat -> nat -> nat -> nat -> nat -> a -> Tot a

let old_call #a (f:precomp a) (len:nat) (k:nat) (state:a) : Tot a =
  f len 0 k 4 16 state

let new_call #a (f:precomp a) (length:nat) (k0:nat) (state:a) : Tot a =
  let len = length in
  let ctx_len = 0 in
  let k = k0 in
  let l = 4 in
  let table_len = 16 in
  f len ctx_len k l table_len state

let wrapper_identity #a (f:precomp a) (len:nat) (k:nat) (state:a)
  : Lemma (old_call f len k state == new_call f len k state) = ()

let ed25519_call #a (f:precomp a) (k:nat) (state:a)
  : Lemma (old_call f 20 k state == new_call f 20 k state) = ()

let k256_call #a (f:precomp a) (k:nat) (state:a)
  : Lemma (old_call f 15 k state == new_call f 15 k state) = ()
