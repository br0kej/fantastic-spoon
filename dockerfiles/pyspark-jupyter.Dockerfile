FROM jupyter/pyspark-notebook

ENV HOME_DIR /home/jovyan

USER root
RUN apt-get install -y wget &&\ 
    wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoop-aws-3.2.0.jar -P $SPARK_HOME/jars/ &&\ 
    wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.11.820/aws-java-sdk-1.11.820.jar -P $SPARK_HOME/jars/ &&\ 
    wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-s3/1.11.820/aws-java-sdk-s3-1.11.820.jar -P $SPARK_HOME/jars/ &&\ 
    wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-core/1.11.820/aws-java-sdk-core-1.11.820.jar -P $SPARK_HOME/jars/ &&\ 
    wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-dynamodb/1.11.820/aws-java-sdk-dynamodb-1.11.820.jar -P $SPARK_HOME/jars

USER $NB_UID
RUN conda create -n py37 python=3.7 -y && \
    source activate py37 && \
    conda install ipykernel minio &&\
    python -m ipykernel install --user --name py37 --display-name "Python (py37)"

COPY --chown=jovyan:users ./notebooks $HOME_DIR/notebooks/
COPY --chown=jovyan:users ./sample-data $HOME/sample-data/

WORKDIR $HOME