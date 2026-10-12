#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#define ASN1err(a, b) ((void)0)
#define OPENSSL_assert(c) assert(c)
static void twos_complement(unsigned char *dst, const unsigned char *src,
                            size_t len, unsigned char pad)
{
    unsigned int carry = pad & 1;

    /* Begin at the end of the encoding */
    dst += len;
    src += len;
    /* two's complement value: ~value + 1 */
    while (len-- != 0) {
        *(--dst) = (unsigned char)(carry += *(--src) ^ pad);
        carry >>= 8;
    }
}

static size_t c2i_ibuf_old(unsigned char *b, int *pneg,
                       const unsigned char *p, size_t plen)
{
    size_t i;
    int neg, pad;
    /* Zero content length is illegal */
    if (plen == 0) {
        ASN1err(ASN1_F_C2I_IBUF, ASN1_R_ILLEGAL_ZERO_CONTENT);
        return 0;
    }
    neg = p[0] & 0x80;
    if (pneg)
        *pneg = neg;
    /* Handle common case where length is 1 octet separately */
    if (plen == 1) {
        if (b) {
            if (neg)
                b[0] = (p[0] ^ 0xFF) + 1;
            else
                b[0] = p[0];
        }
        return 1;
    }
    if (p[0] == 0 || p[0] == 0xFF)
        pad = 1;
    else
        pad = 0;
    /* reject illegal padding: first two octets MSB can't match */
    if (pad && (neg == (p[1] & 0x80))) {
        ASN1err(ASN1_F_C2I_IBUF, ASN1_R_ILLEGAL_PADDING);
        return 0;
    }
    /* If positive just copy across */
    if (neg == 0) {
        if (b)
            memcpy(b, p + pad, plen - pad);
        return plen - pad;
    }

    if (neg && pad) {
        /* check is any following octets are non zero */
        for (i = 1; i < plen; i++) {
            if (p[i] != 0)
                break;
        }
        /* if all bytes are zero handle as special case */
        if (i == plen) {
            if (b) {
                b[0] = 1;
                memset(b + 1, 0, plen - 1);
            }
            return plen;
        }
    }

    plen -= pad;
    /* Must be negative: calculate twos complement */
    if (b) {
        const unsigned char *from = p + plen - 1 + pad;
        unsigned char *to = b + plen;
        i = plen;
        while (*from == 0 && i) {
            *--to = 0;
            i--;
            from--;
        }
        *--to = (*from-- ^ 0xff) + 1;
        OPENSSL_assert(i != 0);
        i--;
        for (; i > 0; i--)
            *--to = *from-- ^ 0xff;
    }
    return plen;
}

static size_t c2i_ibuf_new(unsigned char *b, int *pneg,
                       const unsigned char *p, size_t plen)
{
    int neg, pad;
    /* Zero content length is illegal */
    if (plen == 0) {
        ASN1err(ASN1_F_C2I_IBUF, ASN1_R_ILLEGAL_ZERO_CONTENT);
        return 0;
    }
    neg = p[0] & 0x80;
    if (pneg)
        *pneg = neg;
    /* Handle common case where length is 1 octet separately */
    if (plen == 1) {
        if (b != NULL) {
            if (neg)
                b[0] = (p[0] ^ 0xFF) + 1;
            else
                b[0] = p[0];
        }
        return 1;
    }
    if (p[0] == 0 || p[0] == 0xFF)
        pad = 1;
    else
        pad = 0;
    /* reject illegal padding: first two octets MSB can't match */
    if (pad && (neg == (p[1] & 0x80))) {
        ASN1err(ASN1_F_C2I_IBUF, ASN1_R_ILLEGAL_PADDING);
        return 0;
    }

    /* skip over pad */
    p += pad;
    plen -= pad;

    if (b != NULL)
        twos_complement(b, p, plen, neg ? 0xffU : 0);

    return plen;
}

int src(void) {
    const unsigned char p[2] = {0xff, 0x00};
    unsigned char b[2] = {0xaa, 0xaa};
    int neg = 0;
    size_t n = c2i_ibuf_old(b, &neg, p, 2);
    return ((int)n << 8) | b[0];
}
int tgt(void) {
    const unsigned char p[2] = {0xff, 0x00};
    unsigned char b[2] = {0xaa, 0xaa};
    int neg = 0;
    size_t n = c2i_ibuf_new(b, &neg, p, 2);
    return ((int)n << 8) | b[0];
}
int main(void) {
    printf("old=%#x new=%#x\n", src(), tgt());
    return src() == tgt();
}
