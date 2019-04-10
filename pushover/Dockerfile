FROM jnewland/git-and-stuff

LABEL "version"="1.0.0"
LABEL "repository"="https://github.com/maddox/actions"
LABEL "maintainer"="maddox <jon@jonmaddox.com>"

LABEL "com.github.actions.name"="Pushover Notification"
LABEL "com.github.actions.description"="Send a push notification."
LABEL "com.github.actions.icon"="send"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
