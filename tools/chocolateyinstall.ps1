$ErrorActionPreference = 'Stop'

$PackageName = 'camunda-modeler'
$url32       = 'https://camunda.org/release/camunda-modeler/3.3.4/camunda-modeler-3.3.4-win-ia32.zip'
$url64       = 'https://camunda.org/release/camunda-modeler/3.3.4/camunda-modeler-3.3.4-win-x64.zip'
$checksum32  = '68855D718D8C0BB1E02FD8DF814C532F1E367C0C3CC1C38521369BFCD625E822'
$checksum64  = 'D5B1DB9692581A4770D8289B04EAE75E4591627B1068BB511D037B6777D569E1'

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