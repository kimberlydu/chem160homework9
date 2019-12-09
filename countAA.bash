#!/bin/bash
if [ ! -f $1 ]; then
	echo "Cannot find protien file"
	exit 1
fi
if [ $# -ne 1]; then
	echo "This script requires a protien file"
	exit 1
fi

for i in ALA ARG ASN ASP CYS GLU GLY HIS ILE LEU LYS MET PHE SER THR TRP TYR VAL; do
	echo -n $i " "
	cat $1 | grep $i | wc | awk '{print $1}'
	done


