###########################################################
# Dockerfile to run Memcached Containers
# Based on Debian Image
# Autor: Alejandro Palomino García
###########################################################

# Set the base image to use to Debian
FROM debian

# Set the file maintainer (your name - the file's author)
MAINTAINER Alejandro Palomino García <alejandrodh570@gmail.com>

# Update the default application repository sources list
RUN apt-get update

# Install Memcached
RUN apt-get install -y memcached

# Port to expose
EXPOSE 11211

# Default Memcached run command arguments
# Change to limit memory when creating container
CMD ["-u", "root", "-m", "128"]

# Set the user to run Memcached daemon
USER daemon

# Set the entrypoint to memcached binary
ENTRYPOINT memcached

###########################################################

