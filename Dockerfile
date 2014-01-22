# Railo
#
# VERSION       1

# use the ubuntu base image provided by dotCloud
FROM ubuntu

MAINTAINER Raffaele Castagno raffaele.castagno@gmail.com

ADD ./files /tmp/railofiles
RUN tar zxpvf /tmp/railofiles/* -C /tmp/railofiles
RUN rm /tmp/railofiles/*.tar.gz
RUN mv /tmp/railofiles/* /tmp/railofiles/railo
RUN mv /tmp/railofiles/railo /var/railo
RUN rm -rf /tmp/railofiles
 
ENTRYPOINT ["/var/railo/start"]

EXPOSE 8888

