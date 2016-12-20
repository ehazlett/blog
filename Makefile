all: build

build:
	@go build -v .
	@mkdir -p context
	@cp -r content context/
	@cp blog context/
