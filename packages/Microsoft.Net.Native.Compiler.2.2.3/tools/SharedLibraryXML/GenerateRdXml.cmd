@if not defined _echo echo off
setlocal
set COMPLUS_INSTALLROOT=
set COMPLUS_Version=

if NOT "%~1" == "" (
    set WinRTClosureFinderTool=%1
    GOTO WinRTClosureFinderToolFound
)

set CoreFXReleasePath=\\fxcore\tools\drops\release\
for /F "delims=" %%i in ('dir /b %CoreFXReleasePath%') do (set LatestCoreFXToolsDrop=%%i)
set LatestCoreFXToolsDrop=%CoreFXReleasePath%%LatestCoreFXToolsDrop%
set WinRTClosureFinderTool=%LatestCoreFXToolsDrop%\tools\WinRTClosureFinder.exe

:WinRTClosureFinderToolFound
echo Using %WinRTClosureFinderTool%

echo Updating SharedLibrary.rd.xml
cmd /c call tf edit %_NTDRIVE%%_NTROOT%\ndp\PnToolChain\VSIntegration\SharedLibraryXML\SharedLibrary.rd.xml
%WinRTClosureFinderTool% %_NTDRIVE%%_NTROOT%\ndp\PnToolChain\VSIntegration\SharedLibraryXML\SharedLibrary.AssemblyList.txt /assemblypath %_NTTREE%\ProjectN\TestILC\ExternalFiles\Framework /assemblypath %_NTTREE%\ProjectN\TestILC\ProductIlc\lib\Private /winmdpath %_NTTREE%\ProjectN\TestILC\ExternalFiles\TargetPlatformSdkMetadataPath /out %_NTDRIVE%%_NTROOT%\ndp\PnToolChain\VSIntegration\SharedLibraryXML\SharedLibrary.rd.xml /template %_NTDRIVE%%_NTROOT%\ndp\PnToolChain\VSIntegration\SharedLibraryXML\SharedLibrary.template.rd.xml

echo Updating BiggerSharedLibrary.rd.xml
cmd /c call tf edit %_NTDRIVE%%_NTROOT%\ndp\PnToolChain\VSIntegration\SharedLibraryXML\BiggerSharedLibrary.rd.xml
%WinRTClosureFinderTool% %_NTDRIVE%%_NTROOT%\ndp\PnToolChain\VSIntegration\SharedLibraryXML\BiggerSharedLibrary.AssemblyList.txt /assemblypath %_NTTREE%\ProjectN\TestILC\ExternalFiles\Framework /assemblypath %_NTTREE%\ProjectN\TestILC\ProductIlc\lib\Private /winmdpath %_NTTREE%\ProjectN\TestILC\ExternalFiles\TargetPlatformSdkMetadataPath /out %_NTDRIVE%%_NTROOT%\ndp\PnToolChain\VSIntegration\SharedLibraryXML\BiggerSharedLibrary.rd.xml /template %_NTDRIVE%%_NTROOT%\ndp\PnToolChain\VSIntegration\SharedLibraryXML\BiggerSharedLibrary.template.rd.xml