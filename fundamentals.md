## Why Use Docker?
- Docker makes it really easy to install and run software without worrying about setup or dependencies.
---

## What is Docker?
- Docker is a platform or ecosystem around creating and running containers.
- Image - is a single file with all the dependencies and configurations required to run a program
- Container - Is an instance of an image. It runs a program.
- Docker installs a Linux virtual machine to work properly because namespacing and control groups only work in Linux and those are the foundation of Docker.
---

## Docker Ecosystem
- Docker Client - is in charge of taken commands from the user and doing some processing on them and communicating them over to the Docker server.
- Docker Machine
- Docker Hub - Is a repository of mostly free images that you can download and run on your computer.
- Docker Server - In charge of the heavy lifting. When the Docker Server is called due to a `docker run` command then a series of actions occur in the background:
  1. The server sees that we are trying to start up a new container. 
  2. It checks to see if there is a local copy of the image on our machine in the image cache.
  3. If the image is not in the image cache then the Docker server will reach out to Docker Hub
  4. If Docker Hub has the image then Docker server will download the image and store it in the image cache.
  5. It takes the downloaded image, loads it up in memory
  6. Creates a container out of it.
  7. Runs the program inside of it.
- Docker Image - is a single file with all the dependencies and configurations required to run a program.
- Docker Compose
---

## Creating A Dockerfile
- Specify a base image.
- Run some commands to install additional programs.
- Specify a command to run on container startup.
- To use execute the following command to build the image: `docker build <Dockerfile location>`
- Then execute `docker run <name or id>` and a container should be created from your image.
---

## Docker Volumes
- Allows you to copy a reference to your files into your container instead of the actual files, so you can update the files in the container on the fly.
- Set up a mapping between a folder in a container and a folder outside of the container
---