extern "C" float target(float initial_tail, float snapshot) {
    float tail=initial_tail; float cache=snapshot; return tail+cache;
}
