FROM ubuntu:latest
WORKDIR /docs
COPY . .
RUN apt update && apt upgrade -y && apt install python3.9 python3-pip -y \
    && apt install git -y && pip3 install mkdocs mkdocs-material==7.0.4 && \
    pip3 install mkdocs-macros-plugin  mkdocs-markdownextradata-plugin \
    mkdocs-minify-plugin mkdocs-material-extensions && git clean -fdx && \
    mkdocs build --clean
EXPOSE 8080
CMD [ "mkdocs", "serve", "-a", "0.0.0.0:8080" ]
