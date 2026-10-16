#!/usr/bin/env bash
# Probe: can the `decode_stream` benchmark path (read::DecoderReader + std::io::Read::read_to_end over
# an io::Cursor, exactly as in benches/benchmarks.rs) be extracted with the trusted toolchain?
# Uses the combined crate prepared by extract-api.sh plus two entry points, the same Charon options,
# and records the Charon/Aeneas/Lean outcome in logs/probe-decode-stream-*.log. Diagnostic only.
set -uo pipefail
source "$(dirname "$0")/../scripts/env.sh"
H=$HELDOUT
F=$H/final-verification
src=$H/extract/combined-DecodeApiModel
dest=$H/extract/probe-decode-stream
[ -d "$src" ] || { echo "run extract-api.sh first"; exit 1; }
rm -rf "$dest"; cp -a "$src" "$dest"; rm -rf "$dest/target"
cat >> "$dest/src/lib.rs" <<'RS'

/// Probe entry point: the `decode_stream` benchmark body on the baseline decode path.
pub fn __veriop_decode_stream_ref(
    codec: &engine::general_purpose::ref_engine::RefGeneralPurpose,
    input: &[u8],
    buf: &mut alloc::vec::Vec<u8>,
) -> std::io::Result<usize> {
    let mut cursor = std::io::Cursor::new(input);
    let mut decoder = read::DecoderReader::new(&mut cursor, codec);
    std::io::Read::read_to_end(&mut decoder, buf)
}

/// Probe entry point: the `decode_stream` benchmark body on the candidate decode path.
pub fn __veriop_decode_stream_opt(
    codec: &engine::general_purpose::GeneralPurpose,
    input: &[u8],
    buf: &mut alloc::vec::Vec<u8>,
) -> std::io::Result<usize> {
    let mut cursor = std::io::Cursor::new(input);
    let mut decoder = read::DecoderReader::new(&mut cursor, codec);
    std::io::Read::read_to_end(&mut decoder, buf)
}
RS
(cd "$dest" && CARGO_PROFILE_DEV_DEBUG_ASSERTIONS=false taskset -c 64-79 charon cargo --preset=aeneas \
  --monomorphize-mut=except-types --remove-adt-clauses '--lift-associated-types=*' \
  --opaque base64::engine::Engine --include 'base64::engine::Engine::decode_slice' \
  --opaque 'base64::engine::general_purpose::encode_helper' \
  --opaque 'base64::engine::general_purpose::decode_suffix::decode_suffix' \
  --start-from 'base64::__veriop_decode_stream_ref' --start-from 'base64::__veriop_decode_stream_opt' \
  --dest-file "$H/extract/ProbeDecodeStream.llbc" -- --lib --no-default-features --features std) \
  > "$F/logs/probe-decode-stream-charon.log" 2>&1
echo "charon-exit=$?" | tee -a "$F/logs/probe-decode-stream-charon.log"
mkdir -p "$dest/lean"
taskset -c 64-79 "$AENEAS_DEV" -backend lean -loops-no-rec -no-progress-bar -namespace ProbeDecodeStream \
  -dest "$dest/lean" "$H/extract/ProbeDecodeStream.llbc" > "$F/logs/probe-decode-stream-aeneas.log" 2>&1
echo "aeneas-exit=$?" | tee -a "$F/logs/probe-decode-stream-aeneas.log"
if [ -f "$dest/lean/ProbeDecodeStream.lean" ]; then
  (cd "$H/proof" && taskset -c 64-79 lake env lean "$dest/lean/ProbeDecodeStream.lean") > "$F/logs/probe-decode-stream-lean.log" 2>&1
  echo "lean-exit=$?" | tee -a "$F/logs/probe-decode-stream-lean.log"
fi
