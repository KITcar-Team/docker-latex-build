FROM ubuntu:18.04
LABEL name=docker-latex-build version=latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt install -y \
    git wget unzip latexmk make inkscape xvfb \
    texlive texlive-lang-german texlive-lang-greek texlive-latex-extra \
    texlive-bibtex-extra biber software-properties-common \
    texlive-fonts-extra texlive-science texlive-publishers \
    texlive-font-utils

RUN apt-add-repository ppa:scribus/ppa
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt install scribus-ng -y

ADD scribus_export_pdf.py /opt/scribus_export_pdf.py

