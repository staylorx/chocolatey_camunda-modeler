$ErrorActionPreference = 'Stop'

$packageName = 'camunda-modeler'
$url32 = 'https://downloads.camunda.cloud/release/camunda-modeler/5.8.0/camunda-modeler-5.8.0-win-ia32.zip'
$url64 = 'https://downloads.camunda.cloud/release/camunda-modeler/5.8.0/camunda-modeler-5.8.0-win-x64.zip'
$checksum32 = 'ce42d5296eeeca316be6e50cc67af10053bc9bc8d8e246cbbb5c8dc0ab3b0db3'
$checksum64 = '4d50b55ab7d022d31925de3049a633cffb37f1726e1faf7852e889610aeac975'

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


