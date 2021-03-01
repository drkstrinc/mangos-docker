# mangos-docker
This repository lists everything needed to create and run Docker Images for the different **MaNGOS** branches

* **mangoszero-build**
    * This is World of Warcraft (Vanilla)

* **mangosone-build**
    * This is World of Warcraft Burning Crusade (expansion: 1)

* **mangostwo-build**
    * This is World of Warcraft Wrath of the Lich King (expansion: 2)

## Information
We will be using [StephenSorriaux/mangos-docker](https://github.com/StephenSorriaux/mangos-docker) Images for **db**, **realmd**, and **server**.

I have provided **build** and **cms** Dockerfiles to use to fill in the gaps.

**The only additional requirements are that you have a WoW Client for the Core you plan to build**

After following the steps in the README to build a given Core, and using [StephenSorriaux/mangos-docker](https://github.com/StephenSorriaux/mangos-docker) Images, you should have 4 Containers for each **MaNGOS** Core:

* **db** - MySQL Database used by realmd, server, and cms
* **realmd** - Realm/Auth Server
* **server** - World Server
* **cms** - WoW Simple Registration Website

**Please review the README's** *before using them* as they will likely need slight modifications before running.
