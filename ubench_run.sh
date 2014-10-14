#!/bin/sh
UBENCH_HOME=${HOME}/benchmarks/UnixBench/
OUTPUT=${HOME}/benchmarks/logs/unixbench.txt
echo "==== BEGIN: Unixbench ===="    >> $OUTPUT
date >> $OUTPUT 
echo "=========================="    >> $OUTPUT

cd ${UBENCH_HOME}
# Regular
(time ${UBENCH_HOME}/Run) >> $OUTPUT 2>&1

# Short
#./Run -i 1 | tee $OUTPUT

echo "===== END: Unixbench ====="    >> $OUTPUT
date >> $OUTPUT 
echo "=========================="    >> $OUTPUT
