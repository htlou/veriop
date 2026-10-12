extern crate base64;

use base64::{encode_config, CharacterSet, Config};

fn main() {
    let configs: Vec<Config> = [CharacterSet::Standard, CharacterSet::UrlSafe, CharacterSet::Crypt]
        .iter()
        .flat_map(|char_set| [false, true].iter().flat_map(move |pad| {
            [false, true].iter().map(move |strip| Config::new(*char_set, *pad, *strip))
        }))
        .collect();
    for n in 0..=512 {
        for pattern in 0..2 {
            let input: Vec<u8> = (0..n).map(|i| {
                if pattern == 0 { ((i * 37 + 19) % 256) as u8 } else { 0 }
            }).collect();
            for (mode, config) in configs.iter().enumerate() {
                let output = encode_config(&input, *config);
                println!("{pattern}|{n}|{mode}|{}|{}|{output}", output.len(), output.capacity());
            }
        }
    }
}
