FROM openjdk:8

WORKDIR /opt

ENV HADOOP_VERSION=3.3.4
ENV HIVE_VERSION=3.1.3
ENV DRIVER_VERSION=8.0.31
ENV HADOOP_HOME=/opt/hadoop-${HADOOP_VERSION}
ENV HIVE_HOME=/opt/apache-hive-${HIVE_VERSION}-bin

RUN curl -L https://dlcdn.apache.org/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz | tar zxf - && \
    curl -L https://archive.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz | tar zxf - && \
    curl -L https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-j-${DRIVER_VERSION}.tar.gz | tar zxf -

RUN cp mysql-connector-j-${DRIVER_VERSION}/mysql-connector-j-${DRIVER_VERSION}.jar ${HIVE_HOME}/lib/ && \
    rm -rf  mysql-connector-j-${DRIVER_VERSION}

COPY conf/metastore-site.xml ${HIVE_HOME}/conf/hive-site.xml
COPY scripts/entrypoint.sh /entrypoint.sh

RUN groupadd -r hive --gid=1000 && \
    useradd -r -g hive --uid=1000 -d ${HIVE_HOME} hive && \
    chown hive:hive -R ${HIVE_HOME} && \
    chown hive:hive /entrypoint.sh && chmod +x /entrypoint.sh

EXPOSE 9083
ENTRYPOINT ["sh", "-c", "/entrypoint.sh"]
