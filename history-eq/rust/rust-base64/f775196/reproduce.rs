extern crate base64;

fn main() {
    let input: Vec<u8> = (1..=112).map(|n| (n * 23) as u8).collect();
    let encoded = base64::encode_config(&input, base64::MIME);
    println!("len={} capacity={} wrap={}", encoded.len(), encoded.capacity(), encoded.contains("\r\n"));
    println!("{:?}", encoded);
}
