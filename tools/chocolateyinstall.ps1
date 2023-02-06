$ErrorActionPreference = 'Stop'

$packageName = 'camunda-modeler'
$url32 = 'https://downloads.camunda.cloud/release/camunda-modeler/5.7.0/camunda-modeler-5.7.0-win-ia32.zip'
$url64 = 'https://downloads.camunda.cloud/release/camunda-modeler/5.7.0/camunda-modeler-5.7.0-win-x64.zip'
$checksum32 = '1f0f74666d81087b2c9198cc23ddbaa489884776a10b74da0e57546708a589ed'
$checksum64 = '42b9f0669b0cb332785d1533ae802b93478a3d4e2edfa7faf28738734856c5c4'

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


