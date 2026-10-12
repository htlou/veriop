module P256Relation
open FStar.Math.Lemmas
open FStar.Math.Lib
open FStar.Mul
open FStar.Tactics
open FStar.Tactics.Canon
#set-options "--z3rlimit 200"
val pow: a:nat -> b:nat -> nat

let rec pow a b =
  if b = 0 then 1
  else a * (pow a (b - 1))


val modulo_distributivity_mult: a: int -> b: int -> c: pos -> 
  Lemma ((a * b) % c = ((a % c) * (b % c)) % c)

let modulo_distributivity_mult a b c = 
  lemma_mod_mul_distr_l a b c;
  lemma_mod_mul_distr_r (a % c) b c


val power_one: a: nat -> Lemma (pow 1 a == 1) 

let rec power_one a = 
  match a with 
  | 0 -> assert_norm (pow 1 0 == 1)
  | _ -> power_one (a - 1) 



val pow_plus: a: nat -> b: nat -> c: nat -> 
  Lemma (ensures (pow a b * pow a c = pow a (b + c))) 
  (decreases b)

let rec pow_plus a b c = 
  match b with 
  | 0 -> assert_norm (pow a 0 = 1)
  | _ -> pow_plus a (b - 1) c



val power_distributivity: a: nat -> b: nat -> c: pos -> Lemma ((pow (a % c) b) % c = (pow a b) % c)

let rec power_distributivity a b c =
   match b with 
   | 0 -> ()
   | _ -> 
     power_distributivity a (b - 1) c; 
     modulo_distributivity_mult (pow a (b -1)) a c;
     lemma_mod_twice a c;
     modulo_distributivity_mult (pow (a % c) (b -1)) (a % c) c


val power_distributivity_2: a: nat -> b: nat -> c: pos -> Lemma (pow (a * b) c == pow a c * pow b c)

let rec power_distributivity_2 a b c = 
  match c with 
  |0 -> ()
  |1 -> ()
  | _ ->
    power_distributivity_2 a b (c - 1);
    assert_by_tactic (pow a (c - 1) * pow b (c - 1) * a * b == (pow a c * pow b c)) canon



val power_mult: a: nat -> b: nat -> c: nat -> Lemma (pow (pow a b) c == pow a (b * c))

let rec power_mult a b c = 
  match c with 
  |0 -> ()
  |_ ->  power_mult a b (c - 1); 
    pow_plus a (b * (c - 1)) b




type elem (n:pos) = x:nat{x < n}

let fmul (#n:pos) (x:elem n) (y:elem n) : elem n = (x * y) % n

val exp: #n: pos -> a: elem n -> b: pos -> Tot (elem n) (decreases b)

let rec exp #n a b =
  if b = 1 then a
  else
    if b % 2 = 0 then exp (fmul a a) (b / 2)
    else fmul a (exp (fmul a a) (b / 2))

val lemma_fpow_unfold0: a: nat -> b: pos {1 < b /\ b % 2 = 0} -> prime: pos { a < prime} -> Lemma (
  exp #prime a b = exp #prime (fmul a a) (b / 2))

let lemma_fpow_unfold0 a b prime = ()


val lemma_fpow_unfold1: a: nat -> b: pos {1 < b /\ b % 2 = 1} -> prime: pos { a < prime} -> Lemma (
  exp #prime a b = fmul (exp #prime (fmul a a) (b / 2)) a)

let lemma_fpow_unfold1 a b prime = ()


val lemma_pow_unfold: a: nat -> b: pos -> Lemma (a * pow a (b - 1) == pow a b)
let lemma_pow_unfold a b = ()


val lemma_mul_associativity_3: a: nat -> b: nat -> c: nat -> Lemma (a * b * c == a * c * b)
let lemma_mul_associativity_3 a b c = ()


val lemma_pow_double: a: nat -> b: nat -> Lemma (pow (a * a) b == pow a (b + b))

let rec lemma_pow_double a b =
  if b = 0 then ()
  else begin
    calc (==) {
      pow (a * a) b;
      (==) { lemma_pow_unfold (a * a) b }
      a * a * pow (a * a) (b - 1);
      (==) { lemma_pow_double a (b - 1) }
      a * a * pow a (b + b - 2);
      (==) {power_one  a }
      pow a 1 * pow a 1 * pow a (b + b - 2);
      (==) { pow_plus a 1 1 }
      pow a 2 * pow a (b + b - 2);
      (==) { pow_plus a 2 (b + b - 2) }
      pow a (b + b);
    };
    assert (pow (a * a) b == pow a (b + b))
  end


val lemma_pow_mod_n_is_fpow: n:pos -> a:nat{a < n} -> b:pos -> Lemma
  (ensures (exp #n a b == pow a b % n)) (decreases b)
  
let rec lemma_pow_mod_n_is_fpow n a b =
  if b = 1 then ()
  else begin
    if b % 2 = 0 then begin
      calc (==) {
	exp #n a b;
	(==) { lemma_fpow_unfold0 a b n}
	exp #n (fmul #n a a) (b / 2);
	(==) { lemma_pow_mod_n_is_fpow n (fmul #n a a) (b / 2) }
	pow (fmul #n a a) (b / 2) % n;
	(==) { power_distributivity (a * a) (b / 2) n }
	pow (a * a) (b / 2) % n;
	(==) { lemma_pow_double a (b / 2) }
	pow a b % n;
      };
      assert (exp #n a b == pow a b % n) end
    else begin
      calc (==) {
	exp #n a b;
	(==) { lemma_fpow_unfold1 a b n }
	fmul a (exp (fmul #n a a) (b / 2));
	(==) { lemma_pow_mod_n_is_fpow n (fmul #n a a) (b / 2) }
	fmul a (pow (fmul #n a a) (b / 2) % n);
	(==) { power_distributivity (a * a) (b / 2) n }
	fmul a (pow (a * a) (b / 2) % n);
	(==) { lemma_pow_double a (b / 2) }
	fmul a (pow a (b / 2 * 2) % n);
	(==) { Math.Lemmas.lemma_mod_mul_distr_r a (pow a (b / 2 * 2)) n }
	a * pow a (b / 2 * 2) % n;
	(==) { power_one a }
	pow a 1 * pow a (b / 2 * 2) % n;
	(==) { power_distributivity_2 a 1 (b / 2 * 2) }
	pow a (b / 2 * 2 + 1) % n;
	(==) { Math.Lemmas.euclidean_division_definition b 2 }
	pow a b % n;
      };
      assert (exp #n a b == pow a b % n) end
  end

(* End of Marina RSA PSS code *) 


let old_result (n:pos{n > 3}) (x:nat) : elem n = pow x (n - 2) % n
let new_result (n:pos{n > 3}) (x:nat) : elem n = exp #n (x % n) (n - 2)
let old_new_equal (n:pos{n > 3}) (x:nat)
  : Lemma (old_result n x == new_result n x) =
  power_distributivity x (n - 2) n;
  lemma_pow_mod_n_is_fpow n (x % n) (n - 2)
