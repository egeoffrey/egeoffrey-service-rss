### EGEOFFREY ###

### define base image
## the SDK version to bind to has to be passed by the builder so to select the right base image
ARG SDK_VERSION
ARG ARCHITECTURE
## Use the small python alpine image if you don't have OS dependencies
FROM egeoffrey/egeoffrey-sdk-alpine:${SDK_VERSION}-${ARCHITECTURE}

### install module's dependencies
RUN pip install feedparser

### copy files into the image
COPY . $WORKDIR
