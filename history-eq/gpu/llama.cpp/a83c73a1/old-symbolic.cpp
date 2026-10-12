#ifdef _WIN32
#error This projection is for the Linux setenv branch
#endif
#define getenv(name) ((env_present) ? (char*)1 : (char*)0)
#define setenv(name, value, overwrite) (++setenv_calls)
extern "C" int target(int initialized, int env_present) {
    int setenv_calls = 0;
    env_present = env_present;
    if (!initialized) {
    }
    return setenv_calls;
}
