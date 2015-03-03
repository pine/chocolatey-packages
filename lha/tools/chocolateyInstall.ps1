$packageName = 'lha'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url = 'http://sourceforge.net/projects/gnuwin32/files/lha/1.14i-1/lha-1.14i-1-bin.zip/download'

Install-ChocolateyZipPackage $packageName $url $unzipLocation $url