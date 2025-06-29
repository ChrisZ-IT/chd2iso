#!/bin/bash

# Set the base directory (default to current directory if not provided)
BASE_DIR="${1:-.}"

mkdir -p "$BASE_DIR/processed"
mkdir -p "$BASE_DIR/iso"

# Find all .chd files in the directory (recursively)
find "$BASE_DIR" -type f -name "*.chd" | while read -r CHD_FILE; do
    # Get the base filename without extension
    BASE_NAME="${CHD_FILE%.*}"
    BASE_FILENAME="$(basename "${CHD_FILE%.*}")"

    # Define output .cue and .iso filenames
    CUE_FILE="${BASE_NAME}.cue"
    ISO_FILE="${BASE_NAME}.iso"
    if [[ "$CUE_FILE" != *"/processed/"* ]]; then
        echo "Converting: $CHD_FILE"
        # Extract .chd to .cue/.bin first
        chdman extractcd -i "$CHD_FILE" -o "$CUE_FILE" --force

        # Rename .bin files and cleanup
        if [[ -f "$BASE_NAME.bin" ]]; then
            echo "Renaming .bin to .iso for: $CHD_FILE"
            mv "$BASE_NAME.bin" "$ISO_FILE"
            mv "${CHD_FILE}" "${BASE_DIR}processed/${BASE_FILENAME}.chd"
            mv "${ISO_FILE}" "${BASE_DIR}iso/${BASE_FILENAME}.iso"
            rm "$CUE_FILE"
        fi
            echo "Conversion complete: $ISO_FILE"
            echo ""
            echo ""
    fi
done

echo "Script Complete. Files Converted"