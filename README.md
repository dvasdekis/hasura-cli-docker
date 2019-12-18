# hasura-cli-docker

Hasura CLI in a docker instance, so that migrations can be applied ephemerally without giving your main Hasura instance CREATE SCHEMA access on your production DB.

Usage:

`docker run --rm dvasdekis/hasura-cli-docker:latest -v /local/path/to/migrations:./migrations hasura metadata apply --endpoint "http://${hasura_fixed_ext_ip}:80" --admin-secret "${hasura_admin_secret}"`
