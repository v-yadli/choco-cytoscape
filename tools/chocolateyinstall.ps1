
$ErrorActionPreference = 'Stop';


$packageName= 'cytoscape'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/cytoscape/cytoscape/releases/download/3.7.1/Cytoscape_3_7_1_windows_64bit.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '-q'
  validExitCodes= @(0)

  softwareName  = 'Cytoscape*'
  checksum      = 'F0232B7234E5A43303E1ECC2D73A7F96'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs


















