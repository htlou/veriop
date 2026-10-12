#include <stdint.h>
typedef uint32_t U32;
typedef uint16_t U16;
typedef uint8_t BYTE;
typedef struct { U16 newState; BYTE symbol; BYTE nbBits; } FSE_decode_t;
typedef union { FSE_decode_t realData; U32 alignedBy4; } FSE_decode_t4;
#define LL_DEFAULTNORMLOG 6
#define ML_DEFAULTNORMLOG 6
#define OF_DEFAULTNORMLOG 5

static const FSE_decode_t4 LL_defaultDTable[(1<<LL_DEFAULTNORMLOG)+1] = {
    { { LL_DEFAULTNORMLOG, 1, 1 } }, /* header : tableLog, fastMode, fastMode */
    { {  0,  0,  4 } },              /* 0 : base, symbol, bits */
    { { 16,  0,  4 } },
    { { 32,  1,  5 } },
    { {  0,  3,  5 } },
    { {  0,  4,  5 } },
    { {  0,  6,  5 } },
    { {  0,  7,  5 } },
    { {  0,  9,  5 } },
    { {  0, 10,  5 } },
    { {  0, 12,  5 } },
    { {  0, 14,  6 } },
    { {  0, 16,  5 } },
    { {  0, 18,  5 } },
    { {  0, 19,  5 } },
    { {  0, 21,  5 } },
    { {  0, 22,  5 } },
    { {  0, 24,  5 } },
    { { 32, 25,  5 } },
    { {  0, 26,  5 } },
    { {  0, 27,  6 } },
    { {  0, 29,  6 } },
    { {  0, 31,  6 } },
    { { 32,  0,  4 } },
    { {  0,  1,  4 } },
    { {  0,  2,  5 } },
    { { 32,  4,  5 } },
    { {  0,  5,  5 } },
    { { 32,  7,  5 } },
    { {  0,  8,  5 } },
    { { 32, 10,  5 } },
    { {  0, 11,  5 } },
    { {  0, 13,  6 } },
    { { 32, 16,  5 } },
    { {  0, 17,  5 } },
    { { 32, 19,  5 } },
    { {  0, 20,  5 } },
    { { 32, 22,  5 } },
    { {  0, 23,  5 } },
    { {  0, 25,  4 } },
    { { 16, 25,  4 } },
    { { 32, 26,  5 } },
    { {  0, 28,  6 } },
    { {  0, 30,  6 } },
    { { 48,  0,  4 } },
    { { 16,  1,  4 } },
    { { 32,  2,  5 } },
    { { 32,  3,  5 } },
    { { 32,  5,  5 } },
    { { 32,  6,  5 } },
    { { 32,  8,  5 } },
    { { 32,  9,  5 } },
    { { 32, 11,  5 } },
    { { 32, 12,  5 } },
    { {  0, 15,  6 } },
    { { 32, 17,  5 } },
    { { 32, 18,  5 } },
    { { 32, 20,  5 } },
    { { 32, 21,  5 } },
    { { 32, 23,  5 } },
    { { 32, 24,  5 } },
    { {  0, 35,  6 } },
    { {  0, 34,  6 } },
    { {  0, 33,  6 } },
    { {  0, 32,  6 } },
};
U32 cell_LL_0(void) {
    FSE_decode_t cell = LL_defaultDTable[1].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_1(void) {
    FSE_decode_t cell = LL_defaultDTable[2].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_2(void) {
    FSE_decode_t cell = LL_defaultDTable[3].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_3(void) {
    FSE_decode_t cell = LL_defaultDTable[4].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_4(void) {
    FSE_decode_t cell = LL_defaultDTable[5].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_5(void) {
    FSE_decode_t cell = LL_defaultDTable[6].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_6(void) {
    FSE_decode_t cell = LL_defaultDTable[7].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_7(void) {
    FSE_decode_t cell = LL_defaultDTable[8].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_8(void) {
    FSE_decode_t cell = LL_defaultDTable[9].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_9(void) {
    FSE_decode_t cell = LL_defaultDTable[10].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_10(void) {
    FSE_decode_t cell = LL_defaultDTable[11].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_11(void) {
    FSE_decode_t cell = LL_defaultDTable[12].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_12(void) {
    FSE_decode_t cell = LL_defaultDTable[13].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_13(void) {
    FSE_decode_t cell = LL_defaultDTable[14].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_14(void) {
    FSE_decode_t cell = LL_defaultDTable[15].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_15(void) {
    FSE_decode_t cell = LL_defaultDTable[16].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_16(void) {
    FSE_decode_t cell = LL_defaultDTable[17].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_17(void) {
    FSE_decode_t cell = LL_defaultDTable[18].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_18(void) {
    FSE_decode_t cell = LL_defaultDTable[19].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_19(void) {
    FSE_decode_t cell = LL_defaultDTable[20].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_20(void) {
    FSE_decode_t cell = LL_defaultDTable[21].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_21(void) {
    FSE_decode_t cell = LL_defaultDTable[22].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_22(void) {
    FSE_decode_t cell = LL_defaultDTable[23].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_23(void) {
    FSE_decode_t cell = LL_defaultDTable[24].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_24(void) {
    FSE_decode_t cell = LL_defaultDTable[25].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_25(void) {
    FSE_decode_t cell = LL_defaultDTable[26].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_26(void) {
    FSE_decode_t cell = LL_defaultDTable[27].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_27(void) {
    FSE_decode_t cell = LL_defaultDTable[28].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_28(void) {
    FSE_decode_t cell = LL_defaultDTable[29].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_29(void) {
    FSE_decode_t cell = LL_defaultDTable[30].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_30(void) {
    FSE_decode_t cell = LL_defaultDTable[31].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_31(void) {
    FSE_decode_t cell = LL_defaultDTable[32].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_32(void) {
    FSE_decode_t cell = LL_defaultDTable[33].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_33(void) {
    FSE_decode_t cell = LL_defaultDTable[34].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_34(void) {
    FSE_decode_t cell = LL_defaultDTable[35].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_35(void) {
    FSE_decode_t cell = LL_defaultDTable[36].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_36(void) {
    FSE_decode_t cell = LL_defaultDTable[37].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_37(void) {
    FSE_decode_t cell = LL_defaultDTable[38].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_38(void) {
    FSE_decode_t cell = LL_defaultDTable[39].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_39(void) {
    FSE_decode_t cell = LL_defaultDTable[40].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_40(void) {
    FSE_decode_t cell = LL_defaultDTable[41].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_41(void) {
    FSE_decode_t cell = LL_defaultDTable[42].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_42(void) {
    FSE_decode_t cell = LL_defaultDTable[43].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_43(void) {
    FSE_decode_t cell = LL_defaultDTable[44].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_44(void) {
    FSE_decode_t cell = LL_defaultDTable[45].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_45(void) {
    FSE_decode_t cell = LL_defaultDTable[46].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_46(void) {
    FSE_decode_t cell = LL_defaultDTable[47].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_47(void) {
    FSE_decode_t cell = LL_defaultDTable[48].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_48(void) {
    FSE_decode_t cell = LL_defaultDTable[49].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_49(void) {
    FSE_decode_t cell = LL_defaultDTable[50].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_50(void) {
    FSE_decode_t cell = LL_defaultDTable[51].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_51(void) {
    FSE_decode_t cell = LL_defaultDTable[52].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_52(void) {
    FSE_decode_t cell = LL_defaultDTable[53].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_53(void) {
    FSE_decode_t cell = LL_defaultDTable[54].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_54(void) {
    FSE_decode_t cell = LL_defaultDTable[55].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_55(void) {
    FSE_decode_t cell = LL_defaultDTable[56].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_56(void) {
    FSE_decode_t cell = LL_defaultDTable[57].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_57(void) {
    FSE_decode_t cell = LL_defaultDTable[58].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_58(void) {
    FSE_decode_t cell = LL_defaultDTable[59].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_59(void) {
    FSE_decode_t cell = LL_defaultDTable[60].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_60(void) {
    FSE_decode_t cell = LL_defaultDTable[61].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_61(void) {
    FSE_decode_t cell = LL_defaultDTable[62].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_62(void) {
    FSE_decode_t cell = LL_defaultDTable[63].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_LL_63(void) {
    FSE_decode_t cell = LL_defaultDTable[64].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
static const FSE_decode_t4 ML_defaultDTable[(1<<ML_DEFAULTNORMLOG)+1] = {
    { { ML_DEFAULTNORMLOG, 1, 1 } }, /* header : tableLog, fastMode, fastMode */
    { {  0,  0,  6 } },              /* 0 : base, symbol, bits */
    { {  0,  1,  4 } },
    { { 32,  2,  5 } },
    { {  0,  3,  5 } },
    { {  0,  5,  5 } },
    { {  0,  6,  5 } },
    { {  0,  8,  5 } },
    { {  0, 10,  6 } },
    { {  0, 13,  6 } },
    { {  0, 16,  6 } },
    { {  0, 19,  6 } },
    { {  0, 22,  6 } },
    { {  0, 25,  6 } },
    { {  0, 28,  6 } },
    { {  0, 31,  6 } },
    { {  0, 33,  6 } },
    { {  0, 35,  6 } },
    { {  0, 37,  6 } },
    { {  0, 39,  6 } },
    { {  0, 41,  6 } },
    { {  0, 43,  6 } },
    { {  0, 45,  6 } },
    { { 16,  1,  4 } },
    { {  0,  2,  4 } },
    { { 32,  3,  5 } },
    { {  0,  4,  5 } },
    { { 32,  6,  5 } },
    { {  0,  7,  5 } },
    { {  0,  9,  6 } },
    { {  0, 12,  6 } },
    { {  0, 15,  6 } },
    { {  0, 18,  6 } },
    { {  0, 21,  6 } },
    { {  0, 24,  6 } },
    { {  0, 27,  6 } },
    { {  0, 30,  6 } },
    { {  0, 32,  6 } },
    { {  0, 34,  6 } },
    { {  0, 36,  6 } },
    { {  0, 38,  6 } },
    { {  0, 40,  6 } },
    { {  0, 42,  6 } },
    { {  0, 44,  6 } },
    { { 32,  1,  4 } },
    { { 48,  1,  4 } },
    { { 16,  2,  4 } },
    { { 32,  4,  5 } },
    { { 32,  5,  5 } },
    { { 32,  7,  5 } },
    { { 32,  8,  5 } },
    { {  0, 11,  6 } },
    { {  0, 14,  6 } },
    { {  0, 17,  6 } },
    { {  0, 20,  6 } },
    { {  0, 23,  6 } },
    { {  0, 26,  6 } },
    { {  0, 29,  6 } },
    { {  0, 52,  6 } },
    { {  0, 51,  6 } },
    { {  0, 50,  6 } },
    { {  0, 49,  6 } },
    { {  0, 48,  6 } },
    { {  0, 47,  6 } },
    { {  0, 46,  6 } },
};
U32 cell_ML_0(void) {
    FSE_decode_t cell = ML_defaultDTable[1].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_1(void) {
    FSE_decode_t cell = ML_defaultDTable[2].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_2(void) {
    FSE_decode_t cell = ML_defaultDTable[3].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_3(void) {
    FSE_decode_t cell = ML_defaultDTable[4].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_4(void) {
    FSE_decode_t cell = ML_defaultDTable[5].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_5(void) {
    FSE_decode_t cell = ML_defaultDTable[6].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_6(void) {
    FSE_decode_t cell = ML_defaultDTable[7].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_7(void) {
    FSE_decode_t cell = ML_defaultDTable[8].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_8(void) {
    FSE_decode_t cell = ML_defaultDTable[9].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_9(void) {
    FSE_decode_t cell = ML_defaultDTable[10].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_10(void) {
    FSE_decode_t cell = ML_defaultDTable[11].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_11(void) {
    FSE_decode_t cell = ML_defaultDTable[12].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_12(void) {
    FSE_decode_t cell = ML_defaultDTable[13].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_13(void) {
    FSE_decode_t cell = ML_defaultDTable[14].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_14(void) {
    FSE_decode_t cell = ML_defaultDTable[15].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_15(void) {
    FSE_decode_t cell = ML_defaultDTable[16].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_16(void) {
    FSE_decode_t cell = ML_defaultDTable[17].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_17(void) {
    FSE_decode_t cell = ML_defaultDTable[18].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_18(void) {
    FSE_decode_t cell = ML_defaultDTable[19].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_19(void) {
    FSE_decode_t cell = ML_defaultDTable[20].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_20(void) {
    FSE_decode_t cell = ML_defaultDTable[21].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_21(void) {
    FSE_decode_t cell = ML_defaultDTable[22].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_22(void) {
    FSE_decode_t cell = ML_defaultDTable[23].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_23(void) {
    FSE_decode_t cell = ML_defaultDTable[24].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_24(void) {
    FSE_decode_t cell = ML_defaultDTable[25].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_25(void) {
    FSE_decode_t cell = ML_defaultDTable[26].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_26(void) {
    FSE_decode_t cell = ML_defaultDTable[27].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_27(void) {
    FSE_decode_t cell = ML_defaultDTable[28].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_28(void) {
    FSE_decode_t cell = ML_defaultDTable[29].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_29(void) {
    FSE_decode_t cell = ML_defaultDTable[30].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_30(void) {
    FSE_decode_t cell = ML_defaultDTable[31].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_31(void) {
    FSE_decode_t cell = ML_defaultDTable[32].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_32(void) {
    FSE_decode_t cell = ML_defaultDTable[33].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_33(void) {
    FSE_decode_t cell = ML_defaultDTable[34].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_34(void) {
    FSE_decode_t cell = ML_defaultDTable[35].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_35(void) {
    FSE_decode_t cell = ML_defaultDTable[36].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_36(void) {
    FSE_decode_t cell = ML_defaultDTable[37].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_37(void) {
    FSE_decode_t cell = ML_defaultDTable[38].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_38(void) {
    FSE_decode_t cell = ML_defaultDTable[39].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_39(void) {
    FSE_decode_t cell = ML_defaultDTable[40].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_40(void) {
    FSE_decode_t cell = ML_defaultDTable[41].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_41(void) {
    FSE_decode_t cell = ML_defaultDTable[42].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_42(void) {
    FSE_decode_t cell = ML_defaultDTable[43].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_43(void) {
    FSE_decode_t cell = ML_defaultDTable[44].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_44(void) {
    FSE_decode_t cell = ML_defaultDTable[45].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_45(void) {
    FSE_decode_t cell = ML_defaultDTable[46].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_46(void) {
    FSE_decode_t cell = ML_defaultDTable[47].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_47(void) {
    FSE_decode_t cell = ML_defaultDTable[48].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_48(void) {
    FSE_decode_t cell = ML_defaultDTable[49].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_49(void) {
    FSE_decode_t cell = ML_defaultDTable[50].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_50(void) {
    FSE_decode_t cell = ML_defaultDTable[51].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_51(void) {
    FSE_decode_t cell = ML_defaultDTable[52].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_52(void) {
    FSE_decode_t cell = ML_defaultDTable[53].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_53(void) {
    FSE_decode_t cell = ML_defaultDTable[54].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_54(void) {
    FSE_decode_t cell = ML_defaultDTable[55].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_55(void) {
    FSE_decode_t cell = ML_defaultDTable[56].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_56(void) {
    FSE_decode_t cell = ML_defaultDTable[57].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_57(void) {
    FSE_decode_t cell = ML_defaultDTable[58].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_58(void) {
    FSE_decode_t cell = ML_defaultDTable[59].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_59(void) {
    FSE_decode_t cell = ML_defaultDTable[60].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_60(void) {
    FSE_decode_t cell = ML_defaultDTable[61].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_61(void) {
    FSE_decode_t cell = ML_defaultDTable[62].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_62(void) {
    FSE_decode_t cell = ML_defaultDTable[63].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_ML_63(void) {
    FSE_decode_t cell = ML_defaultDTable[64].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
static const FSE_decode_t4 OF_defaultDTable[(1<<OF_DEFAULTNORMLOG)+1] = {
    { { OF_DEFAULTNORMLOG, 1, 1 } }, /* header : tableLog, fastMode, fastMode */
    { {  0,  0,  5 } },              /* 0 : base, symbol, bits */
    { {  0,  6,  4 } },
    { {  0,  9,  5 } },
    { {  0, 15,  5 } },
    { {  0, 21,  5 } },
    { {  0,  3,  5 } },
    { {  0,  7,  4 } },
    { {  0, 12,  5 } },
    { {  0, 18,  5 } },
    { {  0, 23,  5 } },
    { {  0,  5,  5 } },
    { {  0,  8,  4 } },
    { {  0, 14,  5 } },
    { {  0, 20,  5 } },
    { {  0,  2,  5 } },
    { { 16,  7,  4 } },
    { {  0, 11,  5 } },
    { {  0, 17,  5 } },
    { {  0, 22,  5 } },
    { {  0,  4,  5 } },
    { { 16,  8,  4 } },
    { {  0, 13,  5 } },
    { {  0, 19,  5 } },
    { {  0,  1,  5 } },
    { { 16,  6,  4 } },
    { {  0, 10,  5 } },
    { {  0, 16,  5 } },
    { {  0, 28,  5 } },
    { {  0, 27,  5 } },
    { {  0, 26,  5 } },
    { {  0, 25,  5 } },
    { {  0, 24,  5 } },
};
U32 cell_OF_0(void) {
    FSE_decode_t cell = OF_defaultDTable[1].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_1(void) {
    FSE_decode_t cell = OF_defaultDTable[2].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_2(void) {
    FSE_decode_t cell = OF_defaultDTable[3].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_3(void) {
    FSE_decode_t cell = OF_defaultDTable[4].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_4(void) {
    FSE_decode_t cell = OF_defaultDTable[5].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_5(void) {
    FSE_decode_t cell = OF_defaultDTable[6].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_6(void) {
    FSE_decode_t cell = OF_defaultDTable[7].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_7(void) {
    FSE_decode_t cell = OF_defaultDTable[8].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_8(void) {
    FSE_decode_t cell = OF_defaultDTable[9].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_9(void) {
    FSE_decode_t cell = OF_defaultDTable[10].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_10(void) {
    FSE_decode_t cell = OF_defaultDTable[11].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_11(void) {
    FSE_decode_t cell = OF_defaultDTable[12].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_12(void) {
    FSE_decode_t cell = OF_defaultDTable[13].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_13(void) {
    FSE_decode_t cell = OF_defaultDTable[14].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_14(void) {
    FSE_decode_t cell = OF_defaultDTable[15].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_15(void) {
    FSE_decode_t cell = OF_defaultDTable[16].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_16(void) {
    FSE_decode_t cell = OF_defaultDTable[17].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_17(void) {
    FSE_decode_t cell = OF_defaultDTable[18].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_18(void) {
    FSE_decode_t cell = OF_defaultDTable[19].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_19(void) {
    FSE_decode_t cell = OF_defaultDTable[20].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_20(void) {
    FSE_decode_t cell = OF_defaultDTable[21].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_21(void) {
    FSE_decode_t cell = OF_defaultDTable[22].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_22(void) {
    FSE_decode_t cell = OF_defaultDTable[23].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_23(void) {
    FSE_decode_t cell = OF_defaultDTable[24].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_24(void) {
    FSE_decode_t cell = OF_defaultDTable[25].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_25(void) {
    FSE_decode_t cell = OF_defaultDTable[26].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_26(void) {
    FSE_decode_t cell = OF_defaultDTable[27].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_27(void) {
    FSE_decode_t cell = OF_defaultDTable[28].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_28(void) {
    FSE_decode_t cell = OF_defaultDTable[29].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_29(void) {
    FSE_decode_t cell = OF_defaultDTable[30].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_30(void) {
    FSE_decode_t cell = OF_defaultDTable[31].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
U32 cell_OF_31(void) {
    FSE_decode_t cell = OF_defaultDTable[32].realData;
    return (U32)cell.newState | ((U32)cell.symbol << 16) | ((U32)cell.nbBits << 24);
}
