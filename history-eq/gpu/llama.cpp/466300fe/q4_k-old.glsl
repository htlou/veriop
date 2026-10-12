float16_t dequantFuncQ4_K(const in decodeBufQ4_K bl, const in uint blockCoords[2], const in uint coordInBlock[2])
{
    decodeBufQ4_K_packed16 bl16 = decodeBufQ4_K_packed16(bl);
    const uint idx = coordInBlock[1];

    const uint b = (idx & 0x20) >> 5;            // 0,1
    const uint is = (idx & 0xE0) >> 5;         // 0..7

    const f16vec2 loadd = bl.block.d;

    uint32_t sc;
    uint32_t mbyte;

    uint32_t scidx0 = (is < 4) ? is : (is + 4);
    uint32_t scidx1 = (is < 4) ? is : (is - 4);
    uint32_t scidxmask1 = (is < 4) ? 0x30 : 0xC0;
    uint32_t scidxshift1 = (is < 4) ? 0 : 2;
    uint32_t mbidx0 = is + 4;
    uint32_t mbidx1 = (is < 4) ? is + 4 : is;
    uint32_t mbidxmask0 = (is < 4) ? 0xF : 0xF0;
    uint32_t mbidxshift0 = (is < 4) ? 0 : 4;
    uint32_t mbidxmask1 = (is < 4) ? 0x30 : 0xC0;
    uint32_t mbidxshift1 = (is < 4) ? 0 : 2;

    sc    = uint8_t((bl.block.scales[scidx0] & 0xF)                         | ((bl.block.scales[scidx1] & scidxmask1) >> scidxshift1));
    mbyte = uint8_t(((bl.block.scales[mbidx0] & mbidxmask0) >> mbidxshift0) | ((bl.block.scales[mbidx1] & mbidxmask1) >> mbidxshift1));

    const float16_t d = loadd.x * float16_t(sc);
    const float16_t m = loadd.y * float16_t(mbyte);

    uint qs = uint32_t(bl16.block.qs[((idx & 0xC0) >> 2) + ((idx & 0x1E) >> 1)]);
    qs = (qs >> (b * 4)) & 0x0F0F;
    qs = unpack8(qs)[idx & 1];

    float16_t ret = d * float16_t(qs) - m;

    return ret;
}
