extern crate base64;

fn main() {
    for input in ["Y=Q=", "YQ==", "YQ"].iter() {
        println!("{:?} -> {:?}", input, base64::decode(input));
    }
}
