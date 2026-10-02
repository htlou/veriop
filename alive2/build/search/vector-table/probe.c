typedef unsigned long long vec4 __attribute__((ext_vector_type(4)));
unsigned long long vector_lookup(const unsigned char *p) {
    return ((vec4){4, 20, 300, 7000})[*p & 3];
}
unsigned char freeze_probe(unsigned char x) {
    return __builtin_nondeterministic_value(x);
}
