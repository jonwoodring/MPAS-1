#!/bin/bash

mpirun -hostfile hostfile --mca btl_tcp_if_include eth0 ./mpi/mpibuild_mpasio.sh --verbose --output-filename=mpibuild
