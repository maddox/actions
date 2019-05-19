FROM debian:stable-slim

LABEL "maintainer"="maddox <jon@jonmaddox.com>"
LABEL "repository"="https://github.com/maddox/actions"
LABEL "version"="1.0.1"

LABEL "com.github.actions.name"="SCP"
LABEL "com.github.actions.description"="Copy file via SCP"
LABEL "com.github.actions.icon"="copy"
LABEL "com.github.actions.color"="orange"

RUN apt-get update && apt-get install -y \
  openssh-client && \
  rm -Rf /var/lib/apt/lists/*


ADD entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
