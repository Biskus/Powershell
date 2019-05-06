cls
$all_adapters = Get-NetIPAddress | where AddressFamily -eq IPv4
#Write-Host (Get-NetIPAddress)
Write-Host "Found the following adapters:"
#$all_adapters = $all_adapters | select-object $_.ipaddress, $_.interfaceindex 
Write-Host  ($all_adapters | foreach-object $_.IPAddress)   #,$_.ipaddress }
#Write-Host $all_adapters 
Get-NetIPAddress | where AddressFamily -eq IPv4  | select $_.ipaddress
Read-Host
"""
$adapter_name = Write-Host Which network-adapter would you like to change IP for?

#$adapter_name = 'Wi-Fi'

#$ethernet = Get-NetIPAddress -InterfaceAlias $adapter_name | where AddressFamily -eq IPv4
#write-host $ethernet

$ipaddress = Read-Host Please enter IP-Address 
$subnetmask = Read-Host Please enter subnet-mask
$defaultgateway = Read-Host Please enter default gateway

Write-Host Changing IP-settings now...
Set-NetIPAddress -InterfaceAlias $adapter_name

"""