#!/bin/bash

# Check if filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE="$1"

# Check if file exists
if [ ! -e "$FILE" ]; then
    echo "Error: '$FILE' does not exist."
    exit 1
fi

# Check if it is readable
if [ ! -r "$FILE" ]; then
    echo "Error: '$FILE' is not readable. Permission denied."
    exit 1
fi

# Handle empty file
if [ ! -s "$FILE" ]; then
    echo "File '$FILE' is empty."
    echo "Lines: 0"
    echo "Words: 0"
    echo "Characters: 0"
    exit 0
fi

# Count lines, words, and characters using wc
LINES=$(wc -l < "$FILE")
WORDS=$(wc -w < "$FILE")
CHARS=$(wc -m < "$FILE")

echo "File: $FILE"
echo "Lines: $LINES"
echo "Words: $WORDS"
echo "Characters: $CHARS"
