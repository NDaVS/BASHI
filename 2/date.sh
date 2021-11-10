#!/usr/bin

echo "Date"

echo "Input count of days since Jan, 1, 1970:"
read days
sec=$((days*86400))
MainSec=$(date -d @$sec | cut -b 5-15)
echo $MainSec
