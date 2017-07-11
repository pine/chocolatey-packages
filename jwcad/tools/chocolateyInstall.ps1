$packageName = 'jwcad'
$version = '8.03.1'
$fileType = 'exe'
$installArgs = '/s /v" /qn"'
$url = 'http://www.jwcad.net/download/jww803a.exe'
$checksum = 'AFA9B00388DD52D4198E30C2D94718D4896E87F0236DFED070ACF74AA983A332'
$checksumType = 'sha256'

Install-ChocolateyPackage $packageName $fileType $installArgs $url `
    -Checksum $checksum -ChecksumType $checksumType