extern crate base64;

fn main() {
    let mut output = String::from("prefix=");
    base64::encode_config_buf(b"", base64::URL_SAFE_NO_PAD, &mut output);
    println!("{:?}", output);
}
