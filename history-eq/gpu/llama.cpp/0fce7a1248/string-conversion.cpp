#include <cassert>
#include <iostream>
#include <string>

static std::string old_name(const std::string &name) { return name; }
static std::string new_name(const char *name) { return name; }
static std::string wrapped_name(const std::string &name) { return new_name(name.c_str()); }

int main() {
    unsigned checked = 0;
    for (unsigned i = 0; i < 256; ++i) {
        for (const std::string prefix : {"mul_mat_vec_p021_f16_f32", "multi_add_f32_",
                                         "multi_add_rms_f32_", "argsort_f32_"}) {
            const std::string name = prefix + std::to_string(i);
            assert(old_name(name) == wrapped_name(name));
            ++checked;
        }
    }
    for (unsigned bits = 0; bits < 8; ++bits) {
        std::string suffix;
        for (unsigned bit = 0; bit < 3; ++bit) suffix += (bits & (1u << bit)) ? "_f16" : "_f32";
        const std::string name = "add" + suffix;
        assert(old_name(name) == wrapped_name(name));
        ++checked;
    }
    const std::string embedded_nul("x\0y", 3);
    assert(old_name(embedded_nul) != wrapped_name(embedded_nul));
    std::cout << checked << " actual-name-form conversion checks passed; embedded-NUL negative control differs\n";
}
