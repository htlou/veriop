import Cae7823d.ApidBoth

open Aeneas Aeneas.Std Result
set_option maxHeartbeats 4000000

namespace Pae7823dDecompress

def cexInput : Slice U8 :=
  Slice.from ([0#u8, 1#u8] ++ List.replicate 18 0#u8) (by simp; scalar_tac)

def cexOutput : block.Sink :=
  { output := Slice.from (List.replicate 16 0#u8) (by simp; scalar_tac), pos := 0#usize }

theorem old_spec :
    Lae7823dApidOld.block.decompress_safe.decompress_into cexInput cexOutput
      ⦃ r => r.1 = .Err .OffsetOutOfBounds ⦄ := by
  unfold Lae7823dApidOld.block.decompress_safe.decompress_into
    Lae7823dApidOld.block.decompress_safe.decompress_into_with_dict
  unfold Lae7823dApidOld.block.decompress_safe.decompress_into_with_dict_loop
  iterate 12 (try step*); (try simp_all [cexInput, cexOutput, Slice.length, Lae7823dApidOld.block.Sink.impl.pos])
  all_goals trace_state
  all_goals sorry
