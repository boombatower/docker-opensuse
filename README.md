docker-opensuse
===============
openSUSE docker base image that is updated weekly to avoid unnecessary bloat and build times in child images.

versions
--------
13.1 is the only image being built, but future version will be supported. As new versions are releases they will be placed in the `lastest` tag in the Docker repository in addition to a new permentant tag created for the new release.

usage
-----

If you always want the latest openSUSE version then either reference the `latest` tag or no tag which implies `latest`.

    FROM boombatower/opensuse

Otherwise, a specific version (>= 13.1) can be referenced using the version as a tag.

    FROM boombatower/opensuse:13.1

Following the [recommendation of the official image creators](https://news.opensuse.org/2014/08/07/official-docker-containers/) `zypper` has been configured to automatically import repository gpg keys so new repositories can be added easily.

docker registry
---------------
The Docker registry repository can be found at https://registry.hub.docker.com/u/boombatower/opensuse.
