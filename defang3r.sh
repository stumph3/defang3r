#!/bin/bash

# Check if an input file was provided as an argument
if [[ $# -eq 0 ]]; then
    echo "Usage: $0 inputFile.txt"
    exit 1
fi

input_file="$1"

# Check if the input file exists
if [[ ! -f "$input_file" ]]; then
    echo "File not found: $input_file"
    exit 1
fi

# Generate the output file name by appending "-defang3d"
output_file="${input_file%.*}-defang3d.${input_file##*.}"

# Clear the output file or create it if it does not exist
> "$output_file"

# Read each URL from the input file
while IFS= read -r url || [[ -n "$url" ]]; do
    # Defang the URL by replacing dots with '[dot]' and 'tt' with 'xx' in 'http'
    defanged_url="${url//./[.]}"
    defanged_url="${defanged_url//htt/hxx}"
    
    # Append the defanged URL to the output file
    echo "$defanged_url" >> "$output_file"
done < "$input_file"

echo "Defanged URLs have been written to $output_file"