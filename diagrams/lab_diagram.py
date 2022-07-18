from diagrams import Diagram, Cluster
from diagrams.custom import Custom
from diagrams.onprem.analytics import Spark

with Diagram("PySpark and Dask Lab Overview"):
    spark_master = Spark("Spark Master")
    with Cluster("Spark Workers"):
        spark_worker_1 = Spark("Worker 1")
        spark_worker_2 = Spark("Worker 2")

    dask_sch = Custom("Scheduler", "./diagrams/logos/dask_icon_black.png")
    dask_worker = Custom(" Worker", "./diagrams/logos/dask_icon_black.png")
    jupyter_lab = Custom("Front End", "./diagrams/logos/jupyter_logo.png")

    jupyter_lab >> dask_sch >> dask_worker
    jupyter_lab >> spark_master
    spark_master >> spark_worker_1
    spark_master >> spark_worker_2