## Docker Commands
- `docker ps` - list all running docker container.
- `docker run <image name>` - runs a new instance of a container.
  - `docker run --name <container name> -p 6379:6379 redis` - 'redis' is the image name.
    - This is an example of running redis.
    - `--name` - allows us to give a container a custom name. If you create a container with a custom name, you can't create another container with the same name.
    - `-p 6379:6379` - The first `6379` refers to the port of your computer, the second `6379` refers to the port in the redis container instance. We are mapping the port `6379` in our computer to the port `6379` in the docker container, so programs on our computer can interact with the redis instance. This is called port mapping. We will then use port forwarding when a request comes on that port. When a request comes to `http://localhost:6379` it will be forwarded to the redis container instance to handle.
- `docker stop <container name>` - stops an instance of a container gracefully.
- `docker kill <container name>` - immediately stops an instance of a container.
- `docker rm <container name>` - remove container with a specific name from your local docker registry.
- `docker start -ai <container name>` - You can start containers by name if they exists in your local docker registry. `redis`, `mongo` etc. (are not container names, they are image names). When you use `docker ps -a`, it will list all of the docker containers that are located in your docker registry and will show you their names.
  - `-ai` - lets you see what's going on in that container.
  - You would run the following command in another terminal window after `docker start -ai <container name>`:
  - `docker exec -it <container name> <command>`
      - `exec` - It's going to let you execute a command in your container.
      - `-i` - Makes the terminal interactive, you can type in the terminal but it's a blank terminal.
      - `t` - Gives you visual effects like `127.0.0.1:6379>` when used with `i`, so you can see what you are doing and where you are in the terminal.
      - `-it` - Therefore `i` and `t` are always used together like this `-it`, so you can interact with the terminal and have nice visual effects.
---

## Redis Example
- Run redis instance `docker run redis`, this will create a redis container with a random name.
- Run redis instance with a custom name and port mapping `docker run --name rdb -p 6379:6379 redis`
- Start a redis container that will log output of the activity going on in the container `docker start -ai rdb`
- Using Redis CLI, This is how we run the redis client inside of a docker container `docker exec -it rdb redis-cli`
  - In the terminal you should see `127.0.0.1:6379> ` after executing that command for redis.
    - Type `ping` and you should get `pong`, if so then you have connected successfully.
    - Type `exit` to exit the redis cli
    - To stop the redis container you have to manually execute `docker stop rdb`
---