#!/bin/bash -x
gcc 4-9.c ../src/* -I ../include
umask
./a.out
ls -l foo bar
umask
rm a.out
rm foo
rm bar
