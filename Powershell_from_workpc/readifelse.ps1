$navn = Read-Host Hva heter du?

if ($navn -eq "Arvid"){
    Write-Host $navn er kul
}
else {
    Write-Host $navn er en noob
}