ARG VERSION=latest
FROM perl:$VERSION
RUN /bin/sh -c 'cpan -f App::gqmt'
LABEL docker.build.from="perl:$VERSION"
LABEL docker.build.module="App::gqmt"
LABEL maintainer="z-eos @ github"
