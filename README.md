# hasura-cli-docker

Hasura CLI in a docker instance, so that hasura metadata migrations can be applied ephemerally without giving your main Hasura instance CREATE SCHEMA access on your production DB.

Your migrations folder should resemble the below:

.
├── config.yaml
└── migrations
    └── metadata.json

Usage:

`docker run --rm --volume /path/to/your/migrations/folder:/hasuracli/migrations docker.io/dvasdekis/hasura-cli-docker:latest metadata apply --endpoint "http://your_hasura_address:80" --admin-secret "your_hasura_admin_secret" --project migrations`
