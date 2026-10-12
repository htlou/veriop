/* Size-only dummy symbols; CompCert emits calls unlike GCC. */
double fabs(double x) { return 0.0; }
float fabsf(float x) { return 0.0f; }
