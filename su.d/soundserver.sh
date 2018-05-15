#!/system/bin/sh
#
# soundserver
#
# Prepared by guitardedhero @XDA Developers

supolicy --live "allow mediaserver mediaserver_tmpfs:file { execute };"
/system/bin/supolicy --live "allow mediaserver mediaserver_tmpfs:file { execute };"
/su/bin/supolicy --live "allow mediaserver mediaserver_tmpfs:file { execute };"
/system/xbin/supolicy --live "allow mediaserver mediaserver_tmpfs:file { execute };"
/su/xbin/supolicy --live "allow mediaserver mediaserver_tmpfs:file { execute };"

supolicy --live "allow audioserver audioserver_tmpfs:file { read execute };"
/system/bin/supolicy --live "allow audioserver audioserver_tmpfs:file { read execute };"
/su/bin/supolicy --live "allow audioserver audioserver_tmpfs:file { execute };"
/system/xbin/supolicy --live "allow audioserver audioserver_tmpfs:file { read execute };"
/su/xbin/supolicy --live "allow audioserver audioserver_tmpfs:file { read execute };"

