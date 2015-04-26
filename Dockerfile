FROM hypriot/rpi-java
MAINTAINER Nils Blum-Oeste <mail@nils-blum-oeste.net>

RUN apt-get update

RUN apt-get install -y wget

ADD http://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein /usr/local/bin/
RUN chmod 0755 /usr/local/bin/lein

ENV LEIN_ROOT 1
RUN lein
