#!/bin/bash

mpirun -hostfile hostfile --mca btl_tcp_if_include eth0 --verbose bash -c "docker rm \$(docker ps -a -q)"

