$packageName = 'nim'
$version = '0.10.2'
$fileType = 'exe'
$installArgs = '/S'
$url = 'http://nim-lang.org/download/nim-0.10.2_x32.exe'
$url64 = 'http://nim-lang.org/download/nim-0.10.2_x64.exe'

Install-ChocolateyPackage $packageName $fileType $installArgs $url $url64