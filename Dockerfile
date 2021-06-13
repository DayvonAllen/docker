# Use an existing docker image as a base
# alpine means as small and compact as possible.
FROM node:alpine

# Specify the working directory of the image, our files will be copied here
WORKDIR /usr/app

# Copy files to the image
# COPY <files on my system> <where to copy to in the docker image>
COPY ./ ./

# Download and install a dependency
RUN npm install

# Tell the image  what to do when it starts as a container
CMD ["redis-server"]