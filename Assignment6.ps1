# Path to the input file
$filePath = "C:\Users\radheshamw\Desktop\PowerShell\Assignment1.ps1"

# Check if the file exists
if (Test-Path -Path $filePath) {
    # Read the content of the file
    $content = Get-Content -Path $filePath

    # Replace the text
    $updatedContent = $content -replace "first file", "Second file"

    # Write the updated content back to the same file
    Set-Content -Path $filePath -Value $updatedContent

    Write-Host "Text replacement completed successfully." -ForegroundColor Green
} else {
    Write-Host "The file '$filePath' does not exist!" -ForegroundColor Red
}
