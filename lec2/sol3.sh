#!/usr/bin/bash

# Saves the date of run to the output and error log file
echo -n "Ran on: " >output-log.txt >error-log.txt
date >>output-log.txt >>error-log.txt
run_count=0
flag=0

# Executes till error
while [ $flag -eq 0 ]; do
	./debug.sh >>output-log.txt 2>>error-log.txt
	if [ $? -eq 1 ]; then
		flag=1
	fi
	let "run_count++"
done

# Prints the output nad error along with number of runs
echo "Output Log:"
cat output-log.txt
echo -e "\nError Log:"
cat error-log.txt
echo "Number of successful runs: $run_count"
