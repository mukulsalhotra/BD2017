## Challenges Setup
#### Part 5
### Kerberos:


#### Full Command Used and Output:

```
[neymar@ip-172-31-4-194 root]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/neymar/tgen640 /user/neymar/tgen640m
```

```
[neymar@ip-172-31-4-194 root]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/neymar/tgen640 /user/neymar/tgen640m
17/07/06 13:03:57 INFO terasort.TeraSort: starting
17/07/06 13:03:59 INFO hdfs.DFSClient: Created token for neymar: HDFS_DELEGATION_TOKEN owner=neymar/admin@EU-CENTRAL-1.COMPUTE.INTERNAL, renewer=yarn, realUser=, issueDate=1499360639784, maxDate=1499965439784, sequenceNumber=1, masterKeyId=2 on 172.31.4.194:8020
17/07/06 13:03:59 INFO security.TokenCache: Got dt for hdfs://ip-172-31-4-194.eu-central-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.4.194:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar/admin@EU-CENTRAL-1.COMPUTE.INTERNAL, renewer=yarn, realUser=, issueDate=1499360639784, maxDate=1499965439784, sequenceNumber=1, masterKeyId=2)
17/07/06 13:03:59 INFO input.FileInputFormat: Total input paths to process : 8
Spent 362ms computing base-splits.
Spent 3ms computing TeraScheduler splits.
Computing input splits took 366ms
Sampling 8 splits of 8
Making 6 from 100000 sampled records
Computing parititions took 1036ms
Spent 1405ms computing partitions.
17/07/06 13:04:01 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-4-194.eu-central-1.compute.internal/172.31.4.194:8032
17/07/06 13:04:01 INFO mapreduce.JobSubmitter: number of splits:8
17/07/06 13:04:01 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1499360289924_0001
17/07/06 13:04:01 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.4.194:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar/admin@EU-CENTRAL-1.COMPUTE.INTERNAL, renewer=yarn, realUser=, issueDate=1499360639784, maxDate=1499965439784, sequenceNumber=1, masterKeyId=2)
17/07/06 13:04:03 INFO impl.YarnClientImpl: Submitted application application_1499360289924_0001
17/07/06 13:04:03 INFO mapreduce.Job: The url to track the job: http://ip-172-31-4-194.eu-central-1.compute.internal:8088/proxy/application_1499360289924_0001/
17/07/06 13:04:03 INFO mapreduce.Job: Running job: job_1499360289924_0001
17/07/06 13:04:13 INFO mapreduce.Job: Job job_1499360289924_0001 running in uber mode : false
17/07/06 13:04:13 INFO mapreduce.Job:  map 0% reduce 0%
17/07/06 13:04:22 INFO mapreduce.Job:  map 25% reduce 0%
17/07/06 13:04:30 INFO mapreduce.Job:  map 88% reduce 0%
17/07/06 13:04:31 INFO mapreduce.Job:  map 100% reduce 0%
17/07/06 13:04:38 INFO mapreduce.Job:  map 100% reduce 17%
17/07/06 13:04:40 INFO mapreduce.Job:  map 100% reduce 50%
17/07/06 13:04:43 INFO mapreduce.Job:  map 100% reduce 100%
17/07/06 13:04:43 INFO mapreduce.Job: Job job_1499360289924_0001 completed successfully
17/07/06 13:04:43 INFO mapreduce.Job: Counters: 53
	File System Counters
		FILE: Number of bytes read=28592603
		FILE: Number of bytes written=58979524
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=65537240
		HDFS: Number of bytes written=65536000
		HDFS: Number of read operations=42
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=12
	Job Counters 
		Launched map tasks=8
		Launched reduce tasks=6
		Data-local map tasks=8
		Total time spent by all maps in occupied slots (ms)=101773
		Total time spent by all reduces in occupied slots (ms)=47420
		Total time spent by all map tasks (ms)=101773
		Total time spent by all reduce tasks (ms)=47420
		Total vcore-milliseconds taken by all map tasks=101773
		Total vcore-milliseconds taken by all reduce tasks=47420
		Total megabyte-milliseconds taken by all map tasks=104215552
		Total megabyte-milliseconds taken by all reduce tasks=48558080
	Map-Reduce Framework
		Map input records=655360
		Map output records=655360
		Map output bytes=66846720
		Map output materialized bytes=28565275
		Input split bytes=1240
		Combine input records=0
		Combine output records=0
		Reduce input groups=655360
		Reduce shuffle bytes=28565275
		Reduce input records=655360
		Reduce output records=655360
		Spilled Records=1310720
		Shuffled Maps =48
		Failed Shuffles=0
		Merged Map outputs=48
		GC time elapsed (ms)=1128
		CPU time spent (ms)=45840
		Physical memory (bytes) snapshot=5052411904
		Virtual memory (bytes) snapshot=22029385728
		Total committed heap usage (bytes)=6306136064
		Peak Map Physical memory (bytes)=513073152
		Peak Map Virtual memory (bytes)=1576148992
		Peak Reduce Physical memory (bytes)=255483904
		Peak Reduce Virtual memory (bytes)=1590538240
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=65536000
	File Output Format Counters 
		Bytes Written=65536000
17/07/06 13:04:43 INFO terasort.TeraSort: done

real	0m47.384s
user	0m8.695s
sys	0m0.414s
```

