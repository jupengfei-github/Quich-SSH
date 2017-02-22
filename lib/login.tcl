#!/usr/bin/expect -f

set address [ lindex $argv 0 ]
set type    [ lindex $argv 1 ]
set user    [ lindex $argv 2 ]
set passwd  [ lindex $argv 3 ]

proc ssh_login {addr user passwd} {
    set msg [exec which ssh]
    set len [string length $msg]

    if {$len > 0 } {
        set timeout 10
        spawn ssh $user@$addr
        expect {
            "yes/no"    { send "yes\r"; exp_continue }
            "password:" { send "$passwd\r"; }
			"FreeBSD:"  { send "$passwd\r"; }
        }
        interact
    }
}

proc ftp_login {addr user passwd} {
    set msg [exec which ftp]
    set len [string length $msg]

    if {$len > 0} {
        set timeout 10
        spawn "ftp $address"
        expect "Name"
        send $user
        expect "Password:"
        send $passwd
        interact
    }
}

proc telnet_login {addr user passwd} {
    set msg [exec which telnet]
    set len [string length $msg]

    if {$len > 0} {
        spawn "telnet $address"
    }
}

pwd

switch $type {
    ssh { ssh_login $address $user $passwd }
    ftp { ftp_login $address $user $passwd }
    telnet { telnet_login $address $user $passwd }
}
