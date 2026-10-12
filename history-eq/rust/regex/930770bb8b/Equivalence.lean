import Contract

open Aeneas Aeneas.Std RegexSetConfig

def matchingConfig (c : Config) : MatchKind × Bool :=
  (c.match_kind, c.utf8_empty)

def matchingConfigResult (r : Result Config) : Result (MatchKind × Bool) := do
  let c ← r
  .ok (matchingConfig c)

theorem string_config_relation (b : Builder) :
    old_string b = .ok { match_kind := MatchKind.All,
                         utf8_empty := true,
                         which_captures := WhichCaptures.Implicit } ∧
    new_string b = .ok { match_kind := MatchKind.All,
                         utf8_empty := true,
                         which_captures := WhichCaptures.None } := by
  simp [old_string, new_string, Config.Insts.CoreCloneClone.clone,
    Config.impl.match_kind, Config.impl.utf8_empty, Config.impl.which_captures]

theorem bytes_config_relation (b : Builder) :
    old_bytes b = .ok { match_kind := MatchKind.All,
                        utf8_empty := false,
                        which_captures := WhichCaptures.Implicit } ∧
    new_bytes b = .ok { match_kind := MatchKind.All,
                        utf8_empty := false,
                        which_captures := WhichCaptures.None } := by
  simp [old_bytes, new_bytes, Config.Insts.CoreCloneClone.clone,
    Config.impl.match_kind, Config.impl.utf8_empty, Config.impl.which_captures]

theorem matching_config_unchanged (b : Builder) :
    matchingConfigResult (old_string b) = matchingConfigResult (new_string b) ∧
    matchingConfigResult (old_bytes b) = matchingConfigResult (new_bytes b) := by
  simp [string_config_relation b, bytes_config_relation b,
    matchingConfigResult, matchingConfig]
