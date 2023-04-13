#!/bin/bash

# check arguments i.e. filesdir and searchstr
if [[ $# -ne 2 ]]; then
  echo "ERROR: please provide sufficient arguments EX. Usage: $0 filesdir searchstr"
  exit 1
fi

filesdir="$1"
searchstr="$2"

# check filesdir exists, if not exit with error message
if [[ ! -d "$filesdir" ]]; then
  echo "ERROR $filesdir is not a directory"
  exit 1
fi

# count the number of files and matching lines
num_files=$(find "$filesdir" -type f | wc -l)
num_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matches"
