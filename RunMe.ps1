Write-Output "Pick Which Profile You'd like to Use `n 
            
            Option 1 `n 
            Option 2 `n
            Option 3 `n"


$Option = Read-Host -Prompt 'Enter Your Choice '

if ( 1 -eq $Option )
{
    Write-Output "You Choice Option 1"
}
elseif (2 -eq $Option) {
    Write-Output "You Choice Option 2"
}
elseif (3 -eq $Option) {
    Write-Output "You Choice Option 3"
}
Pause