typedef float v4f __attribute__((vector_size(16)));
static_assert(sizeof(v4f) == 16);
struct Buffers { float C[128]; v4f fin[16]; };
static_assert(sizeof(Buffers) == 768);
struct Kernel {
    float *C;
    long long ldc;
inline void save_res(int ii, int jj, int idx, v4f* fin_res, int RM=4, int RN=4) {
       for (int I = 0; I < RM; I++) {
          for (int J = 0; J < RN; J++) {
             *((float*)(C+ii+((jj+J)*ldc)+I)) = *((float*)&fin_res[idx+I]+J);
          }
       }
    }
};
extern "C" void compare_1_1_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,1,1); }
extern "C" void compare_1_2_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,1,2); }
extern "C" void compare_1_3_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,1,3); }
extern "C" void compare_1_4_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,1,4); }
extern "C" void compare_2_1_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,2,1); }
extern "C" void compare_2_2_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,2,2); }
extern "C" void compare_2_3_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,2,3); }
extern "C" void compare_2_4_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,2,4); }
extern "C" void compare_3_1_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,3,1); }
extern "C" void compare_3_2_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,3,2); }
extern "C" void compare_3_3_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,3,3); }
extern "C" void compare_3_4_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,3,4); }
extern "C" void compare_4_1_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,4,1); }
extern "C" void compare_4_2_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,4,2); }
extern "C" void compare_4_3_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin,4,3); }
extern "C" void compare_4_4_0_0_0(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,0,0,b->fin); }
extern "C" void compare_4_4_0_4_4(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,4,4,b->fin); }
extern "C" void compare_4_4_4_0_4(Buffers *b) { Kernel k{b->C,8}; k.save_res(4,0,4,b->fin); }
extern "C" void compare_4_4_0_4_8(Buffers *b) { Kernel k{b->C,8}; k.save_res(0,4,8,b->fin); }
extern "C" void compare_4_4_4_4_12(Buffers *b) { Kernel k{b->C,8}; k.save_res(4,4,12,b->fin); }
