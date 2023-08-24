$keyFile=$args[0]
$oldEnv = Get-Content -path .env -Raw
$sshKey = Get-Content -path $keyFile -Raw
$newEnv = $oldEnv -replace 'sshKeyEnv',$sshKey
Set-Content -Path .env -Value $newEnv

docker compose up --detach