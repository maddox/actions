#!/bin/sh

set -e

SSH_PATH="/github/home/.ssh"

RUN mkdir "$SSH_PATH"
RUN chmod 700 "$SSH_PATH"
RUN touch "$SSH_PATH/known_hosts"
RUN chmod 600 "$SSH_PATH/known_hosts"


echo "$PRIVATE_KEY" > "$SSH_PATH/deploy_key"
echo "$PUBLIC_KEY" > "$SSH_PATH/deploy_key.pub"

chmod 600 "$SSH_PATH/deploy_key"
chmod 600 "$SSH_PATH/deploy_key.pub"

eval $(ssh-agent)
ssh-add "$SSH_PATH/deploy_key"

ssh-keyscan -t rsa $HOST >> "$SSH_PATH/known_hosts"

ssh -A -tt $USER@$HOST "$*"
