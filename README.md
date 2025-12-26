# ContactsApp

A full-stack .NET 8 gRPC application for managing contacts with SQLite persistence. Features a console client consuming an ASP.NET Core gRPC API designed for Linux deployment.

## Quick Start

```bash
# Build all projects
make build

# Run the API (in one terminal)
dotnet run --project ContactsApi

# Run the client (in another terminal)
dotnet run --project Client
```

## Architecture

- **ContactsApi**: ASP.NET Core gRPC service with SQLite backend
- **Client**: Console application consuming the gRPC API
- **ContactsApi.Tests**: Unit and integration tests using xUnit

## Features

- CRUD operations for contacts with prefix/suffix lookups
- SQLite database with automatic initialization
- Configurable endpoints via appsettings.json and App.config
- Structured logging and error handling
- Unit and integration test coverage

## Configuration

- **API Endpoint**: Configure in `ContactsApi/appsettings.json`
- **Client Endpoint**: Configure in `Client/App.config` under `GrpcApiAddress`
- **Database**: SQLite file created automatically at startup

## Development

```bash
make build      # Build all projects
make test       # Run tests
make coverage   # Run tests with coverage
make clean      # Clean build artifacts
```
