#!/bin/sh
OUTPUT='/home/ubuntu/benchmarks/UnixBench/test_unixbench.txt'
echo "=======" >> $OUTPUT
date		>> $OUTPUT 
echo "=======" >> $OUTPUT
# Regular
time /home/ubuntu/benchmarks/UnixBench/Run >>  $OUTPUT

# Short
#./Run -i 1 | tee $OUTPUT
