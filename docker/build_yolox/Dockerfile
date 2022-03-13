FROM nvcr.io/nvidia/l4t-ml:r32.5.0-py3
ENV DEBIAN_FRONTEND=noninteractive

ADD https://api.github.com/repos/OUXT-Polaris/YOLOX/git/refs/heads/main version.json
RUN git clone -b main https://github.com/OUXT-Polaris/YOLOX.git
WORKDIR YOLOX

COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]