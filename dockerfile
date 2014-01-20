# Railo
#
# VERSION       1

# use the ubuntu base image provided by dotCloud
FROM ubuntu

MAINTAINER Raffaele Castagno raffaele.castagno@gmail.com

RUN apt-get -y install wget

RUN wget http://www.getrailo.org/down.cfm?item=/railo/remote/download42/4.2.0.000/railix/linux/railo-express-4.2.0.000-jre-linux64.tar.gz -P /tmp/ -O railo-express-4.2.0.000-jre-linux64.tar.gz
RUN tar zxpvf railo-express-4.2.0.000-jre-linux64.tar.gz -C /var
RUN mv /var/railo-express-4.2.0.000-jre-linux64 /var/railo
RUN rm railo-express-4.2.0.000-jre-linux64.tar.gz
 
ENTRYPOINT ["/var/railo/start"]
#ENTRYPOINT ["/bin/sh"]

EXPOSE 8888



# docker run -p 127.0.0.1:222:22 -d man aged_image "/usr/sbin/sshd" "/etc/init.d/apache2 start"
# docker run -p 127.0.0.1:222:22 -d man 






# make sure the package repository is up to date
#RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
#RUN apt-get update

# install memcached
#RUN apt-get install -y memcached

# Launch memcached when launching the container
# ENTRYPOINT ["memcached"]

# run memcached as the daemon user
#USER daemon

# expose memcached port
#EXPOSE 11211 
