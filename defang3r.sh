#!/bin/bash

# Check if an input file was provided && check if the input file exists
if [[ $# -eq 0 ]]; then
    echo "Usage: $0 inputFile.txt"
    exit 1
fi

input_file="$1"

if [[ ! -f "$input_file" ]]; then
    echo "File not found: $input_file"
    exit 1
fi

# Generate the output file name with appending "-defang3d"
output_file="${input_file%.*}-defang3d.${input_file##*.}"
> "$output_file"

# Read each URL from the input file & defang
while IFS= read -r url || [[ -n "$url" ]]; do
    defanged_url="${url//./[.]}"
    defanged_url="${defanged_url//htt/hxx}"
    echo "$defanged_url" >> "$output_file"
done < "$input_file"

echo "Defanged URLs have been written to $output_file"