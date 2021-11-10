#!/bin/bash

docker rmi jgruberf5/container-demo-runner:latest
docker rmi container-demo-runner:latest
docker build -t container-demo-runner:latest .
docker tag container-demo-runner:latest jgruberf5/container-demo-runner:latest
docker push jgruberf5/container-demo-runner:latest
cd cli
docker rmi jgruber/container-demo-cli:latest
docker rmi container-demo-cli:latest
docker build -t container-demo-cli:latest .
docker tag container-demo-cli:latest jgruberf5/container-demo-cli:latest
docker push jgruberf5/container-demo-cli:latest
cd ..
