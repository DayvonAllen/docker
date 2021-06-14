# Use an existing docker image as a base
# alpine means as small and compact as possible.
FROM node:alpine

# Specify the working directory of the image, our files will be copied here
WORKDIR /usr/app

# Copy files to the image
# COPY <files on my system> <where to copy to in the docker image>
COPY ./package.json ./
# Download and install a dependency
RUN npm install

# Copies everything else over after checking the package.json for changes and running npm install, 
# this prevents unnecessary npm installs when we just change our source code. 
COPY ./ ./


# Tell the image  what to do when it starts as a container
CMD ["npm", "start"]