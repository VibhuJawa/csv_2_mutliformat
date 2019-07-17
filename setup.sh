#!/bin/bash

# sudo apt update && apt upgrade
# sudo apt install wget
# sudo apt-get install default-jre
cd ~

# get and install pyspark
# wget http://apache.claz.org/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz 
# http://apache.mirrors.pair.com/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz
# tar -xzf spark-2.4.3-bin-hadoop2.7.tgz
sudo mv spark-2.4.3-bin-hadoop2.7 /opt/spark-2.4.3
sudo ln -s /opt/spark-2.4.3 /opt/spark̀

# add spark context to your bashrc
echo "export SPARK_HOME=/opt/spark" >>  ~/.bashrc
echo "export PATH=$SPARK_HOME/bin:$PATH">> ~/.bashrc

conda install pyspark
# used to find spark context in jupyter
conda install -c conda-forge findspark 
