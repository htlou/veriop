#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
typedef unsigned long DWORD;
typedef struct { DWORD Version, ControlMask, StateMask; } THREAD_POWER_THROTTLING_STATE;
#define _WIN32_WINNT 0x0A00
#define GGML_SCHED_PRIO_LOW (-1)
#define GGML_SCHED_PRIO_NORMAL 0
#define GGML_SCHED_PRIO_MEDIUM 1
#define GGML_SCHED_PRIO_HIGH 2
#define GGML_SCHED_PRIO_REALTIME 3
#define THREAD_PRIORITY_NORMAL 0
#define THREAD_PRIORITY_BELOW_NORMAL (-1)
#define THREAD_PRIORITY_ABOVE_NORMAL 1
#define THREAD_PRIORITY_HIGHEST 2
#define THREAD_PRIORITY_TIME_CRITICAL 3
#define THREAD_POWER_THROTTLING_CURRENT_VERSION 1
#define THREAD_POWER_THROTTLING_EXECUTION_SPEED 1
#define ThreadPowerThrottling 1
#define ZeroMemory(p,n) memset((p), 0, (n))
#define GetCurrentThread() 0
#define GetLastError() 0
#define SetThreadInformation(thread,kind,state,size) info_ok
#define SetThreadPriority(thread,priority) priority_ok
#define GGML_LOG_DEBUG(...) ((void) 0)
bool check(int32_t prio, bool info_ok, bool priority_ok) {
    __builtin_assume(prio == GGML_SCHED_PRIO_NORMAL);

    // Note that on Windows the Process Priority Class must be updated in order to set Thread priority.
    // This is up to the applications.
    DWORD p = THREAD_PRIORITY_NORMAL;
    switch (prio) {
        case GGML_SCHED_PRIO_NORMAL:   p = THREAD_PRIORITY_NORMAL;        break;
        case GGML_SCHED_PRIO_MEDIUM:   p = THREAD_PRIORITY_ABOVE_NORMAL;  break;
        case GGML_SCHED_PRIO_HIGH:     p = THREAD_PRIORITY_HIGHEST;       break;
        case GGML_SCHED_PRIO_REALTIME: p = THREAD_PRIORITY_TIME_CRITICAL; break;
    }

    if (prio == GGML_SCHED_PRIO_NORMAL) {
        // Keep inherited policy/priority
        return true;
    }

    if (!SetThreadPriority(GetCurrentThread(), p)) {
        fprintf(stderr, "warn: failed to set thread priority %d : (%d)\n", prio, (int) GetLastError());
        return false;
    }

    return true;

}
