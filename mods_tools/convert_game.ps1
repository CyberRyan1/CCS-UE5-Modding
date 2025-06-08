param (
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$sourceFolder,
    
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$outputFile
)

if (-not $outputFile.ToLower().EndsWith(".pak")) {
    Write-Error "The output file must end with '.pak'."
    exit 1
}

# debug statements
Write-Host "Source Folder: $sourceFolder"
Write-Host "Output File: $outputFile"

# Ensuring the output folder exists
$outputDir = Split-Path $outputFile
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir | Out-Null
}

$sourceFolder = $sourceFolder.TrimEnd('\', '/')
& ./__tools/retoc/retoc.exe to-legacy $sourceFolder $outputFile
