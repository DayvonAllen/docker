## Redis Example
- Run redis instance `docker run redis`, this will create a redis container with a random name.
- Run redis instance with a custom name and port mapping `docker run --name rdb -p 6379:6379 redis`
- Start a redis container that will log the output of the activity going on in the container `docker start -ai rdb`
- Using Redis CLI, This is how we run the redis client inside of a docker container `docker exec -it rdb redis-cli`
  - In the terminal you should see `127.0.0.1:6379> ` after executing that command for redis.
    - Type `ping` and you should get `pong`, if so then you have connected successfully.
    - Type `exit` to exit the redis cli
    - To stop the redis container you have to manually execute `docker stop rdb`
---