FROM ubuntu:18.04
MAINTAINER Darkstar Inc. <drkstrinc@gmail.com>

#Install Build Tools and Libraries
RUN apt-get -y update
RUN apt-get -y install git curl autoconf automake cmake libbz2-dev libace-dev libssl-dev libmysqlclient-dev libtool build-essential

#Clone MaNGOS One
RUN git clone --branch master --recursive https://github.com/mangosone/server.git mangoserver
RUN mkdir /mangoserver/build
WORKDIR /mangoserver/build

#Build MaNGOS One
RUN cmake .. -DCMAKE_INSTALL_PREFIX=/mangos -DBUILD_MANGOSD=1 -DBUILD_REALMD=1 -DBUILD_TOOLS=1
RUN make -j4
RUN make install

#Add Executable Entrypoint Script
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
