pub fn message(value: Option<usize>) -> usize {
    value.expect("usize overflow when calculating buffer size")
}

pub fn empty(value: Option<usize>) -> usize {
    value.expect("")
}
