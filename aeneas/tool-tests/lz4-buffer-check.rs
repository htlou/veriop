//! Compile against each library, then compare the complete binary output records.
use std::io::{self, Write};

fn input(len: usize, pattern: usize) -> Vec<u8> {
    let mut state = 0x1234_5678_u32;
    (0..len)
        .map(|i| {
            state ^= state << 13;
            state ^= state >> 17;
            state ^= state << 5;
            match pattern {
                0 => 0,
                1 => (i % 3) as u8,
                2 => (i % 251) as u8,
                3 => if i % 31 < 27 { b'a' } else { state as u8 },
                _ => state as u8,
            }
        })
        .collect()
}

fn check(data: &[u8], dict: &[u8], output: &mut impl Write) {
    let maximum = lz4_flex::block::get_maximum_output_size(data.len());
    for capacity in [0, maximum - 1, maximum, maximum + 17] {
        let mut encoded = vec![0xa5; capacity];
        let result = lz4_flex::block::compress_into_with_dict(data, &mut encoded, dict);
        if let Ok(written) = result {
            let mut decoded = vec![0x5a; data.len() + 17];
            let n = lz4_flex::block::decompress_into_with_dict(
                &encoded[..written], &mut decoded, dict,
            ).unwrap();
            assert_eq!(n, data.len());
            assert_eq!(&decoded[..n], data);
        }
        writeln!(output, "{} {} {capacity} {result:?}", data.len(), dict.len()).unwrap();
        output.write_all(&encoded).unwrap();
    }
}

fn main() {
    let stdout = io::stdout();
    let mut output = io::BufWriter::new(stdout.lock());
    for len in (0..=512).chain([1024, 4096, 65534, 65535, 65536, 100000]) {
        for pattern in 0..5 {
            let data = input(len, pattern);
            for dict_len in [0, 3, 16, 257] {
                check(&data, &input(dict_len, pattern), &mut output);
            }
        }
    }
    for path in std::env::args().skip(1) {
        check(&std::fs::read(path).unwrap(), &[], &mut output);
    }
}
