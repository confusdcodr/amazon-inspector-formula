Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
$PSDefaultParameterValues['*:ErrorAction']='Stop'

Set-Location "$Env:TRAVIS_BUILD_DIR"
git clone "https://github.com/plus3it/amazon-inspector-formula"
$saltDir = "C:\salt\srv\salt\"
Copy-Item "$Env:TRAVIS_BUILD_DIR\amazon-inspector-formula\" -Destination $saltDir -Recurse
