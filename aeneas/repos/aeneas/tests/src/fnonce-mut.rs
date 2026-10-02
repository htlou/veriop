//@ [!lean] skip
//@ charon-args=--monomorphize-mut=except-types --remove-adt-clauses --remove-associated-types=*

pub fn apply(f: impl FnOnce(&mut u8) -> u8, value: &mut u8) -> u8 {
    f(value)
}

pub fn replace(value: &mut u8, replacement: u8) -> u8 {
    apply(
        |value| {
            let old = *value;
            *value = replacement;
            old
        },
        value,
    )
}

pub fn apply_value(f: impl FnOnce(u8) -> u8, value: u8) -> u8 {
    f(value)
}

pub fn identity(value: u8) -> u8 {
    apply_value(|value| value, value)
}

pub fn apply_pair(f: impl FnOnce(&mut u8, &mut u8) -> u8, x: &mut u8, y: &mut u8) -> u8 {
    f(x, y)
}

pub fn swap(x: &mut u8, y: &mut u8) -> u8 {
    apply_pair(
        |x, y| {
            let old = *x;
            *x = *y;
            *y = old;
            old
        },
        x,
        y,
    )
}
