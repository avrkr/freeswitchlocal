#!/bin/sh
# Run on the FreeSWITCH host (192.168.43.137) after updating event_socket.conf.xml + acl.conf.xml
FS_CLI="${FS_CLI:-fs_cli}"
"$FS_CLI" -x "reloadacl"
"$FS_CLI" -x "reload mod_event_socket"
echo "event_socket ACL should be esl_trusted (not loopback.auto). Test from dashboard PC."
