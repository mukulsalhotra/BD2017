Teragen - time hadoop jar hadoop-*examples*.jar teragen -D dfs.block.size=16000000 -D mapred.map.tasks=6 50000000 /user/hduser/terasort-input
"
Bytes Written=5000000000
real	1m26.227s
user	1m23.258s
sys	0m9.974s
"



TeraSort - hadoop jar hadoop-*examples*.jar terasort /user/hduser/terasort-input /user/hduser/terasort-output


"

real	6m8.739s
user	6m10.603s
sys	1m3.256s

"
