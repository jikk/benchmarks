#!/bin/sh
OUTPUT='/home/ubuntu/benchmarks/UnixBench/test_unixbench.txt'
echo "=======" >> $OUTPUT
date		>> $OUTPUT 
echo "=======" >> $OUTPUT
UBENCH_HOME=${HOME}/benchmarks/UnixBench/
# Regular
(time ${UBENCH_HOME}/Run) >>  $OUTPUT 2>&1

# Short
#./Run -i 1 | tee $OUTPUT
