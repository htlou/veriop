/// Harness: GeneralPurpose internal_encode / internal_decode through the Engine trait.
pub fn __histeq_gp_internal_encode(
    e: &engine::general_purpose::GeneralPurpose,
    input: &[u8],
    output: &mut [u8],
) -> usize {
    engine::Engine::internal_encode(e, input, output)
}

/// Harness: GeneralPurpose internal_decode (estimate computed by the engine itself).
pub fn __histeq_gp_internal_decode(
    e: &engine::general_purpose::GeneralPurpose,
    input: &[u8],
    output: &mut [u8],
) -> Result<engine::DecodeMetadata, DecodeSliceError> {
    let est = engine::general_purpose::GeneralPurposeEstimate::new(input.len());
    engine::Engine::internal_decode(e, input, output, est)
}
