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
pgbench -h localhost -p 5433 -U postgres -d postgres -M simple -f script1.sql
pgbench -h localhost -p 5433 -U postgres -d postgres -M prepared -f script1.sql
```