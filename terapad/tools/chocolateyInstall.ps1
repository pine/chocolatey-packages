$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'

try {
  $fileName = "${packageName}_${version}"
  $filePath = "$env:TEMP\chocolatey\$packageName"
  $fileFullPath = "$filePath\${fileName}.exe"
  
  $scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
  $ahkFile = "$scriptPath\terapad.ahk"
  
  New-Item $filePath -Force -Directory
  Get-ChocolateyWebFile $packageName $fileFullPath $url
  
  Start-Process 'AutoHotkey' $ahkFile
  Start-Process $fileFullPath
  
  Wait-Process -Name $fileName
  
  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}