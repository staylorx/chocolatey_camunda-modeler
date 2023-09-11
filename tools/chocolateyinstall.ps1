$ErrorActionPreference = 'Stop'

$packageName = 'camunda-modeler'
$url32 = 'https://github.com/camunda/camunda-modeler/releases/download/v5.15.0/camunda-modeler-5.15.0-win-ia32.zip'
$url64 = 'https://github.com/camunda/camunda-modeler/releases/download/v5.15.0/camunda-modeler-5.15.0-win-x64.zip'
$checksum32 = '74562459b298142481cff492af0c4c2ad24dd1cc6a0d5a7a0e2b183e115de9ea'
$checksum64 = 'b8c1acaa1f5ff4b542d2b79cf1875cd37f2061aa90671bdc7a859e9b03e71879'

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


