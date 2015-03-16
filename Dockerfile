FROM debian:jessie

MAINTAINER Olivier Girardot <o.girardot@lateral-thoughts.com>

RUN apt-get update
RUN apt-get install -y wget default-jdk
RUN wget -q http://wwwftp.ciril.fr/pub/apache/spark/spark-1.3.0/spark-1.3.0-bin-hadoop2.4.tgz
RUN tar -zxvf spark-1.3.0-bin-hadoop2.4.tgz 
RUN rm spark-1.3.0-bin-hadoop2.4.tgz
RUN mv spark-1.3.0-bin-hadoop2.4 /usr/local/spark/

CMD ["/usr/local/spark/bin/spark-shell"]
