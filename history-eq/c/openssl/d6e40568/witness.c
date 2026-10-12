#include <assert.h>
#include <openssl/bio.h>
#include <stdio.h>
#include <string.h>

int BIO_hex_string_old(BIO *, int, int, const void *, int);
int BIO_hex_string_new(BIO *, int, int, const void *, int);

static void run(int (*format)(BIO *, int, int, const void *, int),
                int width, char *out, size_t cap)
{
    const unsigned char bytes[] = {1, 2, 3};
    BIO *bio = BIO_new(BIO_s_mem());
    char *data;
    long len;

    assert(bio != NULL);
    assert(format(bio, 0, width, bytes, 3) == 1);
    len = BIO_get_mem_data(bio, &data);
    assert(len >= 0 && (size_t)len < cap);
    memcpy(out, data, (size_t)len);
    out[len] = '\0';
    BIO_free(bio);
}

int main(void)
{
    char old[128], new[128];
    run(BIO_hex_string_old, -2, old, sizeof(old));
    run(BIO_hex_string_new, -2, new, sizeof(new));
    assert(strcmp(old, "01:02:\n03") == 0);
    assert(strcmp(new, "01:\n02:\n03") == 0);
    assert(strcmp(old, new) != 0);
    printf("width=-2 old=%s new=%s\n", old, new);
    for (int width = 1; width <= 4; width++) {
        run(BIO_hex_string_old, width, old, sizeof(old));
        run(BIO_hex_string_new, width, new, sizeof(new));
        assert(strcmp(old, new) == 0);
    }
    puts("width=1..4 equal for this input");
    return 0;
}
