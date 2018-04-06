param([Parameter(Mandatory = $True)] [string] $EName)
$tmp = @($EName)
if ($array -eq $null) {
    $array = New-Object System.Collections.ArrayList
    $array.Add("$tmp")
}
else {
    $array.Add("$tmp")
}
$array