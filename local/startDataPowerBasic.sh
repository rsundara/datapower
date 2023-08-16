#!/bin/bash

echo
echo "Starting local DataPower instance"
echo


# Start the IBM DataPower container using external volumes
docker  run -it --name=demo-datapower --memory=4g  -e DATAPOWER_ACCEPT_LICENSE=true -e DATAPOWER_INTERACTIVE=true -e DATAPOWER_WORKER_THREADS=1 -p 9090:9090 cp.icr.io/cpopen/datapower/datapower-limited:10.5.0.5 
