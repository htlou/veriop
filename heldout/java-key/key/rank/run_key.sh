#!/bin/bash
# usage: key.sh file.key [timeout_ms]
J=/srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java
K=/srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar
f=$(readlink -f $1); H=$(mktemp -d)
timeout 900 taskset -c 100-107 $J -Xss16m -Duser.home=$H -jar $K --auto --timeout=${2:-600000} "$f" < /dev/null 2>&1 | grep -v "Reading KeY file\|^\s*at " 
rm -rf $H
