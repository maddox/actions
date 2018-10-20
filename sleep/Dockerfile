FROM debian:stable-slim

LABEL "name"="filter"
LABEL "maintainer"="maddox <jon@jonmaddox.com>"
LABEL "repository"="https://github.com/maddox/actions"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Sleep"
LABEL "com.github.actions.description"="Stall execution for N seconds"
LABEL "com.github.actions.icon"="moon"
LABEL "com.github.actions.color"="yellow"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
