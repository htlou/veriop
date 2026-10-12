#include <stddef.h>

typedef struct { int bits; } BIGNUM;
typedef struct { BIGNUM field; } EC_GROUP;
static BIGNUM temporary;
static int fail_alloc;

static BIGNUM *BN_new(void) { return fail_alloc ? NULL : &temporary; }
static void BN_free(BIGNUM *p) { (void)p; }
static int EC_GROUP_get_curve(const EC_GROUP *g, BIGNUM *p, BIGNUM *a,
                              BIGNUM *b, void *ctx)
{
    (void)p; (void)a; (void)b; (void)ctx;
    return g != NULL;
}
static const BIGNUM *EC_GROUP_get0_field(const EC_GROUP *g)
{
    return g == NULL ? NULL : &g->field;
}
static int BN_num_bits(const BIGNUM *p)
{
    (void)p;
    return 256;
}
#define BN_num_bytes(p) ((BN_num_bits(p) + 7) / 8)

/* Historical function bodies; only their names differ from the source. */
static size_t old_ec_field_size(const EC_GROUP *group)
{
    /* Is there some simpler way to do this? */
    BIGNUM *p = BN_new();
    BIGNUM *a = BN_new();
    BIGNUM *b = BN_new();
    size_t field_size = 0;

    if (p == NULL || a == NULL || b == NULL)
       goto done;

    if (!EC_GROUP_get_curve(group, p, a, b, NULL))
        goto done;
    field_size = (BN_num_bits(p) + 7) / 8;

 done:
    BN_free(p);
    BN_free(a);
    BN_free(b);

    return field_size;
}

static size_t new_ec_field_size(const EC_GROUP *group)
{
    const BIGNUM *p = EC_GROUP_get0_field(group);

    if (p == NULL)
        return 0;

    return BN_num_bytes(p);
}

size_t src(int allocation_fails)
{
    EC_GROUP group = {{256}};
    fail_alloc = allocation_fails;
    return old_ec_field_size(&group);
}

size_t tgt(int allocation_fails)
{
    EC_GROUP group = {{256}};
    fail_alloc = allocation_fails;
    return new_ec_field_size(&group);
}
