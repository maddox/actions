FROM jnewland/git-and-stuff

LABEL "version"="1.0.1"
LABEL "repository"="https://github.com/maddox/actions"
LABEL "maintainer"="maddox <jon@jonmaddox.com>"

LABEL "com.github.actions.name"="Home Assistant Command"
LABEL "com.github.actions.description"="Control your home via Home Assistant."
LABEL "com.github.actions.icon"="house"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
