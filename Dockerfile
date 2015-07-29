# http://docs.docker.com/reference/builder
# Updated base openSUSE tumbleweed image.
# - boombatower/opensuse:tumbleweed

FROM opensuse:tumbleweed
MAINTAINER Jimmy Berry <jimmy@boombatower.com>

# Update base software.
# No longer seems to work with simple `zypper update`.
RUN zypper -n --gpg-auto-import-keys refresh && \
    zypper -n dist-upgrade
