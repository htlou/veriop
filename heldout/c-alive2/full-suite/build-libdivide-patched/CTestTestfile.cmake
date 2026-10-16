# CMake generated Testfile for 
# Source directory: /srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched
# Build directory: /srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/build-libdivide-patched
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[tester]=] "tester")
set_tests_properties([=[tester]=] PROPERTIES  DEPENDS "build_tester" _BACKTRACE_TRIPLES "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;397;add_test;/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;0;")
add_test([=[build_tester]=] "/usr/bin/cmake" "--build" "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/build-libdivide-patched" "--target" "tester")
set_tests_properties([=[build_tester]=] PROPERTIES  _BACKTRACE_TRIPLES "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;399;add_test;/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;0;")
add_test([=[test_c99]=] "test_c99")
set_tests_properties([=[test_c99]=] PROPERTIES  DEPENDS "build_test_c99" _BACKTRACE_TRIPLES "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;402;add_test;/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;0;")
add_test([=[build_test_c99]=] "/usr/bin/cmake" "--build" "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/build-libdivide-patched" "--target" "test_c99")
set_tests_properties([=[build_test_c99]=] PROPERTIES  _BACKTRACE_TRIPLES "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;403;add_test;/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;0;")
add_test([=[test_divlu]=] "test_divlu")
set_tests_properties([=[test_divlu]=] PROPERTIES  DEPENDS "build_test_divlu" _BACKTRACE_TRIPLES "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;406;add_test;/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;0;")
add_test([=[build_test_divlu]=] "/usr/bin/cmake" "--build" "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/build-libdivide-patched" "--target" "test_divlu")
set_tests_properties([=[build_test_divlu]=] PROPERTIES  _BACKTRACE_TRIPLES "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;407;add_test;/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;0;")
add_test([=[benchmark_branchfree]=] "benchmark_branchfree")
set_tests_properties([=[benchmark_branchfree]=] PROPERTIES  DEPENDS "build_benchmark_branchfree" _BACKTRACE_TRIPLES "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;412;add_test;/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;0;")
add_test([=[build_benchmark_branchfree]=] "/usr/bin/cmake" "--build" "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/build-libdivide-patched" "--target" "benchmark_branchfree")
set_tests_properties([=[build_benchmark_branchfree]=] PROPERTIES  _BACKTRACE_TRIPLES "/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;413;add_test;/srv/home/hantaolou/code/veriop/heldout/c-alive2/full-suite/libdivide-patched/CMakeLists.txt;0;")
