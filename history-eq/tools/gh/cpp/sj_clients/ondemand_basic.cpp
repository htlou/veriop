// simdjson On-Demand API instantiation client (iterate(buf,len,cap) era)
#include "simdjson.h"
#include <string>
#include <string_view>
using namespace simdjson;
#define NOINL __attribute__((noinline))
extern "C" {
NOINL int cl_od_i64(ondemand::parser *p, const char *b, size_t n, size_t cap, int64_t *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e; return d.get_int64().get(*v); }
NOINL int cl_od_u64(ondemand::parser *p, const char *b, size_t n, size_t cap, uint64_t *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e; return d.get_uint64().get(*v); }
NOINL int cl_od_f64(ondemand::parser *p, const char *b, size_t n, size_t cap, double *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e; return d.get_double().get(*v); }
NOINL int cl_od_bool(ondemand::parser *p, const char *b, size_t n, size_t cap, bool *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e; return d.get_bool().get(*v); }
NOINL int cl_od_str(ondemand::parser *p, const char *b, size_t n, size_t cap, std::string_view *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e; return d.get_string().get(*v); }
NOINL int cl_od_num(ondemand::parser *p, const char *b, size_t n, size_t cap, int *t) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  ondemand::number_type nt; e = d.get_number_type().get(nt); *t = (int)nt; return e; }
NOINL int cl_od_type(ondemand::parser *p, const char *b, size_t n, size_t cap, int *t) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  ondemand::json_type jt; e = d.type().get(jt); *t = (int)jt; return e; }
NOINL int cl_od_arr_sum(ondemand::parser *p, const char *b, size_t n, size_t cap, int64_t *sum) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  ondemand::array a; e = d.get_array().get(a); if (e) return e;
  int64_t s = 0;
  for (auto x : a) { int64_t v; if (!x.get_int64().get(v)) s += v; }
  *sum = s; return 0; }
NOINL int cl_od_arr_dbl(ondemand::parser *p, const char *b, size_t n, size_t cap, double *sum) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  double s = 0;
  for (auto x : d) { double v; if (!x.get_double().get(v)) s += v; }
  *sum = s; return 0; }
NOINL int cl_od_count(ondemand::parser *p, const char *b, size_t n, size_t cap, size_t *c) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e; return d.count_elements().get(*c); }
NOINL int cl_od_fields(ondemand::parser *p, const char *b, size_t n, size_t cap, size_t *c) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  ondemand::object o; e = d.get_object().get(o); if (e) return e;
  size_t k = 0;
  for (auto f : o) { std::string_view key; if (!f.unescaped_key().get(key)) k += key.size(); }
  *c = k; return 0; }
NOINL int cl_od_find(ondemand::parser *p, const char *b, size_t n, size_t cap, const char *k, size_t kl, int64_t *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  return d.find_field(std::string_view(k, kl)).get_int64().get(*v); }
NOINL int cl_od_find_unordered(ondemand::parser *p, const char *b, size_t n, size_t cap, const char *k, size_t kl, std::string_view *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  return d.find_field_unordered(std::string_view(k, kl)).get_string().get(*v); }
NOINL int cl_od_index(ondemand::parser *p, const char *b, size_t n, size_t cap, const char *k, size_t kl, double *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  return d[std::string_view(k, kl)].get_double().get(*v); }
NOINL int cl_od_ptr(ondemand::parser *p, const char *b, size_t n, size_t cap, const char *k, size_t kl, int64_t *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  return d.at_pointer(std::string_view(k, kl)).get_int64().get(*v); }
NOINL int cl_od_raw(ondemand::parser *p, const char *b, size_t n, size_t cap, std::string_view *v) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  return d.raw_json().get(*v); }
NOINL int cl_od_stream(ondemand::parser *p, const char *b, size_t n, size_t cap, size_t *cnt) {
  ondemand::document_stream st; auto e = p->iterate_many(b, n, 1000000).get(st); if (e) return e;
  size_t c = 0;
  for (auto d : st) { int64_t v; if (!d.get_int64().get(v)) c++; }
  *cnt = c; return 0; }
NOINL int cl_od_obj_nested(ondemand::parser *p, const char *b, size_t n, size_t cap, int64_t *sum) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  int64_t s = 0;
  for (auto obj : d.get_array()) {
    for (auto f : obj.get_object()) { int64_t v; if (!f.value().get_int64().get(v)) s += v; }
  }
  *sum = s; return 0; }
NOINL int cl_od_strval(ondemand::parser *p, const char *b, size_t n, size_t cap, std::string *out) {
  ondemand::document d; auto e = p->iterate(b, n, cap).get(d); if (e) return e;
  return d.get_string(*out); }
}
