# Rest SQL

Rest SQL serves a fully RESTful API from a PostgreSQL database.

## Running

### Server

To deploy to a remote server,

```sh
make ansible
```

### Locally

To use locally,

```sh
make start
```

You can the visit the following URL in a browser on your host machine to get started:

```sh
# Open REST API 
http://localhost:9090/

# Open database browser
http://localhost:9091/
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
      localhost:9090/sensor_values
```

```sh
curl -G localhost:9090/sensor_values \
     -d select="epoch,value"         \
     -d order=epoch.desc             \
     -d limit=10
```
