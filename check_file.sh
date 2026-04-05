#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename_or_directory>"
    exit 1
fi

TARGET="$1"

# Check if target exists
if [ -e "$TARGET" ]; then
    # Check if it is a directory
    if [ -d "$TARGET" ]; then
        echo "'$TARGET' is a directory. Listing files inside:"
        ls -l "$TARGET"
    else
        echo "'$TARGET' exists."

        # Check readability
        if [ -r "$TARGET" ]; then
            echo "It is readable."
        else
            echo "It is not readable."
        fi

        # Check writability
        if [ -w "$TARGET" ]; then
            echo "It is writable."
        else
            echo "It is not writable."
        fi
    fi
else
    echo "'$TARGET' does not exist."
fi
