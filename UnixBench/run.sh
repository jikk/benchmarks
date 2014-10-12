#!/bin/sh
OUTPUT='/home/ubuntu/benchmarks/UnixBench/test_unixbench.txt'
echo "=======" >> $OUTPUT
date		>> $OUTPUT 
echo "=======" >> $OUTPUT
# Regular
(time ./Run) >>  $OUTPUT

# Short
#./Run -i 1 | tee $OUTPUT
