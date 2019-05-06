write-host "hello"

$ips = Get-NetIPAddress

write-host($ips)

$ipv4s = $ips | where-object {$_.AddressFamily -eq 'ipv4'}

write-host 

write-host $ipv4s

$valid_ips = $ipv4s | where-object { $_.IPAddress.startswith('192')}

write-host valid ips:

write-host $valid_ips


$adapters = Get-NetAdapter where-object {$_.IPAddress.startswith('192')}

write-host adapters

write-host $adapters


Get-NetAdapter | foreach-object {$_.interfacedescription}