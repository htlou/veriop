extern crate regex_syntax_new as new;
extern crate regex_syntax_old as old;

#[derive(Debug, Eq, PartialEq)]
enum Class {
    Unicode(Vec<(u32, u32)>),
    Bytes(Vec<(u8, u8)>),
}

macro_rules! class {
    ($side:ident, $hir:expr) => {{
        match $hir.kind() {
            $side::hir::HirKind::Class($side::hir::Class::Unicode(c)) => Class::Unicode(
                c.iter().map(|r| (r.start() as u32, r.end() as u32)).collect(),
            ),
            $side::hir::HirKind::Class($side::hir::Class::Bytes(c)) => {
                Class::Bytes(c.iter().map(|r| (r.start(), r.end())).collect())
            }
            other => panic!("unexpected HIR kind: {other:?}"),
        }
    }};
}

fn check(a: old::hir::Dot, b: new::hir::Dot) {
    let old_hir = old::hir::Hir::dot(a);
    let new_hir = new::hir::Hir::dot(b);
    assert_eq!(class!(old, old_hir), class!(new, new_hir));
}

fn main() {
    use new::hir::Dot as N;
    use old::hir::Dot as O;

    for (a, b) in [
        (O::AnyChar, N::AnyChar),
        (O::AnyByte, N::AnyByte),
        (O::AnyCharExceptLF, N::AnyCharExceptLF),
        (O::AnyCharExceptCRLF, N::AnyCharExceptCRLF),
        (O::AnyByteExceptLF, N::AnyByteExceptLF),
        (O::AnyByteExceptCRLF, N::AnyByteExceptCRLF),
    ] {
        check(a, b);
    }
    #[cfg(negative_control)]
    check(O::AnyCharExcept('\0'), N::AnyCharExcept('\u{1}'));
    let mut chars = 0;
    for code in 0..=0x10FFFF {
        if let Some(ch) = char::from_u32(code) {
            check(O::AnyCharExcept(ch), N::AnyCharExcept(ch));
            chars += 1;
        }
    }
    assert_eq!(chars, 1_112_064);
    for byte in u8::MIN..=u8::MAX {
        check(O::AnyByteExcept(byte), N::AnyByteExcept(byte));
    }
    println!("PASS: {chars} Unicode exclusions, 256 byte exclusions, 6 fixed Dot variants");
}
