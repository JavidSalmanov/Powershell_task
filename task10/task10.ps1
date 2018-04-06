param
( [Parameter(Mandatory = $true)] [string] $Name,
    [Parameter(Mandatory = $true)] [string] $Surname)

if ($array -eq $null) {
    $array = New-Object System.Object
    $array | Add-Member -type NoteProperty -name Name -Value "$Name"
    $array | Add-Member -type NoteProperty -name Surname -Value "$Surname"
}
else {
    $array | Add-Member -type NoteProperty -name Name -Value "$Name"
    $array | Add-Member -type NoteProperty -name Surname -Value "$Surname"
}
$array