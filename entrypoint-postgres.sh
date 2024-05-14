#!bin/sh

initdb -D /var/lib/postgresql/data --data-checksums

echo "host    all             all             0.0.0.0/0             md5" >> /var/lib/postgresql/data/pg_hba.conf
echo "local   all             postgres                                md5" >> /var/lib/postgresql/data/pg_hba.conf
echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf

pg_ctl -D /var/lib/postgresql/data -w start

psql -c "create user $POSTGRES_USER with login password '$POSTGRES_PASSWORD'" postgres
psql -c "create database $POSTGRES_DB with owner = $POSTGRES_USER" postgres
psql -c "ALTER USER $POSTGRES_USER CREATEDB" postgres

exec "bin/sh"