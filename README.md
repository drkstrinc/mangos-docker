# mangos-docker
This repository lists everything needed to build and run Docker images for the different **MaNGOS** branches

* **mangoszero**
    * This is World of Warcraft (Vanilla)

* **mangosone**
    * This is World of Warcraft Burning Crusade (expansion: 1)

* **mangostwo**
    * This is World of Warcraft Wrath of the Lich King (expansion: 2)

## Information
We will be using [StephenSorriaux/mangos-docker](https://github.com/StephenSorriaux/mangos-docker) Images for **db**, **realmd**, and **server**. I have provided **build** and **cms** Dockerfiles to use to fill in the gaps.

**The only additional requirements are that you have a WoW Client for the Core you plan to build and create a Private Server for.**

After following the steps in the README for a given Core, and using [StephenSorriaux/mangos-docker](https://github.com/StephenSorriaux/mangos-docker) Images, you should have 4 Containers for each **MaNGOS** Core:

* **db** (1501) - MySQL Database used by realmd, server, and cms
* **realmd** (3724) - Realm/Auth Server
* **server** (8085) - World Server
* **cms** (1337) - WoW Simple Registration Website

**Please review the README's and docker-compose.yml's** *before using them* as they will likely need slight modifications before running.
