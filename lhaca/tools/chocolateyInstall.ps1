$packageName = 'lhaca'
$fileName = 'Lhaca076'
$url = 'http://park8.wakwak.com/~app/Lhaca/Lhaca076.EXE'

try {
  $filePath = "$env:TEMP\chocolatey\$packageName"
  $fileFullPath = "$filePath\${fileName}.exe"
  
  $scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
  $ahkFile = "$scriptPath\${packageName}.ahk"
  
  New-Item $filePath -ItemType Directory -Force
  Get-ChocolateyWebFile $packageName $fileFullPath $url
  
  Start-Process 'AutoHotkey' $ahkFile
  Start-Process $fileFullPath
  
  Wait-Process -Name $fileName
  Remove-Item $filePath -Force -Recurse
  
  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}
