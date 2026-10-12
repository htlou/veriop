#include <cstdio>
#include <cstdint>
extern "C" bool target_raw_u8(uint32_t, uint32_t);
extern "C" bool target_literal_inf(uint32_t);

int main() {
  std::printf("raw(0,0)=%d literal_inf(0)=%d\n",
              target_raw_u8(0, 0), target_literal_inf(0));
}
