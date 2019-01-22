Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
$PSDefaultParameterValues['*:ErrorAction']='Stop'

Start-Service 'salt-minion'

Invoke-Expression -Command "cmd.exe /c salt-call --local state.show_sls amazon-inspector"
Invoke-Expression -Command "cmd.exe /c salt-call --local state.sls amazon-inspector mock=True"
