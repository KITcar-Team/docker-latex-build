FROM ablu/ubuntu-texlive-full
MAINTAINER Marek Wehmer marek@wehmermail.net 

RUN apt-get update && apt-get install software-properties-common -y && apt-add-repository ppa:scribus/ppa
RUN apt-get update && apt install git wget unzip ssh latexmk make inkscape scribus-ng xvfb -y
RUN mkdir -p /root/.ssh && ssh-keyscan git.kitcar-team.de >> /root/.ssh/known_hosts
ADD scribus_export_pdf.py /opt/scribus_export_pdf.py





