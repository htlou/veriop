#include <stdatomic.h>
struct ggml_threadpool {
    atomic_int n_threads_cur, n_barrier, n_barrier_passed;
};
static inline void ggml_thread_cpu_relax(void) {}
static inline __attribute__((always_inline)) void ggml_barrier(struct ggml_threadpool * tp) {
    int n_threads = atomic_load_explicit(&tp->n_threads_cur, memory_order_relaxed);
    if (n_threads == 1) {
        return;
    }

#ifdef GGML_USE_OPENMP
    #pragma omp barrier
#else
    int n_passed = atomic_load_explicit(&tp->n_barrier_passed, memory_order_relaxed);

    // enter barrier (full seq-cst fence)
    int n_barrier = atomic_fetch_add_explicit(&tp->n_barrier, 1, memory_order_seq_cst);

    int last = 0;
    if (n_barrier == (n_threads - 1)) {
        // last thread
        atomic_store_explicit(&tp->n_barrier, 0, memory_order_relaxed);
        last = 1;
    } else {
        // wait for other threads
        while (atomic_load_explicit(&tp->n_barrier_passed, memory_order_relaxed) == n_passed) {
            ggml_thread_cpu_relax();
        }
    }

    // exit barrier (full seq-cst fence)
    atomic_fetch_add_explicit(&tp->n_barrier_passed, last, memory_order_seq_cst);
#endif
}
void compare(struct ggml_threadpool *tp) { ggml_barrier(tp); }
