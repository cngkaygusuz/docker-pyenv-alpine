FROM alpine:3.5
MAINTAINER vad.viktor@gmail.com

# use pyenv understandable version
ARG PYTHON_VERSION
ENV PYTHON_VERSION=${PYTHON_VERSION:-3.6.0}

COPY scripts/package-setup.sh /
RUN /package-setup.sh
RUN rm -fv /package-setup.sh

COPY scripts/pyenv-setup.sh /
RUN bash /pyenv-setup.sh $PYTHON_VERSION
RUN rm -fv /pyenv-setup.sh

COPY scripts/init.sh /init.sh
