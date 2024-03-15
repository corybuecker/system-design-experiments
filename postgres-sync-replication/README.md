# PostgreSQL Synchronous Replication

https://www.postgresql.org/docs/current/warm-standby.html#SYNCHRONOUS-REPLICATION

```bash
docker compose up -d primary

docker compose exec --user root primary chown postgres:postgres /opt/backups
docker compose exec --user postgres primary pg_basebackup -D /opt/backups --wal-method=stream

// There is a bug with the initialize step
docker compose up standby
docker compose up -d standby
```

```sql
begin;
set local synchronous_commit = on;

create table test (id bigserial);

commit;
```
