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

pub fn apply_twice(mut f: impl FnMut(&mut u8) -> u8, value: &mut u8) -> u8 {
    f(value);
    f(value)
}

pub fn replace_twice(value: &mut u8, first: u8, second: u8) -> u8 {
    let mut next = first;
    apply_twice(
        move |value| {
            let old = *value;
            *value = next;
            next = second;
            old
        },
        value,
    )
}

pub fn apply_fn(f: impl Fn(&mut u8) -> u8, value: &mut u8) -> u8 {
    f(value)
}

pub fn replace_fn(value: &mut u8, replacement: u8) -> u8 {
    apply_fn(
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
