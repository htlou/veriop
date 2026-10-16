
-- Semantic regression: evaluate the extracted model on the same inputs as src/main.rs
-- (`cargo run --bin expected`), and compare the printed lines with expected.txt.
open Aeneas Aeneas.Std Aeneas.Std.Result in
def mkSlice (xs : List Nat) : Slice U8 :=
  let l : List U8 := xs.map (fun x => UScalar.ofNatCore (x % 256) (by simp [UScalarTy.numBits]; omega))
  if h : l.length ≤ Usize.max then Slice.from l h else Slice.new U8

open Aeneas Aeneas.Std Aeneas.Std.Result in
def runCase (xs : List Nat) : String :=
  match (NestedExit.two_chunk_loops (mkSlice xs) (mkSlice (List.replicate 8 170))).match with
  | .ok res =>
    let rs := match res.1 with
      | core.result.Result.Ok n => s!"ok {n.val}"
      | core.result.Result.Err e => s!"err {e.val}"
    s!"{xs} -> {rs} {res.2.val.map (·.val)}"
  | _ => s!"{xs} -> model failure"

#eval IO.println (String.intercalate "\n" ([[], [1, 2], [1, 2, 3, 4], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
  [0, 2, 3, 4], [1, 2, 3, 0, 5, 6], [1, 2, 3, 4, 0, 6], [1, 2, 3, 4, 5, 0],
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 11]].map runCase))
