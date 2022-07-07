#!/bin/bash
wc -l < usr_executables.txt
head usr_executables.txt | sed 's/.*in//' > cmd_names
