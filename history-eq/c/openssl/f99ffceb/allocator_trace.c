#include <stddef.h>
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
static void old_free(HT *h)
{
    int flush_ok;

    if (h == NULL)
        return;

    ossl_ht_write_lock(h);
    flush_ok = ossl_ht_flush_internal(h);
    ossl_ht_write_unlock(h);
    /* Freeing the lock does a final sync for us */
    if (!h->config.no_rcu) {
        CRYPTO_THREAD_lock_free(h->atomic_lock);
        ossl_rcu_lock_free(h->lock);
    }
    if (flush_ok) {
        OPENSSL_free(h->md->neighborhood_ptr_to_free);
        OPENSSL_free(h->md);
    } else {
        free_oldmd(h->md);
    }
    OPENSSL_free(h);
    return;
}

static void new_free(HT *h)
{
    int flush_ok;

    if (h == NULL)
        return;

    if (h->config.no_rcu) {
        free_oldmd(h->md);
    } else {
        ossl_ht_write_lock(h);
        flush_ok = ossl_ht_flush_internal(h);
        ossl_ht_write_unlock(h);
        /* Freeing the lock does a final sync for us */
        CRYPTO_THREAD_lock_free(h->atomic_lock);
        ossl_rcu_lock_free(h->lock);
        if (flush_ok) {
            OPENSSL_free(h->md->neighborhood_ptr_to_free);
            OPENSSL_free(h->md);
        } else {
            free_oldmd(h->md);
        }
    }
    OPENSSL_free(h);
}


unsigned old_free_allocations(void) {
    MutableData md = {0};
    HT h = {0};
    h.config.no_rcu = 1;
    h.md = &md;
    zalloc_calls = 0;
    old_free(&h);
    return zalloc_calls;
}

unsigned new_free_allocations(void) {
    MutableData md = {0};
    HT h = {0};
    h.config.no_rcu = 1;
    h.md = &md;
    zalloc_calls = 0;
    new_free(&h);
    return zalloc_calls;
}

#ifdef NATIVE_TEST
#include <assert.h>
int main(void) {
    assert(old_free_allocations() == 1);
    assert(new_free_allocations() == 0);
    return 0;
}
#endif
