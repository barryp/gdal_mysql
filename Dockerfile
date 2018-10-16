FROM ubuntu:18.04

WORKDIR /opt
COPY . /opt/

RUN ./build.sh

#
# Setup to display the README.md when executing bash in the container
#
RUN echo '[ ! -z "$TERM" ] && cat /opt/README.md' >>/etc/bash.bashrc

USER nobody
CMD ["/bin/bash"]
