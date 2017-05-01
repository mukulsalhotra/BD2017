Teragen - time hadoop jar hadoop-*examples*.jar teragen -D dfs.block.size=16000000 -D mapred.map.tasks=6 50000000 /user/hduser/terasort-input
"

17/05/01 22:20:35 WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
17/05/01 22:20:38 INFO Configuration.deprecation: session.id is deprecated. Instead, use dfs.metrics.session-id
17/05/01 22:20:38 INFO jvm.JvmMetrics: Initializing JVM Metrics with processName=JobTracker, sessionId=
17/05/01 22:20:39 INFO terasort.TeraGen: Generating 50000000 using 1
17/05/01 22:20:39 INFO mapreduce.JobSubmitter: number of splits:1
17/05/01 22:20:39 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize
17/05/01 22:20:39 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
17/05/01 22:20:39 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_local2130911105_0001
17/05/01 22:20:40 INFO mapreduce.Job: The url to track the job: http://localhost:8080/
17/05/01 22:20:40 INFO mapreduce.Job: Running job: job_local2130911105_0001
17/05/01 22:20:40 INFO mapred.LocalJobRunner: OutputCommitter set in config null
17/05/01 22:20:40 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/05/01 22:20:40 INFO output.FileOutputCommitter: FileOutputCommitter skip cleanup _temporary folders under output directory:false, ignore cleanup failures: false
17/05/01 22:20:40 INFO mapred.LocalJobRunner: OutputCommitter is org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter
17/05/01 22:20:40 INFO mapred.LocalJobRunner: Waiting for map tasks
17/05/01 22:20:40 INFO mapred.LocalJobRunner: Starting task: attempt_local2130911105_0001_m_000000_0
17/05/01 22:20:40 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/05/01 22:20:40 INFO output.FileOutputCommitter: FileOutputCommitter skip cleanup _temporary folders under output directory:false, ignore cleanup failures: false
17/05/01 22:20:40 INFO util.ProcfsBasedProcessTree: ProcfsBasedProcessTree currently is supported only on Linux.
17/05/01 22:20:40 INFO mapred.Task:  Using ResourceCalculatorProcessTree : null
17/05/01 22:20:40 INFO mapred.MapTask: Processing split: org.apache.hadoop.examples.terasort.TeraGen$RangeInputFormat$RangeInputSplit@4429ddfa
17/05/01 22:20:41 INFO mapreduce.Job: Job job_local2130911105_0001 running in uber mode : false
17/05/01 22:20:41 INFO mapreduce.Job:  map 0% reduce 0%
17/05/01 22:20:52 INFO mapred.LocalJobRunner: map > map
17/05/01 22:20:53 INFO mapreduce.Job:  map 15% reduce 0%
17/05/01 22:20:58 INFO mapred.LocalJobRunner: map > map
17/05/01 22:20:59 INFO mapreduce.Job:  map 22% reduce 0%
17/05/01 22:21:04 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:05 INFO mapreduce.Job:  map 30% reduce 0%
17/05/01 22:21:10 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:11 INFO mapreduce.Job:  map 38% reduce 0%
17/05/01 22:21:16 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:17 INFO mapreduce.Job:  map 46% reduce 0%
17/05/01 22:21:22 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:23 INFO mapreduce.Job:  map 54% reduce 0%
17/05/01 22:21:28 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:29 INFO mapreduce.Job:  map 61% reduce 0%
17/05/01 22:21:34 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:35 INFO mapreduce.Job:  map 69% reduce 0%
17/05/01 22:21:40 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:41 INFO mapreduce.Job:  map 77% reduce 0%
17/05/01 22:21:46 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:47 INFO mapreduce.Job:  map 86% reduce 0%
17/05/01 22:21:52 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:53 INFO mapreduce.Job:  map 94% reduce 0%
17/05/01 22:21:57 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:57 INFO mapred.Task: Task:attempt_local2130911105_0001_m_000000_0 is done. And is in the process of committing
17/05/01 22:21:57 INFO mapred.LocalJobRunner: map > map
17/05/01 22:21:57 INFO mapred.Task: Task attempt_local2130911105_0001_m_000000_0 is allowed to commit now
17/05/01 22:21:57 INFO output.FileOutputCommitter: Saved output of task 'attempt_local2130911105_0001_m_000000_0' to hdfs://localhost:9000/user/hduser/terasort-input/_temporary/0/task_local2130911105_0001_m_000000
17/05/01 22:21:57 INFO mapred.LocalJobRunner: map
17/05/01 22:21:57 INFO mapred.Task: Task 'attempt_local2130911105_0001_m_000000_0' done.
17/05/01 22:21:57 INFO mapred.LocalJobRunner: Finishing task: attempt_local2130911105_0001_m_000000_0
17/05/01 22:21:57 INFO mapred.LocalJobRunner: map task executor complete.
17/05/01 22:21:58 INFO mapreduce.Job:  map 100% reduce 0%
17/05/01 22:21:58 INFO mapreduce.Job: Job job_local2130911105_0001 completed successfully
17/05/01 22:21:58 INFO mapreduce.Job: Counters: 21
	File System Counters
		FILE: Number of bytes read=302061
		FILE: Number of bytes written=624772
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=0
		HDFS: Number of bytes written=5000000000
		HDFS: Number of read operations=4
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=3
	Map-Reduce Framework
		Map input records=50000000
		Map output records=50000000
		Input split bytes=83
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=300
		Total committed heap usage (bytes)=94371840
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=107387891658806101
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=5000000000

real	1m26.227s
user	1m23.258s
sys	0m9.974s
"



TeraSort - hadoop jar hadoop-*examples*.jar terasort /user/hduser/terasort-input /user/hduser/terasort-output
