FROM ubuntu/apache2

RUN apt install update && apt install upgrade -y
RUN apt install git -y
RUN git clone https://gist.github.com/ttwthomas/bcfc524e0328343c6e70d0ac93f4ef3e/archive/a7b8c232554c58dddb06dd7a06025a45f92b0e66.zip
RUN apt-get install rar unrar unace zip unzip p7zip-full p7zip-rar sharutils mpack arj cabextract file-roller uudeview
RUN unzip bcfc524e0328343c6e70d0ac93f4ef3e-a7b8c232554c58dddb06dd7a06025a45f92b0e66.zip
COPY bcfc524e0328343c6e70d0ac93f4ef3e-a7b8c232554c58dddb06dd7a06025a45f92b0e66 /var/www/html
ENTRYPOINT [ "/bin/bash" ]
