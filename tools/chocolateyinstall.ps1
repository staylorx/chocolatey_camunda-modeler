$ErrorActionPreference = 'Stop'

$packageName = 'camunda-modeler'
$url32 = 'https://downloads.camunda.cloud/release/camunda-modeler/5.0.0/camunda-modeler-5.0.0-win-ia32.zip'
$url64 = 'https://downloads.camunda.cloud/release/camunda-modeler/5.0.0/camunda-modeler-5.0.0-win-x64.zip'
$checksum32 = '7ebea78892243c96a098cf54794462ca511c6a79d8c68c9e833e1bb51254c0b9'
$checksum64 = '09be5f640f4e7a025381e76599745f536fff7b3935f336a540676e14d0bcd953'

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


