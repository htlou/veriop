// Source-audited projection of the changed state-key initialization and
// finalization. The instruction loop between them is unchanged upstream.

pub fn old_start() -> Vec<u8> {
    vec![0]
}

pub fn new_start(mut scratch: Vec<u8>) -> Vec<u8> {
    scratch.clear();
    scratch.push(0);
    scratch
}

pub fn old_finish(mut insts: Vec<u8>, flags: u8, is_match: bool) -> Option<Box<[u8]>> {
    if insts.len() == 1 && !is_match {
        None
    } else {
        insts[0] = flags;
        Some(insts.into_boxed_slice())
    }
}

pub fn new_finish(mut insts: Vec<u8>, flags: u8, is_match: bool) -> (Option<Box<[u8]>>, Vec<u8>) {
    let opt_state = if insts.len() == 1 && !is_match {
        None
    } else {
        insts[0] = flags;
        Some(insts.clone().into_boxed_slice())
    };
    (opt_state, insts)
}
