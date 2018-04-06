param([Parameter(Mandatory = $true)] [string] $filePath)
$file = Get-Content $filePath -Raw  | ConvertFrom-Json
foreach ($i in $file) {
    Write-Host "Name:"$i.Name 
    Write-Host "AppName:"$i.AppName
}