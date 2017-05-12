
* I've created 5 nodes.
* 1 for Name node
* 1 for Secondare Name node
* 3 for Data Nodes

User name is same as my Github Handle - mukulsalhotra

#####Swappiness -

NameNode 1 :

```
[mukulsalhotra@ip-10-0-0-8 root]$ cat /proc/sys/vm/swappiness
1
```
Mount Variables -

NameNode:

```
[mukulsalhotra@ip-10-0-0-8 root]$ ssm list

Root privileges required to run this script!

[mukulsalhotra@ip-10-0-0-8 root]$ sudo ssm list
----------------------------------
Device          Total  Mount point  
----------------------------------
/dev/xvda   200.00 GB  PARTITIONED  
/dev/xvda1  200.00 GB  /            
----------------------------------
---------------------------------------------------------------------
Volume      Volume size  FS     FS size       Free  TypeMount point  
---------------------------------------------------------------------
/dev/xvda1    200.00 GB  xfs  199.99 GB  198.99 GB  part/            
---------------------------------------------------------------------
```

Firewall :
```
[mukulsalhotra@ip-10-0-0-8 root]$ systemctl status firewalld
● firewalld.service - firewalld - dynamic firewall daemon
   Loaded: loaded (/usr/lib/systemd/system/firewalld.service; disabled; vendor preset: enabled)
   Active: inactive (dead)
     Docs: man:firewalld(1)
```     
     
Selinux (I've kept it permissive to check warning rather than to completely disabling it ):

```
[mukulsalhotra@ip-10-0-0-8 root]$ cat /etc/sysconfig/selinux

# This file controls the state of SELinux on the system.
# SELINUX= can take one of these three values:
#     enforcing - SELinux security policy is enforced.
#     permissive - SELinux prints warnings instead of enforcing.
#     disabled - No SELinux policy is loaded.
SELINUX=permissive
# SELINUXTYPE= can take one of three two values:
#     targeted - Targeted processes are protected,
#     minimum - Modification of targeted policy. Only selected processes are protected. 
#     mls - Multi Level Security protection.
SELINUXTYPE=targeted

```


Transparent hugepage support:

	[root@ip-10-0-0-8 ~]# sudo -su mukulsalhotra
	[mukulsalhotra@ip-10-0-0-8 root]$ cat /sys/kernel/mm/transparent_hugepage/	defrag
	always madvise [never]
	[mukulsalhotra@ip-10-0-0-8 root]$ cat /sys/kernel/mm/transparent_hugepage/	enabled
	always madvise [never]


Network Interfaces :
NameNode :
```
[mukulsalhotra@ip-10-0-0-8 root]$ netstat -i
Kernel Interface table
Iface      MTU    RX-OK RX-ERR RX-DRP RX-OVR    TX-OK TX-ERR TX-DRP TX-OVR Flg
eth0      9001      439      0      0 0           422      0      0      0 BMRU
lo       65536       74      0      0 0            74      0      0      0 LRU
```

Forward and reverse host lookup using getnet
NameNode:

```
[mukulsalhotra@ip-10-0-0-8 root]$ time getent ahostsv4 www.google.com
209.85.203.103  STREAM www.google.com
209.85.203.103  DGRAM  
209.85.203.103  RAW    
209.85.203.104  STREAM 
209.85.203.104  DGRAM  
209.85.203.104  RAW    
209.85.203.105  STREAM 
209.85.203.105  DGRAM  
209.85.203.105  RAW    
209.85.203.106  STREAM 
209.85.203.106  DGRAM  
209.85.203.106  RAW    
209.85.203.147  STREAM 
209.85.203.147  DGRAM  
209.85.203.147  RAW    
209.85.203.99   STREAM 
209.85.203.99   DGRAM  
209.85.203.99   RAW    

real	0m0.002s
user	0m0.001s
sys	0m0.002s
[mukulsalhotra@ip-10-0-0-8 root]$ time getent ahostsv6 www.google.com
2607:f8b0:400a:800::2004 STREAM www.google.com
2607:f8b0:400a:800::2004 DGRAM  
2607:f8b0:400a:800::2004 RAW    

real	0m0.002s
user	0m0.000s
sys	0m0.001s

```

NSCD :

```
[mukulsalhotra@ip-10-0-0-8 root]$ systemctl status nsd
● nsd.service - NSD DNS Server
   Loaded: loaded (/usr/lib/systemd/system/nsd.service; enabled; vendor preset: disabled)
   Active: active (running) since Fri 2017-05-12 09:24:35 UTC; 18s ago
 Main PID: 2307 (nsd)
   CGroup: /system.slice/nsd.service
           ├─2307 /usr/sbin/nsd -d -c /etc/nsd/nsd.conf -P /run/nsd/nsd.pid
           ├─2308 /usr/sbin/nsd -d -c /etc/nsd/nsd.conf -P /run/nsd/nsd.pid
           └─2309 /usr/sbin/nsd -d -c /etc/nsd/nsd.conf -P /run/nsd/nsd.pid

May 12 09:24:35 ip-10-0-0-8.us-west-2.compute.internal systemd[1]: Started NSD DNS Server.
May 12 09:24:35 ip-10-0-0-8.us-west-2.compute.internal systemd[1]: Starting NSD DNS Server...
May 12 09:24:35 ip-10-0-0-8.us-west-2.compute.internal nsd[2308]: nsd started (NSD 4.1.6), pid 2307
May 12 09:24:35 ip-10-0-0-8.us-west-2.compute.internal nsd[2307]: [2017-05-12 09:24:35.565] nsd[2308]: notice: nsd started (NSD 4.1.6), pid 2307
[mukulsalhotra@ip-10-0-0-8 root]$ 
```


NTPD:

```
[mukulsalhotra@ip-10-0-0-8 root]$ systemctl status ntpd
● ntpd.service - Network Time Service
   Loaded: loaded (/usr/lib/systemd/system/ntpd.service; enabled; vendor preset: disabled)
   Active: active (running) since Fri 2017-05-12 09:49:34 UTC; 14s ago
 Main PID: 2432 (ntpd)
   CGroup: /system.slice/ntpd.service
           └─2432 /usr/sbin/ntpd -u ntp:ntp -g

May 12 09:49:34 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: Listen and drop on 1 v6wildcard :: UDP 123
May 12 09:49:34 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: Listen normally on 2 lo 127.0.0.1 UDP 123
May 12 09:49:34 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: Listen normally on 3 eth0 10.0.0.8 UDP 123
May 12 09:49:34 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: Listen normally on 4 lo ::1 UDP 123
May 12 09:49:34 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: Listen normally on 5 eth0 fe80::85:deff:fe2e:83ca UDP 123
May 12 09:49:34 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: Listening on routing socket on fd #22 for interface updates
May 12 09:49:34 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: 0.0.0.0 c016 06 restart
May 12 09:49:34 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: 0.0.0.0 c012 02 freq_set kernel 0.000 PPM
May 12 09:49:34 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: 0.0.0.0 c011 01 freq_not_set
May 12 09:49:42 ip-10-0-0-8.us-west-2.compute.internal ntpd[2432]: 0.0.0.0 c614 04 freq_mode
```