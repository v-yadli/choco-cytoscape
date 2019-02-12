
$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'cytoscape'
  softwareName   = 'Cytoscape*'

  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'

  url            = 'https://github.com/cytoscape/cytoscape/releases/download/3.7.1/Cytoscape_3_7_1_windows_32bit.exe'
  url64bit       = 'https://github.com/cytoscape/cytoscape/releases/download/3.7.1/Cytoscape_3_7_1_windows_64bit.exe'

  silentArgs     = '-q'
  validExitCodes = @(0)

  checksum       = 'C0AA02DA3FD5A30693B716A745B6EE04'
  checksum64     = 'F0232B7234E5A43303E1ECC2D73A7F96'
  checksumType   = 'md5'
  checksumType64 = 'md5'
}

Install-ChocolateyPackage @packageArgs
