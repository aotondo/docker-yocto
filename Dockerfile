FROM opensuse/leap:15.1
ENV container docker
RUN useradd -ms /bin/bash yocto
RUN zypper --non-interactive up && \
zypper --non-interactive install bzip2 gzip hostname iputils htop && \
zypper --non-interactive install python gcc gcc-c++ git chrpath make wget python-xml diffstat makeinfo python-curses patch socat python3 python3-curses tar python3-pip python3-pexpect xz which python3-Jinja2 Mesa-libEGL1 libSDL-devel xterm rpcgen Mesa-dri-devel
ADD https://github.com/aotondo/docker-yocto/blob/main/start.sh 

USER root
CMD ["ping","localhost"]