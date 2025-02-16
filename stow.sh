#!/bin/bash

# Check for -D argument
STOW_CMD="stow"
if [ "$1" == "-D" ]; then
  STOW_CMD="stow -D"
fi

# List all directories in the current directory
for dir in */; do
  # Remove trailing slash
  dir_name="${dir%/}"

  # Apply the stow command to the directory
  echo "Running $STOW_CMD on: $dir_name"
  $STOW_CMD "$dir_name"
done
