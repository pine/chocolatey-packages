$packageName = 'vlgothic'
$version = '2014.12.06'
$url = 'http://sourceforge.jp/frs/redir.php?m=iij&f=%2Fvlgothic%2F62375%2FVLGothic-20141206.zip'

try {
  $fileName = "${packageName}_${version}"
  $unzipFolder = "${env:TEMP}\chocolatey\${packageName}"
  
  New-Item $unzipFolder -Force -ItemType Directory
  Install-ChocolateyZipPackage $packageName $url $unzipFolder
  
  $shell = New-Object -ComObject Shell.Application
  $fontsFolder = $shell.Namespace(0x14)
  
  Get-ChildItem $unzipFolder -Recurse -Filter *.ttf | % {
    $fontsFolder.CopyHere($_.FullName)
  }
  
  Remove-Item $unzipFolder -Recurse -Force
  
  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}