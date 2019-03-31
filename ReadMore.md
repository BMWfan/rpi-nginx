# NGINX on Raspberry Pi / armhf - ReadMore

The Images based on "[balena.io Base-Images](https://www.balena.io/docs/reference/base-images/base-images/)".

These images are built with Docker Hub and made available there.

Here information about the building process with Hooks:
* https://docs.docker.com/docker-hub/builds/advanced/
* https://github.com/docker/hub-feedback/issues/1261#issuecomment-441126749
* https://stackoverflow.com/questions/54578066/how-to-build-a-docker-image-on-a-specific-architecture-with-docker-hub/54595564#54595564 !
* Example:  https://github.com/fluent/fluentd-docker-image/tree/master/v1.3/armhf/debian or https://github.com/rfgamaral/docker-gphotos-uploader


ToDo: set architecture (for [Issue-2](https://github.com/Tob1asDocker/rpi-nginx/issues/2)):
* (This currently does not work on Docker Hub, anyone got an idea? [Travis-CI](https://travis-ci.com/Tob1asDocker/rpi-nginx)?)
* https://docs.docker.com/engine/reference/commandline/manifest/
* https://github.com/hypriot/rpi-mysql/issues/11 and https://github.com/hypriot/rpi-mysql/commit/facccbb79c844356792832af83ff2239f6e08450
