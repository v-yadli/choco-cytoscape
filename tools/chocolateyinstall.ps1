
$ErrorActionPreference = 'Stop';


$packageName= 'cytoscape'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://chianti.ucsd.edu/cytoscape-3.4.0/Cytoscape_3_4_0_windows_64bit.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '-q'
  validExitCodes= @(0)

  softwareName  = 'Cytoscape*'
  checksum      = '75a3266e56311a23b13c29dfc3b9693f'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs


















