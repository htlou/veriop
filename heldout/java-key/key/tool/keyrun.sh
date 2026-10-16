#!/bin/bash
# usage: keyrun.sh problem.key [maxPrintedOpenGoals]   (runs pinned to CPUs 100-107, fresh KeY home)
J=/srv/home/hantaolou/code/veriop/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java
K=/srv/home/hantaolou/code/veriop/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar
T=$(dirname $(readlink -f $0)); H=$(mktemp -d)
cd $(dirname $(readlink -f $1))
timeout ${KEY_TIMEOUT:-1500} taskset -c 100-107 $J -Xss32m -Xmx8g -Duser.home=$H -cp $T:$K KeyRun $(readlink -f $1) ${2:-3} "${@:3}" 2>&1 | grep -v "INFO\|^\s*at \|DEBUG"
rc=${PIPESTATUS[0]}; rm -rf $H; exit $rc
