#!/bin/bash

tideways-daemon --hostname=tideways-daemon --address=0.0.0.0:9135 >> /dev/stdout 2>/dev/stderr

/sbin/my_init
