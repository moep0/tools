#!/bin/bash
sed '/cda/c192.168.136.128 cda' /etc/hosts -i
cd /home/hduser/bigdata/spark-2.4.5/sbin
./start-all.sh

export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --no-browser --ip=0.0.0.0"
pyspark --master spark://cda:7077
