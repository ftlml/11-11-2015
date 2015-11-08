# 11-11-2015 
## Machine Learning with Big Data using Spark

This project introduces [Apache Spark](http://spark.apache.org/), an in-memory parallel processing engine for big data. The examples use PySpark (Spark's Python API), along with Jupyter notebooks for interactivity with the shell. 

If you are using the ftlml Ubuntu VM, you will need to run the `update_vm.sh` script to install the necessary Spark dependencies (don't forget the sudo!):

	sudo bash update_vm.sh

This script could take a few minutes to run. If your machine allows, increase the CPU count and memory allocation inside VirtualBox. This will help everything run faster. In addition, once the installs are finished, you can modify the `launch_pyspark_jupyter.sh` script to give Spark more resources.

* Change the number inside `--master local[1]` to match the number of CPUs you allocated to the VM
* Change the value after `--executor-memory` to something a little less than the amount of RAM allocated to the VM. Example: `1g`

If you prefer to install Spark and Jupyter yourself, peek into the `update_vm.sh` script and install whatever you do not have on your machine. The pre-built Spark code works out of the box, as long as you have Python and Java installed.

