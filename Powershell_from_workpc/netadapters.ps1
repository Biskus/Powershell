$eth = Get-Netadapter -Name Ethernet
Write-Host "Found adapter: " $eth.name

$choice = Read-Host "Restart this adapter?"

if ($choice -eq "y"){
    Write-Host "Restarting..."
    Restart-NetAdapter $eth.name
    Write-Host "Done!"
}

else{
    Write-Host "Ok then... cu later"
}