FROM ubuntu

RUN apt-get update
RUN apt-get install -y iputills-ping net-tools dstat
COPY monFichierConf /etc/fichier.conf
ENTRYPOINT [ "/bin/bash" ]
