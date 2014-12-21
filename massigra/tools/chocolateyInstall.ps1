$packageName = '{{PackageName}}'
$packageTitle = 'MassiGra'
$version = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'

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