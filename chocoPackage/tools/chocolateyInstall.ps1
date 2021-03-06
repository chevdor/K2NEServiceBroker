$brokerName = 'K2Field.K2NE.ServiceBroker'
$targetPath = 'C:\Program Files (x86)\K2 blackpearl\ServiceBroker'
$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition

Function StartK2Service([string]$server) {
    Write-Host -ForegroundColor DarkMagenta "Starting K2 blackpearl service on $server"
    Get-Service -DisplayName 'K2 blackpearl Server' -ComputerName $server | where-object {$_.Status -eq "Stopped"} | Start-Service
}

Function StopK2Service([string]$server) {
    Write-Host -ForegroundColor DarkMagenta "Stopping K2 blackpearl service on $server"
    Get-Service -DisplayName 'K2 blackpearl Server' -ComputerName $server | where-object {$_.Status -eq "Running"} | Stop-Service
}

Write-Host Stopping Service
StopK2Service -server localhost

Write-Host Installing files
Copy-Item $scriptPath\* -Include *.dll,*.md -Destination "$targetPath"

Write-Host Starting Service
StartK2Service -server localhost
