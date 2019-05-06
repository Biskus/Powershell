#Importer AD commands til powershell

Import-Module ActiveDirectory 

#Alias for å gjøre det lettere

$groupName = Read-Host "Group?"
$memberName = Read-Host "Member?"

#Koden for å legge en bruker i en gruppe

Add-ADGroupMember -Identity "$groupName" -Member $memberName

#Laget av Heine Kirkhorn Bergheim