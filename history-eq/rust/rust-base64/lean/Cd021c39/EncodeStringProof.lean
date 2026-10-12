import Cd021c39.Estr3OldFix.Estr3OldFix
import Cd021c39.Estr3NewFix.Estr3NewFix

open Aeneas Aeneas.Std Result

namespace Cd021c39EncodeStringProof

def sinkToOld (s : Bd021c39Estr3New.chunked_encoder.StringSink) :
    Bd021c39Estr3Old.chunked_encoder.StringSink := ⟨s.string⟩

def sinkToNew (s : Bd021c39Estr3Old.chunked_encoder.StringSink) :
    Bd021c39Estr3New.chunked_encoder.StringSink := ⟨s.string⟩

theorem sink_new_rel (s : String) :
    Bd021c39Estr3Old.chunked_encoder.StringSink.new s =
      (do let (sn, back) ← Bd021c39Estr3New.chunked_encoder.StringSink.new s
          ok (sinkToOld sn, fun so => back (sinkToNew so))) := by
  simp [Bd021c39Estr3Old.chunked_encoder.StringSink.new,
    Bd021c39Estr3New.chunked_encoder.StringSink.new, sinkToOld, sinkToNew]

theorem max_input_length_rel (n : Usize) (padded : Bool) :
    Bd021c39Estr3Old.chunked_encoder.max_input_length n padded =
    Bd021c39Estr3New.chunked_encoder.max_input_length n padded := by
  rfl

def chunkToOld {E C D : Type}
    (c : Bd021c39Estr3New.chunked_encoder.ChunkedEncoder E C D) :
    Bd021c39Estr3Old.chunked_encoder.ChunkedEncoder E C D :=
  ⟨c.engine, c.max_input_chunk_len⟩

theorem chunk_new_rel {E C D : Type}
    (instO : Bd021c39Estr3Old.engine.Engine E C D)
    (instN : Bd021c39Estr3New.engine.Engine E C D)
    (h_cfg : instO.config = instN.config)
    (h_pad : instO.ConfigInst.encode_padding = instN.ConfigInst.encode_padding)
    (engine : E) :
    Bd021c39Estr3Old.chunked_encoder.ChunkedEncoder.new instO engine =
      (do let c ← Bd021c39Estr3New.chunked_encoder.ChunkedEncoder.new instN engine
          ok (chunkToOld c)) := by
  simp [Bd021c39Estr3Old.chunked_encoder.ChunkedEncoder.new,
    Bd021c39Estr3New.chunked_encoder.ChunkedEncoder.new,
    h_cfg, h_pad, chunkToOld, max_input_length_rel,
    Bd021c39Estr3Old.chunked_encoder.BUF_SIZE,
    Bd021c39Estr3New.chunked_encoder.BUF_SIZE]

def encodeReturnToOld
    (p : core.result.Result Unit Unit ×
      Bd021c39Estr3New.chunked_encoder.StringSink ×
      (Bd021c39Estr3New.chunked_encoder.StringSink →
       Bd021c39Estr3New.chunked_encoder.StringSink)) :
    core.result.Result Unit Unit ×
      Bd021c39Estr3Old.chunked_encoder.StringSink ×
      (Bd021c39Estr3Old.chunked_encoder.StringSink →
       Bd021c39Estr3Old.chunked_encoder.StringSink) :=
  match p with
  | (r, s, back) =>
    (r, sinkToOld s, fun so => sinkToOld (back (sinkToNew so)))

theorem encode_string_equiv {E T C D : Type}
    (instO : Bd021c39Estr3Old.engine.Engine E C D)
    (instN : Bd021c39Estr3New.engine.Engine E C D)
    (h_cfg : instO.config = instN.config)
    (h_pad : instO.ConfigInst.encode_padding = instN.ConfigInst.encode_padding)
    (h_encode : ∀ ce input sink,
      Bd021c39Estr3Old.chunked_encoder.ChunkedEncoder.encode instO
        Bd021c39Estr3Old.chunked_encoder.StringSink.Insts.Base64Chunked_encoderSinkTuple
        (chunkToOld ce) input (sinkToOld sink) =
      (do
        let p ← Bd021c39Estr3New.chunked_encoder.ChunkedEncoder.encode instN
          Bd021c39Estr3New.chunked_encoder.StringSink.Insts.Base64Chunked_encoderSinkTuple
          ce input sink
        ok (encodeReturnToOld p)))
    (asRef : core.convert.AsRef T (Slice U8))
    (self : E) (input : T) (out : String) :
    Bd021c39Estr3Old.engine.Engine.encode_string.default instO asRef self input out =
    Bd021c39Estr3New.engine.Engine.encode_string.default instN asRef self input out := by
  simp only [Bd021c39Estr3Old.engine.Engine.encode_string.default,
    Bd021c39Estr3New.engine.Engine.encode_string.default,
    Bd021c39Estr3New.engine.Engine.encode_string.inner]
  congr 1; funext bs
  rw [sink_new_rel]
  simp only [Std.bind_assoc]
  congr 1; funext p
  obtain ⟨sink, back⟩ := p
  rw [chunk_new_rel instO instN h_cfg h_pad]
  simp [sinkToOld, sinkToNew]
  congr 1; funext ce
  have he := h_encode ce bs sink
  simp only [sinkToOld] at he
  rw [he]
  simp only [Std.bind_assoc, bind_ok]
  congr 1

#print axioms sink_new_rel
#print axioms max_input_length_rel
#print axioms chunk_new_rel
#print axioms encode_string_equiv

end Cd021c39EncodeStringProof
