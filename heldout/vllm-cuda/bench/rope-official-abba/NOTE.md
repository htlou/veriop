First ABBA attempt (superseded by ../rope-official-abba-v2).
- aa0-A1/A2, p0-0A/1B ran 17:29-17:31 on GPU 6; before/after GPU state clean, but no during-run
  process monitoring existed yet, so they are not used in the reported results.
- p1-0B/p1-1A: another user's job appeared on GPU 6 during p1-1A (after-state shows 2 foreign PIDs,
  100% util) -> pair excluded (files renamed *.excluded-contaminated-pair-manual).
- Run aborted; v2 re-runs everything with ~1 s during-run foreign-process monitoring and pair-level redo.
