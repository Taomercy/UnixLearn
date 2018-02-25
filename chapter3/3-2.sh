#!/bin/bash
gcc 3-2.c ../src/* -I ../include
./a.out
ls -l file.hole
od -c file.hole
rm a.out
rm file.hole
