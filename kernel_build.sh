#!/usr/bin/env bash

KBUILD_HOME="${HOME}/benchmarks/linux/"
OUTPUT=${HOME}/benchmarks/logs/kernel_build.txt
echo "==== BEGIN: Kernel build ====" 	>> $OUTPUT
date					>> $OUTPUT
echo "=============================" 	>> $OUTPUT

cd $KBUILD_HOME
# Clean up
time make clean >> $OUTPUT 2>> $OUTPUT
# Build.
time make >> $OUTPUT 2>> $OUTPUT

# Clean up again.
time make clean >> $OUTPUT 2>> $OUTPUT

echo "==== END: Kernel build ====" 	>> $OUTPUT
date					>> $OUTPUT
echo "===========================" 	>> $OUTPUT
