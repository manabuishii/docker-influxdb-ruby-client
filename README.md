# docker-influxdb-ruby-client
InfluxDB ruby client docker image


# import data

```
Usage: host database key value
```

```
docker run --rm manabuishii/docker-influxdb-ruby-client:0.1.0 \
 localhost mydb test1 5000
docker run --rm manabuishii/docker-influxdb-ruby-client:0.1.0 \
 localhost mydb test1 5000.5
docker run --rm manabuishii/docker-influxdb-ruby-client:0.1.0 \
 localhost mydb test1 5000.15
```
