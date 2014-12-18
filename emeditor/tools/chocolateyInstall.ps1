$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$fileType = 'exe'
$installArgs = '/exenoui /q'
$url = 'https://www.emurasoft.com/pub/emed32_{{PackageVersion}}.exe'
$url64 = 'https://www.emurasoft.com/pub/emed64_{{PackageVersion}}.exe'

try {
  $osBitness = Get-ProcessorBits
  $is64bit = $osBitness -eq 64
  
  if ($is64bit) {
    Install-ChocolateyPackage $packageName $fileType $installArgs $url64
  }
  
  else {
    Install-ChocolateyPackage $packageName $fileType $installArgs $url
  }
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}