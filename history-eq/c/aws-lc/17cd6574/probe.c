#include <stdio.h>
#include "poly.h"

int main(void) {
    poly p = {{0}};
    uint8_t msg[KYBER_INDCPA_MSGBYTES];
    p.coeffs[0] = -25468; // Alive2's unrestricted-input counterexample.
    poly_tomsg(msg, &p);
    printf("msg[0]=0x%02x\n", msg[0]);
    return 0;
}
