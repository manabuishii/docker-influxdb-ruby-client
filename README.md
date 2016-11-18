# docker-influxdb-ruby-client
InfluxDB ruby client docker image

# start influxdb

Use official docker image [library/influxdb - Docker Hub](https://hub.docker.com/_/influxdb/ "library/influxdb - Docker Hub")

```
docker run -p 8083:8083 -p 8086:8086 \
      -v $PWD:/var/lib/influxdb \
      influxdb:1.0.2-alpine
```

# import data

```
Usage: host database key value
```

```
docker run --rm manabuishii/docker-influxdb-ruby-client:0.1.1 \
 localhost mydb test1 5000
docker run --rm manabuishii/docker-influxdb-ruby-client:0.1.1 \
 localhost mydb test1 5000.5
docker run --rm manabuishii/docker-influxdb-ruby-client:0.1.1 \
 localhost mydb test1 5000.15
```
