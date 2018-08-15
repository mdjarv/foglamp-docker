#!/bin/bash

service rsyslog start
bin/foglamp start
tail -f /var/log/syslog