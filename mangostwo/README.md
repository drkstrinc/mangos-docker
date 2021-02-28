# mangostwo-build
This repository lists everything needed to build and run Docker images for MaNGOS Two (WotLK)

We will be using Stephen Sorriaux's images after building MaNGOS and extracting resources

## Build MaNGOS Two Image
Run the following in the mangostwo-build directory:

```bash
docker build -t drkstrinc/mangostwo-build:latest .
```

## Create MaNGOS Two Container which will extract files from WoW client
Run the following command:

```bash
docker run --rm \
    -v /share/Container/mangos/wotlk/build:/build \
    -v /share/Container/mangos/wotlk/client:/client \
    -v /share/Container/mangos/wotlk/server:/server \
    drkstrinc/mangostwo-build:latest
```

## Copy config files out of mangostwo-server Image
Run the following commands:

```bash
docker run --rm \
    --entrypoint cat \
    ssorriaux/mangostwo-server:latest \
    /etc/mangos/conf/mangosd.conf > /share/Container/mangos/wotlk/server/conf/mangosd.conf
```

```bash
docker run --rm \
    --entrypoint cat \
    ssorriaux/mangostwo-server:latest \
    /etc/mangos/conf/ahbot.conf.dist > /share/Container/mangos/wotlk/server/conf/ahbot.conf.dist
```

**Configure mangosd.conf and ahbot.conf.dist to your liking**

## Utilize ssorriaux docker-compose.yml and run:
Run the following command from this directory (mangostwo):

```bash
docker-compose up -d
```

You should have 4 Containers after this:

* db
* realmd
* server
* cms
