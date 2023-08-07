$server = "Srv1-dc"

$ou1 = "Piac"
$ou2 = "Zoldseg"
$ou3 = "Gyumolcs"

$dc1 = "gyakorlat"
$dc2 = "local"

New-ADOrganizationalUnit -Name:"$ou1" -Path:"DC=$dc1,DC=$dc2" -ProtectedFromAccidentalDeletion:$false -Server:"$server.$dc1.$dc2"

New-ADOrganizationalUnit -Name:"$ou2" -Path:"OU=$ou1,DC=$dc1,DC=$dc2" -ProtectedFromAccidentalDeletion:$false -Server:"$server.$dc1.$dc2"
New-ADOrganizationalUnit -Name:"$ou3" -Path:"OU=$ou1,DC=$dc1,DC=$dc2" -ProtectedFromAccidentalDeletion:$false -Server:"$server.$dc1.$dc2"
