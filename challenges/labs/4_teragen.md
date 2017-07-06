## Challenges Setup
#### Part 4
### HDFS Test:


#### Full Command Used and Output:

```
[neymar@ip-172-31-4-194 cloudera-scm-server]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Ddfs.blocksize=16M -Dmapred.map.tasks=8 655360 /user/neymar/tgen640
```

```
[neymar@ip-172-31-4-194 cloudera-scm-server]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Ddfs.blocksize=16M -Dmapred.map.tasks=8 655360 /user/neymar/tgen640
17/07/06 11:56:34 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-4-194.eu-central-1.compute.internal/172.31.4.194:8032
17/07/06 11:56:35 INFO terasort.TeraGen: Generating 655360 using 8
17/07/06 11:56:35 INFO mapreduce.JobSubmitter: number of splits:8
17/07/06 11:56:35 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
17/07/06 11:56:35 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1499354411687_0001
17/07/06 11:56:36 INFO impl.YarnClientImpl: Submitted application application_1499354411687_0001
17/07/06 11:56:36 INFO mapreduce.Job: The url to track the job: http://ip-172-31-4-194.eu-central-1.compute.internal:8088/proxy/application_1499354411687_0001/
17/07/06 11:56:36 INFO mapreduce.Job: Running job: job_1499354411687_0001
17/07/06 11:56:43 INFO mapreduce.Job: Job job_1499354411687_0001 running in uber mode : false
17/07/06 11:56:43 INFO mapreduce.Job:  map 0% reduce 0%
17/07/06 11:56:51 INFO mapreduce.Job:  map 13% reduce 0%
17/07/06 11:56:52 INFO mapreduce.Job:  map 25% reduce 0%
17/07/06 11:56:55 INFO mapreduce.Job:  map 88% reduce 0%
17/07/06 11:56:56 INFO mapreduce.Job:  map 100% reduce 0%
17/07/06 11:56:56 INFO mapreduce.Job: Job job_1499354411687_0001 completed successfully
17/07/06 11:56:56 INFO mapreduce.Job: Counters: 33
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=1021336
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=677
		HDFS: Number of bytes written=65536000
		HDFS: Number of read operations=32
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters 
		Launched map tasks=8
		Other local map tasks=8
		Total time spent by all maps in occupied slots (ms)=71040
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=71040
		Total vcore-milliseconds taken by all map tasks=71040
		Total megabyte-milliseconds taken by all map tasks=72744960
	Map-Reduce Framework
		Map input records=655360
		Map output records=655360
		Input split bytes=677
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=649
		CPU time spent (ms)=21280
		Physical memory (bytes) snapshot=1765683200
		Virtual memory (bytes) snapshot=12543643648
		Total committed heap usage (bytes)=2312110080
		Peak Map Physical memory (bytes)=248582144
		Peak Map Virtual memory (bytes)=1577627648
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=1408100361519672
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=65536000

real	0m25.894s
user	0m7.027s
sys	0m0.361s
```

#### Result :

```
real	0m25.894s
user	0m7.027s
sys	0m0.361s
```

#### command and output of `hdfs dfs -ls /user/neymar/tgen640`
```
[neymar@ip-172-31-4-194 cloudera-scm-server]$ hdfs dfs -ls /user/neymar/tgen640
Found 9 items
-rw-r--r--   3 neymar supergroup          0 2017-07-06 11:56 /user/neymar/tgen640/_SUCCESS
-rw-r--r--   3 neymar supergroup    8192000 2017-07-06 11:56 /user/neymar/tgen640/part-m-00000
-rw-r--r--   3 neymar supergroup    8192000 2017-07-06 11:56 /user/neymar/tgen640/part-m-00001
-rw-r--r--   3 neymar supergroup    8192000 2017-07-06 11:56 /user/neymar/tgen640/part-m-00002
-rw-r--r--   3 neymar supergroup    8192000 2017-07-06 11:56 /user/neymar/tgen640/part-m-00003
-rw-r--r--   3 neymar supergroup    8192000 2017-07-06 11:56 /user/neymar/tgen640/part-m-00004
-rw-r--r--   3 neymar supergroup    8192000 2017-07-06 11:56 /user/neymar/tgen640/part-m-00005
-rw-r--r--   3 neymar supergroup    8192000 2017-07-06 11:56 /user/neymar/tgen640/part-m-00006
-rw-r--r--   3 neymar supergroup    8192000 2017-07-06 11:56 /user/neymar/tgen640/part-m-00007
[neymar@ip-172-31-4-194 cloudera-scm-server]$ 
```

#### The command and output to show how many blocks are stored under this directory
```
[neymar@ip-172-31-4-194 cloudera-scm-server]$ hdfs fsck /user/neymar
Connecting to namenode via http://ip-172-31-4-194.eu-central-1.compute.internal:50070
FSCK started by neymar (auth:SIMPLE) from /172.31.4.194 for path /user/neymar at Thu Jul 06 12:11:23 EDT 2017
.........Status: HEALTHY
 Total size:	65536000 B
 Total dirs:	3
 Total files:	9
 Total symlinks:		0
 Total blocks (validated):	8 (avg. block size 8192000 B)
 Minimally replicated blocks:	8 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		3
 Number of racks:		1
FSCK ended at Thu Jul 06 12:11:23 EDT 2017 in 3 milliseconds


The filesystem under path '/user/neymar' is HEALTHY
[neymar@ip-172-31-4-194 cloudera-scm-server]$ 

```

