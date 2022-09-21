#!/usr/bin/env python

import re
import csv

lineformat = re.compile(r'(?P<ip_addr>(?:^|\b(?<!\.))(?:1?\d\d?|2[0-4]\d|25[0-5])(?:\.(?:1?\d\d?|2[0-4]\d|25[0-5])){3}(?=$|[^\w.]))\s-\s(?P<dash>-|[a-z_][a-z0-9_]{0,30})\s(?P<date_time>\[(?P<date>[0-2][0-9]\/\w{3}\/[12]\d{3}):(?P<time>\d\d:\d\d:\d\d).*\])\s(?P<request>\"(?P<req_method>GET|POST|HEAD|PUT|DELETE|CONNECT|OPTIONS|TRACE|PATCH)\s(?P<req_uri>\/[^\s]*)\s(?P<http_ver>HTTP/\d\.\d)\")\s(?P<status>\d{3})\s(?P<body_byte_sent>\d+)\s\"(?P<http_referer>[^\s]+)\"\s\"(?P<user_agent>[^\"]+)\"\s(?P<grafana>[^\"]+)\n', re.IGNORECASE)

logs = []

logfile = open("nginx.log")

for l in logfile.readlines():
    data = re.search(lineformat, l)
    logs.append(data.groupdict())

logfile.close()

keys = logs[0].keys()

with open('nginx.csv', 'w', newline='') as output_file:
    dict_writer = csv.DictWriter(output_file, keys)
    dict_writer.writeheader()
    dict_writer.writerows(logs)