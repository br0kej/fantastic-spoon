FROM bde2020/spark-worker:3.0.1-hadoop3.2

COPY ./dockerfiles/fix-spark-worker.sh .
RUN chmod +x fix-spark-worker.sh && ./fix-spark-worker.sh