FROM ubuntu:focal

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN dpkg --add-architecture i386 && \
    apt update && apt install -f -y fluxbox gnupg2 net-tools python-is-python3 supervisor tar wget x11vnc xdotool xvfb && \
    wget -nc https://dl.winehq.org/wine-builds/winehq.key -O /usr/share/keyrings/winehq-archive.key && \
    wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources -O /etc/apt/sources.list.d/winehq-focal.sources && \
    apt update && apt install -f -y winehq-stable winetricks && \
    apt dist-upgrade -f -y && apt autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV WINEPREFIX /root/prefix32
ENV WINEARCH win32
ENV DISPLAY :0

ENV noVNC 1.3.0
ENV websockify 0.10.0

WORKDIR /root/
RUN wget -O - https://github.com/novnc/noVNC/archive/v${noVNC}.tar.gz | tar -xzv -C /root/ && mv /root/noVNC-${noVNC} /root/novnc && ln -s /root/novnc/vnc_lite.html /root/novnc/index.html && \
    wget -O - https://github.com/novnc/websockify/archive/v${websockify}.tar.gz | tar -xzv -C /root/ && mv /root/websockify-${websockify} /root/novnc/utils/websockify

EXPOSE 8080

CMD ["/usr/bin/supervisord"]
