Write-Output "Pick Which Profile You'd like to Use `n 
            
            1 : Josh's Basic Profile`n 
            2 : Josh's Basic Profile with Oh-My-Posh`n
            3 : Josh's Basic Profile with Neofetch`n
            4 : Josh's Basic Profile with Oh-My_Posh and Neofetch`n
            5 : Downloads Terminal`n
            10 : Exit`n"


$Option = Read-Host -Prompt 'Enter Your Choice '
$LoopBack = $true
if ( 1 -eq $Option )
{
    Write-Output "You Choice Option 1"
    Copy-Item ".\Options\Basic.ps1" -Destination $profile
    $LoopBack = $false
}
elseif (2 -eq $Option) {
    Write-Output "Pick A Following Action `n 
            
            1 : Use Josh's Basic Profile with Oh-My-Posh`n 
            2 : Install Oh-My-Post`n
            3 : Return`n
            10 : Exit `n"
    $Option2 = Read-Host -Prompt 'Enter Your Choice '
    if ($Option2 -eq 1) {
        #Copy with Oh-My-Posh
    }
    elseif ($Option2 -eq 2) {
        #Downlod Oh-My-Posh
    }
    elseif ($Option2 -eq 10) {
        $LoopBack = $false
    }
}
elseif (3 -eq $Option) {
    Write-Output "Pick A Following Action `n 
            
        1 : Josh's Basic Profile with Neofetch`n 
        2 : Install Neofetch`n
        3 : Return`n
        10 : Exit `n"
    $Option2 = Read-Host -Prompt 'Enter Your Choice '
    if ($Option2 -eq 1) {
        #Copy with Neofetch
    }
    elseif ($Option2 -eq 2) {
        #Download Neofetch
    }
    elseif ($Option2 -eq 10) {
        $LoopBack = $false
    }
}
elseif (4 -eq $Option) {
    Write-Output "Pick A Following Action `n 
            
    1 : Josh's Basic Profile with Oh-My_Posh and Neofetch`n 
    2 : Install Neofetch`n
    3 : Install Oh-My-Post`n
    4 : Return`n
    10 : Exit `n"
    $Option2 = Read-Host -Prompt 'Enter Your Choice '
    if ($Option2 -eq 1) {
        Copy-Item ".\Options\Oh My Posh and Neofetch\OMP and Neofetch.ps1" -Destination $profile
    }
    elseif ($Option2 -eq 2) {
        #Download Neofetch
    }
    elseif ($Option2 -eq 3) {
        #Downlod Oh-My-Posh
    }
    elseif ($Option2 -eq 10) {
        $LoopBack = $false
    }
}
elseif (5 -eq $Option) {
    Winget install Terminal
}
elseif ($Option -eq 10) {
    $LoopBack = $false
}
if($LoopBack){
    ./RunMe.ps1
}