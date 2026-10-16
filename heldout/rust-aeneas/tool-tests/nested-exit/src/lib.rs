//! Regression fixture for the Aeneas `lower_nested_loop_exits` pre-pass: the loop shape of
//! base64's `decode_complete_quads` (two `for` loops over `chunks_exact(..).enumerate()`, each
//! with a `?`), which Charon structures with the second loop nested in the first loop's exit
//! branch and a `break 1` to a shared error epilogue.

fn check2(chunk: &[u8], base: usize, out: &mut [u8]) -> Result<(), usize> {
    if chunk[0] == 0 {
        return Err(base);
    }
    if chunk[1] == 0 {
        return Err(base + 1);
    }
    out[0] = chunk[0] ^ chunk[1];
    Ok(())
}

pub fn two_chunk_loops(input: &[u8], output: &mut [u8]) -> Result<usize, usize> {
    let main_len = input.len() - input.len() % 4;
    for (i, chunk) in input[..main_len].chunks_exact(4).enumerate() {
        let out = &mut output[i * 2..i * 2 + 2];
        check2(&chunk[0..2], i * 4, &mut out[0..1])?;
        check2(&chunk[2..4], i * 4 + 2, &mut out[1..2])?;
    }
    let after = main_len / 2;
    for (i, chunk) in input[main_len..].chunks_exact(2).enumerate() {
        let out = &mut output[after + i..after + i + 1];
        check2(chunk, main_len + i * 2, out)?;
    }
    Ok(after + (input.len() - main_len) / 2)
}
