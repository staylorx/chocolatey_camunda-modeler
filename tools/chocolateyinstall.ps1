$ErrorActionPreference = 'Stop'

$PackageName = 'camunda-modeler'
$url32       = 'https://camunda.org/release/camunda-modeler/3.3.5/camunda-modeler-3.3.5-linux-ia32.tar.gz'
$url64       = 'https://camunda.org/release/camunda-modeler/3.3.5/camunda-modeler-3.3.5-linux-x64.tar.gz'
$checksum32  = '1D4F95625B02F3F355A4C40C6AB50149516F0EC805CF4A7977F26C2FBFD9F7F8'
$checksum64  = 'AF8C0B4279A58C8E18D1347284ED45D1313918EEFBDE2FD635957A5B38A859D4'

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