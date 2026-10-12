#include <cassert>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <vector>

struct ggml_tensor {
    int64_t ne[4]{};
    size_t nb[4]{};
};
struct mmid_row_mapping {
    int32_t i1;
    int32_t i2;
};
#define GGML_ASSERT(x) assert(x)

/*SOURCE_FUNCTION*/

int main() {
    ggml_tensor tensor{};
    tensor.ne[1] = 2;
    tensor.nb[0] = sizeof(int32_t);
    tensor.nb[1] = 2 * sizeof(int32_t);
    for (int code = 0; code < 81; ++code) {
        int32_t ids[4]{};
        int next = code;
        for (int i = 0; i < 4; ++i) {
            ids[i] = next % 3;
            next /= 3;
        }
        std::vector<int64_t> counts, offsets;
        std::vector<mmid_row_mapping> rows;
        mmid_counting_sort_rows(&tensor, reinterpret_cast<const char *>(ids), 2, 3, 4,
                                counts, offsets, rows);
        assert(rows.size() == 4 && offsets.size() == 4 && offsets[3] == 4);
        int cursor = 0;
        for (int expert = 0; expert < 3; ++expert) {
            assert(offsets[expert] == cursor);
            for (int route = 0; route < 4; ++route) {
                if (ids[route] == expert) {
                    assert(rows[cursor].i1 == route % 2);
                    assert(rows[cursor].i2 == route / 2);
                    ++cursor;
                }
            }
            assert(offsets[expert + 1] == cursor);
        }
    }
    std::puts("81/81 source-extracted counting-sort cases pass");
}
