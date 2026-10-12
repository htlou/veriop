#!/bin/bash
# usage: killrun.sh <short>/<unit>  : kill alive_check + alive-tv processes for that output dir
pat="/c/libdivide/$1"
for p in $(ps -eo pid,args | awk -v P="$pat" 'index($0,P) && ($0 ~ /alive_check.py|alive-tv/) {print $1}'); do kill $p 2>/dev/null; done
