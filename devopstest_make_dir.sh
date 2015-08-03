#!/bin/bash

echo "start"

dir=0
file=1
num="start"
new="start"
while [ $dir -lt 30 ] ; do
	echo $dir
	dir=$((dir + 1))
	num=`printf "%02d" $dir`
	new="devopsshared_"$num
	mkdir $new
	cd $new
	file=0
	while [ $file -lt 5 ] ; do
		file=$((file + 1))
		touch $new"_file"$file".txt"
	done
	cd ..
done