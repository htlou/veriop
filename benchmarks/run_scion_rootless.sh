#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
repo="$VERIOP_BENCH_ROOT/repos/scion"
runtime="${XDG_RUNTIME_DIR:-/run/user/$(id -u)}/veriop-docker-runtime"
export DOCKER_HOST="unix://$runtime/docker.sock"
export PATH="$VERIOP_BENCH_ROOT/scion-rootless-bin:$PATH"

nsenter --target "$(cat "$runtime/dockerd-rootless/child_pid")" \
  --user --net --mount --preserve-credentials --wd="$repo" \
  "$repo/bazel-bin/acceptance/router_benchmark/test" \
  --artifacts-dir "$VERIOP_BENCH_ROOT/build/scion-rootless-artifacts" \
  --executable "brload:$repo/bazel-bin/acceptance/router_benchmark/brload/brload_/brload" \
  --executable "coremark:$repo/bazel-bin/tools/coremark/coremark" \
  --executable "mmbm:$repo/bazel-bin/tools/mmbm/mmbm_/mmbm" \
  --docker-image "$repo/bazel-bin/docker/router.load/tarball.tar"
