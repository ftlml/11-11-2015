export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS=notebook 
~/spark-1.5.1-bin-hadoop2.6/bin/pyspark --master local[1] --executor-memory 512k