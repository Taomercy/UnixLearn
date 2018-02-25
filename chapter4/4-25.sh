#!/bin/bash -x
gcc 4-25.c ../src/* -I ../include
./a.out /home/taomercy /dev/tty[01]
mount
ls -l /dev/tty[01] /dev/sda1
rm a.out
