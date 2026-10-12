typedef long long int64_t;
enum ggml_type { GGML_TYPE_F32 = 0, GGML_TYPE_F16 = 1, GGML_TYPE_OTHER = 2 };
struct Tensor { ggml_type type; int64_t ne[2]; };
struct Context { const Tensor *src0; const Tensor *dst; };
extern "C" int target(int type, int64_t src0_ne0, int64_t dst_ne0, int64_t dst_ne1) {
  Tensor src0{(ggml_type)type, {src0_ne0, 1}};
  Tensor dst{GGML_TYPE_F32, {dst_ne0, dst_ne1}};
  Context context{&src0, &dst};
  return (context.src0->ne[0] % 4 == 0 && context.dst->ne[0] % 4 == 0 && context.dst->ne[1] % 4 == 0 &&
                          (context.src0->type == GGML_TYPE_F32 || context.src0->type == GGML_TYPE_F16)) ?
                             1 :
                             0;
}
