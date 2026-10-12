const PAD_BYTE: u8 = b'=';

#[derive(Debug)]
enum DecodeError {
    InvalidByte(usize, u8),
    InvalidPadding,
    InvalidLastSymbol(usize, u8),
}

mod engine {
    pub enum DecodePaddingMode { Indifferent, RequireCanonical, RequireNone }
    pub struct DecodeMetadata { pub decoded_len: usize, pub padding_offset: Option<usize> }
    impl DecodeMetadata {
        pub fn new(decoded_len: usize, padding_offset: Option<usize>) -> Self {
            Self { decoded_len, padding_offset }
        }
    }
    pub mod general_purpose { pub const INVALID_VALUE: u8 = 255; }
}

mod historical_suffix { include!("SUFFIX_SOURCE"); }

fn main() {
    std::panic::set_hook(Box::new(|_| {}));
    let mut table = [255; 256];
    table[b'A' as usize] = 0;
    for input in [b"A".as_slice(), b"AAAAA".as_slice()] {
        let mut output = [0; 6];
        let result = std::panic::catch_unwind(std::panic::AssertUnwindSafe(||
            historical_suffix::decode_suffix(input, 0, &mut output, 0, &table, true,
                engine::DecodePaddingMode::Indifferent)));
        match result {
            Ok(Ok(metadata)) => println!("{} OK {}", input.len(), metadata.decoded_len),
            Ok(Err(error)) => println!("{} ERR {:?}", input.len(), error),
            Err(_) => println!("{} PANIC", input.len()),
        }
    }
}
