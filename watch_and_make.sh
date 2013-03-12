#!/bin/bash

while true 
do
    inotifywait -e close_write paper.tex ./data/ ./images/ ./plots/ docutils.conf
    make
done
