FROM ubuntu:16.04
LABEL name=docker-latex-build version=latest

RUN apt-get update && apt install -y texlive texlive-lang-german texlive-lang-greek texlive-latex-extra texlive-bibtex-extra biber
RUN apt-get update && apt-get install software-properties-common -y && apt-add-repository ppa:scribus/ppa
RUN apt-get update && apt install git wget unzip ssh latexmk make inkscape scribus-ng xvfb -y
RUN mkdir -p /root/.ssh && ssh-keyscan git.kitcar-team.de >> /root/.ssh/known_hosts
ADD scribus_export_pdf.py /opt/scribus_export_pdf.py

RUN apt update && apt install -y texlive-fonts-extra texlive-science texlive-publishers





