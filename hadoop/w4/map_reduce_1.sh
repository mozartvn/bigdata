hadoop dfs -rm -r /user/cloudera/output_new_1

hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
   -input /user/cloudera/input \
   -output /user/cloudera/output_new_1 \
   -mapper /home/cloudera/wordcount_mapper.py \
   -reducer /home/cloudera/wordcount_reducer.py \
   -numReduceTasks 1

hdfs dfs -ls /user/cloudera/output_new_1

hdfs dfs -cat /user/cloudera/output_new_1/part-00000