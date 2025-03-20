Example:

```sh
docker run \
	-v pgdata:/var/lib/postgresql/data \
	-v pgback:/var/lib/pgbackrest/ \
	-v $PWD/postgresql.sample.conf:/etc/postgresql/postgresql.conf \
	-v $PWD/pgbackrest.sample.conf:/etc/pgbackrest.conf \
	-v $PWD/initdb:/docker-entrypoint-initdb.d \
	-e POSTGRES_PASSWORD=password \
	--name pgplusbackup
	pgplusbackup \
	-c config_file=/etc/postgresql/postgresql.conf
```
