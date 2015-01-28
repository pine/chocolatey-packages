$packageName = 'jwcad'
$version = '8.00.1'
$fileType = 'exe'
$installArgs = '/s /v" /qn"'
$url = 'http://homepage2.nifty.com/jw_cad/download/jww800a.exe'

Install-ChocolateyPackage $packageName $fileType $installArgs $url