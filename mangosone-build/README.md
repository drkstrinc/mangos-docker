# mangosone-build
This repository lists everything needed to build MaNGOS One (Burning Crusade) and extract resources

## Build MaNGOS One Image
Run the following in the mangosone-build directory:

```bash
docker build -t drkstrinc/mangosone-build:latest .
```

## Create MaNGOS One Container which will extract files from WoW client
Run the following command (*modify volume mappings*):

```bash
docker run --rm \
    -v /share/Container/mangos/tbc/build:/build \
    -v /share/Container/mangos/tbc/client:/client \
    -v /share/Container/mangos/tbc/server:/server \
    drkstrinc/mangosone-build:latest
```
