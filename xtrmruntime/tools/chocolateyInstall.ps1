$packageName = 'xtrmruntime'
$exeFilePath = 'XTRM Runtime\xrun_setup'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
$url = 'http://ftp.vector.co.jp/pack/win95/util/runtime/xtrm-runtime.zip'

try {
  $filePath = "$env:TEMP\chocolatey\$packageName"
  $zipFileFullPath = "$filePath\${packageName}.zip"
  $exeFileFullPath = "$filePath\${exeFilePath}.exe"
  
  New-Item "$filePath" -ItemType Directory -Force
  
  Get-ChocolateyWebFile $packageName "$zipFileFullPath" "$url"
  Get-ChocolateyUnzip "$zipFileFullPath" "$filePath"
  Install-ChocolateyInstallPackage $packageName $installerType "$silentArgs" "$exeFileFullPath"
  
  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}
