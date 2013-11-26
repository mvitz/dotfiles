#!/bin/bash

if ! which realpath >/dev/null; then
  echo "$(basename "$0") depends on 'realpath'"
  echo "sudo apt-get install realpath"
  exit 1
fi

if [ $# -lt 2 ]; then
  echo "Usage: $(basename "$0") source target"
  exit 1
fi

source_file="$1"
target_file="$2"

if [ -e "$target_file" ]; then
  if [ "$(realpath "$target_file")" == "$(realpath "$source_file")" ]; then
    exit 0
  else
    echo "Backing up old $target_file to $target_file.old"
    mv "$target_file" "$target_file.old"
  fi
fi

echo "Setting up $target_file"
ln -s "$source_file" "$target_file"
