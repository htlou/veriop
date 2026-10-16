//! Verification harness, used only for extraction (never benchmarked or shipped).
//!
//! `decode_ref` (the sibling module) is a byte-identical copy of the baseline
//! `src/engine/general_purpose/decode.rs`. `RefGeneralPurpose` has the fields of the baseline
//! `GeneralPurpose`, and the body of its `Engine` impl is byte-identical to the baseline impl
//! (checked by `scripts/extract.sh`); the `use` below makes `decode::decode_helper` resolve to
//! the baseline copy. Calling `Engine::decode_slice` on it runs the baseline decode path, while
//! sharing every unchanged item and type with the candidate crate.
use super::decode_ref as decode;
use super::decode_ref::GeneralPurposeEstimate;
use super::{encode_helper, GeneralPurposeConfig};
use crate::alphabet::Symbol;
use crate::{engine::DecodeMetadata, DecodeSliceError};

pub struct RefGeneralPurpose {
    pub encode_table: [u8; 64],
    pub decode_table: [u8; 256],
    pub padding: Symbol,
    pub config: GeneralPurposeConfig,
}

impl super::super::Engine for RefGeneralPurpose {
    type Config = GeneralPurposeConfig;
    type DecodeEstimate = GeneralPurposeEstimate;

    fn internal_encode(&self, input: &[u8], output: &mut [u8]) -> usize {
        encode_helper(&self.encode_table, input, output, |_, _| (0, 0))
    }

    fn internal_decoded_len_estimate(&self, input_len: usize) -> Self::DecodeEstimate {
        GeneralPurposeEstimate::new(input_len)
    }

    fn internal_decode(
        &self,
        input: &[u8],
        output: &mut [u8],
        estimate: Self::DecodeEstimate,
    ) -> Result<DecodeMetadata, DecodeSliceError> {
        decode::decode_helper(
            input,
            &estimate,
            output,
            &self.decode_table,
            self.config.decode_allow_trailing_bits,
            self.padding,
            self.config.decode_padding_mode,
            |_, _, _| (0, 0),
        )
    }

    fn config(&self) -> &Self::Config {
        &self.config
    }

    fn padding(&self) -> Symbol {
        self.padding
    }
}
