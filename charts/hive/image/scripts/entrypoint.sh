#!/bin/sh

export HADOOP_HOME=/opt/hadoop-3.3.4
export JAVA_HOME=/usr/local/openjdk-8

set +e
if /opt/apache-hive-3.1.3-bin/bin/schematool -dbType mysql -info; then
    echo "Hive metastore schema verified."
else
    if /opt/apache-hive-3.1.3-bin/bin/schematool -initSchema -dbType mysql; then
        echo "Hive metastore schema created."
    else
        echo "Error creating hive metastore: $?"
    fi
fi
set -e

/opt/apache-hive-3.1.3-bin/bin/hive --service metastore -verbose
