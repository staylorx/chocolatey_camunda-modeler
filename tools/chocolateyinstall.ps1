$ErrorActionPreference = 'Stop'

$PackageName = 'camunda-modeler'
$url32       = 'https://downloads.camunda.cloud/release/camunda-modeler/3.7.3/camunda-modeler-3.7.3-win-ia32.zip'
$url64       = 'https://downloads.camunda.cloud/release/camunda-modeler/3.7.3/camunda-modeler-3.7.3-win-x64.zip'
$checksum32  = '00B488ACD63FE87F7AC365BC518FC796FDB942C5B63B6F90787D5B517EAC0C1D'
$checksum64  = '7C7CB08CEC86A39827F6FB1C5CFD0EC5A1D5CAF21EC7CD65F455F5F1B7E29BBB'

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