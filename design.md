# Design Document - ContactsApp

## MVP Functional Requirements

### Core API Features

- [x] **REQ-001**: gRPC service exposing contacts CRUD operations (GetAllContacts, GetContact, InsertContact, UpdateContact)
- [x] **REQ-002**: gRPC service exposing lookup operations (GetPrefixes, GetSuffixes)
- [x] **REQ-003**: SQLite database backend with automatic schema initialization
- [x] **REQ-004**: Contact entity with fields: uid, first_name, last_name, prefix_id, suffix_id, address, city, state, zip
- [x] **REQ-005**: Lookup entities for prefixes and suffixes with id and description

### Client Features

- [x] **REQ-006**: Console client consuming gRPC API
- [x] **REQ-007**: Configurable API endpoint via App.config

### Error Handling

- [x] **REQ-008**: Structured error handling with RpcException for API errors
- [x] **REQ-009**: Client-side error handling with user-friendly messages
- [x] **REQ-010**: Structured logging for API operations

### Testing

- [x] **REQ-011**: Unit tests for Utilities persistence layer
- [x] **REQ-012**: Unit tests for ContactsGrpcService
- [x] **REQ-013**: Unit tests for LookupsGrpcService
- [x] **REQ-014**: Integration tests using WebApplicationFactory

### Build and CI

- [x] **REQ-015**: Clean build with zero errors and warnings
- [x] **REQ-016**: CI pipeline with build and test stages
- [x] **REQ-017**: Code coverage collection via coverlet

## Traceability Matrix

| Requirement | Implementation | Test Coverage |
|-------------|----------------|---------------|
| REQ-001 | ContactsApi/Services/ContactsGrpcService.cs | ContactsGrpcServiceTests.cs |
| REQ-002 | ContactsApi/Services/LookupsGrpcService.cs | LookupsGrpcServiceTests.cs |
| REQ-003 | ContactsApi/Utilities.cs | UtilitiesTests.cs |
| REQ-004 | Protos/contacts.proto | ContactsGrpcServiceTests.cs |
| REQ-005 | Protos/lookups.proto | LookupsGrpcServiceTests.cs |
| REQ-006 | Client/Program.cs | IntegrationTests.cs |
| REQ-007 | Client/App.config | - |
| REQ-008 | ContactsApi/Services/*.cs | ContactsGrpcServiceTests.cs |
| REQ-009 | Client/Program.cs | - |
| REQ-010 | ContactsApi/Program.cs | - |
| REQ-011 | ContactsApi/Utilities.cs | UtilitiesTests.cs |
| REQ-012 | ContactsApi/Services/ContactsGrpcService.cs | ContactsGrpcServiceTests.cs |
| REQ-013 | ContactsApi/Services/LookupsGrpcService.cs | LookupsGrpcServiceTests.cs |
| REQ-014 | ContactsApi/* | IntegrationTests.cs |
| REQ-015 | WcfApplication.sln | CI pipeline |
| REQ-016 | .github/workflows/ci.yml | - |
| REQ-017 | ContactsApi.Tests.csproj (coverlet) | CI pipeline |
