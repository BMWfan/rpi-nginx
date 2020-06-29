# NGINX on Raspberry Pi / ARM

### Supported tags and respective `Dockerfile` links
-	[`alpine` (*Dockerfile*)](https://github.com/Tob1asDocker/rpi-nginx/blob/master/alpine.armhf.Dockerfile) ([current Version: 1.18](https://pkgs.alpinelinux.org/package/v3.12/main/armhf/nginx) on AlpineLinux)
-	[`1.14`, `latest` (*Dockerfile*)](https://github.com/Tob1asDocker/rpi-nginx/blob/master/buster.armhf.1_14.Dockerfile) (on Debian 10 Buster)

### What is Nginx?
Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage. It is licensed under the 2-clause BSD-like license and it runs on Linux, BSD variants, Mac OS X, Solaris, AIX, HP-UX, as well as on other *nix flavors. It also has a proof of concept port for Microsoft Windows.
> [wikipedia.org/wiki/Nginx](https://en.wikipedia.org/wiki/Nginx) and [Nginx.org](http://nginx.org/en/)

![logo](https://raw.githubusercontent.com/docker-library/docs/master/nginx/logo.png)

### About these images:
* based on official Images: [arm32v7/debian](https://hub.docker.com/r/arm32v7/debian/) and [arm32v7/alpine](https://hub.docker.com/r/arm32v7/alpine/).
* build on Docker Hub with Autobuild, for example and more details see in this [repository](https://github.com/Tob1asDocker/dockerhubhooksexample).
* **Information: Thanks for over 5M pulls :-) But since some time there are official NGINX ARM-Images available! I recommend to use them.** See official [NGINX](https://hub.docker.com/_/nginx)-Image for supported architectures ([arm32v5/nginx](https://hub.docker.com/r/arm32v5/nginx/), [arm32v6/nginx](https://hub.docker.com/r/arm32v6/nginx/), [arm32v7/nginx](https://hub.docker.com/r/arm32v7/nginx/), [arm64v8/nginx](https://hub.docker.com/r/arm64v8/nginx/)). 

### How to use these images:

* ``` $ docker pull tobi312/rpi-nginx ```
* Optional: ``` $ mkdir -p /home/pi/{.ssl,html} && mkdir -p /home/pi/.config/nginx && touch /home/pi/.config/nginx/default.conf ``` and edit [default.conf](https://github.com/Tob1asDocker/rpi-nginx/blob/master/default.conf)
* Optional (SSL): 
	* ``` $ openssl req -x509 -newkey rsa:4086 -subj "/C=no/ST=none/L=none/O=none/CN=localhost" -keyout "ssl.key" -out "ssl.crt" -days 3650 -nodes -sha256 ```
	* ``` $ mv ssl.* /home/pi/.ssl/ ```
* ``` $ docker run --name nginx -d -p 80:80 -p 443:443 -v /home/pi/.ssl:/etc/nginx/ssl:ro -v /home/pi/.config/nginx:/etc/nginx/conf.d:ro -v /home/pi/html:/var/www/html tobi312/rpi-nginx ```  

### You need PHP (PHP-FPM)?, see here: 
* [DockerHub](https://hub.docker.com/r/tobi312/php/)
* [GitHub](https://github.com/Tob1asDocker/php)

### You need Alpine with NGINX and PHP7 in a single image?, see here:
* [DockerHub](https://hub.docker.com/r/tobi312/alpine-nginx-php/)
* [GitHub](https://github.com/Tob1asDocker/alpine-nginx-php)

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-nginx/)
* [GitHub](https://github.com/Tob1asDocker/rpi-nginx)
