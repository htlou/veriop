//@ [!lean] skip
//! Monomorphization can leave impl metadata for an erased trait declaration.

pub fn zeroes() -> [u8; 4] {
    Default::default()
}
