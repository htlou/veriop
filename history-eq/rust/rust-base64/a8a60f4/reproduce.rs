use base64::decode;

fn main() {
    for input in ["A", "AAAAA", "A\n"] {
        println!("{input:?} -> {:?}", decode(input));
    }
}
