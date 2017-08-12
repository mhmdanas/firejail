# Firejail profile for silentarmy
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/silentarmy.local
# Persistent global definitions
include /etc/firejail/globals.local


include /etc/firejail/disable-common.inc
# include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
private
# private-bin silentarmy,sa-solver,python3
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
