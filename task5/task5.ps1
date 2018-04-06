param([switch] $test_var)
if ($test_var) {
    $new_var = 'Variable has been already defined'
    Write-Host "$new_var"
}
else {
    Set-Variable -Name "new_var" -Value "This is new variable"
    Write-Host $new_var
}
