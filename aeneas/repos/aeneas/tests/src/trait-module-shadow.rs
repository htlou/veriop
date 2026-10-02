pub mod encode {
    pub enum Error { TooSmall }
}

pub mod decode {
    pub enum Error { Invalid }
}

pub trait Codec {
    fn encode(&self) -> u8;
    fn encode_slice(&self) -> Result<u8, encode::Error>;
    fn decode(&self) -> u8;
    fn decode_slice(&self) -> Result<u8, decode::Error>;
}

pub fn call<T: Codec>(codec: &T) -> Result<u8, encode::Error> {
    codec.encode_slice()
}
