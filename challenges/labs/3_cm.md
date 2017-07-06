## Challenges Setup
#### Part 3
#### CDH Installation:

### hdfs dfs -ls /user


```
[root@ip-172-31-4-194 cloudera-scm-server]# hdfs dfs -ls /user
Found 6 items
drwxrwxrwx   - mapred hadoop              0 2017-07-06 11:14 /user/history
drwxrwxr-t   - hive   hive                0 2017-07-06 11:14 /user/hive
drwxrwxr-x   - hue    hue                 0 2017-07-06 11:15 /user/hue
drwxr-xr-x   - hdfs   supergroup          0 2017-07-06 11:22 /user/neymar
drwxrwxr-x   - oozie  oozie               0 2017-07-06 11:15 /user/oozie
drwxr-xr-x   - hdfs   supergroup          0 2017-07-06 11:22 /user/ronaldo
[root@ip-172-31-4-194 cloudera-scm-server]# 
```


### CM API CALL 

```
[root@ip-172-31-4-194 cloudera-scm-server]# curl -u admin:admin 'http://ec2-52-59-197-249.eu-central-1.compute.amazonaws.com:7180/api/v14/hosts'
{
  "items" : [ {
    "hostId" : "9c573e7a-b9fc-4de8-be47-3d3133301c3d",
    "ipAddress" : "172.31.0.33",
    "hostname" : "ip-172-31-0-33.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-4-194.eu-central-1.compute.internal:7180/cmf/hostRedirect/9c573e7a-b9fc-4de8-be47-3d3133301c3d",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664758784
  }, {
    "hostId" : "053f3ffd-841f-488a-a4ef-2ccf40b3b784",
    "ipAddress" : "172.31.1.228",
    "hostname" : "ip-172-31-1-228.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-4-194.eu-central-1.compute.internal:7180/cmf/hostRedirect/053f3ffd-841f-488a-a4ef-2ccf40b3b784",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664758784
  }, {
    "hostId" : "d4b49f61-8eb4-4987-aac6-02515f66671c",
    "ipAddress" : "172.31.10.18",
    "hostname" : "ip-172-31-10-18.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-4-194.eu-central-1.compute.internal:7180/cmf/hostRedirect/d4b49f61-8eb4-4987-aac6-02515f66671c",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664758784
  }, {
    "hostId" : "d4540cc1-f9ba-4e32-aa84-ed5675691c26",
    "ipAddress" : "172.31.13.235",
    "hostname" : "ip-172-31-13-235.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-4-194.eu-central-1.compute.internal:7180/cmf/hostRedirect/d4540cc1-f9ba-4e32-aa84-ed5675691c26",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664758784
  }, {
    "hostId" : "99a639e0-5ca4-4059-8394-1b74f5f96182",
    "ipAddress" : "172.31.4.194",
    "hostname" : "ip-172-31-4-194.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-4-194.eu-central-1.compute.internal:7180/cmf/hostRedirect/99a639e0-5ca4-4059-8394-1b74f5f96182",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664758784
  } ]
```
