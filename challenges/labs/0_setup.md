## Challenges Setup

## User Creation

### Users created : 

#### User neymar with a UID of 2010
#### User ronaldo with a UID of 2016

Node 1 ():

/etc/groups

```
[root@ip-172-31-4-194 ~]# grep -e 'ronaldo' -e 'neymar' /etc/group
wheel:x:10:neymar
neymar:x:2010:
ronaldo:x:2016:
barca:x:2017:ronaldo
merengues:x:2018:neymar
```

/etc/passwd

```
[root@ip-172-31-4-194 ~]# grep -e 'ronaldo' -e 'neymar' /etc/passwd
neymar:x:2010:2010::/home/neymar:/bin/bash
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash
```


