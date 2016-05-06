#!/bin/bash

if [ $HOSTNAME == 'master' ]; then

# if you are the master node run the code

chown -R user:user /home/user/LANL/
cd /home/user/LANL/app
cp /home/user/LANL/libs/MPAS/MPAS/ocean_model ocean_model
chown user:user ocean_model

sleep 3
echo "Starting mpas on master"

echo `date`

su user -c "mpiexec -machinefile /home/user/LANL/machinefile ./ocean_model"

echo `date`
echo ***DONE***

else

# All slave nodes launch the ssh server

echo "Starting sshd on slaves"
mkdir /var/run/sshd
/usr/sbin/sshd -D

fi

