#!/usr/bin/env bash

LINUX_HOME="${HOME}/benchmarks/linux/"
TMP="/tmp"
OUTPUT=${HOME}/benchmarks/logs/targz_build.txt

echo "==== BEGIN: tar/gzip compression ====" 	>> $OUTPUT
date						>> $OUTPUT
echo "=====================================" 	>> $OUTPUT

cd $LINUX_HOME
time tar cvzf * ${TMP}/linux.tgz >> $OUTPUT 2>> $OUTPUT

echo "==== BEGIN: tar/gzip de-compression ===="	>> $OUTPUT
date						>> $OUTPUT
echo "========================================"	>> $OUTPUT
cd $TMP
time tar xvzf linux.tgz  >> $OUTPUT 2>> $OUTPUT
# Clean up
rm -f *.tgz

echo "====== END: tar/gzip ======" 	>> $OUTPUT
date					>> $OUTPUT
echo "===========================" 	>> $OUTPUT
