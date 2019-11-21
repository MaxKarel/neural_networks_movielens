#!/bin/bash

#docker run --rm -u $(id -u):$(id -g) -p 8888:8888 -p 6006:6006 -v $(pwd):/labs -it mpikuliak/nsiete
docker run --rm -u $(id -u):$(id -g) -p 8888:8888 -p 6006:6006 -v $(pwd):/labs -it urmegil/movielens
