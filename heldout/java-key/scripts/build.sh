#!/bin/bash
# Build the official JMH shadow jar for a worktree (base|cand). Requires network (gradle plugins).
set -e
W=/srv/home/hantaolou/code/veriop/heldout/java-key/wt/$1
export JAVA_HOME=/srv/home/hantaolou/code/veriop/benchmarks/tools/java17/jdk-17.0.20.1+1
cd $W && timeout 580 ./gradlew --max-workers=16 :jmh:shadowJar -x test
sha256sum $W/jmh/build/libs/benchmarks.jar
