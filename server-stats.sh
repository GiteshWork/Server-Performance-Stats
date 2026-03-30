#!/bin/bash

echo "server performance stats"
echo "---------------------"

echo "cpu usage:"
top -bn1 | grep -i cpu

echo "memory usage:"
free -h 

echo "disk usage:"
df -h 

echo ""
echo "top 5 cpu usage:"
ps aux --sort=-%cpu | head -6

echo ""
echo "top 5 memory usage:"
ps aux --sort=-%mem | head -6


