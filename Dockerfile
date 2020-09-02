ARG VERSION=latest
FROM perl:$VERSION
RUN /bin/sh -c 'cpan -f App::gqmt'

# http://label-schema.org/rc1/#label-semantics
LABEL org.label-schema.docker.build.from = "perl:$VERSION"
LABEL org.label-schema.docker.build.module = "App::gqmt"
LABEL org.label-schema.description = "script to clean up old package versions from GitHub repository"
LABEL org.label-schema.maintainer = "z-eos @ github"
LABEL org.label-schema.name = "gqmt"
LABEL org.label-schema.url = "https://metacpan.org/pod/distribution/App-gqmt/gqmt"
LABEL org.label-schema.vcs-url = "https://github.com/z-eos/gqmt"
LABEL org.label-schema.schema-version = "1.0"
LABEL org.label-schema.docker.cmd.help = "docker exec -it $CONTAINER gqmt -h"
LABEL org.label-schema.docker.cmd.test = "docker run gqmt -u user-name -R repo-name -P pkg-name -T token"
