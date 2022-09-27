FROM ubuntu

RUN apt-get update
RUN apt-get install -y iputils-ping net-tools dstat
COPY monFichierConf /etc/fichier.conf
ENTRYPOINT [ "bash" ]
