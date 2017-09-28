#!/bin/sh

LANG=C
LC_ALL=C

set -e -x
dd if=/dev/zero of=hybrid bs=64M count=1
/sbin/sfdisk --label gpt hybrid <<EOF
,4MiB,EBD0A0A2-B9E5-4433-87C0-68B6B72699C7,-
,32MiB,L,-
,26MiB,L,-
EOF
