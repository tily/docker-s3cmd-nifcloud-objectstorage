# docker-s3cmd-nifcloud-objectstorage

* Docker Hub: https://hub.docker.com/r/tily/s3cmd-nifcloud-objectstorage/
* GitHub: https://github.com/tily/docker-s3cmd-nifcloud-objectstorage

## Usage

```
$ vi docker-compose.yml
version: "3"
services:
  s3cmd:
    image: tily/s3cmd-nifcloud-objectstorage
    volumes:
      - .:/work
    env_file: .env

$ vi .env
OBJECTSTORAGE_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXX
OBJECTSTORAGE_SECRET_KEY=YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
OBJECTSTORAGE_REGION=jp-east-2

$ docker-compose run --rm s3cmd ls
```
