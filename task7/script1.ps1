param([Parameter(Mandatory = $true)] [string] $filePath)
$com = "$filePath –des 'PKL'"
Invoke-Expression $com
