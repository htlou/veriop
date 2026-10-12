/* client level: separately compiled user code that only sees the declarations. XXH_CONSTF on XXH_versionNumber. */
#include <stdint.h>
#include <stddef.h>
#include "xxhash.h"
unsigned target_client_version_twice(void) { return XXH_versionNumber() - XXH_versionNumber(); }
int g;
int target_client_version_mem(void) { g = 1; (void)XXH_versionNumber(); return g; }
