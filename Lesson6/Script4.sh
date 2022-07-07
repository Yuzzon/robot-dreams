#!/bin/bash
ls -l /proc/$$/fd > test12.txt && ps -aux >> test12.txt
