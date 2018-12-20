FROM debian:stable-slim

LABEL "maintainer"="maddox <jon@jonmaddox.com>"
LABEL "repository"="https://github.com/maddox/actions"
LABEL "version"="1.0.1"

LABEL "com.github.actions.name"="Wait for 200"
LABEL "com.github.actions.description"="Poll a URL until it returns a 200 HTTP status code."
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="blue"

RUN apt-get update && apt-get install -y curl

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
