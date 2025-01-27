#!/bin/bash

# Ask user to enter a filename
echo "Enter the filename you want to back up:"
read FILE

# Define the backup directory
BACKUP_DIR="backups/"

# Here the script checks if there is a backup directory, if not it creates one
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR"
fi

# The script constructs the backup filename and appends a trailing '.bak' extension
BACKUP_FILE="$BACKUP_DIR${FILE}.bak"

# It checks if the backup file already exists
if [ -f "$BACKUP_FILE" ]; then
    echo "Backup already exists."
else
    # Then copy's the file to the backup directory the filename doesn't exist already 
    cp "$FILE" "$BACKUP_FILE"
    echo "Backup completed."
fi
