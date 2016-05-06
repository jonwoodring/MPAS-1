#!/bin/bash
docker run -i --net=host -v /home/mpas/worldOcean_QU_240km:/home/user/LANL/app mpas ./launch.sh
