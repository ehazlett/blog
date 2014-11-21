FROM google/golang-runtime
MAINTAINER Evan Hazlett "<ejhazlett@gmail.com>"
WORKDIR /gopath/src/app
ADD . /gopath/src/app
RUN go get app
RUN curl -s -L -o /tmp/hugo.tar.gz https://github.com/spf13/hugo/releases/download/v0.12/hugo_0.12_linux_amd64.tar.gz && \
    tar xzf /tmp/hugo.tar.gz --strip-components=1 -C /bin
RUN (ln -s /bin/hugo_0.12_linux_amd64 /bin/hugo)
RUN (cd /gopath/src/app/content && hugo)
EXPOSE 8080
ENTRYPOINT ["/gopath/bin/app"]
CMD []

