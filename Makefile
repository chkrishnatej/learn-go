GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
LINTER=golangci-lint

prescript: lint test

test:
	$(GOTEST) ./... -race -coverprofile=coverage.txt -covermode=atomic

clean_coverages:
	rm -f *coverage*

lint:
	$(LINTER) run -v
