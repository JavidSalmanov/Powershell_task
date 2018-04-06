param 
([string]$des)
get-wmiobject -ComputerName $des win32_networkadapter | Select-Object netconnectionid, name, InterfaceIndex