$packageName = 'pass'
$packageTitle = 'PasS'
$version = '1.5.2'
$url = 'http://www.geocities.jp/uaubn/pass/file/PasS152.lzh'
$partsUrl = 'http://www.geocities.jp/uaubn/pass/file/parts.lzh'
$exeFileName = 'PasS.exe'
$partsDirName = 'parts'

try {
  $fileName = "${packageName}_${version}.lzh"
  $partsFileName = "${packageName}_parts_${version}.lzh"
  
  $filePath = "$env:TEMP\chocolatey\$packageName"
  $fileFullPath = "$filePath\${fileName}"
  $partsFileFullPath = "$filePath\${partsFileName}"
  
  New-Item "$filePath" -Force -ItemType Directory
  Get-ChocolateyWebFile "$packageName" "$fileFullPath" "$url"
  Get-ChocolateyWebFile "$packageName" "$partsFileFullPath" "$partsUrl"
  
  Push-Location $filePath
  
  Start-Process -FilePath "lha" `
    -ArgumentList "xfq","$fileName" -NoNewWindow -Wait
  Start-Process -FilePath "lha" `
    -ArgumentList "xfq","$partsFileName" -NoNewWindow -Wait
  
  $binRoot = Get-BinRoot
  $installDir = Join-Path "$binRoot" "$packageTitle"
  Write-Debug "Install Dir is $installDir"
  
  New-Item "$installDir" -Force -ItemType Directory
  Move-Item "$exeFileName" "$installDir\$exeFileName" -Force
  Move-Item "$partsDirName" "$installDir\$partsDirName" -Force
  
  Pop-Location
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}