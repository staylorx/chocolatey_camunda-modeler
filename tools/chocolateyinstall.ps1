$ErrorActionPreference = 'Stop'

$PackageName = 'camunda-modeler'
$url32       = 'https://camunda.org/release/camunda-modeler/3.6.0/camunda-modeler-3.6.0-win-ia32.zip'
$url64       = 'https://camunda.org/release/camunda-modeler/3.6.0/camunda-modeler-3.6.0-win-x64.zip'
$checksum32  = '00F9DF127458BAADCFEB9F567635991096E44E2A7F454076921EB1BB099ADA2C'
$checksum64  = '7D219388A225A4D0ED2E7D03E3522B4B2333C8F7F3DB449A5551EC495C09C4FB'

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