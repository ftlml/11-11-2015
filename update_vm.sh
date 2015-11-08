#!/bin/bash
cd ~/
echo "Downloading Spark..."
wget http://apache.mirrors.tds.net/spark/spark-1.5.1/spark-1.5.1-bin-hadoop2.6.tgz
tar -zxvf spark-1.5.1-bin-hadoop2.6.tgz
echo "Installing Jupyter..."
apt-get update
apt-get install build-essential python-dev
pip install jupyter
echo "Installing JRE..."
sudo apt-get install openjdk-7-jre-headless
echo "DONE! Run launch_pyspark_jupyter.sh script to get started!"