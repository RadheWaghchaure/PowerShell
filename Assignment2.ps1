# Define the file path 
$filePath = "C:\Users\radheshamw\Desktop\PowerShell\Assignment1"

# Check if the file exists
if (Test-Path -Path $filePath) {
    # Get the file object
    $file = Get-Item -Path $filePath

    # Display file properties
    Write-Host "File Properties for: $filePath" -ForegroundColor Cyan
    Write-Host "Name: $($file.Name)"
    Write-Host "Full Path: $($file.FullName)"
    Write-Host "Size (bytes): $($file.Length)"
} else {
    Write-Host "File '$filePath' does not exist." -ForegroundColor Red
}
