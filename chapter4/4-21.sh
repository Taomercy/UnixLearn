#!/bin/bash -x
gcc 4-21.c ../src/* -I ../include
ls -l 4-3.c 4-8.c 4-9.c
ls -lu 4-3.c 4-8.c 4-9.c
date
./a.out 4-3.c 4-8.c 4-9.c
ls -l 4-3.c 4-8.c 4-9.c
ls -lu 4-3.c 4-8.c 4-9.c
ls -lc 4-3.c 4-8.c 4-9.c
rm a.out
