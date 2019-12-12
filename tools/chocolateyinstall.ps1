$ErrorActionPreference = 'Stop'

$PackageName = 'camunda-modeler'
$url32       = 'https://camunda.org/release/camunda-modeler/3.5.0/camunda-modeler-3.5.0-win-ia32.zip'
$url64       = 'https://camunda.org/release/camunda-modeler/3.5.0/camunda-modeler-3.5.0-win-x64.zip'
$checksum32  = '35AE7B421C2509D8D3462367EC035FA2E38D34B956B95133BBE52E3CE6F0C877'
$checksum64  = 'A58D1B9AE3AE417C241A4077C1F16C84DB7336092E0338EE5E3CE03AAF8686FC'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs