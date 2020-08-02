GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
GOTOOL=$(GOCMD) tool
LINTER=golangci-lint

prescript: travis_get_linter lint

travis_get_linter:
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.24.0

lint:
	$(LINTER) run

test:
	$(GOTEST) -v -coverprofile=coverage.out -covermode=count ./...

travis_test:
	$(GOTEST) ./... -race -coverprofile=coverage.txt -covermode=atomic

coverage: test
	$(GOTOOL) cover -html=coverage.out

clean_coverages:
	rm -f *coverage*
