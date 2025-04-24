
$xmlPath = "C:\Path\To\Your\File.xml"

# Load the XML file
[xml]$xmlContent = Get-Content -Path $xmlPath

# Access the <version> tag value
$version = $xmlContent.SelectSingleNode("//version").InnerText

Write-Host "Version: $version"
