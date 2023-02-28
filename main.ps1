#Hardcoded for now, TODO read config.ini
#[string[]]$wordlist = Get-Content -Path "svenska-ord.txt"
$passphrase = ""

while($i -lt 8)
{
   $passphrase = $passphrase + (Get-Content -Path ".\svenska-ord.txt" 1)[Get-Random -Maximum 100)]
   #$wordlist[(Get-Random -Maximum $wordlist.Length)]
}

Write-host $passphrase