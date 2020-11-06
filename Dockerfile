FROM ubuntu:20.04
LABEL name=docker-latex-build version=latest

RUN apt update && apt upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
    git wget unzip latexmk make inkscape \
    texlive texlive-lang-german texlive-lang-greek texlive-latex-extra \
    texlive-bibtex-extra biber software-properties-common \
    texlive-fonts-extra texlive-science texlive-publishers \
    texlive-font-utils \
    python3-pygments \
    python3-jinja2 \
    libreoffice && \
    apt clean autoclean && \
    apt autoremove && \
    rm -rf /var/lib/apt/lists/*
