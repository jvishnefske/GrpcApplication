.PHONY: build test coverage clean restore

SOLUTION = WcfApplication.sln
TEST_PROJECT = ContactsApi.Tests/ContactsApi.Tests.csproj
COVERAGE_DIR = coverage

# Build all projects
build: restore
	dotnet build $(SOLUTION) --configuration Release --no-restore

# Restore dependencies
restore:
	dotnet restore $(SOLUTION)

# Run tests
test: build
	dotnet test $(SOLUTION) --configuration Release --no-build --verbosity normal

# Run tests with coverage
coverage: build
	dotnet test $(TEST_PROJECT) --configuration Release --no-build \
		--collect:"XPlat Code Coverage" \
		--results-directory $(COVERAGE_DIR) \
		-- DataCollectionRunSettings.DataCollectors.DataCollector.Configuration.Format=cobertura

# Clean build artifacts
clean:
	dotnet clean $(SOLUTION) --configuration Release
	dotnet clean $(SOLUTION) --configuration Debug
	rm -rf $(COVERAGE_DIR)
	find . -type d -name "bin" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name "obj" -exec rm -rf {} + 2>/dev/null || true
