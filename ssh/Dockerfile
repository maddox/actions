FROM debian:stable-slim

LABEL "maintainer"="maddox <jon@jonmaddox.com>"
LABEL "repository"="https://github.com/maddox/actions"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="SSH"
LABEL "com.github.actions.description"="Run command via SSH"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="orange"

RUN apt-get update && apt-get install -y \
  openssh-client \
  rm -rf /var/lib/apt/lists/*

RUN mkdir /github/home/.ssh
RUN chmod 700 /github/home/.ssh
RUN touch /github/home/.ssh/known_hosts
RUN chmod 600 /github/home/.ssh/known_hosts

ADD entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
