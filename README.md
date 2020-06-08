![Docker Automated build](https://img.shields.io/docker/automated/aminehy/docker-fast-api)
![Docker Pulls](https://img.shields.io/docker/pulls/aminehy/docker-fast-api)


# Description
This repository contains a [docker image](https://hub.docker.com/repository/docker/aminehy/docker-fast-api) that allows running API built using FastAPI.



# Build docker image
You can build this docker image from a dockerfile using this command
```
docker build -t aminehy/docker-fast-api:latest .
```

# Run the docker container

- You can mount your folder in the container to directly run the  `api.py`

    ``` bash
    docker run -ti --rm -v $(pwd):/app -p 8000:8000 aminehy/docker-fast-api:latest
    ```

- or just run docker container

    ``` bash
    docker run -ti --rm aminehy/docker-fast-api:latest
    ```
