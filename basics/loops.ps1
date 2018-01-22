# set environment
if (-not $Env:USERPROFILE) {
    Write-Host "Setting USERPROFILE"
    # persistent im user setzen ("Machine" statt "User" fuer alle User)
    [Environment]::SetEnvironmentVariable("USERPROFILE", $Env:HOME, "User")
    # in der lokalen shell setzen
    $Env:USERPROFILE = $Env:HOME
} else {
    Write-Host "USERPROFILE already set to" $Env:USERPROFILE
}

# foreach loop (ForEach, ForEach-Object und % sind synonym)
$myDocuments = Get-ChildItem ($env:USERPROFILE + '\Documents') -File
$myDocuments | ForEach {$_.FullName}
ForEach-Object -InputObject $myDocuments -Process {$_.FullName}
$myDocuments | % {$_.FullName}

# for loop
$colors = @("Red","Orange","Yellow","Green","Blue","Indigo","Violet")
For ($i=0; $i -lt $colors.Length; $i++) {
    $colors[$i]
}

# while loops
$i=1
While ($i -le 10) {
    $i
    $i++
}

# do while
$i=1
Do {
    $i
    $i++
} While ($i -le 10)

# until loops
$i=1
Do {
    $i
    $i++
} Until ($i -gt 10)

# break from loops
$i=1
While ($true) {
    $i
    if ($i -gt 10) { # count to 11
        Break
    }
    $i++
}