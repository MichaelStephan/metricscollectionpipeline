#docker rmi -f graphite-docker
docker rmi -f riemann-docker
#docker rmi -f collectd-docker

cd graphite-docker
docker build -t graphite-docker .
cd ..

cd riemann-docker
docker build -t riemann-docker .
cd ..

cd collectd-docker
docker build -t collectd-docker .
cd ..
