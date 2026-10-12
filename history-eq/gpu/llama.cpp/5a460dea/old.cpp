extern "C" float target(float initial_tail, float snapshot) {
    float tail=snapshot; float cache=tail; return tail+cache;
}
