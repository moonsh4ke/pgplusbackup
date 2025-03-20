#!/usr/bin/env bash
set -Eeo pipefail

chown -R postgres:postgres "$PGBACKRESTDATA"

/usr/local/bin/docker-entrypoint.sh "$@"
