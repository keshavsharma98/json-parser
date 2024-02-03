# Makefile
export

execute:
	cd cmd/app && go run .

mod:
	go mod tidy
	go mod vendor

build:
	@cd cmd/app && go build -o ../../bin/app.exe

build-vendor:
	@cd cmd/app && go build -mod=vendor -o ../../bin/app.exe

run: build
	@cd cmd/app && ../.././bin/app.exe