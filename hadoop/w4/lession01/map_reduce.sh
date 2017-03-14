chmod +rx ./wordcount_mapper.py 
chmod +rx ./wordcount_reducer.py
 
hdfs dfs -rm -r /user/cloudera/input

hdfs dfs -rm -r /user/cloudera/output_new

hdfs dfs -mkdir /user/cloudera/input

hdfs dfs -put /home/cloudera/testfile1 /user/cloudera/input

hdfs dfs -put /home/cloudera/testfile2 /user/cloudera/input

hdfs dfs -ls /user/cloudera/input

hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
   -input /user/cloudera/input \
   -output /user/cloudera/output_new \
   -mapper /home/cloudera/wordcount_mapper.py \
   -reducer /home/cloudera/wordcount_reducer.py

hdfs dfs -ls /user/cloudera/output_new

hdfs dfs -cat /user/cloudera/output_new/part-00000