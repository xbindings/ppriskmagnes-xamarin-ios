rm -rf PPRiskMagnes.iOS/bin
rm -rf PPRiskMagnes.iOS/obj

dotnet clean
dotnet restore
dotnet pack -c Release PPRiskMagnes.iOS/PPRiskMagnes.iOS.csproj

mv PPRiskMagnes.iOS/bin/Release/PPRiskMagnes.iOS*.nupkg nugets/