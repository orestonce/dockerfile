FROM ubuntu:18.04

#https://guacamole.apache.org/doc/gug/installing-guacamole.html
ENV LD_LIBRARY_PATH=/usr/local/lib
RUN apt update && apt install -y libavcodec-dev libavformat-dev libavutil-dev libswscale-dev freerdp2-dev libpango1.0-dev libssh2-1-dev libtelnet-dev libvncserver-dev libwebsockets-dev libpulse-dev libssl-dev libvorbis-dev libwebp-dev libcairo2-dev libjpeg-turbo8-dev libpng-dev libtool-bin libossp-uuid-dev libavcodec-dev libavformat-dev libavutil-dev libswscale-dev wget ffmpeg

#https://guacamole.apache.org/releases/1.3.0/
RUN wget -O guacamole-server-1.3.0.tar.gz "https://apache.org/dyn/closer.lua/guacamole/1.3.0/source/guacamole-server-1.3.0.tar.gz?action=download"
RUN  tar -xzf guacamole-server-1.3.0.tar.gz
WORKDIR /guacamole-server-1.3.0

RUN ./configure --with-init-dir=/etc/init.d
RUN make
RUN make install
RUN rm -rf /guacamole-server-1.3.0

RUN mkdir /workspace
WORKDIR /workspace

CMD ["/bin/bash"]
#docker run -v/tmp/data:/workspace guacenc_img guacenc input
