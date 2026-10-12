extern crate base64;

fn main() {
    let text = base64::encode_mode(b"", base64::Base64Mode::Standard);
    println!("{}|{}|{}", text.len(), text.capacity(), text);
}
