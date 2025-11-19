#!/bin/bash

# This script renames all files with the .png extension in the current directory
# to have the .icon extension instead.

# Loop through each file ending in .png
for file in *.png; do
  # Check if the file exists (to avoid errors if no .png files are found)
  if [ -e "$file" ]; then
    # Use 'mv' to rename the file.
    # '${file%.png}' is a bash parameter expansion that removes the '.png'
    # suffix from the filename.
    # We then append the new '.icon' suffix.
    mv -- "$file" "${file%.png}.icon"
    echo "Renamed $file to ${file%.png}.icon"
  else
    echo "No .png files found to rename."
    # Exit the script if no files match to avoid running 'mv' on the literal "*.png"
    exit 0
  fi
done

echo "Renaming complete."
