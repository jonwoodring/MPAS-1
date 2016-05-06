# MPAS-Ocean Docker for Starcluster for AWS

Instructions for running diverge after Randall's instructions at  *Launch a starcluster named `<cluster>`*

```bash
$ starcluster start -c <cluster_spec> <cluster>
$ starcluster sshmaster <cluster>
```

Now you are on the cluster on AWS.  You have to clone the git 
repository to the directory where the shared data volume is mounted on
starcluster (assuming that's `/home/mpas`)

```bash
$ cd /home/mpas
$ git clone https://github.com/jonwoodring/MPAS-1
$ mv MPAS-1 MPAS
$ cd MPAS
```

Copy your MPAS tarball with the source code into `/home/mpas/MPAS` as 
`MPAS.tar.gz`

Extract your initial world QU 240km input deck and restart into 
`/home/mpas/worldOcean_QU_240km`

Edit `hostfile` to represent the number of nodes on your `<cluster>`. 

Edit `machinefile` to represent the number of nodes *and* processors 
on your `<cluster>`.

Copy the tarball of the MPAS source code into /home/mpas/MPAS-1

This builds your docker of MPAS, which is one process per node.
```bash
$ build-sim.sh
```

This runs your simulation in docker, which is *n* processes per node.
```bash
$ run-sim.sh
```

===

If you want to rebuild the image for the io layer (which isn't necessary), 
do this (which will need to be squashed and referenced in Dockerbuildmpas)

```bash
$ build-io.sh
```
