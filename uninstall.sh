#!/bin/bash

service test-daemon stop

rm /etc/init.d/test-daemon

update-rc.d test-daemon remove

rm /usr/sbin/test-daemon

rm -r /opt/test-daemon
