$DesktopPath = [Environment]::GetFolderPath("Desktop")

# Old Way
# mkdir $DesktopPath\Working

#New Way
New-Item -Path $DesktopPath -Name "Working\dl" -ItemType "Directory"
New-Item -Path $DesktopPath -Name "Working\test" -ItemType "Directory"
New-Item -Path $DesktopPath -Name "Working\xfer" -ItemType "Directory"
