## Use BASE IMAGE
FROM mcr.microsoft.com/dotnet/core/aspnet:2.1

## CREATE A DIRECTORY AND MAKE IT CURRENT DIRECTORY
WORKDIR /app2

COPY publish/ /app2/

CMD ["dotnet","MyApp03.dll"]