$url = "https://img.purch.com/rc/640x415/aHR0cDovL3d3dy5zcGFjZS5jb20vaW1hZ2VzL2kvMDAwLzA1NC84Nzkvb3JpZ2luYWwvc2F0dXJuLWludGVyc3RlbGxhci1kdXN0LWNhc3NpbmkuanBn"
$outfile = "space.jpg"
$p = "c:\"
if (Get-ChildItem -Path $p -Filter file2.xml -Recurse -ErrorAction SilentlyContinue -Force | Test-Path) {
    "The file has already exist"
}
else {
    Invoke-WebRequest -Uri $url -OutFile "$home\desktop\JA_TASK\task4\$outfile"
    Write-Host "A file downloaded from the Internet"
}
