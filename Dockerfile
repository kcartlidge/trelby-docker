FROM ubuntu:trusty

RUN apt-get update && apt-get install -y \
    wget \
    python \
    python-wxgtk2.8 \
    python-lxml \
    python-crypto \
    libcanberra-gtk3-module \
    hicolor-icon-theme \
    --no-install-recommends

RUN wget --no-check-certificate \
    https://github.com/trelby/trelby/releases/download/import/trelby_2.2_all.deb

RUN dpkg -i trelby_2.2_all.deb
RUN apt-get update && apt-get install -f \
    && apt-get purge --auto-remove -y wget
RUN rm -rf /var/lib/apt/lists/* \
    && rm -rf *.deb

RUN apt-get update && apt-get install -y xpdf
RUN which xpdf

ENV DISPLAY :0

ENTRYPOINT /opt/trelby/src/trelby.py
