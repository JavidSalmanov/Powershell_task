param( [Parameter(Mandatory = $True)]
    $Name)
Import-Module stat
Get-Status -ComputerName "$Name"