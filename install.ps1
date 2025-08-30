$link = "https://github.com/vampbites/Meowlotl/releases/latest/download/MeowlotlCli.exe"

$outfile = "$env:TEMP\MeowlotlCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
