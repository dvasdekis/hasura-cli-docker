FROM ubuntu:latest

USER root
# Install Hasura CLI
RUN curl -L https://github.com/hasura/graphql-engine/raw/master/cli/get.sh | bash

# Create Hasura CLI user
RUN adduser --system --home /hasuracli --disabled-password --group hasuracli
WORKDIR /hasuracli
USER hasuracli


ENTRYPOINT ["usr/local/bin"]
CMD ["-?"]
