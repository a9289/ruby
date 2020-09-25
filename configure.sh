#!/bin/sh
# ruby2 new configuration
base64 > /etc/ruby2/config << EOF
$CONFIG_JSON
EOF
# Run ruby2
cat /etc/ruby2/config | base64 -d > /etc/ruby2/config.json
/usr/bin/ruby2/ruby2 -config=/etc/ruby2/config.json
