#include <stdio.h>
#define threshold old_threshold
#include "old.cpp"
#undef threshold
#define threshold new_threshold
#include "new.cpp"
#undef threshold
int main() {
  auto a = old_threshold(400000000000ULL, 0x1002u, 1u, 1u);
  auto b = new_threshold(400000000000ULL, 0x1002u, 1u, 1u);
  printf("old=%llu new=%llu\n", (unsigned long long)a, (unsigned long long)b);
  return a != 10000000000ULL || b != 500000000ULL;
}
