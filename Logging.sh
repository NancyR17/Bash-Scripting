#!/bin/bash
echo "This is a test message " 

./logging.sh

$ cd /var/log
$ ls -ltr ( By default it will got to messages )
$ cat messages

# tail command prints the last N number of data of the given input:
# -n = num

$ tail -n 4/var/log/messages

$ tail -version

$ ./logging.sh

# facility and severity ->routes messages to different log files
# logger -p local7.info " Information message"
$ logger -p local7.err "Error message"

# Without making changes to syslog
logger -s "This is a custom message" >> /var/log/CustomMessage

$ cat  /etc/rsyslog.conf

Start/ Stop /Disable /Enable /Status

1) systemctl start rsyslog.service
2) systemctl stop rsyslog.service
3) systemctl disable rsyslog.service
4) systemctl enable rsyslog.service
5) systemctl status rsyslog.service -l
