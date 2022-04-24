FROM texlive/texlive:latest

RUN apt-get update && \ 
    apt-get install -y \
    graphviz 

LABEL me.at8eqeq3.txt.altermann https://github.com/at8eqeq3/altermann

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]