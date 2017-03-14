hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
   -input /user/cloudera/input \
   -output /user/cloudera/output_new_0 \
   -mapper /home/cloudera/wordcount_mapper.py \
   -reducer /home/cloudera/wordcount_reducer.py \
   -numReduceTasks 0

hdfs dfs -ls /user/cloudera/output_new_0

hdfs dfs -cat /user/cloudera/output_new_0/part-00000