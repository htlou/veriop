//@ [!lean] skip
//! Boolean negation must produce a Bool in value position as well as conditions.

pub fn negate(b: bool) -> bool {
    !b
}

pub fn negate_comparison(x: u8) -> bool {
    !(x < 15)
}

pub fn token_fits(x: u8) -> bool {
    !((x & 15) == 15 || (x & 240) == 240)
}

pub fn branch(b: bool) -> u8 {
    if !b {
        1
    } else {
        2
    }
}
