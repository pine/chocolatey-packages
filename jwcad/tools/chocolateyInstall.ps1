$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$fileType = 'exe'
$installArgs = '/s /v" /qn"'
$url = '{{DownloadUrl}}'

Install-ChocolateyPackage $packageName $fileType $installArgs $url