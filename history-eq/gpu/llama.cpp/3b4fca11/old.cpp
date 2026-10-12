typedef long long int64_t;
class Probe {
void mnpack(int64_t,int64_t,int64_t,int64_t);
void matmul_tiled(int64_t,int64_t,int64_t,int64_t,int64_t);
void matmul(int64_t m, int64_t n) {
    #if defined(_AIX) || defined(__BIG_ENDIAN__)
        mnpack(0, m, 0, n);
    #else
        const int64_t mc = 64;
        const int64_t kc = 64;
        int64_t nc = 64;
        int64_t n_aligned = 0;
        if (n % 64 == 0) {
            n_aligned = n;
        } else if (n == 4) {
            n_aligned = 4;
        } else if (n < 64) {
            n_aligned = (n / 8) * 8;
        } else {
            n_aligned = (n / 64) * 64;
        }
        if (n_aligned > 0) {
            if (n_aligned % 64 == 0)      nc = 64;
            else if (n_aligned == n)      nc = n;
            else if (n_aligned % 32 == 0) nc = 32;
            else if (n_aligned % 24 == 0) nc = 24;
            else if (n_aligned % 16 == 0) nc = 16;
            else                          nc = 8;
        }
        bool can_use_tiled = n_aligned > 0 && (m % mc == 0);
        if (can_use_tiled) {
            matmul_tiled(m, n_aligned, mc, nc, kc);
            if (n > n_aligned) {
                mnpack(0, m, n_aligned, n);
            }
        } else {
            mnpack(0, m, 0, n);
        }
    #endif
    }
};
