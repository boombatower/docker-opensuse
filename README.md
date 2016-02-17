docker-opensuse
===============
openSUSE docker base image that is automatically rebuilt weekly to include all updates and thus avoid unnecessary bloat and build times in child images.

versions
--------
As new non-rolling versions are released they will be placed in the `lastest` tag in the Docker repository in addition to a new permentant tag created for the new release.

tags
----
Currently provided tags:

- tumbleweed
- latest (42.1)
- 42.1 or leap
- 13.2 or harlequin
- 13.1 or bottle

usage
-----
If you always want the latest openSUSE version then either reference the `latest` tag or no tag which implies `latest`.

    FROM boombatower/opensuse

Otherwise, a specific version (>= 13.1) can be referenced using the version as a tag.

    FROM boombatower/opensuse:13.2

The rolling release, Tumbleweed, can also be utilized for the latest stable software updates beyond static releases.

    FROM boombatower/opensuse:tumbleweed

Following the [recommendation of the official image creators](https://news.opensuse.org/2014/08/07/official-docker-containers/) `zypper refresh` was invoked with the option to import gpg keys so further `zypper` commands, such as package installation, should work nicely.

docker registry
---------------
The Docker registry repository can be found at https://registry.hub.docker.com/u/boombatower/opensuse.
