#ifdef _WIN32
#error This projection is for the Linux setenv branch
#endif
#define getenv(name) ((env_present) ? (char*)1 : (char*)0)
#define setenv(name, value, overwrite) (++setenv_calls)
extern "C" int target(int initialized, int env_present) {
    int setenv_calls = 0;
    env_present = env_present;
    if (!initialized) {
            // Set CUDA_SCALE_LAUNCH_QUEUES before any CUDA API call to improve multi-GPU pipeline parallelism performance
            // PR: https://github.com/ggml-org/llama.cpp/pull/19042
            if (getenv("CUDA_SCALE_LAUNCH_QUEUES") == nullptr) {
#ifdef _WIN32
                _putenv_s("CUDA_SCALE_LAUNCH_QUEUES", "4x");
#else
                setenv("CUDA_SCALE_LAUNCH_QUEUES", "4x", 0); // don't overwrite if already set
#endif // _WIN32
            }

    }
    return setenv_calls;
}
