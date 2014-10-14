#!/usr/bin/env bash

KBUILD_HOME="${HOME}/benchmarks/linux/"
OUTPUT=${HOME}/benchmarks/logs/kernel_build.txt
echo "==== BEGIN: Kernel build ====" 	>> $OUTPUT
date					>> $OUTPUT
echo "=============================" 	>> $OUTPUT

cd $KBUILD_HOME
# Build.
time make >> $OUTPUT 2>&1

echo "==== END: Kernel build ====" 	>> $OUTPUT
date					>> $OUTPUT
echo "===========================" 	>> $OUTPUT
