default: test

test:
	go test ./...

tidy:
	go mod tidy

version:
	@cat gomega_dsl.go | grep 'GOMEGA_VERSION' | cut -d' ' -f4 | jq -r .

update:
	@./update.sh
