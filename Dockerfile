# http://docs.docker.com/reference/builder
# Base openSUSE 13.1 image (boombatower/opensuse).

FROM opensuse:13.1
MAINTAINER Jimmy Berry <jimmy@boombatower.com>

# Update base software.
RUN zypper -n --gpg-auto-import-keys refresh && \
    zypper -n update
