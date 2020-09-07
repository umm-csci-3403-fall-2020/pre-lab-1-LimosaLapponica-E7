#!/bin/bash

# Get argumenents
contentFileName=$1
fileNameSpecifier=$2
newFileName=$3

# Create a new file with name newFileName
touch "$newFileName"

# Copy header file into output file
cat "${fileNameSpecifier}_header.html" > "$newFileName"

# Add content of contentFileName to end of newFile
# The >> cat option adds the output of the source  to the end of the file being edited
cat "$contentFileName" >> "$newFileName"

# Add content of footer to end of newFile
# The >> cat option adds the output of the source  to the end of the file being edited
cat "${fileNameSpecifier}_footer.html" >> "$newFileName"