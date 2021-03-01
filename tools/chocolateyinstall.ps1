$ErrorActionPreference = 'Stop'

$packageName = 'camunda-modeler'
$url32       = 'https://downloads.camunda.cloud/release/camunda-modeler/4.6.0/camunda-modeler-4.6.0-win-ia32.zip'
$url64       = 'https://downloads.camunda.cloud/release/camunda-modeler/4.6.0/camunda-modeler-4.6.0-win-x64.zip'
$checksum32  = '81EAD04CF2AFB6DD7D7489ED23DF5CB093BF985C3672DE405429AB5DCE326D0E'
$checksum64  = 'F2AD7C275D2FEBF0DA162B3E109F07B507D80B3E45970860A9B5F4B6142AB5AD'

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


