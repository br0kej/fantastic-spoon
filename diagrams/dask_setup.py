from diagrams import Diagram
from diagrams.custom import Custom

with Diagram("Jupyter and Dask Lab Overview"):
    dask_sch = Custom("Dask Scheduler", "./diagrams/logos/dask_icon_black.png")
    dask_worker = Custom("Dask Worker", "./diagrams/logos/dask_icon_black.png")
    jupyter_lab = Custom("Jupyter Lab", "./diagrams/logos/jupyter_logo.png")

    jupyter_lab >> dask_sch >> dask_worker