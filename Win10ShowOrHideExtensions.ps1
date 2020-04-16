#Alias for New-ItemProperty
$resGalNip = gal nip
if ($resGalNip -eq $null)
    {New-Alias nip New-ItemProperty}
else
    {echo "Nip already exists"}

#location of Registry key
$regPath1 = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"

#name of registry entry
$regName1 = "HideFileEXt"

#check the value of the entry if it exists
$hideExtResult = gpv -Path "$regPath1" -Name "$regName1"

#show 
$hideExtResult

# 0 = show extensions, 1 = hide extensions
#if the reg entry doesn't exist, create it, and set the value to 0

if ($hideExtResult -eq $null)
    {New-ItemProperty $regPath1 -Name $regName1 -Value 0}
    else
    {echo "it already exists"}

#if entry exists, toggle between property values of 0 and 1
if ($hideExtResult -eq 1)
    {sp -Path $regPath1 -Name $regName1 -Value 0}
    else
    {sp -Path $regPath1 -Name $regName1 -Value 1}

# sendkeys.send("{F5}")


#Send refresh to the active window
# [System.Windows.Forms.SendKeys]::SendWait("{F5}")