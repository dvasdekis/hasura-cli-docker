FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y curl

# Set permissions
RUN chmod 0755 /usr/local/bin
RUN chmod 0755 /usr/local/bin/hasura

# Create Hasura CLI user
RUN adduser --system --home /hasuracli --disabled-password --group hasuracli
WORKDIR /hasuracli
USER hasuracli

# Install HasuraCLI
RUN curl -L https://github.com/hasura/graphql-engine/raw/master/cli/get.sh | INSTALL_PATH=/hasuracli bash


ENTRYPOINT ["/usr/local/bin/hasura"]
CMD ["-?"]
