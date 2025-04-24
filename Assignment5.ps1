# Set the source folder and destination ZIP file path
$sourceFolder = ".\Desktop\Batch_Scripting"
$zipFile = "Desktop"

# Check if the source folder exists
if (Test-Path -Path $sourceFolder) {
    # Compress the folder into a ZIP file
    Compress-Archive -Path $sourceFolder -DestinationPath $zipFile -Force
    Write-Host "Folder '$sourceFolder' has been compressed into '$zipFile'"
} else {
    Write-Host "The folder '$sourceFolder' does not exist!" -ForegroundColor Red
}
