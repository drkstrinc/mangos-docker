# mangoszero-build
This repository lists everything needed to build MaNGOS Zero (Vanilla) and extract resources

## Build MaNGOS Zero Image
Run the following in the mangoszero-build directory:

```bash
docker build -t drkstrinc/mangoszero-build:latest .
```

## Create MaNGOS Zero Container which will extract files from WoW client
Run the following command (*modify volume mappings*):

```bash
docker run --rm \
    -v /share/Container/mangos/vanilla/build:/build \
    -v /share/Container/mangos/vanilla/client:/client \
    -v /share/Container/mangos/vanilla/server:/server \
    drkstrinc/mangoszero-build:latest
```
