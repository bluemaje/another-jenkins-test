.PHONY: build clean help package publish test

build: ## Compile all the things!!!
	@echo "Every day I'm compilin'" && \
    env

clean: ## Cleanup docker images, vendor libraries, temp files and compiled packages
	@echo "are emm dash are eff star"

help: ## Print this message
	@perl -nle'print $& if m{^[a-zA-Z_-]+:.*?## .*$$}' $(MAKEFILE_LIST) | sort | \
    awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

package: ## Create a container or deb or an elixir thingy or something
	@echo "zip it up!"

publish: ## Upload to artifactory/s3/docker hub/wherever
	@echo "whoooooooosh"

test: ## Run tests
	@echo "FAIL!!!! jk"
