rm -rf PPRiskMagnes.iOS/bin
rm -rf PPRiskMagnes.iOS/obj

dotnet nuget locals -c all

msbuild -t:Clean,Rebuild -p:Configuration=Release ppriskmagnes-ios.sln
nuget pack PPRiskMagnes.iOS/PPRiskMagnes.iOS.csproj -Prop Configuration=Release -OutputDirectory nugets -Version 5.4.0