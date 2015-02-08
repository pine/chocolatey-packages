$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$fileType = 'exe'
$installArgs = '/exenoui /q'
$url = 'http://files.emeditor.com/emed32_{{PackageVersion}}.exe'
$url64 = 'http://files.emeditor.com/emed64_{{PackageVersion}}.exe'

Install-ChocolateyPackage $packageName $fileType $installArgs $url $url64