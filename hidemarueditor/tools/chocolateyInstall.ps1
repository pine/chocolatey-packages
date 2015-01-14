$packageName = 'hidemarueditor'
$version = '8.50'

$version2 = $version.Replace('.','')
$url = "http://hide.maruo.co.jp/software/bin3/maruo${version2}_signed.exe"
$url64 = "http://hide.maruo.co.jp/software/bin3/maruo${version2}_x64_signed.exe"
$urlJp = "http://hide.maruo.co.jp/software/bin/hm${version2}_signed.exe"
$url64Jp = "http://hide.maruo.co.jp/software/bin/hm${version2}_x64_signed.exe"

try {
  $LCID = (Get-UICulture).LCID
  $is32bit = Get-ProcessorBits 32
  
  $fileName = '$packageName_$version'
  $filePath = "$env:TEMP\chocolatey\$packageName"
  $fileFullPath = "$filePath\${fileName}.exe"
  
  $scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
  
  if ($LCID -eq "1041") { # Japanese
    $ahkFile = "$scriptPath\${packageName}Jp.ahk"
  }
  
  else {
    $ahkFile = "$scriptPath\${packageName}.ahk"
  }
  
  if ($LCID -eq "1041") { # Japanese
    if ($is32bit) {
      $url = $urlJp
    }
    
    else {
      $url = $url64Jp
    }
  }
  
  elseif (!$is32bit) { # English
    $url = $url64
  }
  
  New-Item "$filePath" -ItemType Directory -Force
  Get-ChocolateyWebFile "$packageName" "$fileFullPath" "$url"
  
  Start-Process 'AutoHotkey' "$ahkFile" -NoNewWindow
  Start-Process "$fileFullPath"
  
  Wait-Process -Name "$fileName"
  
  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}
