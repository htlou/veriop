// simdjson DOM API instantiation client (dom::parser era, 2020-06 and later)
#include "simdjson.h"
#include <string>
#include <string_view>
using namespace simdjson;
#define NOINL __attribute__((noinline))
extern "C" {
NOINL int cl_dom_parse(dom::parser *p, const char *b, size_t n, dom::element *out) { return p->parse(b, n, false).get(*out); }
NOINL int cl_dom_parse_pad(dom::parser *p, const char *b, size_t n, dom::element *out) { return p->parse(b, n).get(*out); }
NOINL int cl_dom_i64(dom::element *e, int64_t *v) { return e->get(*v); }
NOINL int cl_dom_u64(dom::element *e, uint64_t *v) { return e->get(*v); }
NOINL int cl_dom_f64(dom::element *e, double *v) { return e->get(*v); }
NOINL int cl_dom_bool(dom::element *e, bool *v) { return e->get(*v); }
NOINL int cl_dom_sv(dom::element *e, std::string_view *v) { return e->get(*v); }
NOINL int cl_dom_type(dom::element *e) { return (int)e->type(); }
NOINL int cl_dom_is_int(dom::element *e) { return e->is_int64() + 2 * e->is_uint64() + 4 * e->is_double() + 8 * e->is_string() + 16 * e->is_null(); }
NOINL int cl_dom_array(dom::element *e, dom::array *a) { return e->get(*a); }
NOINL int cl_dom_object(dom::element *e, dom::object *o) { return e->get(*o); }
NOINL int cl_dom_arr_sum(dom::array *a, int64_t *sum) {
  int64_t s = 0;
  for (dom::element x : *a) { int64_t v; if (!x.get(v)) s += v; }
  *sum = s; return (int)a->size(); }
NOINL int cl_dom_arr_at(dom::array *a, size_t i, dom::element *out) { return a->at(i).get(*out); }
NOINL int cl_dom_obj_iter(dom::object *o, size_t *n) {
  size_t c = 0;
  for (auto f : *o) { c += f.key.size(); }
  *n = c; return 0; }
NOINL int cl_dom_obj_key(dom::object *o, const char *k, size_t kl, dom::element *out) { return (*o)[std::string_view(k, kl)].get(*out); }
NOINL int cl_dom_elem_key(dom::element *e, const char *k, size_t kl, dom::element *out) { return (*e)[std::string_view(k, kl)].get(*out); }
NOINL int cl_dom_ptr(dom::element *e, const char *k, size_t kl, dom::element *out) { return e->at_pointer(std::string_view(k, kl)).get(*out); }
NOINL int cl_dom_tostring(dom::element *e, std::string *s) { *s = simdjson::to_string(*e); return 0; }
NOINL int cl_dom_minify(dom::element *e, std::string *s) { *s = simdjson::minify(*e); return 0; }
NOINL int cl_dom_stream(dom::parser *p, const char *b, size_t n, size_t *cnt) {
  dom::document_stream st;
  if (p->parse_many(b, n, dom::DEFAULT_BATCH_SIZE).get(st)) return 1;
  size_t c = 0;
  for (auto d : st) { dom::element e; if (!d.get(e)) c++; }
  *cnt = c; return 0; }
NOINL int cl_dom_stream_batch(dom::parser *p, const char *b, size_t n, size_t batch, size_t *cnt) {
  dom::document_stream st;
  if (p->parse_many(b, n, batch).get(st)) return 1;
  size_t c = 0;
  for (auto d : st) { dom::element e; if (!d.get(e)) c++; }
  *cnt = c; return 0; }
NOINL int cl_dom_alloc(dom::parser *p, size_t cap, size_t depth) { return p->allocate(cap, depth); }
}
