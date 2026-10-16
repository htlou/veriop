#!/bin/bash
# usage: run.sh variant params...
J=/srv/home/hantaolou/code/veriop/benchmarks/tools/java17/jdk-17.0.20.1+1/bin/java
JAR=/srv/home/hantaolou/code/veriop/heldout/java-key/wt/base/jmh/build/libs/benchmarks.jar
v=$1; shift
timeout 500 taskset -c 168,169 $J -cp $PWD/cls/$v:$JAR org.openjdk.jmh.Main "$@" 2>&1 | grep -E "^Select" | sed "s/^/$v /"
