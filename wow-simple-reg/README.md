# wow-simple-reg
WoW Simple Registration Docker Image and Container based off of [masterking32/WoWSimpleRegistration](https://github.com/masterking32/WoWSimpleRegistration)

## Build WoW Simple Registration Image
Run the following in the wow-simple-reg directory:

```bash
docker build -t drkstrinc/wow-simple-reg:latest .
```

## Copy files out of wow-simple-reg Image
Run the following commands:

```bash
docker create -t -i drkstrinc/wow-simple-reg:latest --name wow_simple_reg_base
docker cp wow_simple_reg_base:/var/www/html /share/Container/mangos/<expansion>/website
docker rm -f wow_simple_reg_base
```

## Edit application/config/config.php
Update the following properties:

* baseurl
* page_title
* realmlist
* game_version
* expansion
* template
* db_auth_host
* db_auth_port
* db_auth_user
* db_auth_pass
* db_auth_dbname
* realmlists

There may be additional properties you need to update, be sure to read the information in config.php

## Create WoW Simple Registration Container
Run the following command:

```bash
docker run -d \
    -p 1337:80 \
    -v /share/Container/mangos/<expansion>/website:/var/www/html \
    drkstrinc/wow-simple-reg:latest
```
