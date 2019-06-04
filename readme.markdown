# Rest SQL

Rest SQL serves a fully RESTful API from a PostgreSQL database.

## Installation

The easiest way to get this docker image installed is to pull the latest version from the Docker registry:

```sh
docker pull suzel/docker-postgrest
```

## Running

Start DB,

```sh
make start
```

You can the visit the following URL in a browser on your host machine to get started:

```sh
# Open PostgREST Service
http://localhost:3000/

# Open database browser (pgweb)
http://localhost:8081/
```
## Curl Samples

```sql
create table sensor_values
           (epoch timestamp default current_timestamp,
            value real not null default 0,
            primary key (epoch));
```

```sh
curl -s -H "Content-Type: application/json" \
     -d '{"value" : "0"}'                   \
      localhost:3000/sensor_values
```
