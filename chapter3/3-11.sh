#!/bin/bash -x
gcc 3-11.c ../src/* -I ../include
./a.out 0 < /dev/tty
./a.out 1 > temp.foo
./a.out 2 2>> temp.foo
./a.out 5 5<> temp.foo
rm a.out
rm temp.foo
