#!/bin/sh
UBENCH_HOME=${HOME}/benchmarks/UnixBench/
OUTPUT=${UBENCH_HOME}/test_unixbench.txt
echo "=======" 	>> $OUTPUT
date		>> $OUTPUT 
echo "=======" 	>> $OUTPUT

cd ${UBENCH_HOME}
# Regular
(time ${UBENCH_HOME}/Run) >>  $OUTPUT 2>&1

# Short
#./Run -i 1 | tee $OUTPUT
