#!/bin/bash

ip=192.168.1.1
password="password"

pub=`cat /root/.ssh/id_rsa.pub`

/usr/bin/expect <<-EOF

spawn ssh-copy-id ${ip}

expect {
"yes/no" { send "yes\r"; exp_continue }
"password" { send "${password}\r" }
}
expect eof
EOF
