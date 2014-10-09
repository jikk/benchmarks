#!/bin/sh
OUTPUT='test_unixbench.txt'

# Regular
./Run | tee $OUTPUT

# Short
#./Run -i 1 | tee $OUTPUT
