#Ny gruppe

New-ADGroup -Name "IKT" -SamAccountName IKT -GroupCategory Security -GroupScope Global -DisplayName "IKT" -Path "CN=Users,DC=Cookie,DC=zi" -Description "IKT arbeidere"


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#Ny bruker

New-ADUser -Name "Heine Kirkhorn Bergheim" -GivenName "Heine Kirkhorn" -Surname "Bergheim" -SamAccountName "heinekb" -UserPrincipalName "heine@cookie.zi" -Path "CN=Users,DC=Cookie,DC=zi" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#Importer AD commands til powershell

Import-Module ActiveDirectory 

#Legge til bruker i en gruppe

Add-ADGroupMember -Identity "IKT" -Member heinekb

#Sjekk gruppemedlemmer

Get-ADGroupMember "IKT"


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


