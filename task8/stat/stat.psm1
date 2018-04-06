function Get-Status {
    param ( [Parameter(Mandatory = $True)] 
        [string[]] $ComputerName)
    foreach ($i in $ComputerName) {
        $pro = (Get-Process -ComputerName $i |  Select-Object -Property CPU | Measure-Object).count
        $ser = (Get-Service -ComputerName $i | Where-Object {$PSItem.Status -eq "Running"} | Select-Object -Property DisplayName | Measure-Object).Count
        Write-Host ("In $i Computer $pro running processes and $ser running services") -ForegroundColor White -BackgroundColor Green 
    }
}