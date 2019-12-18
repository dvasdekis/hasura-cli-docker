# hasura-cli-docker

Hasura CLI in a docker instance, so that migrations can be applied ephemerally without giving your main Hasura instance CREATE SCHEMA access on your production DB.

Usage:

`docker run --rm dvasdekis/hasura-cli-docker:latest -v /local/path/to/migrations:./migrations hasura metadata apply --endpoint "http://your_hasura_address:80" --admin-secret "your_hasura_admin_secret"`
