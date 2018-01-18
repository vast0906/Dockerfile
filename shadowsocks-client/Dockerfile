FROM debian:jessie

COPY sources.list /etc/apt/sources.list

RUN apt update \
    && apt install build-essential python-pip --no-install-recommends -y \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/* \
    && pip install shadowsocks

ADD LATEST.tar.gz /tmp/

RUN cd /tmp/libsodium-stable \
    && ./configure \
    && make \
    && make install \
    && echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf \
    && ldconfig \
    && rm -rf /tmp/libsodium-stable

ADD ss.sh /ss.sh

ENTRYPOINT ["/ss.sh"]
