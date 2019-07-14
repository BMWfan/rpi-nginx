FROM balenalib/rpi-raspbian:buster

LABEL org.opencontainers.image.authors="Tobias Hargesheimer <docker@ison.ws>" \
	org.opencontainers.image.title="NGINX" \
	org.opencontainers.image.description="Debian 10 Buster with NGINX on arm arch" \
	org.opencontainers.image.licenses="Apache-2.0" \
	org.opencontainers.image.url="https://hub.docker.com/r/tobi312/rpi-nginx/" \
	org.opencontainers.image.source="https://github.com/Tob1asDocker/rpi-nginx"

ARG CROSS_BUILD_START=":"
ARG CROSS_BUILD_END=":"

RUN [ ${CROSS_BUILD_START} ]

ENV NGINX_VERSION 1.14.*

RUN apt-get update \
	&& apt-get install -y ca-certificates \
	&& apt-get install -y -t buster nginx=${NGINX_VERSION} \
	#&& rm /var/www/html/index.nginx-debian.html \
	&& rm -rf /var/lib/apt/lists/*

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log
	
# fix: *** stack smashing detected ***: nginx: worker process terminated / [alert] 9#9: worker process *process-id* exited on signal 6
#RUN sed -i "s/worker_processes auto;/worker_processes 1;/g" /etc/nginx/nginx.conf
	
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

RUN [ ${CROSS_BUILD_END} ]