#### Result :

```
real	0m47.384s
user	0m8.695s
sys	0m0.414s
```

#### command and output of  pi program

```
[neymar@ip-172-31-4-194 root]$ hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 10 100`
```

```
[neymar@ip-172-31-4-194 root]$ hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 10 100
Number of Maps  = 10
Samples per Map = 100
Wrote input for Map #0
Wrote input for Map #1
Wrote input for Map #2
Wrote input for Map #3
Wrote input for Map #4
Wrote input for Map #5
Wrote input for Map #6
Wrote input for Map #7
Wrote input for Map #8
Wrote input for Map #9
Starting Job
17/07/06 13:17:17 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-4-194.eu-central-1.compute.internal/172.31.4.194:8032
17/07/06 13:17:17 INFO hdfs.DFSClient: Created token for neymar: HDFS_DELEGATION_TOKEN owner=neymar/admin@EU-CENTRAL-1.COMPUTE.INTERNAL, renewer=yarn, realUser=, issueDate=1499361437930, maxDate=1499966237930, sequenceNumber=3, masterKeyId=2 on 172.31.4.194:8020
17/07/06 13:17:17 INFO security.TokenCache: Got dt for hdfs://ip-172-31-4-194.eu-central-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.4.194:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar/admin@EU-CENTRAL-1.COMPUTE.INTERNAL, renewer=yarn, realUser=, issueDate=1499361437930, maxDate=1499966237930, sequenceNumber=3, masterKeyId=2)
17/07/06 13:17:18 INFO input.FileInputFormat: Total input paths to process : 10
17/07/06 13:17:18 INFO mapreduce.JobSubmitter: number of splits:10
17/07/06 13:17:18 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1499360289924_0003
17/07/06 13:17:18 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.4.194:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar/admin@EU-CENTRAL-1.COMPUTE.INTERNAL, renewer=yarn, realUser=, issueDate=1499361437930, maxDate=1499966237930, sequenceNumber=3, masterKeyId=2)
17/07/06 13:17:18 INFO impl.YarnClientImpl: Submitted application application_1499360289924_0003
17/07/06 13:17:18 INFO mapreduce.Job: The url to track the job: http://ip-172-31-4-194.eu-central-1.compute.internal:8088/proxy/application_1499360289924_0003/
17/07/06 13:17:18 INFO mapreduce.Job: Running job: job_1499360289924_0003
17/07/06 13:17:31 INFO mapreduce.Job: Job job_1499360289924_0003 running in uber mode : false
17/07/06 13:17:31 INFO mapreduce.Job:  map 0% reduce 0%
17/07/06 13:17:40 INFO mapreduce.Job:  map 10% reduce 0%
17/07/06 13:17:41 INFO mapreduce.Job:  map 30% reduce 0%
17/07/06 13:17:46 INFO mapreduce.Job:  map 60% reduce 0%
17/07/06 13:17:49 INFO mapreduce.Job:  map 70% reduce 0%
17/07/06 13:17:50 INFO mapreduce.Job:  map 100% reduce 0%
17/07/06 13:17:56 INFO mapreduce.Job:  map 100% reduce 100%
17/07/06 13:17:56 INFO mapreduce.Job: Job job_1499360289924_0003 completed successfully
17/07/06 13:17:56 INFO mapreduce.Job: Counters: 53
	File System Counters
		FILE: Number of bytes read=97
		FILE: Number of bytes written=1423529
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=3010
		HDFS: Number of bytes written=215
		HDFS: Number of read operations=43
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=3
	Job Counters 
		Launched map tasks=10
		Launched reduce tasks=1
		Data-local map tasks=10
		Total time spent by all maps in occupied slots (ms)=117818
		Total time spent by all reduces in occupied slots (ms)=3697
		Total time spent by all map tasks (ms)=117818
		Total time spent by all reduce tasks (ms)=3697
		Total vcore-milliseconds taken by all map tasks=117818
		Total vcore-milliseconds taken by all reduce tasks=3697
		Total megabyte-milliseconds taken by all map tasks=120645632
		Total megabyte-milliseconds taken by all reduce tasks=3785728
	Map-Reduce Framework
		Map input records=10
		Map output records=20
		Map output bytes=180
		Map output materialized bytes=340
		Input split bytes=1830
		Combine input records=0
		Combine output records=0
		Reduce input groups=2
		Reduce shuffle bytes=340
		Reduce input records=20
		Reduce output records=0
		Spilled Records=40
		Shuffled Maps =10
		Failed Shuffles=0
		Merged Map outputs=10
		GC time elapsed (ms)=656
		CPU time spent (ms)=9150
		Physical memory (bytes) snapshot=4990095360
		Virtual memory (bytes) snapshot=17182130176
		Total committed heap usage (bytes)=5706350592
		Peak Map Physical memory (bytes)=510717952
		Peak Map Virtual memory (bytes)=1573486592
		Peak Reduce Physical memory (bytes)=237211648
		Peak Reduce Virtual memory (bytes)=1577824256
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=1180
	File Output Format Counters 
		Bytes Written=97
Job Finished in 39.054 seconds
Estimated value of Pi is 3.14800000000000000000
[neymar@ip-172-31-4-194 root]$ 
```

