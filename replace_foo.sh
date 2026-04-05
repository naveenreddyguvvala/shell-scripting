#!/bin/bash

# Check if directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR="$1"

# Check if directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: '$DIR' is not a valid directory."
    exit 1
fi

# Find all .conf files and replace FOO with BAR
find "$DIR" -type f -name "*.conf" -print0 | while IFS= read -r -d '' file; do
    if [ -w "$file" ]; then
        sed -i 's/FOO/BAR/g' "$file"
        echo "Updated: $file"
    else
        echo "Skipping (no write permission): $file"
    fi
done
