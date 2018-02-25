#!/bin/bash
gcc 4-3.c ../src/* -I ../include
echo "$./a.out /etc/passwd /etc /dev/log /dev/tty /dev/sr0 /dev/cdrom"
./a.out /etc/passwd /etc /dev/log /dev/tty /dev/sr0 /dev/cdrom
rm a.out
