$culture = Get-Culture
$culture.DateTimeFormat.ShortDatePattern = 'yyyy.MM.dd'
#$culture.DateTimeFormat.ShortTimePattern = 'HH:mm'
Set-Culture $culture