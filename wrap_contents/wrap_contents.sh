#!/bin/bash

# Get argumenents
contentFileName=$1
fileNameSpecifier=$2
newFileName=$3

# Create a new file with name newFileName
touch "$newFileName"

# Copy header file into output file
cat "${fileNameSpecifier}_header.html" > "$newFileName"