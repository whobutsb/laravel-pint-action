FROM composer:latest

LABEL "com.github.actions.name"="Laravel Ping"
LABEL "com.github.actions.description"="A Github action to clean your project"
# LABEL "com.github.actions.icon"="check-circle"
# LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/whobutsb/laravel-pint-action"
LABEL "homepage"="https://github.com/whobutsb/laravel-pint-action"
LABEL "maintainer"="Steve Barbera <me@stevebarbera.com>"

ADD entry.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
