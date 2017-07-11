$packageName = 'jwcad'
$version = '8.03.1'
$fileType = 'exe'
$installArgs = '/s /v" /qn"'
$url = 'http://www.jwcad.net/download/jww803a.exe'

Install-ChocolateyPackage $packageName $fileType $installArgs $url