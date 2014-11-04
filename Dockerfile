# http://docs.docker.com/reference/builder
# Updated base openSUSE 13.2 image.
# - boombatower/opensuse:latest
# - boombatower/opensuse:13.2
# - boombatower/opensuse:harlequin

FROM opensuse:13.2
MAINTAINER Jimmy Berry <jimmy@boombatower.com>

# Update base software.
# No longer seems to work with simple `zypper update`.
RUN zypper -n --gpg-auto-import-keys refresh && \
    zypper -n dist-upgrade
