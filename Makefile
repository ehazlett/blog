all: build bundle

build:
	@go build -v .
	@mkdir -p context
	@cp -r content context/
	@cp blog context/

bundle:
	@sudo box --debug build -c context package.toml
	@sudo box --debug packages create blog
