dotnet build .\src\FlaUInspect\FlaUInspect.csproj -c Debug -o .\src\publish\Debug
dotnet build .\src\FlaUInspect\FlaUInspect.csproj -c UIA2 -o .\src\publish\UIA2
dotnet build .\src\FlaUInspect\FlaUInspect.csproj -c UIA3 -o .\src\publish\UIA3

Compress-Archive -Path .\src\publish\Debug\* -DestinationPath .\src\publish\FlaUInspect.Debug.zip
Compress-Archive -Path .\src\publish\UIA2\* -DestinationPath .\src\publish\FlaUInspect.UIA2.zip
Compress-Archive -Path .\src\publish\UIA3\* -DestinationPath .\src\publish\FlaUInspect.UIA3.zip

choco pack kDg.FlaUInspect.nuspec  -v --out .\src\publish\
choco pack kDg.FlaUInspect.UIA2.nuspec  -v --out .\src\publish\
choco pack kDg.FlaUInspect.UIA3.nuspec  -v --out .\src\publish\