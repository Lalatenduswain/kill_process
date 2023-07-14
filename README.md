# Process Killer Script

This script allows you to find and terminate a process based on its name. It is useful when you need to stop a specific process running on your system, such as "uvicorn".

## Prerequisites

- Bash shell environment

## Usage

1. Download the script file `kill_process.sh`.
2. Open a terminal and navigate to the script's directory.
3. Make the script executable by running the command: `chmod +x kill_process.sh`.
4. Run the script by executing: `./kill_process.sh`.

## How it works

The script uses a combination of Linux commands to find and kill a process based on its name. It performs the following steps:

1. Searches for the process using the `ps aux | grep <process_name> | grep -v grep | awk '{print $2}'` command.
2. Checks if the process is found by evaluating the PID returned.
3. If the process is found, it sends a termination signal to the process using the `kill` command.
4. Provides feedback on the success or failure of the termination.

## Example

Here's an example of how to use the script to terminate a process named "uvicorn":

```bash
./kill_process.sh uvicorn
