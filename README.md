# metricscollectionpipeline

## requires

* docker-machine
* docker-compose


## start the pipeline

* run `./rebuild_containers.sh` to build containers
* run `docker-compose up`
* run `machine=default; container_ip=`docker inspect --format "{{ .NetworkSettings.IPAddress }}" collectdriemann_graphite_1`; echo $container_ip; ssh -i ~/.docker/machine/machines/$machine/id_rsa docker@$(docker-machine ip $machine) -L 8000:${container_ip}:80`
* go to localhost:8000 to see graphite dashboard
