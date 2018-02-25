#!/bin/bash -x
gcc 4-8.c ../src/* -I ../include
ls -l a.out
./a.out a.out
ls -l /etc/shadow
./a.out /etc/shadow
sudo chown root a.out
sudo chmod u+s a.out
ls -l a.out
./a.out /etc/shadow
rm a.out
