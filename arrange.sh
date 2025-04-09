#!/bin/bash

FILES_DIR="./files"

for filepath in "$FILES_DIR"/*; do
  filename=$(basename "$filepath")
  first_char=${filename:0:1}
  lowercase=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

  if [[ $lowercase =~ [a-z] ]]; then
    mv "$filepath" "./$lowercase/"
  fi
done
