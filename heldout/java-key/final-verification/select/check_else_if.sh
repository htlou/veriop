#!/bin/bash
# Checks that the only non-annotation code edit of the KeY model of NEW select
# (`} else if (j >= 0) {` -> `} else { if (j >= 0) {` + one `}`) yields byte-identical javac output.
# Compiles the real t4 BitmapContainer.java and the brace-edited copy against the base jar and
# compares `javap -c -p` of the whole class.
set -eu
H=$(dirname $(readlink -f $0)); R=$H/../..
JB=/srv/home/hantaolou/code/veriop/benchmarks/tools/java17/jdk-17.0.20.1+1/bin
T=$(mktemp -d); trap "rm -rf $T" EXIT
mkdir -p $T/a/org/roaringbitmap $T/b/org/roaringbitmap $T/oa $T/ob
SRC=$R/explore-inv-free/select-variants/t4.BitmapContainer.java
cp $SRC $T/a/org/roaringbitmap/BitmapContainer.java
python3 - $SRC $T/b/org/roaringbitmap/BitmapContainer.java <<'PY'
import sys
t = open(sys.argv[1]).read()
assert t.count("} else if (j >= 0) {") == 1
t = t.replace("} else if (j >= 0) {", "} else { if (j >= 0) {")
tail = "    }\n    throw new IllegalArgumentException(\"Insufficient cardinality.\");\n  }\n\n  /** TODO"
assert t.count(tail) == 1
t = t.replace(tail, "    } }\n    throw new IllegalArgumentException(\"Insufficient cardinality.\");\n  }\n\n  /** TODO")
open(sys.argv[2], "w").write(t)
PY
CP=$R/wt/base/roaringbitmap/build/libs/roaringbitmap-1.6.24.jar
$JB/javac -nowarn --release 8 -cp $CP -d $T/oa $T/a/org/roaringbitmap/BitmapContainer.java 2>/dev/null
$JB/javac -nowarn --release 8 -cp $CP -d $T/ob $T/b/org/roaringbitmap/BitmapContainer.java 2>/dev/null
A=$($JB/javap -c -p $T/oa/org/roaringbitmap/BitmapContainer.class | sha256sum | cut -c1-16)
B=$($JB/javap -c -p $T/ob/org/roaringbitmap/BitmapContainer.class | sha256sum | cut -c1-16)
echo "javap -c -p original=$A braced=$B"
[ "$A" = "$B" ] && echo "ELSE-IF EDIT: BYTECODE IDENTICAL" || { echo "ELSE-IF EDIT: DIFFERENT"; exit 1; }
