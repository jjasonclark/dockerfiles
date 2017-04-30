FROM alpine
MAINTAINER Jason Clark <jason@jasonclark.io>

RUN apk update && \
    apk add ca-certificates wget unzip && \
    mkdir -p /tmp/pgweb && \
    cd /tmp/pgweb && \
    wget https://github.com/sosedoff/pgweb/releases/download/v0.9.7/pgweb_linux_amd64.zip && \
    unzip pgweb_linux_amd64.zip -d /bin && \
    rm -rf /tmp/pgweb && \
    apk del wget unzip

RUN adduser -S pgweb
USER pgweb

EXPOSE 8080
ENTRYPOINT ["/bin/pgweb_linux_amd64"]
CMD ["-s", "--bind=0.0.0.0", "--listen=8080"]
