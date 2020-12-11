#!/bin/sh

# This script is fixes the spark-master docker container(s) to include
# the most up-to-date version of Python (3.8) and the jars associated
# with using spark to interact with S3.

apk update
apk del py-pip
apk add --no-cache python3==3.8.6-r0 py3-pip
ln -s /usr/bin/python3 /usr/bin/python

wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoop-aws-3.2.0.jar -P /spark/jars/
wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.11.820/aws-java-sdk-1.11.820.jar -P /spark/jars/
wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-s3/1.11.820/aws-java-sdk-s3-1.11.820.jar -P /spark/jars/
wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-core/1.11.820/aws-java-sdk-core-1.11.820.jar -P /spark/jars/
wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-dynamodb/1.11.820/aws-java-sdk-dynamodb-1.11.820.jar -P /spark/jars