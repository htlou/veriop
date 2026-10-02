import Lz4Ref.Lz4
import Lz4Negative.Lz4Negative

-- Deliberately false: the mutant returns zero for every input.
example : Lz4Ref.block.compress.token_from_literal =
    Lz4Negative.block.compress.token_from_literal := by
  with_unfolding_all rfl
