$path = "HKLM:\SOFTWARE\Policies\Microsoft"
$key = "PassportForWork"
$name = "Enabled"
$value = "0"
 
New-Item -Path $path -Name $key –Force
 
New-ItemProperty -Path $path\$key -Name $name -Value $value -PropertyType DWORD -Force
 
