#!/bin/bash -x
gcc 4-3.c ../src/* -I ../include
./a.out /etc/passwd /etc /dev/log /dev/tty /dev/sr0 /dev/cdrom
rm a.out
