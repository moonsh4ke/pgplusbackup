FROM postgres:17-bookworm

ENV PGBACKRESTDATA /var/lib/pgbackrest

RUN apt-get update \
	&& apt-get install -y ca-certificates \
	&& apt-get install -y --no-install-recommends pgbackrest \
	&& rm -rf /var/lib/apt/lists/*

VOLUME /var/lib/pgbackrest

COPY pgbackrest-entrypoint.sh /usr/local/bin/pgbackrest-entrypoint.sh
RUN chmod +x /usr/local/bin/pgbackrest-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/pgbackrest-entrypoint.sh"]
