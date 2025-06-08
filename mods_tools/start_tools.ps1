# OLD CODE
#$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
#$command = "cd `"$scriptDir`"; Start-Process `"$scriptDir\__tools\UAssetGUI\UAssetGUI-experimental.exe`""
#Start-Process powershell -ArgumentList "-NoExit", "-Command", $command

# UPDATED CODE
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$exePath = Join-Path $scriptDir "__tools\UAssetGUI\UAssetGUI-experimental.exe"

Start-Process -FilePath $exePath -WorkingDirectory (Split-Path $exePath)
