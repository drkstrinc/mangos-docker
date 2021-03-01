# mangostwo-build
This repository lists everything needed to build MaNGOS Two (Wrath of the Lich King) and extract resources

## Build MaNGOS Two Image
Run the following in the mangostwo-build directory:

```bash
docker build -t drkstrinc/mangostwo-build:latest .
```

## Create MaNGOS Two Container which will extract files from WoW client
Run the following command (*modify volume mappings*):

```bash
docker run --rm \
    -v /share/Container/mangos/wotlk/build:/build \
    -v /share/Container/mangos/wotlk/client:/client \
    -v /share/Container/mangos/wotlk/server:/server \
    drkstrinc/mangostwo-build:latest
```
