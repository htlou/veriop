#![allow(dead_code)]

extern crate alloc;

mod unicode {
    pub struct CaseFoldError;
}

#[path = "interval.old.rs"]
mod old;
#[path = "interval.new.rs"]
mod new;

#[derive(Clone, Copy, Debug, Default, Eq, Ord, PartialEq, PartialOrd)]
struct Range(u8, u8);

macro_rules! interval_impl {
    ($module:ident) => {
        impl $module::Interval for Range {
            type Bound = u8;

            fn lower(&self) -> u8 { self.0 }
            fn upper(&self) -> u8 { self.1 }
            fn set_lower(&mut self, x: u8) { self.0 = x; }
            fn set_upper(&mut self, x: u8) { self.1 = x; }
            fn case_fold_simple(&self, _: &mut Vec<Self>) -> Result<(), unicode::CaseFoldError> {
                Ok(())
            }
        }
    };
}

interval_impl!(old);
interval_impl!(new);

fn main() {
    let mut before = old::IntervalSet::new([Range(1, 2), Range(5, 6)]);
    let mut after = new::IntervalSet::new([Range(1, 2), Range(5, 6)]);
    before.push(Range(3, 4));
    after.push(Range(3, 4));
    println!("old: {:?}", before.intervals());
    println!("new: {:?}", after.intervals());
    assert_eq!(before.intervals(), &[Range(1, 6)]);
    assert_eq!(after.intervals(), &[Range(1, 2), Range(1, 6)]);
    assert_ne!(before.intervals(), after.intervals());

    before.negate();
    after.negate();
    println!("old negated: {:?}", before.intervals());
    println!("new negated: {:?}", after.intervals());
    assert_eq!(before.intervals(), &[Range(0, 0), Range(7, 255)]);
    assert_eq!(after.intervals(), &[Range(0, 0), Range(0, 3), Range(7, 255)]);
    assert!(!before.intervals().iter().any(|r| r.0 <= 1 && 1 <= r.1));
    assert!(after.intervals().iter().any(|r| r.0 <= 1 && 1 <= r.1));
}
