#!/bin/bash

# Count number of files in myfolder
find ~/myfolder -type f 2> /dev/null | echo "The number of files in myfolder is $( wc -l)"

# Find and change all files with permission 777 to 664
echo "Files with permissions 777: "
find ~/myfolder/ -type f -perm 0777 -print -exec chmod 664 {} \;

# Find and deletes all empty files
echo "Found empty files that will be deleted: "
find ~/myfolder -type f -empty -print -delete

# Delete all lines except first in all files
echo "Lines will be deleted: "
sed '2,$d' ~/myfolder/*
sed -i '2,$d' ~/myfolder/*