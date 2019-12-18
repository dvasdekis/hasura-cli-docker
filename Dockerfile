FROM ubuntu:latest

USER root
RUN apt-get update -y && apt-get install -y curl
# Install Hasura CLI
RUN curl -L https://github.com/hasura/graphql-engine/raw/master/cli/get.sh | bash


ENTRYPOINT ["/usr/local/bin"]
CMD ["-?"]
