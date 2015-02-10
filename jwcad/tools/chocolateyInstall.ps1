$packageName = 'jwcad'
$version = '8.00.1'
$fileType = 'exe'
$installArgs = '/s /v" /qn"'
$url = 'http://www.jwcad.net/download/jww800d.exe'

Install-ChocolateyPackage $packageName $fileType $installArgs $url