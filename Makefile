SHELL=/bin/bash

BUILD_TAG=0.1
REGISTRY=docker.pkg.github.com/rima1309/mindbenders
APP_NAME=mindbenders-service
IMG_NAME=$(REGISTRY)/$(APP_NAME):$(BUILD_TAG)

#gcr.io/mygcsproject-1/mindbenders:0.1

#
# Build target
#
build:
	#docker build -t $(IMG_NAME) .
	docker build -t gcr.io/mygcsproject-1/mindbenders:0.1 .

#
# Run instance
#

run:
	#docker run -it $(IMG_NAME)
	docker run -it --rm -p 8080:8080 gcr.io/mygcsproject-1/mindbenders:0.1


