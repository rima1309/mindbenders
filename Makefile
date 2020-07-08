SHELL=/bin/bash

BUILD_TAG=0.1
REGISTRY=docker.pkg.github.com/rima1309/mindbenders
APP_NAME=mindbenders-service
IMG_NAME=$(REGISTRY)/$(APP_NAME):$(BUILD_TAG)


#
# Build target
#
build:
	docker build -t $(IMG_NAME) .

#
# Run instance
#

run:
	docker run -it $(IMG_NAME)


