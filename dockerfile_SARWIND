#su GitHub caricare la cartella SARWIND_LGMod_v401a_fmr/ senza InData, perchè poi la cartella dei dati verrà scaricata da un URL e verrà indicata con IODescription.json
#con script.json viene indicato che la cartella da passare dal repository di GitHub all'ambiente di esecuzione (cioè Docker)
#in dockerimage.json 
#	entrypoint: "/bin/bash -c"
#	comandi: "cd SARWIND_LGMod_v401a_fmr && ./run.sh"

FROM ubuntu:16.04

EXPOSE 5901:5901/tcp
EXPOSE 5901:5901/udp

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y libxext6 && apt-get install -y libxt6 && apt-get install -y libxmu6 && apt-get install -y unzip && apt-get install -y zip && apt-get install -y wget && wget http://cloud.recas.ba.infn.it:8080/v1/AUTH_fb6d6fcd0e194a96bb6d0420dce8332f/backgroundinfo/MCRInstaller.zip && unzip MCRInstaller.zip -d MCRInstaller && ./MCRInstaller/install -mode silent -destinationFolder /MCR_R2011b && apt-get install -y vnc4server && printf "password\npassword\n\n" | vncpasswd && vnc4server && echo "export DISPLAY=$HOSTNAME:1" >> /etc/bash.bashrc && mkdir SARWIND_LGMod

    
