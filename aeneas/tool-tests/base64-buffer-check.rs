use base64::engine::{general_purpose, Config};
use base64::Engine;
use std::io::{self, Write};

fn main() {
    let stdout = io::stdout();
    let mut records = io::BufWriter::new(stdout.lock());
    let engines = [
        general_purpose::STANDARD,
        general_purpose::STANDARD_NO_PAD,
        general_purpose::URL_SAFE,
        general_purpose::URL_SAFE_NO_PAD,
    ];
    let mut cases = 0;
    for len in (0..=512).chain([1023, 1024, 1025, 4096, 65535, 65536]) {
        for pattern in 0..4 {
            let mut state = 0x1234_5678_u32;
            let input: Vec<u8> = (0..len)
                .map(|i| {
                    state ^= state << 13;
                    state ^= state >> 17;
                    state ^= state << 5;
                    match pattern {
                        0 => 0,
                        1 => 255,
                        2 => i as u8,
                        _ => state as u8,
                    }
                })
                .collect();
            for (id, engine) in engines.iter().enumerate() {
                let size = base64::encoded_len(len, engine.config().encode_padding()).unwrap();
                for capacity in [0, size.saturating_sub(1), size, size + 1, size + 17] {
                    let mut output = vec![0xa5; capacity];
                    let result = engine.encode_slice(&input, &mut output);
                    writeln!(records, "{len} {pattern} {id} {capacity} {result:?}").unwrap();
                    records.write_all(&output).unwrap();
                    cases += 1;
                }
            }
        }
    }
    eprintln!("{cases} complete-buffer records");
}
