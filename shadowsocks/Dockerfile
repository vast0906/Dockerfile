FROM debian:jessie

COPY sources.list /etc/apt/sources.list

RUN apt update \
    && apt install build-essential python-pip --no-install-recommends -y \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/* \
    && pip install shadowsocks

ADD LATEST.tar.gz /mnt/

WORKDIR /mnt/libsodium-stable

RUN ./configure \
    && make \
    && make install \
    && echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf \
    && ldconfig
WORKDIR /opt
ENTRYPOINT ["sslocal"]
