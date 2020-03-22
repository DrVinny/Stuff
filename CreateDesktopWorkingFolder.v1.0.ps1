$DesktopPath = [Environment]::GetFolderPath("Desktop")

# Old Way
# mkdir $DesktopPath\Working

#New Way
New-Item -Path $DesktopPath -Name "Working\DL" -ItemType "Directory"
New-Item -Path $DesktopPath -Name "Working\OneDrive" -ItemType "Directory"
New-Item -Path $DesktopPath -Name "Working\Test" -ItemType "Directory"
New-Item -Path $DesktopPath -Name "Working\Transfer" -ItemType "Directory"
