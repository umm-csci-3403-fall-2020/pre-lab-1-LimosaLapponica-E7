#!/bin/bash

# Pipe the output of the sed regex "filter" (which takes as an input r0_input.txt) to a newly
# Created output file using cat
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt | cat > r0_output.txt

# Use awk and regex groupings to select patterns in input text.
# Pipe the output of awk to cat, and write text to output file. 
awk 'match($0, /([a-zA-Z]+)\. ([a-zA-Z ]+) ([a-zA-Z]+)\./, groups) {print "1. " groups[1] "\n" "2. " groups[3] "\n" }' < r1_input.txt |
cat > r1_output.txt

# Use awk and regex groupings to select patterns in input text.
# Pipe the output of awk to cat, and write text to output file.
awk 'match($0, /([a-zA-z ]+) ([a-zA-Z.]+) ([a-zA-z ]+)/, groups) {print "1. " groups[2] "\n" "2. " groups[3] "\n" }' < r2_input.txt |
cat > r2_output.txt