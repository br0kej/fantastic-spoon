FROM bde2020/spark-master:3.0.1-hadoop3.2

COPY dockerfiles/fix-spark-master.sh .
RUN chmod +x fix-spark-master.sh && ./fix-spark-master.sh
