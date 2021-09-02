# mangos-docker
This repository lists everything needed to build and run Docker images for the different **MaNGOS** branches

* **mangoszero**
    * This is World of Warcraft (Vanilla)

* **mangosone**
    * This is World of Warcraft Burning Crusade (expansion: 1)

* **mangostwo**
    * This is World of Warcraft Wrath of the Lich King (expansion: 2)

## Information
We will be using Stephen Sorriaux's Images for **db**, **realmd**, and **server**. I have provided **build** and **cms** Dockerfiles to use to fill in the gaps.

**The only additional requirements are that you have a WoW Client for the Core you plan to build and create a Private Server for.**

After following the steps in the README for a given Core, you should have 4 Containers for each **MaNGOS** Core:

* **db** - MySQL Database used by realmd, server, and cms
* **realmd** - Realm/Auth Server
* **server** - World Server
* **cms** - WoW Simple Registration Website

**Please review the README's and docker-compose.yml's** *before using them* as they will likely need slight modifications before running.
