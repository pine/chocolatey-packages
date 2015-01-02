Chocolatey packages
===================
[![Build status](https://ci.appveyor.com/api/projects/status/d0a1wabjfjxdy453/branch/master?svg=true)](https://ci.appveyor.com/project/pine613/chocolatey-packages/branch/master)

My Chocolatey packages repository

## Install
Please see my page in Chocolatey.

- [Chocolatey Gallery | pine613](https://chocolatey.org/profiles/pine613)

## Chocolatey tutorial (for developer)
You may want to see following links if you want to create a Chocolatey package.

- [CreatePackagesQuickStart](https://github.com/chocolatey/chocolatey/wiki/CreatePackagesQuickStart) (official)
- [Chocolatey Utility Functions aka Helpers Reference](https://github.com/chocolatey/chocolatey/wiki/HelpersReference) (official)
- [AutomaticPackages](https://github.com/chocolatey/chocolatey/wiki/AutomaticPackages) (official)
- [Chocolateyパッケージの作り方](http://terurou.hateblo.jp/entry/2013/09/08/171151) (unofficial and written in Japanese)

## Tests
It uses [Noel](https://github.com/pine613/noel) as test runner. Noel supports both packages of manual and automatic. It uses Ketarin as backend if builds automatic packages. Noel runs on CI.

## More information
### Opera Developer & beta
It uses [OperaUpdateChecker](https://github.com/pine613/OperaUpdateChecker) to get a latest version.