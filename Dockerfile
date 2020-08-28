ARG VERSION=latest
FROM perl:$VERSION
RUN /bin/sh -c 'cpan -f gqmt'
LABEL docker.build.from="perl:$VERSION"
LABEL docker.build.module="gqmt"
LABEL maintainer="z-eos @ github"
