#!/bin/bash

#check arguments i.e. writefile and writestr
if [[ $# -ne 2 ]]; then
  echo "ERROR: please provide sufficient arguments EX. Usage: $0 writefile writestr"
  exit 1
fi

writefile="$1"
writestr="$2"

#create directory "writefile" 
mkdir -p "$(dirname "$writefile")"

#write writestr to the file, overwriting any existing file and creating path if DNE
if ! echo "$writestr" > "$writefile"; then
  echo "ERROR: unable to write to file $writefile" >&2
  exit 1
fi

#print process complete
echo "Successfully printed \"$writestr\" to file $writefile"
