#!/bin/bash

# Find all files with extension $1 in subfolders and copy them into the current folder with changing the name of the file to their last subfolder plus .file ext

find -name *$1 | xargs -I % sh -c ' fileName=$(basename %); \
filePath=$(dirname %); \
lastDir=$(basename $filePath); \
echo copying $fileName to $(pwd)/$lastDir.file; \
cp % $lastDir.file \
;'
