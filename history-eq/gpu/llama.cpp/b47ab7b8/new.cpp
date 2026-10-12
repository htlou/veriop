struct Backend {};
using ggml_backend_t = Backend *;
struct ggml_backend_sched {
  bool is_alloc;
  int n_backends;
  ggml_backend_t * backends;
  int cur_copy;
};
using ggml_backend_sched_t = ggml_backend_sched *;
static void ggml_backend_synchronize(ggml_backend_t) {}
void ggml_backend_sched_synchronize(ggml_backend_sched_t sched) {
    for (int i = 0; i < sched->n_backends; i++) {
        ggml_backend_synchronize(sched->backends[i]);
    }
    if (!sched->is_alloc) {
        // if the graph is not already allocated, always use copy 0 after a synchronization
        // this ensures that during generation the same copy is used every time,
        // which avoids changes in the graph that could cause CUDA or other graphs to be disabled
        sched->cur_copy = 0;
    }
}
extern "C" int target_state(bool allocated, int copy) {
  Backend backend;
  ggml_backend_t backends[] = {&backend};
  ggml_backend_sched sched{allocated, 1, backends, copy};
  ggml_backend_sched_synchronize(&sched);
  return sched.cur_copy;
}
extern "C" int target_unallocated(int copy) { return target_state(false, copy); }
