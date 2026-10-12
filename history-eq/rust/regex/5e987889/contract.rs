// Source-audited output slice of the two changed regex wrappers. The missing
// historical searcher implementation must establish `direct == shortest.is_some()`.
pub fn old_is_match(shortest: Option<usize>, _direct: bool) -> bool {
    shortest.is_some()
}

pub fn new_is_match(_shortest: Option<usize>, direct: bool) -> bool {
    direct
}
