$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$fileType = 'exe'
$installArgs = '/exenoui /q'
$url = 'https://www.emurasoft.com/pub/emed32_{{PackageVersion}}.exe'
$url64 = 'https://www.emurasoft.com/pub/emed64_{{PackageVersion}}.exe'

Install-ChocolateyPackage $packageName $fileType $installArgs $url $url64