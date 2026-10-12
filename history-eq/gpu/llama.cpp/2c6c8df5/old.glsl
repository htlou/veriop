float16_t dequantFuncIQ2_XXS(const in decodeBufIQ2_XXS bl, const in uint blockCoords[2], const in uint coordInBlock[2])
{
    decodeBufIQ2_XXS_packed16 bl16 = decodeBufIQ2_XXS_packed16(bl);
    const float16_t d = bl.block.d;
    const uint idx = coordInBlock[1];

    const uint ib32 = (idx & 0xE0) >> 5; // 0..7
    const uint ib8 = (idx & 0x18) >> 3;  // 0..3
    const uint iqs = 8 * ib32 + ib8;

    const uint8_t qs = bl.block.qs[iqs];
    const uint signscale = pack32(u16vec2(bl16.block.qs[4*ib32+2], bl16.block.qs[4*ib32+3]));

    const float16_t dscale = bl.block.d * 0.25hf * (0.5hf + float16_t(signscale >> 28));
    uint sign = bitfieldExtract(signscale, 7 * int(ib8), 7);
    sign |= bitCount(sign) << 7;

    const uint8_t g = unpack8(iq2xxs_grid[qs][(idx & 4) >> 2])[idx & 3];

    float16_t ret = dscale * float16_t(g) * ((sign & (1 << (idx & 7))) != 0 ? -1.0hf : 1.0hf);

    return ret;
}
