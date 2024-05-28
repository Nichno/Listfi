#!/bin/bash

# Check if user has provided a search term
if [ -z "$1" ]; then
    echo "Usage: $0 <search_term>"
    exit 1
fi

search_term="$1"
log_file="history.log"
search_term_logged=false

# Function to search for the term recursively
search_files() {
    local dir="$1"

    # Loop through all files and directories
    for file in "$dir"/*; do
        if [ -d "$file" ]; then
            # If it's a directory, recursively search it
            search_files "$file"
        elif [ -f "$file" ]; then
            # If it's a file, search for the term
            grep -q "$search_term" "$file"
            if [ $? -eq 0 ]; then
                echo "Found in: $file"
            elif [ "$search_term_logged" = false ]; then
                echo "Search term '$search_term' not found in any files." >> "$log_file"
                search_term_logged=true
            fi
        fi
    done
}

# Start searching from the current directory
search_files "/usr/share/wordlists/"

echo "Search complete. Results logged in $log_file."
