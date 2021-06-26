FROM ubuntu:16.04

EXPOSE 5901:5901/tcp
EXPOSE 5901:5901/udp

SHELL ["/bin/bash", "-c"]

RUN apt-get update
RUN apt-get install -y libxext6
RUN apt-get install -y libxt6
RUN apt-get install -y libxmu6
RUN apt-get install -y unzip
RUN apt-get install -y zip
RUN apt-get install -y wget
RUN wget http://cloud.recas.ba.infn.it:8080/v1/AUTH_fb6d6fcd0e194a96bb6d0420dce8332f/backgroundinfo/MCR_R2016b.zip
RUN unzip MCR_R2016b.zip
RUN apt-get install -y vnc4server
RUN printf "password\npassword\n\n" | vncpasswd
RUN vnc4server
RUN echo "export DISPLAY=$HOSTNAME:1" >> /etc/bash.bashrc
RUN mkdir SARWIND_LGMod
