typedef unsigned long size_t;
typedef unsigned char uint8_t;
void *memcpy(void *, const void *, size_t);
struct Buffer { uint8_t *ptr; };
void transfer(uint8_t *base) {
    struct Buffer box = {base};
    struct Buffer *src = &box; void *dst = base + 4;
    size_t offset = 0;
    size_t spitch = 4, dpitch = 4, width = 4, height = 2;
if (width == spitch && width == dpitch) {
            memcpy(dst, (const uint8_t *) src->ptr + offset, width * height);
        } else {
            for (size_t i = 0; i < height; i++) {
                memcpy((uint8_t *) dst + i * dpitch, (const uint8_t *) src->ptr + offset + i * spitch, width);
            }
        }

}
int printf(const char *, ...);
int main(void) {
    uint8_t b[12];
    for (int i = 0; i < 12; i++) b[i] = (uint8_t)i;
    transfer(b);
    for (int i = 0; i < 12; i++) printf("%u%s", (unsigned)b[i], i == 11 ? "\n" : " ");
    return 0;
}
