#!/bin/sh

curl -XPOST "http://localhost:9000/swarms/hwuxlrfh.json" -d @- <<EOF
{"user_key":12345,"timestamp":$(date +%s),"intent":"green","feedback": "Mr King","postcode":"N1 9GU","ip":"10.0.0.1"}
EOF
