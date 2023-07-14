#!/bin/bash

# Find the PID of the process
pid=$(ps aux | grep uvicorn | grep -v grep | awk '{print $2}')

if [ -z "$pid" ]; then
  echo "Process not found."
else
  echo "PID found: $pid"
  
  # Kill the process
  kill "$pid"
  
  echo "Process with PID $pid has been terminated."
fi
