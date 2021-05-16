build:
	./.make/build.sh

install: build
	./.make/install.sh

install-locally: build
	./.make/install.sh --locally

clean:
	./.make/clean.sh
