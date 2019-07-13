# NGINX on Raspberry Pi / armhf

### Supported tags and respective `Dockerfile` links
-	[`alpine` (*Dockerfile*)](https://github.com/TobiasH87Docker/rpi-nginx/blob/master/alpine.armhf.Dockerfile) ([current Version: 1.14](https://pkgs.alpinelinux.org/package/v3.9/main/armhf/nginx) on AlpineLinux)
-	[`1.14`, `latest` (*Dockerfile*)](https://github.com/TobiasH87Docker/rpi-nginx/blob/master/stretch.armhf.1_14.Dockerfile) (on Debian 9 Stretch)
-	[`1.10` (*Dockerfile*)](https://github.com/TobiasH87Docker/rpi-nginx/blob/master/stretch.armhf.1_10.Dockerfile) (on Debian 9 Stretch)

### What is Nginx?
Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage. It is licensed under the 2-clause BSD-like license and it runs on Linux, BSD variants, Mac OS X, Solaris, AIX, HP-UX, as well as on other *nix flavors. It also has a proof of concept port for Microsoft Windows.
> [wikipedia.org/wiki/Nginx](https://en.wikipedia.org/wiki/Nginx) and [Nginx.org](http://nginx.org/en/)

![logo](https://raw.githubusercontent.com/docker-library/docs/master/nginx/logo.png)

### About these images:
* based on *[balena.io Base-Images](https://www.balena.io/docs/reference/base-images/base-images/)*.
* build on Docker Hub with *[Advanced options for Autobuild](https://docs.docker.com/docker-hub/builds/advanced/)* inspired by *[https://stackoverflow.com/a/54595564](https://stackoverflow.com/questions/54578066/how-to-build-a-docker-image-on-a-specific-architecture-with-docker-hub/54595564#54595564)*.
* additional software/tools used: *[qemu-user-static from multiarch](https://github.com/multiarch/qemu-user-static)* and *[manifest-tool](https://github.com/estesp/manifest-tool)*. Thanks for the great things!

### How to use these images:

* ``` $ docker pull tobi312/rpi-nginx ```
* Optional: ``` $ mkdir -p /home/pi/{.ssl,html} && mkdir -p /home/pi/.config/nginx && touch /home/pi/.config/nginx/default.conf ``` and edit [default.conf](https://github.com/TobiasH87Docker/rpi-nginx/blob/master/default.conf)
* Optional (SSL): 
	* ``` $ openssl req -x509 -newkey rsa:4086 -subj "/C=/ST=/L=/O=/CN=localhost" -keyout "ssl.key" -out "ssl.crt" -days 3650 -nodes -sha256 ```
	* ``` $ mv ssl.* /home/pi/.ssl/ ```
* ``` $ docker run --name nginx -d -p 80:80 -p 443:443 --link some-php-fpm-container:phphost -v /home/pi/.ssl:/etc/nginx/ssl:ro -v /home/pi/.config/nginx:/etc/nginx/conf.d:ro -v /home/pi/html:/var/www/html tobi312/rpi-nginx ```  

### You need PHP (PHP-FPM)?, see here: 
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-php/)
* [GitHub](https://github.com/TobiasH87Docker/rpi-php)

### You need Alpine with NGINX and PHP7 in a single image?, see here:
* [DockerHub](https://hub.docker.com/r/tobi312/alpine-nginx-php/)
* [GitHub](https://github.com/Tob1asDocker/alpine-nginx-php)

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-nginx/)
* [GitHub](https://github.com/TobiasH87Docker/rpi-nginx)
