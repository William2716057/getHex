#Path to input file
$filePath = "C:\Path_to_file\exampleFile.txt"

#Path to the output file
$outputFilePath = "C:\Path_to_File\hexOutput.txt"

# Read content of file as bytes, convert to string, format as hex dump, and write to output file
Get-Content -Encoding Byte -ReadCount 0 -Path $filePath | Out-String | Format-Hex | Out-File -FilePath $outputFilePath
