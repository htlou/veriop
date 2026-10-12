use base64::{engine::general_purpose::STANDARD, Engine as _};

fn main() {
    for input in ["A", "AAAAA"] {
        println!("{} {:?}", input.len(), STANDARD.decode(input));
    }
}
