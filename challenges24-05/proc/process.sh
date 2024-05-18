#!/bin/bash

# Name of the process to monitor
PROCESS_NAME="apache2"
# Command to start the process
START_COMMAND="systemctl start apache2"
# Flag message
FLAG_MESSAGE="FLAG{T@Ke_Y0uR_Fl@G}"

# Function to check if the process is running
is_process_running() {
    pgrep -f "$PROCESS_NAME" > /dev/null 2>&1
    return $?
}

# Function to start the process
start_process() {
    echo "Starting process: $PROCESS_NAME"
    $START_COMMAND
    # Append the flag message to nohup.out
    echo "$FLAG_MESSAGE" >> nohup.out
}

# Main monitoring loop
while true; do
    if is_process_running; then
        echo "$(date): $PROCESS_NAME is running"
    else
        echo "$(date): $PROCESS_NAME is not running. Restarting..."
        start_process
    fi
    # Sleep for a specified interval before checking again
    sleep 60
done
