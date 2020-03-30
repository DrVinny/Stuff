# TaskbarHideCortanaButton
# MV
# 2020.03.30

# alias just for fun
$tpAlias = gal tp
if ( $tpAlias -eq $null){
    new-alias tp Test-Path
}

$cortButtonKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
$cortButtonName = "AllowCortana"

# 0 = hide, 1 = show button, 2 = show box
$cortButtonValue = "0"

# key usually does not exist so, test for it: 
IF(!(tp -Path $cortButtonKey)) {  
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name "Windows Search" 
}
Set-ItemProperty -Path $cortButtonKey -Name "AllowCortana" -Value $cortButtonValue


# Set-ItemProperty -Path $cortButtonKey -Name $cortButtonName -Value $cortButtonValue 

# Restart Explorer to change it immediately     
    Stop-Process -name explorer


# Resource: https://gallery.technet.microsoft.com/scriptcenter/How-to-disable-Cortana-on-b44924a4
