$packageName = 'stirling'
$packageTitle = 'Stirling'
$fileName = 'stir'
$fileExt = 'lzh'
$version = '1.31'
$url = 'http://ftp.vector.co.jp/pack/win95/util/bin/edit/stir131.lzh'

try {
  $filePath = "$env:TEMP\chocolatey\$packageName"
  $fileFullName = "${fileName}_$version.$fileExt"
  $fileFullPath = "$filePath\$fileFullName"
  $folderFullPath = "$filePath\$packageName"
  
  Write-Debug "fileFullPath is $fileFullPath"
  Write-Debug "folderFullPath is $folderFullPath"
  
  New-Item "$filePath" -ItemType Directory -Force
  Get-ChocolateyWebFile "$packageName" "$fileFullPath" "$url"
  
  Push-Location "$filePath"
  Start-Process -FilePath "lha" `
    -ArgumentList "xfw=$packageName","$fileFullName" -NoNewWindow -Wait
  Pop-Location
  
	$binRoot = Get-BinRoot
	$installDir = Join-Path $binRoot $packageTitle
	Write-Debug "Install Dir is $installDir"
  
  Copy-Item "$folderFullPath" "$installDir" -Force -Recurse
  
	Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}