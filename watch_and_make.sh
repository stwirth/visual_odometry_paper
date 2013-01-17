#!/bin/bash

while true 
do
    inotifywait -e close_write paper.txt ./data/ ./images/ ./plots/
    make
done
