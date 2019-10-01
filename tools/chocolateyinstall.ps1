$ErrorActionPreference = 'Stop'

$PackageName = 'camunda-modeler'
$url32       = 'https://camunda.org/release/camunda-modeler/3.3.5/camunda-modeler-3.3.5-win-ia32.zip'
$url64       = 'https://camunda.org/release/camunda-modeler/3.3.5/camunda-modeler-3.3.5-win-x64.zip'
$checksum32  = '6D78AD1527903FD34BB1E9C8E3E32938CEA9A69901F0DCA35168FC5ACFE1B144'
$checksum64  = 'E664F887BBF39AF2B16A6139EC60F55E0D1B5780BCF32BA10550D7C43399FC27'

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