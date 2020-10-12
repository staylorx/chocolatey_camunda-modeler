$ErrorActionPreference = 'Stop'

$PackageName = 'camunda-modeler'
$url32       = 'https://downloads.camunda.cloud/release/camunda-modeler/4.2.0/camunda-modeler-4.2.0-win-ia32.zip'
$url64       = 'https://downloads.camunda.cloud/release/camunda-modeler/4.2.0/camunda-modeler-4.2.0-win-x64.zip'
$checksum32  = '91A02C3D0BDDC27D9B9255970B0EB45C2D8703078596C0020C4D6A5D34614152'
$checksum64  = '9A15424819D408D1C58FD8245FEDE7675CC0B1A88CBC1C10911B1E6AB434724B'

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