#!/bin/bash

apt update && apt upgrade
apt install wget
apt-get install default-jre
cd ~

# get and install pyspark
wget http://apache.mirrors.pair.com/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz
tar -xzf spark-2.4.0-bin-hadoop2.7.tgz
mv spark-2.4.0-bin-hadoop2.7 /opt/spark-2.4.0
ln -s /opt/spark-2.4.0 /opt/spark̀

# add spark context to your bashrc
echo "export SPARK_HOME=/opt/spark" >>  ~/.bashrc
echo "export PATH=$SPARK_HOME/bin:$PATH">> ~/.bashrc

# used to find spark context in jupyter
# conda install -c conda-forge findspark 
