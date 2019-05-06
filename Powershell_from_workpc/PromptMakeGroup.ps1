#Alias for å gjøre det lettere

$Name = Read-Host "Navn?"
$Category = Read-Host "Category? (Security | Distribution)"
$DisplayName = Read-Host "DisplayName?"
$SAM = Read-Host "SamAccountName?"
$Description = Read-Host "Description?"

#koden for å lage en ny gruppe

New-ADGroup -Name "$Name" -SamAccountName $SAM -GroupCategory $Category -GroupScope Global -DisplayName "$DisplayName" -Path "CN=Users,DC=Cookie,DC=zi" -Description "$Description"


#Laget av Heine Kirkhorn Bergheim