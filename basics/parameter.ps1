# Liest Parameter von der Kommandozeile
param (
    [string]$server = "http://www.snafuprinzip.de",
    [Parameter(Mandatory = $true)][string]$username,
    [string]$password = $( Read-Host "Input password, please" ),
    [switch]$verbosity = $false
)

if ($verbosity) {
    curl -u $username`:$password $server
} else {
    curl -I -u $username`:$password $server
}
