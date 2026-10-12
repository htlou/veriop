import sys, os; sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))
from ptxlib import *
R = "llama.cpp"
NONE = "none invoked (changed code is outside Volta/Alive2 scope)"
def u(short, reason, scope, notes):
    write_result(R, full(R, short), checker=NONE, checker_ran=False, verdict="UNSUPPORTED", unsupported_reason=reason, scope=scope,
                 build_config="n/a", units=[], evidence_dir=ev(R, short), notes=notes)
u("0320ac52", "out-of-checker-language", "Metal backend rewrite (ggml-metal*.metal/.m/.cpp, 19 files, +7870 lines) and ggml.h/test additions",
  "Metal Shading Language kernels plus Objective-C/C++ host code; new files without old counterparts. No PTX, no x86 IR.")
u("bcdcc104", "checker-language-feature-unsupported", "ggml/src/ggml-backend-meta.cpp (host C++ scheduling code for the meta backend, std::vector/maps, backend dispatch)",
  "Host-side CPU-overhead reduction in a scheduler over ggml_backend/ggml_tensor objects with STL containers and virtual backend calls; no numerical kernel. Alive2 cannot model the backend interfaces and containers.")
print("ok")
