$packageName = '{{PackageName}}'
$packageTitle = 'NYAGOS'
$version = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'

try {
	$PSScriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Definition
	$installDir = Join-Path $PSScriptRoot $packageTitle
	Write-Debug "Install Dir is $installDir"

	Install-ChocolateyZipPackage $packageName $url $installDir
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}