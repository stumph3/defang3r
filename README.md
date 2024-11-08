# defang3r
defang3r is a bash script designed to safely transform URLs into a defanged format, making it safer to share URLs in documentation, emails, and online discussions without triggering links or security warnings.

# URL Defanger Tool

The URL Defanger Tool is a simple Bash script that processes a text file containing URLs and transforms them to a defanged format. This is particularly useful for cybersecurity and IT professionals who need to share URLs safely without risking accidental hyperlinks, which can be potentially harmful.

## Features

- **Input Validation**: Ensures that a file is provided as input and that it exists before proceeding.
- **Automatic Output Filenaming**: Generates an output file's name by appending `-defang3d` to the input file's base name.
  
## Usage

To use this script you must provide it with a single argument: the path to a text file containing URLs you want to defang. Below is the syntax to run the script:

`./defang3r.sh testurls1.txt`

## Example

Suppose you have a file named `testurls1.txt` containing the following URLs:
```
http://example.com
https://google.com
http://yahoo.com
```

After running the script:

`./defang3r.sh testurls1.txt`

You would find a new file named `testurls1-defang3d.txt` in the same directory containing:
```
hxxp://example[.]com
hxxps://google[.]com 
hxxp://yahoo[.]com
```

## System Requirements

- **Bash shell** (or a compatible environment)
- **Permissions**: Read and write permissions in the directory containing the script and your files.

## Installation

1. Download the `defang3r.sh` script.
2. Give it execute permissions, if not already set: `chmod +x defang3r.sh`

## Troubleshooting

Ensure that:
- The input file path is correct and accessible from your current directory.
- You have the necessary permissions to read the input and write the output file.
- The Bash environment is properly configured on your system.

For direct help or additional information, refer to your system administrator or consult your Bash documentation.

## Contributions

Contributions to this project are welcome! Please fork the repository and submit a pull request with your enhancements.

## License

This tool is freely distributed under the MIT License. See LICENSE file for more details.