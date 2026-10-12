"""Extract the exact destructor bodies into a failing-allocator context."""

from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
old = (here / "hashtable.old.c").read_text()
new = (here / "hashtable.new.c").read_text()
for name, expected in (("old", "7b3da99c6d0c5b1831f462a6b7068ea368465e9a"),
                       ("new", "1cce15ed2443c055ff7d6be84f1fc53d982404fa")):
    actual = subprocess.check_output(["git", "hash-object", str(here / f"hashtable.{name}.c")]).decode().strip()
    assert actual == expected, (name, actual)

def destructor(source, name):
    start = source.index("void ossl_ht_free(HT *h)")
    end = source.index("size_t ossl_ht_count(HT *h)", start)
    return source[start:end].replace("void ossl_ht_free(HT *h)", f"static void {name}(HT *h)", 1)

flush_prefix = "newmd = OPENSSL_zalloc(sizeof(*newmd));\n    if (newmd == NULL)\n        return 0;"
assert flush_prefix in old and flush_prefix in new
assert old.count("static int ossl_ht_flush_internal(HT *h)") == 1
assert new.count("static int ossl_ht_flush_internal(HT *h)") == 1

prefix = """#include <stddef.h>
#include <stdint.h>
typedef struct mutable_data { void *neighborhood_ptr_to_free; } MutableData;
typedef struct ht_st {
    struct { int no_rcu; } config;
    MutableData *md;
    void *atomic_lock;
    void *lock;
} HT;
static unsigned zalloc_calls;
static void *OPENSSL_zalloc(size_t bytes) {
    (void)bytes;
    ++zalloc_calls;
    return NULL;
}
static void OPENSSL_free(void *p) { (void)p; }
static void free_oldmd(void *p) { (void)p; }
static void ossl_ht_write_lock(HT *h) { (void)h; }
static void ossl_ht_write_unlock(HT *h) { (void)h; }
static void CRYPTO_THREAD_lock_free(void *p) { (void)p; }
static void ossl_rcu_lock_free(void *p) { (void)p; }
static int ossl_ht_flush_internal(HT *h) {
    MutableData *newmd;
    (void)h;
    newmd = OPENSSL_zalloc(sizeof(*newmd));
    if (newmd == NULL)
        return 0;
    __builtin_unreachable();
}
"""

def observer(name):
    return f"""
unsigned {name}_allocations(void) {{
    MutableData md = {{0}};
    HT h = {{0}};
    h.config.no_rcu = 1;
    h.md = &md;
    zalloc_calls = 0;
    {name}(&h);
    return zalloc_calls;
}}
"""

native = """
#ifdef NATIVE_TEST
#include <assert.h>
int main(void) {
    assert(old_free_allocations() == 1);
    assert(new_free_allocations() == 0);
    return 0;
}
#endif
"""
(here / "allocator_trace.c").write_text(prefix + destructor(old, "old_free") +
                                          destructor(new, "new_free") +
                                          observer("old_free") + observer("new_free") + native)
print("Exact old/new destructor bodies extracted; failing-allocation branch source-locked")
