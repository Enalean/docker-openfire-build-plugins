FROM centos:centos7

MAINTAINER Thomas Gerbet <thomas.gerbet@enalean.com>

RUN yum install -y wget tar ant

COPY openfire.checksum .
RUN wget http://download.igniterealtime.org/openfire/openfire_src_3_10_0.tar.gz && \
    sha1sum -c openfire.checksum && \
    tar -zxvf openfire_src_3_10_0.tar.gz && \
    rm openfire_src_3_10_0.tar.gz

ADD run.sh /run.sh
ENTRYPOINT ["/run.sh"]

VOLUME ["/build"]
