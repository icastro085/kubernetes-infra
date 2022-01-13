APP_NAME = $(shell jq -r ".name" package.json)
APP_VERSION = $(shell jq -r ".version" package.json)

.PHONY: build
build:
	@echo "APP NAME: ${APP_NAME}"
	@echo "APP VERSION: ${APP_VERSION}"
	@docker build --rm -t  ${APP_NAME}:${APP_VERSION} .

.PHONY: start
start:
	docker run --name ${APP_NAME}-test -itd -p 3000:3000 --rm ${APP_NAME}
