/* Probe actual kernel permission for the requested counters; no perf package required. */
#include <linux/perf_event.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>
#include <string.h>
int main(void) {
  struct {const char *name; unsigned type; unsigned long long config;} events[] = {
    {"cycles", PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES},
    {"instructions", PERF_TYPE_HARDWARE, PERF_COUNT_HW_INSTRUCTIONS},
    {"branches", PERF_TYPE_HARDWARE, PERF_COUNT_HW_BRANCH_INSTRUCTIONS},
    {"branch-misses", PERF_TYPE_HARDWARE, PERF_COUNT_HW_BRANCH_MISSES},
    {"L1-icache-load-misses", PERF_TYPE_HW_CACHE, PERF_COUNT_HW_CACHE_L1I | (PERF_COUNT_HW_CACHE_OP_READ << 8) | (PERF_COUNT_HW_CACHE_RESULT_MISS << 16)},
    {"stalled-cycles-frontend", PERF_TYPE_HARDWARE, PERF_COUNT_HW_STALLED_CYCLES_FRONTEND},
    {"task-clock", PERF_TYPE_SOFTWARE, PERF_COUNT_SW_TASK_CLOCK}
  };
  for (unsigned i=0; i<sizeof(events)/sizeof(events[0]); i++) {
    struct perf_event_attr attr = {0};
    attr.size=sizeof(attr); attr.type=events[i].type; attr.config=events[i].config;
    attr.disabled=1; attr.exclude_kernel=1; attr.exclude_hv=1;
    int fd=syscall(__NR_perf_event_open,&attr,0,-1,-1,0), err=errno;
    printf("%s\t%d\t%d\t%s\n",events[i].name,fd>=0,fd<0?err:0,fd<0?strerror(err):"available");
    if(fd>=0) close(fd);
  }
  return 0;
}
