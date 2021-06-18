## Docker Composer
- Seperate CLI that gets installed along with Docker
- Used to start up multiple Docker containers at the same time.
- Automates some of the long arguments we pass to `docker run`.
- Containers created from the same docker-compose file will automatically be able to communicate with each other.
---

## Commands
- `docker-compose up` - runs docker compose file
- `docker-compose up --build` - builds and runs docker compose file
- `docker-compose down` - stops docker containers created from a docker compose file
- `docker-compose ps`
---

## Restart Policies
- `'no'`
- `always`
- `on-failure`
- `unless-stopped`
---