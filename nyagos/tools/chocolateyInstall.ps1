$packageName = 'nyagos'
$packageTitle = 'NYAGOS'
$version = '4.0.3.0'
$url = 'https://github.com/zetamatta/nyagos/releases/download/4.0.3_0/nyagos-4.0.3_0.zip'

try {
	$binRoot = Get-BinRoot
	Write-Debug "Bin Root is $binRoot"

	$installDir = Join-Path $binRoot $packageTitle
	Write-Debug "Install Dir is $installDir"

	Install-ChocolateyZipPackage $packageName $url $installDir
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}