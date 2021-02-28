# mangoszero-build
This repository lists everything needed to build and run Docker images for MaNGOS Zero (Vanilla)

We will be using Stephen Sorriaux's images after building MaNGOS and extracting resources

## Build MaNGOS Zero Image
Run the following in the mangoszero-build directory:

```bash
docker build -t drkstrinc/mangoszero-build:latest .
```

## Create MaNGOS Zero Container which will extract files from WoW client
Run the following command:

```bash
docker run --rm \
    -v /share/Container/mangos/vanilla/build:/build \
    -v /share/Container/mangos/vanilla/client:/client \
    -v /share/Container/mangos/vanilla/server:/server \
    drkstrinc/mangoszero-build:latest
```

## Copy config files out of mangoszero-server Image
Run the following commands:

```bash
docker run --rm \
    --entrypoint cat \
    ssorriaux/mangoszero-server:latest \
    /etc/mangos/conf/mangosd.conf > /share/Container/mangos/vanilla/server/conf/mangosd.conf
```

```bash
docker run --rm \
    --entrypoint cat \
    ssorriaux/mangoszero-server:latest \
    /etc/mangos/conf/ahbot.conf.dist > /share/Container/mangos/vanilla/server/conf/ahbot.conf.dist
```

**Configure mangosd.conf and ahbot.conf.dist to your liking**

## Utilize ssorriaux docker-compose.yml and run:
Run the following command from this directory (mangoszero):

```bash
docker-compose up -d
```

You should have 4 Containers after this:

* db
* realmd
* server
* cms
