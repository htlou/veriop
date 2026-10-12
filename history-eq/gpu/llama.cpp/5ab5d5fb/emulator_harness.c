#include <stdint.h>
#include <stddef.h>
typedef struct { uint8_t ql[128]; uint8_t qh[64]; int8_t scales[16]; uint16_t d; } block_q6_K;
typedef struct { float d; int8_t qs[256]; int16_t bsums[16]; } block_q8_K;
extern void compare_old(float *, const block_q6_K *, const block_q8_K *);
extern void compare_new(float *, const block_q6_K *, const block_q8_K *);
static block_q6_K x[4];
static block_q8_K y[4];
static float old_out[4], new_out[4];
static uint32_t state = 1;
static unsigned long exit_args[2] = {0x20026, 0};
static uint32_t rnd(void) { state ^= state << 13; state ^= state >> 17; state ^= state << 5; return state; }
static void print(const char *s) {
  register unsigned long x0 asm("x0") = 4;
  register const char *x1 asm("x1") = s;
  asm volatile("hlt #0xf000" : "+r"(x0) : "r"(x1) : "memory");
}
static char msg[64];
static void hex(uint32_t v, char *p) {
  for (int i = 7; i >= 0; --i) { p[i] = "0123456789abcdef"[v & 15]; v >>= 4; }
}
static uint32_t bits(float f) { union { float f; uint32_t u; } v = {.f=f}; return v.u; }
__asm__(".global _start\n_start:\n ldr x0, =0x40800000\n mov sp, x0\n mrs x0, cpacr_el1\n orr x0, x0, #0x300000\n msr cpacr_el1, x0\n isb\n bl start_main\n1: b 1b\n");
void start_main(void) {
  for (int trial = 0; trial < 256; ++trial) {
    for (int row = 0; row < 4; ++row) {
      for (int i = 0; i < 128; ++i) x[row].ql[i] = rnd();
      for (int i = 0; i < 64; ++i) x[row].qh[i] = rnd();
      for (int i = 0; i < 16; ++i) x[row].scales[i] = (int8_t)(rnd() % 127) - 63;
      x[row].d = 0x3c00;
    }
    for (int col = 0; col < 4; ++col) {
      y[col].d = col & 1 ? 0.1f : 1.001f;
      for (int i = 0; i < 256; ++i) y[col].qs[i] = (int8_t)(rnd() % 255) - 127;
      for (int blk = 0; blk < 16; ++blk) {
        int16_t sum = 0;
        for (int i = 0; i < 16; ++i) sum += y[col].qs[blk * 16 + i];
        y[col].bsums[blk] = sum;
      }
    }
    compare_old(old_out, x, y);
    compare_new(new_out, x, y);
    for (int i = 0; i < 4; ++i) {
      if (bits(old_out[i]) != bits(new_out[i])) {
        msg[0] = 't'; msg[1] = '='; hex((uint32_t)trial, msg+2);
        msg[10] = ' '; msg[11] = 'i'; msg[12] = '='; hex((uint32_t)i, msg+13);
        msg[21] = ' '; msg[22] = 'o'; msg[23] = '='; hex(bits(old_out[i]), msg+24);
        msg[32] = ' '; msg[33] = 'n'; msg[34] = '='; hex(bits(new_out[i]), msg+35);
        msg[43] = '\n'; msg[44] = 0; print(msg); exit_args[1] = 1; goto done;
      }
    }
  }
  print("256 trials: equal bits\n");
done:
  {
    register unsigned long x0 asm("x0") = 0x20;
    register unsigned long x1 asm("x1") = (unsigned long)exit_args;
    asm volatile("hlt #0xf000" : "+r"(x0) : "r"(x1) : "memory");
  }
}
