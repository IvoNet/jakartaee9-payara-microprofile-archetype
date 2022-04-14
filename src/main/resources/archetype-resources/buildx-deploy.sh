#!/bin/sh

image=${artifactId}
version=${version}

mvn clean package

./buildx-bootstrap.sh

docker buildx build --platform=linux/amd64,linux/arm64/v8 --push -t ivonet/"${image}":latest .
docker buildx build --platform=linux/amd64,linux/arm64/v8 --push -t ivonet/"${image}":"\${version}" .
docker pull ivonet/archetypetest:latest
