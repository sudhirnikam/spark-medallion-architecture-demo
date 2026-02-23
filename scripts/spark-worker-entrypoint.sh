#!/bin/bash
set -e

echo "Copying extra JARs to Spark jars directory..."
if [ -d "/opt/spark/extra-jars" ]; then
    cp -v /opt/spark/extra-jars/*.jar /opt/spark/jars/ 2>/dev/null || true
    echo "Extra JARs copied successfully"
fi

echo "Starting Spark Master..."
/opt/spark/bin/spark-class org.apache.spark.deploy.master.Master