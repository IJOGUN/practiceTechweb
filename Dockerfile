# Use the official .NET SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the project file and restore any dependencies
COPY techwebapp/Techwebapp.csproj ./
RUN dotnet restore

# Copy the rest of the application source code and build the app
COPY techwebapp/. ./
RUN dotnet publish -c Release -o out


# Use the official ASP.NET Core runtime image for running the app
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

# Set the working directory in the container
WORKDIR /app

# Copy the build output from the previous stage
COPY --from=build /app/out .

# Expose the port the app runs on
EXPOSE 80

# Define the entry point for the container
ENTRYPOINT ["dotnet", "Techwebapp.dll"]
