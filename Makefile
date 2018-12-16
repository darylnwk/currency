.PHONY: all dep build clean test coverage coverhtml lint

all: build

lint: ## Lint the files
	golint -set_exit_status ./...

test: ## Run unittests
	go test -short -v ./...

coverage: ## Generate global code coverage report
	bash ./tools/coverage.sh;

dep: ## Get the dependencies
	go get -v -t ./...
	go get -u golang.org/x/lint/golint
