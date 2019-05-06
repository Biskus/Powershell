#Alias for å gjøre det lettere / koden som spør om informasjonen

$Fornavn = Read-Host "Firstname??"
$Etternavn = Read-Host "Surname?"
$Name = "$Fornavn " + "$Etternavn"
$Brukernavn = Read-Host "username?"


#CommandString / koden som lager en bruker

New-ADUser -Name "$Name" -GivenName "$Fornavn" -Surname "$Etternavn" -SamAccountName "$brukernavn" -UserPrincipalName "$brukernavn@cookie.zi" -Path "CN=Users,DC=Cookie,DC=zi" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true

#Prompt for flytting til gruppe
Import-Module ActiveDirectory 
$addToGroup = Read-Host "add to a group? (1=yes)(2=no)"
If($addToGroup -eq 1) {$groupName = Read-Host "Group?"; Add-ADGroupMember -Identity "$groupName" -Member $brukernavn}
Else {}

#Laget av Heine Kirkhorn Bergheim