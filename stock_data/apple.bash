#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Script takes 1 argument, three letter abbreviation for stock_data file"
	exit 1
fi
for i in *$1*; do
grep aapl $i | awk '{print $2}'
done
