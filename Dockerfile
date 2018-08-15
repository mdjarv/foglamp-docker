FROM ubuntu:16.04

RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y avahi-daemon curl git cmake g++ make build-essential autoconf automake
RUN apt-get install -y sqlite3 libsqlite3-dev
RUN apt-get install -y libtool libboost-dev libboost-system-dev libboost-thread-dev libssl-dev libpq-dev uuid-dev
RUN apt-get install -y python3-dev python3-pip python3-dbus python3-setuptools
RUN apt-get install -y postgresql

RUN git clone https://github.com/foglamp/FogLAMP.git /foglamp

WORKDIR /foglamp
RUN make
RUN make install

RUN apt-get install -y rsyslog

WORKDIR /usr/local/foglamp
ADD foglamp.sh foglamp.sh

EXPOSE 8081

CMD ["./foglamp.sh"]