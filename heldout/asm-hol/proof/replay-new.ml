Sys.chdir "/srv/home/hantaolou/code/veriop/history-eq/wt/s2n-asmhol-new";;
loadt "x86/proofs/base.ml";;
loadt "x86/proofs/bignum_normalize.ml";;
check_axioms ();;
let print_named (name, th) = Printf.printf "@@THM %s\n%s\n@@END\n" name (string_of_thm th);;
List.iter print_named
 ["BIGNUM_NORMALIZE_CORRECT", BIGNUM_NORMALIZE_CORRECT;
  "BIGNUM_NORMALIZE_NOIBT_SUBROUTINE_CORRECT", BIGNUM_NORMALIZE_NOIBT_SUBROUTINE_CORRECT;
  "BIGNUM_NORMALIZE_SUBROUTINE_CORRECT", BIGNUM_NORMALIZE_SUBROUTINE_CORRECT;
  "BIGNUM_NORMALIZE_NOIBT_WINDOWS_SUBROUTINE_CORRECT", BIGNUM_NORMALIZE_NOIBT_WINDOWS_SUBROUTINE_CORRECT;
  "BIGNUM_NORMALIZE_WINDOWS_SUBROUTINE_CORRECT", BIGNUM_NORMALIZE_WINDOWS_SUBROUTINE_CORRECT];;
Printf.printf "@@LENGTHS mc=%d windows_mc=%d\n" (length(dest_list(rhs(concl bignum_normalize_mc)))) (length(dest_list(rhs(concl bignum_normalize_windows_mc))));;
Printf.printf "@@REPLAY_COMPLETE\n";;
