:: msbuild must be in path
SET PATH=%PATH%;%DEVENV_PATH%;%WINDIR%\Microsoft.NET\Framework64\v4.0.30319
where msbuild
if errorLevel 1 ( echo "msbuild was not found on PATH" && exit /b 1 )

MSBuild BreakoutBomb\BreakoutBomb.vcxproj /t:Rebuild /p:Platform=x64 /p:Configuration=Release || exit /b 1
MSBuild JobBreakoutTest\JobBreakoutTest.vcxproj /t:Rebuild /p:Platform=x64 /p:Configuration=Release || exit /b 1
MSBuild mmapleak\mmapleak.vcxproj /t:Rebuild /p:Platform=x64 /p:Configuration=Release || exit /b 1
