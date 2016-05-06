#!/bin/bash
echo `hostname`
docker build -f Dockerfilempas -t mpas /home/mpas/MPAS
