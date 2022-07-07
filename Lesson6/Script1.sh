#!/bin/bash

find /usr/bin/ -type f -perm -u=wr 1> usr_executables.txt
