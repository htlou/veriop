#include <openssl/bio.h>

int BIO_hex_string_new(BIO *out, int indent, int width, const void *data,
                   int datalen)
{
    const unsigned char *d = data;
    int i, j = 0;

    if (datalen < 1)
        return 1;

    for (i = 0; i < datalen - 1; i++) {
        if (i && !j)
            BIO_printf(out, "%*s", indent, "");

        BIO_printf(out, "%02X:", d[i]);

        if (++j >= width) {
            j = 0;
            BIO_printf(out, "\n");
        }
    }

    if (i && !j)
        BIO_printf(out, "%*s", indent, "");
    BIO_printf(out, "%02X", d[datalen - 1]);
    return 1;
}
