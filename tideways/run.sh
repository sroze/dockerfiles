#!/bin/bash

tideways-daemon --hostname=tideways-daemon --address=0.0.0.0:9135 $TIDEWAYS_DAEMON_EXTRA >> /dev/stdout 2>/dev/stderr

/sbin/my_init
