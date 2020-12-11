# Data Science Docker Lab

Welcome to the Data Science Docker Lab repo. This repository provides a simple means of setting up a small Spark cluster, a minio storage api (an S3 compliant storage solution) and a Jupyter Lab instance.

## Requirements

- A correctly proxied internet connection (if on Don-B) or an internet connected standalone
- `docker` - For re-building the containers
- `docker-compose` - For standing up the containers

## Services Included

- Jupyter Lab with two anaconda virtual environments and ipykernel's
  - Python - Python 3.8
  - Py37 - Python 3.7 (Must be used for PySpark)
- Minio 
- A Spark Master & Spark Worker

## Quickstart

### Step 1: Initial Setup
```
git clone <bitbucket-repo>
cd data-science-docker-lab
docker-compose up
```

### Step 2: Add some sample data to Minio

1. Access Minio at `localhost:9000`. You will be asked for your 

