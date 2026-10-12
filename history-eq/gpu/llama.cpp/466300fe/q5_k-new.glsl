float16_t dequantFuncQ5_K(const in decodeBufQ5_K bl, const in uint blockCoords[2], const in uint coordInBlock[2])
{
    decodeBufQ5_K_packed16 bl16 = decodeBufQ5_K_packed16(bl);
    decodeBufQ5_K_packed128 bl128 = decodeBufQ5_K_packed128(bl);
    const uint idx = coordInBlock[1];

    const uint b = (idx & 0x20) >> 5;          // 0,1
    const uint is = (idx & 0xE0) >> 5;         // 0..7

    uvec4 v = bl128.block.q5k[0];

    const f16vec2 loadd = unpackFloat2x16(v.x);

    uint32_t sc;
    uint32_t mbyte;

    uint32_t scale0 = v.y;
    uint32_t scale4 = v.z;
    uint32_t scale8 = v.w;

    uint32_t sc_lo = scale0;
    uint32_t mb_lo = scale4;
    uint32_t sc_hi = (scale8 & 0x0F0F0F0F) | ((scale0 & 0xC0C0C0C0) >> 2);
    uint32_t mb_hi = ((scale8 & 0xF0F0F0F0) >> 4) | ((scale4 & 0xC0C0C0C0) >> 2);

    sc = is < 4 ? sc_lo : sc_hi;
    mbyte = is < 4 ? mb_lo : mb_hi;
    sc = sc >> (8 * (is & 3));
    mbyte = mbyte >> (8 * (is & 3));
    sc &= 0x3F;
    mbyte &= 0x3F;

    const float16_t d = loadd.x * float16_t(sc);
    const float16_t m = loadd.y * float16_t(mbyte);

    uint qh = uint32_t(bl16.block.qh[(idx & 0x1E) >> 1]);
    qh = ((qh >> is) & 0x101) << 4;

    uint qs = uint32_t(bl16.block.qs[((idx & 0xC0) >> 2) + ((idx & 0x1E) >> 1)]);
    qs = (qs >> (b * 4)) & 0x0F0F;
    qs = unpack8(qs | qh)[idx & 1];

    float16_t ret = d * (float16_t(qs)) - m;

    return ret;
}
