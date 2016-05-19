#!/bin/bash

mkdir /opt/test-daemon
chown root:root /opt/test-daemon
chmod 755 /opt/test-daemon

cp opt/test-daemon.py /opt/test-daemon/test-daemon.py
chown root:root /opt/test-daemon/test-daemon.py
chmod 644 /opt/test-daemon/test-daemon.py

cp sbin/test-daemon /usr/sbin/test-daemon
chown root:root /usr/sbin/test-daemon
chmod 755 /usr/sbin/test-daemon

cp init.d/test-daemon /etc/init.d/test-daemon
chown root:root /etc/init.d/test-daemon
chmod 755 /etc/init.d/test-daemon

update-rc.d test-daemon defaults

service test-daemon start
