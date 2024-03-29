# hasura-cli-docker

Hasura CLI in a docker instance, so that hasura metadata migrations can be applied ephemerally without giving your main Hasura instance CREATE SCHEMA access on your production DB.

Your migrations folder should resemble the below:

```
.
├── config.yaml
└── metadata
└── migrations
   └── metadata.json
└── seeds
```

Usage:

[Optional] Init project - migrations:\
`docker run --rm --mount type=bind,source="/path/to/your/migrations_home",target=/hasuracli:rw docker.io/dvasdekis/hasura-cli-docker:latest init migrations --endpoint "http://your_hasura_address:80" --admin-secret "your_hasura_admin_secret"`

Run/Apply migrations:\
`docker run --restart on-failure --rm --volume /path/to/your/migrations/folder:/hasuracli/migrations docker.io/dvasdekis/hasura-cli-docker:latest metadata apply --endpoint "http://your_hasura_address:80" --admin-secret "your_hasura_admin_secret" --project migrations`  
\
[Docker Hub link](https://hub.docker.com/repository/docker/dvasdekis/hasura-cli-docker) \
[Cli Docs](https://hasura.io/docs/latest/graphql/core/hasura-cli/index/)

Hasura CLI version: v2.4.0
