$ErrorActionPreference = 'Stop'

$packageName = 'camunda-modeler'
$url32 = 'https://github.com/camunda/camunda-modeler/releases/download/v5.16.0/camunda-modeler-5.16.0-win-ia32.zip'
$url64 = 'https://github.com/camunda/camunda-modeler/releases/download/v5.16.0/camunda-modeler-5.16.0-win-x64.zip'
$checksum32 = '03a81371d007e5b7eccddcf25238b40613f4c36251a89dcd7b224b8ebe2702f8'
$checksum64 = '1f20768b882374d1b9a96590741aedfcec28e7f6289701c9c52845a40802f4c3'

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


