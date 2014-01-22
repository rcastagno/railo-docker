railo-docker
============

Railo docker image configuration


Please note that this is just a test, it will only create a running Railo instance,
but there are no instruction on how to actually get it to run any actual application.


Instructions
============

Download a 64bit version of Railo Express and place the tar.gz in the "files" folder as

railo.tar.gz

then rebuild the image.

The archive will be uncompressed in the image

Start the container with

docker run -p 8888 railocontainer

where 8888 is the exposed port.

With

docker ps

you will be able to see which port the running instance is actually accessible

CONTAINER ID        IMAGE                   COMMAND             CREATED             STATUS              PORTS                     NAMES
e18d798ffff8        railocontainer:latest   /var/railo/start    4 seconds ago       Up 3 seconds        0.0.0.0:49162->8888/tcp   desperate_bohr 

in this case, Railo will be accessible at 
http://localhost:49162

