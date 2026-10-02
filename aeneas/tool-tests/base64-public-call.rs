use base64::{engine::general_purpose::GeneralPurpose, EncodeSliceError, Engine};

pub fn encode_slice(
    engine: &GeneralPurpose,
    input: &[u8],
    output: &mut [u8],
) -> Result<usize, EncodeSliceError> {
    engine.encode_slice(input, output)
}
