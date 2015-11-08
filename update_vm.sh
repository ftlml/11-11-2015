#!/bin/bash
cd /home/ftlml
echo "Downloading Spark..."
wget http://apache.mirrors.tds.net/spark/spark-1.5.1/spark-1.5.1-bin-hadoop2.6.tgz
tar -zxvf spark-1.5.1-bin-hadoop2.6.tgz
echo "Installing Jupyter..."
apt-get update
apt-get install build-essential python-dev
pip install jupyter
echo "Installing JRE..."
sudo apt-get install openjdk-7-jre-headless
cd /home/ftlml/Projects/11-11-2015
echo "PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS=notebook /home/ftlml/spark-1.5.1-bin-hadoop2.6/bin/pyspark --master local[1] --executor-memory 512k" > launch_pyspark_jupyter.sh
chmod 777 launch_pyspark_jupyter.sh
echo "DONE! Run /home/ftlml/Projects/11-11-2015/launch_pyspark_jupyter.sh script to get started!"