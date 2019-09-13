FROM thingmesh/base:latest

RUN curl -SL http://www.mersenne.org/ftp_root/gimps/p95v298b6.linux64.tar.gz | tar -xz mprime && mv mprime /usr/sbin && chmod +x /usr/sbin/mprime

COPY runprime /
RUN chmod +x ./runprime

RUN mkdir prime

CMD ["/bin/bash", "-c", "./runprime"]

