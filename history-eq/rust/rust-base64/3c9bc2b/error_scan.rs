// One-chunk abstraction of the historical eight-byte invalid-morsel checks.
// The lookup-table outputs are arbitrary; INVALID_VALUE is 255 in the source.
const INVALID: u8 = 255;

pub struct Octets {
    pub x0: u8, pub x1: u8, pub x2: u8, pub x3: u8,
    pub x4: u8, pub x5: u8, pub x6: u8, pub x7: u8,
}

pub fn old_scan(m: &Octets, b: &Octets) -> Option<(usize, u8)> {
    let (m0, m1, m2, m3, m4, m5, m6, m7) = (m.x0, m.x1, m.x2, m.x3, m.x4, m.x5, m.x6, m.x7);
    let (b0, b1, b2, b3, b4, b5, b6, b7) = (b.x0, b.x1, b.x2, b.x3, b.x4, b.x5, b.x6, b.x7);
    if m0 == INVALID { return Some((0, b0)); }
    if m1 == INVALID { return Some((1, b1)); }
    if m2 == INVALID { return Some((2, b2)); }
    if m3 == INVALID { return Some((3, b3)); }
    if m4 == INVALID { return Some((4, b4)); }
    if m5 == INVALID { return Some((5, b5)); }
    if m6 == INVALID { return Some((6, b6)); }
    if m7 == INVALID { return Some((7, b7)); }
    None
}

pub fn new_scan(m: &Octets, b: &Octets) -> Option<(usize, u8)> {
    let (m0, m1, m2, m3, m4, m5, m6, m7) = (m.x0, m.x1, m.x2, m.x3, m.x4, m.x5, m.x6, m.x7);
    let (b0, b1, b2, b3, b4, b5, b6, b7) = (b.x0, b.x1, b.x2, b.x3, b.x4, b.x5, b.x6, b.x7);
    let (bad_index, selected_byte, morsel) =
        if m0 == INVALID { (0, b0, m0) }
        else if m1 == INVALID { (1, b1, m1) }
        else if m2 == INVALID { (2, b2, m2) }
        else if m3 == INVALID { (3, b3, m3) }
        else if m4 == INVALID { (4, b4, m4) }
        else if m5 == INVALID { (5, b5, m5) }
        else if m6 == INVALID { (6, b6, m6) }
        else if m7 == INVALID { (7, b7, m7) }
        else { (0, 0, m7) };
    if morsel == INVALID { Some((bad_index, selected_byte)) } else { None }
}
