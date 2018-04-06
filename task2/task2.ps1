param([Parameter(Mandatory = $true)] [string]$filePath)
$j = (Get-Content $filePath | ConvertFrom-Json)
$j.glossary.GlossDiv.GlossList.GlossEntry.SortAs = "OPML"
$j | ConvertTo-Json -Depth 100 | Set-Content $filePath
