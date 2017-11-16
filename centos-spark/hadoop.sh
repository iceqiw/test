export JAVA_HOME="/usr/local/java/jdk"
export HADOOP_HOME="/usr/local/hadoop"
export HADOOP_PID_DIR="${HADOOP_HOME}/pids"
export SPARK_HOME="/usr/local/spark"

export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HADOOP_HOME/bin:$PATH
export PATH=$HADOOP_HOME/sbin:$PATH
export PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH