$ErrorActionPreference = 'Stop'

$PackageName = 'camunda-modeler'
$url32       = 'https://downloads.camunda.cloud/release/camunda-modeler/3.7.0/camunda-modeler-3.7.0-win-ia32.zip'
$url64       = 'https://downloads.camunda.cloud/release/camunda-modeler/3.7.0/camunda-modeler-3.7.0-win-x64.zip'
$checksum32  = 'CC58FA8F87C67EBCE70E0438774BFAE385F8DA022CE8020D7F074F3C1622F95E'
$checksum64  = 'B304E6996852FC37CA765835F7303B1AA10ED8A1A3752FCCCADE5663438AF844'

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