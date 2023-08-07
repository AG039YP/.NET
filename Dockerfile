# Use the official .NET Core 5.0 runtime image as the base image
FROM mcr.microsoft.com/dotnet/sdk:7.0
# Set the working directory inside the container
WORKDIR /app

# Copy the published output from your ASP.NET Core application
COPY bin/Release/net7.0/publish/ .

# Set the entry point to run the application when the container starts
ENTRYPOINT ["dotnet", "HelloWorldWebApp.dll"]
