#include <openssl/crypto.h>
#include <openssl/ec.h>
#include <openssl/evp.h>
#include <openssl/obj_mac.h>
#include <crypto/sm2.h>
#include <stdio.h>
#include <stdlib.h>

static int fail_alloc;

static void *probe_malloc(size_t n, const char *file, int line)
{
    (void)file;
    (void)line;
    return fail_alloc ? NULL : malloc(n);
}

static void *probe_realloc(void *p, size_t n, const char *file, int line)
{
    (void)file;
    (void)line;
    return fail_alloc ? NULL : realloc(p, n);
}

static void probe_free(void *p, const char *file, int line)
{
    (void)file;
    (void)line;
    free(p);
}

int main(void)
{
    EC_KEY *key;
    size_t size = 0;
    int normal, starved;

    if (!CRYPTO_set_mem_functions(probe_malloc, probe_realloc, probe_free))
        return 2;
    key = EC_KEY_new_by_curve_name(NID_sm2);
    if (key == NULL)
        return 3;

    normal = ossl_sm2_ciphertext_size(key, EVP_sha256(), 16, &size);
    if (!normal || size == 0)
        return 4;

    fail_alloc = 1;
    size = 0;
    starved = ossl_sm2_ciphertext_size(key, EVP_sha256(), 16, &size);
    fail_alloc = 0;
    printf("normal=%d starved=%d starved_size=%zu\n", normal, starved, size);

    EC_KEY_free(key);
    return 0;
}
