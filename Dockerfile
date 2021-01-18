FROM ubuntu:latest

COPY libs /home/report/libs
COPY templates /home/report/templates
COPY run.sh /home/report

WORKDIR /home/report/libs

RUN \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install texlive-full && \ 
    dpkg -i pandoc-2.11.3.2-1-amd64.deb && \
    mv Eisvogel/eisvogel.tex eisvogel.latex && \
    mkdir -p /root/.pandoc/templates/ && \
    cp eisvogel.latex /root/.pandoc/templates/ && \
    mkdir -p /root/.local/share/pandoc/templates/ && \
    cp eisvogel.latex /root/.local/share/pandoc/templates/ && \
    rm -rf /var/cache/apt && \
    apt-get clean && \
    chmod +x ../run.sh

WORKDIR /home/report

CMD ["bash"]