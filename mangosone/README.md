# mangosone-build
This repository lists everything needed to build and run Docker images for MaNGOS One (TBC)

We will be using Stephen Sorriaux's images after building MaNGOS and extracting resources

## Build MaNGOS One Image
Run the following in the mangosone-build directory:

```bash
docker build -t drkstrinc/mangosone-build:latest .
```

## Create MaNGOS One Container which will extract files from WoW client
Run the following command:

```bash
docker run --rm \
    -v /share/Container/mangos/tbc/build:/build \
    -v /share/Container/mangos/tbc/client:/client \
    -v /share/Container/mangos/tbc/server:/server \
    drkstrinc/mangosone-build:latest
```

## Copy config files out of mangosone-server Image
Run the following commands:

```bash
docker run --rm \
    --entrypoint cat \
    ssorriaux/mangosone-server:latest \
    /etc/mangos/conf/mangosd.conf > /share/Container/mangos/tbc/server/conf/mangosd.conf
```

```bash
docker run --rm \
    --entrypoint cat \
    ssorriaux/mangosone-server:latest \
    /etc/mangos/conf/ahbot.conf.dist > /share/Container/mangos/tbc/server/conf/ahbot.conf.dist
```

**Configure mangosd.conf and ahbot.conf.dist to your liking**

## Utilize ssorriaux docker-compose.yml and run:
Run the following command from this directory (mangosone):

```bash
docker-compose up -d
```

You should have 4 Containers after this:

* db
* realmd
* server
* cms
