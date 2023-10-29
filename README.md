# pgbench-experiment

## Installation

```
sudo apt-get install postgresql
```

## Running

```
docker compose up postgres
```

Initialize Pgbench databases:

```
pgbench -h localhost -p 5433 -U postgres -d postgres -i
```

Then run the bench:

```
pgbench -h localhost -p 5433 -U postgres -d postgres
```

or

```
pgbench -h localhost -p 5433 -U postgres -d postgres -M simple -f 0-select1.sql
pgbench -h localhost -p 5433 -U postgres -d postgres -M prepared -f 0-select1.sql
```

Import more data to the database:

```
docker container exec -i $(docker-compose ps -q postgres) psql -U postgres < tables.sql
```

And the full suite:
```
pgbench -h localhost -p 5433 -U postgres -d postgres -M simple -f 0-select1.sql -T 60 > results/0-simple.log
pgbench -h localhost -p 5433 -U postgres -d postgres -M prepared -f 0-select1. -T 60 > results/0-prepared.log

pgbench -h localhost -p 5433 -U postgres -d postgres -M simple -f 1-join1.sql -T 60 > results/1-simple.log
pgbench -h localhost -p 5433 -U postgres -d postgres -M prepared -f 1-join1.sql -T 60 > results/1-prepared.log

pgbench -h localhost -p 5433 -U postgres -d postgres -M simple -f 2-join2.sql -T 60 > results/2-simple.log
pgbench -h localhost -p 5433 -U postgres -d postgres -M prepared -f 2-join2.sql -T 60 > results/2-prepared.log

pgbench -h localhost -p 5433 -U postgres -d postgres -M simple -f 3-join5.sql -T 60 > results/3-simple.log
pgbench -h localhost -p 5433 -U postgres -d postgres -M prepared -f 3-join5.sql -T 60 > results/3-prepared.log

pgbench -h localhost -p 5433 -U postgres -d postgres -M simple -f 4-join10.sql -T 60 > results/4-simple.log
pgbench -h localhost -p 5433 -U postgres -d postgres -M prepared -f 4-join10.sql -T 60 > results/4-prepared.log
```