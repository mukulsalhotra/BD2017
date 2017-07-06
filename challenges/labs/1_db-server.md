## Challenges Setup
# Part 3:
## MYSQL Installation

### Hostname for DB Server Node : 


```
[root@ip-172-31-4-194 ec2-user]# hostname
ip-172-31-4-194.eu-central-1.compute.internal
```

### Version of the Database Installed : 

```
[root@ip-172-31-4-194 ec2-user]# mysql --version
mysql  Ver 14.14 Distrib 5.6.36, for Linux (x86_64) using  EditLine wrapper
```


### Databases Installed : 

```

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| nav                |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
10 rows in set (0.00 sec)

mysql> 
```


