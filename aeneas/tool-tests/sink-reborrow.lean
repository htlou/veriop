import SinkReborrow

open Aeneas Aeneas.Std Aeneas.Std.Result
open SinkReborrow

theorem sink_generic_equiv (sink : SliceSink) (index : Usize) :
    through_generic sink index = directly sink index := by
  simp only [through_generic, generic, SliceSink.Insts.Sink_reborrowSink,
    SliceSink.Insts.Sink_reborrowSink.byte_at, SliceSink.Insts.Sink_reborrowSink.push,
    directly, Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]

#print axioms sink_generic_equiv
