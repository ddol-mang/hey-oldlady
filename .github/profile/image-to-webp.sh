#!/bin/bash

find $1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.tiff" \) ! -iname "*.webp" -exec zsh -c '
  for file; do
    cwebp -q 75 "$file" -o "${file%.*}.webp"
  done
' bash {} +
