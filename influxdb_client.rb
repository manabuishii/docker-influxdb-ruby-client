#!/usr/bin/env ruby

require 'influxdb'

if ARGV.size != 4 then
  puts "Usage: host database key value"
  exit(1)
end

host     = ARGV[0]
database = ARGV[1]
time_precision = 's'

influxdb = InfluxDB::Client.new database, :host => host, :time_precision => time_precision

NAMES = [ARGV[2]]
NAMES.each do |name|
  data = {
    values: {value: ARGV[3].to_f},
    timestamp: Time.now.to_i
  }
  influxdb.write_point(name, data)
end

