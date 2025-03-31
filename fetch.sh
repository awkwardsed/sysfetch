#!/bin/bash
# Simple "neofetch"-like script showing ASCII art and system info side-by-side

# Define your ASCII art lines (you can replace these with your desired art)
ascii=(
"   /\_/\   "
"  ( o.o )  "
"   > ^ <   "
)

# Gather system info into an array.
# Customize this list however you want.
sys_info=(
"User:       $(whoami)"
"Hostname:   $(hostname)"
"OS:         $(awk -F= '/^NAME/{print $2}' /etc/os-release | tr -d '\"')"
"Kernel:     $(uname -r)"
"Uptime:     $(uptime -p)"
"Shell:      $SHELL"
)

# Determine the maximum number of lines to iterate over.
ascii_lines=${#ascii[@]}
info_lines=${#sys_info[@]}
max_lines=$(( ascii_lines > info_lines ? ascii_lines : info_lines ))

# Set the width for the ASCII art column (adjust if necessary)
ascii_width=15

# Loop through the lines and print side-by-side
for (( i=0; i<max_lines; i++ )); do
    # Retrieve the ASCII line or use an empty string if not available
    if [[ $i -lt $ascii_lines ]]; then
        a_line="${ascii[$i]}"
    else
        a_line=""
    fi

    # Retrieve the system info line or use an empty string if not available
    if [[ $i -lt $info_lines ]]; then
        info_line="${sys_info[$i]}"
    else
        info_line=""
    fi

    # Print the line with the ASCII art and system info side-by-side.
    # The %-15s format ensures the ASCII column is padded to 15 characters.
    printf "%-${ascii_width}s %s\n" "$a_line" "$info_line"
done

