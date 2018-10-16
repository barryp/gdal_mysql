FROM ubuntu:18.04

WORKDIR /opt
COPY . /opt/

RUN ./build.sh

CMD ["/bin/bash"]
