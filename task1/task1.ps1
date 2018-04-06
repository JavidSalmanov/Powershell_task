param([Parameter(Mandatory = $true)] [string] $filePath,
    [Parameter(Mandatory = $true)] [string] $saveTo)
foreach ($i in 2..10) {
    [xml]$xml = Get-Content $filePath
    $xml.SelectNodes("//th[1]")| % { 
        $_."#text" = $_."#text".Replace("Title", "Title$i") 
    }
    $xml.SelectNodes("//th[2]")| % { 
        $_."#text" = $_."#text".Replace("Artist", "Artist$i") 
    }
    $xml.Save("$saveTo\$i.xml")
}