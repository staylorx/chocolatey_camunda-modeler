$ErrorActionPreference = 'Stop'

$packageName = 'camunda-modeler'
$url32       = 'https://downloads.camunda.cloud/release/camunda-modeler/4.12.0/camunda-modeler-4.12.0-win-ia32.zip'
$url64       = 'https://downloads.camunda.cloud/release/camunda-modeler/4.12.0/camunda-modeler-4.12.0-win-x64.zip'
$checksum32  = '645109ca9bace8f59b1059c77d26f23d3c937874b1e79e22ba2d827040548319'
$checksum64  = 'a6013b40f40845e4db02c198d41316ea144ac6fd9baf44f5a7010e0900744e22'

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


