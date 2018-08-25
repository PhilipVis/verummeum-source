#!/bin/bash

cd $1;

for f in ./* ; do
    	echo "Processing $f file...";
	echo "${f%.*}";
	OUTPUT="${f%.*}" 
	OUTPUT+="_thumbnail.jpg";
	convert $f -geometry x200 $OUTPUT;
	echo "$OUTPUT created";
done