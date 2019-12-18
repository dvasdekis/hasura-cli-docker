FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y curl
# Install Hasura CLI
RUN curl -L https://github.com/hasura/graphql-engine/raw/master/cli/get.sh | bash

# Set permissions
RUN chmod 0755 /usr/local/bin
RUN chmod 0755 /usr/local/bin/hasura

# Create Hasura CLI user
RUN adduser --system --home /hasuracli --disabled-password --group hasuracli
WORKDIR /hasuracli
USER hasuracli


ENTRYPOINT ["/usr/local/bin/hasura"]
CMD ["-?"]
