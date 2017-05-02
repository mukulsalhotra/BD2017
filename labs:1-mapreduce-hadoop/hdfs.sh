#copy a file from Gutenberg and save it to /tmp/gutenberg

hadoop dfs -copyFromLocal /tmp/gutenberg /user/hduser/gutenberg


hadoop jar WordCount.jar wordcount /user/hduser/gutenberg /user/hduser/gutenberg-output