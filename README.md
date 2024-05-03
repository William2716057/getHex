# File Hex Converter
This script converts the content of a file into a hexadecimal format and saves it to another file.

## Usage
Prerequisites:

This script requires PowerShell to be installed on your system.
## Input File Path
Specify the path to the input file by assigning the file path to the $filePath variable. For example:

$filePath = "C:\Path_to_file\exampleFile.txt"

## Output File Path
Specify the path to the output file by assigning the file path to the $outputFilePath variable. For example:

$outputFilePath = "C:\Path_to_File\hexOutput.txt"

## Execution
After setting the input and output file paths, execute the script. It will read the content of the input file as bytes, convert it to a string, format it as a hexadecimal dump, and then write it to the specified output file.

Get-Content -Encoding Byte -ReadCount 0 -Path $filePath | Out-String | Format-Hex | Out-File 

## Example
To run the script on exampleFile.txt with the following content:

Hello, world!

After running the script with the specified input and output file paths, the content of hexOutput.txt would be:

00000000: 48 65 6C 6C 6F 2C 20 77 6F 72 6C 64 21 0D 0A     Hello, world!..
