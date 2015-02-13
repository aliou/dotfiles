```bash
### Setup:
cd $HADOOP_HOME

# Format the hadoop filesystem.
 ./bin/hdfs namenode -format

# Start the hadoop filesystem.
./sbin/start-dfs.sh

# Access the dashboard.
open "http://127.0.0.1:50070/"

### Adding data:

# Creating the folder structure
hadoop -fs mkdir /dataset
hadoop -fs mkdir /dataset/movielens
hadoop -fs mkdir /dataset/movielens/{users,movies,ratings}

# Adding the files.
hadoop fs -put ratings.txt /dataset/movielens/ratings
```
