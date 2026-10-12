// simdjson builder instantiation client (C++20; builder API of 2025+)
#include "simdjson.h"
#include "simdjson/builder.h"
#include <string>
#include <string_view>
#include <vector>
#include <map>
using namespace simdjson;
#define NOINL __attribute__((noinline))
extern "C" {
NOINL int cl_sb_i64(long long v, std::string *out) { builder::string_builder b; b.append(v); std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_u64(unsigned long long v, std::string *out) { builder::string_builder b; b.append(v); std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_i32(int v, std::string *out) { builder::string_builder b; b.append(v); std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_f64(double v, std::string *out) { builder::string_builder b; b.append(v); std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_f32(float v, std::string *out) { builder::string_builder b; b.append(v); std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_bool(bool v, std::string *out) { builder::string_builder b; b.append(v); std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_str(const char *p, size_t n, std::string *out) { builder::string_builder b; b.escape_and_append_with_quotes(std::string_view(p, n)); std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_str_raw(const char *p, size_t n, std::string *out) { builder::string_builder b; b.escape_and_append(std::string_view(p, n)); std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_str_append(const std::string *v, std::string *out) { builder::string_builder b; b.append(*v); std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_obj(long long a, double c, std::string *out) {
  builder::string_builder b; b.start_object(); b.escape_and_append_with_quotes("a"); b.append_colon(); b.append(a); b.append_comma();
  b.escape_and_append_with_quotes("c"); b.append_colon(); b.append(c); b.end_object();
  std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_kv(long long a, std::string *out) {
  builder::string_builder b; b.start_object(); b.append_key_value("key", a); b.end_object();
  std::string_view s; auto e = b.view().get(s); if (e) return e; out->assign(s); return 0; }
NOINL int cl_sb_vec_i(const std::vector<int> *v, std::string *out) { return simdjson::to_json(*v, *out); }
NOINL int cl_sb_vec_d(const std::vector<double> *v, std::string *out) { return simdjson::to_json(*v, *out); }
NOINL int cl_sb_vec_s(const std::vector<std::string> *v, std::string *out) { return simdjson::to_json(*v, *out); }
NOINL int cl_sb_map(const std::map<std::string, int> *v, std::string *out) { return simdjson::to_json(*v, *out); }
NOINL int cl_dom_to_json(dom::element *e, std::string *out) { *out = simdjson::to_string(*e); return 0; }
NOINL int cl_dom_minify(dom::element *e, std::string *out) { *out = simdjson::minify(*e); return 0; }
}
