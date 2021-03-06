#!/usr/bin/env bash

# Linker opts is blank for OS X, FreeBSD and OpenSolaris
#LINKER_OPTIONS=""

# Must link with realtime libs for Linux
LINKER_OPTIONS="-lrt"

gcc -Wall -c -o md5.o md5.c
gcc -Wall -c -o utils.o utils.c
gcc -Wall md5.o utils.o -o premise premise.c -L. $LINKER_OPTIONS
gcc -Wall md5.o utils.o -o conclusion conclusion.c -L. $LINKER_OPTIONS
