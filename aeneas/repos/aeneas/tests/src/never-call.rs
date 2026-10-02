//@ [!lean] skip
//! Calls returning `!` have no successor in Charon's structured body.

pub fn panic_now() -> ! {
    panic!("stop")
}

pub fn branch(b: bool) -> u8 {
    if b { panic_now() } else { 7 }
}

#[allow(unconditional_recursion)]
pub fn spin() -> ! {
    spin()
}

pub fn call_spin() -> u8 {
    spin()
}
