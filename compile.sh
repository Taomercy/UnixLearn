#!/bin/bash
#用于编译代码
compile_file=$1
#argv1=$2
#argv2=$3
if [ -z $compile_file ];then
	echo 'please add compile_file!'
	exit
else
	gcc $compile_file src/* -I include
	#./a.out $argv1 $argv2
fi
