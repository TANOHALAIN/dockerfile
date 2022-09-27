FROM ubuntu/apache2

RUN apt install update && apt install upgrade -y
RUN apt install git -y && apt install unzip -y 
RUN wget https://gist.github.com/ttwthomas/bcfc524e0328343c6e70d0ac93f4ef3e/archive/a7b8c232554c58dddb06dd7a06025a45f92b0e66.zip -o web.zip
RUN unzip web.zip /tmp
COPY web /var/www/html
WORKDIR var/www/html/bcfc524e0328343c6e70d0ac93f4ef3e-a7b8c232554c58dddb06dd7a06025a45f92b0e66
EXPOSE 777
ENTRYPOINT [ "/bin/bash" ]
