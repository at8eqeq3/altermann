FROM texlive/texlive:latest

RUN apt-get update && \ 
    apt-get install -y \
    graphviz 

COPY entrypoint.sh /root

ENTRYPOINT [ "/root/entrypoint.sh" ]