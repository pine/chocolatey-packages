$packageName = 'vb5runtime'
$fileName = 'Msvbvm50'
$url = 'http://download.microsoft.com/download/vb50pro/utility/1/win98/EN-US/Msvbvm50.exe'

try {
  $filePath = "$env:TEMP\chocolatey\$packageName"
  $fileFullPath = "$filePath\${fileName}.exe"
  
  $scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
  $ahkFile = "$scriptPath\vb5runtime.ahk"
  
  NewItem $filePath -directory -force
  Get-ChocolateyWebFile $packageName $fileFullPath $url
  
  Start-Process 'AutoHotkey' $ahkFile
  Start-Process $fileFullPath
  
  Wait-Process -Name $fileName
  
  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}
