$ErrorActionPreference = 'Stop'

$packageName = 'camunda-modeler'
$url32       = 'https://downloads.camunda.cloud/release/camunda-modeler/4.7.0/camunda-modeler-4.7.0-win-ia32.zip'
$url64       = 'https://downloads.camunda.cloud/release/camunda-modeler/4.7.0/camunda-modeler-4.7.0-win-x64.zip'
$checksum32  = 'ABC1715E62C64CDFDD98E23DD6A02FF366FE90DA0B0918BC060C873A1A5C9E1A'
$checksum64  = '259FC77A255DAA9F453A50D1C7BD0FFEC3B5DF13D9DDA6F7062E26643E393EE9'

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


