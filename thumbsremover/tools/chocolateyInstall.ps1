$packageName = 'thumbsremover'
$version = '1.6.1.280'
$fileType = 'exe'
$installArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.xtreme-lab.net/downloads/tr161_setup.exe'

Install-ChocolateyPackage $packageName $fileType $installArgs $url