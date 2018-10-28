#!/bin/bash

PID=0
while [ $PID -eq 0 ]; do
    sleep 1
    PID=$(pgrep $1 | wc -l)
done

echo $PID > app.pid
sudo operf --pid $PID -g -c > operf.log
opreport --long-filenames -c > opreport.log