use regex_syntax::hir::{ClassBytes, ClassBytesRange};

fn main() {
    let range = ClassBytesRange::new(b'a', b'a');
    let mut class = ClassBytes::new([range]);
    class.case_fold_simple();
    class.push(range);
    println!("{class:?}");
    println!("ranges={:?}", class.ranges());
}
