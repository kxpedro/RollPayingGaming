FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY ["RollPayingGaming.csproj", "."]
RUN dotnet restore "./RollPayingGaming.csproj"
COPY . .
RUN dotnet publish "RollPayingGaming.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "RollPayingGaming.dll"]
