▽
FROM ubuntu

# Install dependencies
RUN apt-get update
RUN apt-get install -y curl default-jre-headless

# Download the latest .deb and install
RUN curl https://aphyr.com/riemann/riemann_0.2.10_all.deb > /tmp/riemann_0.2.10_all.deb
RUN dpkg -i /tmp/riemann_0.2.10_all.deb

# Expose the ports for inbound events and websockets
EXPOSE 5555
EXPOSE 5555/udp
EXPOSE 5556

# Share the config directory as a volume
VOLUME /etc/riemann
ADD riemann.config /etc/riemann/riemann.config
#ADD riemann-extra-0.2.10.jar /opt/riemann/lib/riemann-extra-0.2.10.jar

# Set the hostname in /etc/hosts so that Riemann doesn't die due to unknownHostException
#export EXTRA_CLASSPATH=/opt/riemann/lib/riemann-extra-0.2.10.jar;
CMD echo 127.0.0.1 $(hostname) >> /etc/hosts;/usr/bin/riemann /etc/riemann/riemann.config
