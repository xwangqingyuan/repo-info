<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.5`](#rabbitmq365)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.5-management`](#rabbitmq365-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)

## `rabbitmq:3.6.5`

```console
$ docker pull rabbitmq@sha256:295cae29da42a8e87a6864c962d30a08daa085fc05936fe10c2c0df4f59c6d78
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86587063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0463354ada4df3f67113a0b8492bfa32f0defe56863a2929248d73c4b53a71ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 22:43:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 01 Aug 2016 22:43:56 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 22:45:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 22:45:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Mon, 01 Aug 2016 22:45:37 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Mon, 01 Aug 2016 22:46:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 22:46:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 01 Aug 2016 22:47:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 01 Aug 2016 22:47:18 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 05 Aug 2016 21:43:59 GMT
ENV RABBITMQ_VERSION=3.6.5
# Fri, 05 Aug 2016 21:44:00 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Fri, 05 Aug 2016 21:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 21:45:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Aug 2016 21:45:06 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Fri, 05 Aug 2016 21:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 05 Aug 2016 21:45:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 05 Aug 2016 21:45:11 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 22 Aug 2016 21:37:41 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/
# Mon, 22 Aug 2016 21:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 21:37:44 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 21:37:46 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 22 Aug 2016 21:37:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ef785a95cf3941fdf252ef2d30a59f0ca1c9066d25e98a5edff5a35d01ab79`  
		Last Modified: Tue, 02 Aug 2016 00:49:05 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6896a242b284c25739e39c650e1cde1657bfee1e128ece90818c387cd73f3f6`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 1.2 MB (1216557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c56b8b7d6b9f4164b5afb041bd6355d19cab86829ad2d494bb3789e79c9924c`  
		Last Modified: Tue, 02 Aug 2016 00:49:04 GMT  
		Size: 2.5 KB (2509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d625e5cf0d72f988b2a719087235db3c76d1b66f84d4f1ca78c15210dd3a49`  
		Last Modified: Tue, 02 Aug 2016 00:49:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad313f796b8ad51b7f5eeec212621304e2eb278b4ef390b7193dedad4be23c3`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 27.7 MB (27721420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82526de14adc2a874fe8f41934ead814f87f21b77ef2f8494c45f3b86e98e34d`  
		Last Modified: Tue, 02 Aug 2016 00:49:00 GMT  
		Size: 5.3 KB (5350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47f600cb3bbcbb56d06affe67c644d34cbdb6a3d8dcb818ef1abd753b24e4ea`  
		Last Modified: Tue, 02 Aug 2016 00:49:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23212953d7a89ecc56516eaf1aaa6b60cd8ecf17db59b7fa1fc2b2876b678bf0`  
		Last Modified: Fri, 05 Aug 2016 21:45:34 GMT  
		Size: 6.3 MB (6265403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6be077d21c9775d2d3a309cc41a1b38451545b10d5d5f9e5cf4d6e8560b7c`  
		Last Modified: Fri, 05 Aug 2016 21:45:32 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ee2537fe4dc5bee6f64df5d14d51b561e4aa40bdc699b475b8cc6ba58905d`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 2.3 KB (2297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6960c81ccb572d280ce1012f7ba6463ffeca94d6841529060c9899469e86a3`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fef2b1c5bbdb8049f03afda58cd64a83ecac6c9f4ab600819e420453d73e9`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f15367134347b9b51646cdadb28c378a4a96480160c67b0c294eb5bf7d6abf`  
		Last Modified: Mon, 22 Aug 2016 21:38:06 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d592fb4e1acf61b78d63a5d471044e499733ec1b962d1a528e33aeb8a29f810`  
		Last Modified: Mon, 22 Aug 2016 21:38:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:295cae29da42a8e87a6864c962d30a08daa085fc05936fe10c2c0df4f59c6d78
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86587063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0463354ada4df3f67113a0b8492bfa32f0defe56863a2929248d73c4b53a71ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 22:43:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 01 Aug 2016 22:43:56 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 22:45:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 22:45:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Mon, 01 Aug 2016 22:45:37 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Mon, 01 Aug 2016 22:46:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 22:46:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 01 Aug 2016 22:47:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 01 Aug 2016 22:47:18 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 05 Aug 2016 21:43:59 GMT
ENV RABBITMQ_VERSION=3.6.5
# Fri, 05 Aug 2016 21:44:00 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Fri, 05 Aug 2016 21:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 21:45:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Aug 2016 21:45:06 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Fri, 05 Aug 2016 21:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 05 Aug 2016 21:45:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 05 Aug 2016 21:45:11 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 22 Aug 2016 21:37:41 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/
# Mon, 22 Aug 2016 21:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 21:37:44 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 21:37:46 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 22 Aug 2016 21:37:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ef785a95cf3941fdf252ef2d30a59f0ca1c9066d25e98a5edff5a35d01ab79`  
		Last Modified: Tue, 02 Aug 2016 00:49:05 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6896a242b284c25739e39c650e1cde1657bfee1e128ece90818c387cd73f3f6`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 1.2 MB (1216557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c56b8b7d6b9f4164b5afb041bd6355d19cab86829ad2d494bb3789e79c9924c`  
		Last Modified: Tue, 02 Aug 2016 00:49:04 GMT  
		Size: 2.5 KB (2509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d625e5cf0d72f988b2a719087235db3c76d1b66f84d4f1ca78c15210dd3a49`  
		Last Modified: Tue, 02 Aug 2016 00:49:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad313f796b8ad51b7f5eeec212621304e2eb278b4ef390b7193dedad4be23c3`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 27.7 MB (27721420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82526de14adc2a874fe8f41934ead814f87f21b77ef2f8494c45f3b86e98e34d`  
		Last Modified: Tue, 02 Aug 2016 00:49:00 GMT  
		Size: 5.3 KB (5350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47f600cb3bbcbb56d06affe67c644d34cbdb6a3d8dcb818ef1abd753b24e4ea`  
		Last Modified: Tue, 02 Aug 2016 00:49:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23212953d7a89ecc56516eaf1aaa6b60cd8ecf17db59b7fa1fc2b2876b678bf0`  
		Last Modified: Fri, 05 Aug 2016 21:45:34 GMT  
		Size: 6.3 MB (6265403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6be077d21c9775d2d3a309cc41a1b38451545b10d5d5f9e5cf4d6e8560b7c`  
		Last Modified: Fri, 05 Aug 2016 21:45:32 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ee2537fe4dc5bee6f64df5d14d51b561e4aa40bdc699b475b8cc6ba58905d`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 2.3 KB (2297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6960c81ccb572d280ce1012f7ba6463ffeca94d6841529060c9899469e86a3`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fef2b1c5bbdb8049f03afda58cd64a83ecac6c9f4ab600819e420453d73e9`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f15367134347b9b51646cdadb28c378a4a96480160c67b0c294eb5bf7d6abf`  
		Last Modified: Mon, 22 Aug 2016 21:38:06 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d592fb4e1acf61b78d63a5d471044e499733ec1b962d1a528e33aeb8a29f810`  
		Last Modified: Mon, 22 Aug 2016 21:38:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:295cae29da42a8e87a6864c962d30a08daa085fc05936fe10c2c0df4f59c6d78
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86587063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0463354ada4df3f67113a0b8492bfa32f0defe56863a2929248d73c4b53a71ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 22:43:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 01 Aug 2016 22:43:56 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 22:45:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 22:45:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Mon, 01 Aug 2016 22:45:37 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Mon, 01 Aug 2016 22:46:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 22:46:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 01 Aug 2016 22:47:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 01 Aug 2016 22:47:18 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 05 Aug 2016 21:43:59 GMT
ENV RABBITMQ_VERSION=3.6.5
# Fri, 05 Aug 2016 21:44:00 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Fri, 05 Aug 2016 21:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 21:45:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Aug 2016 21:45:06 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Fri, 05 Aug 2016 21:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 05 Aug 2016 21:45:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 05 Aug 2016 21:45:11 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 22 Aug 2016 21:37:41 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/
# Mon, 22 Aug 2016 21:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 21:37:44 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 21:37:46 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 22 Aug 2016 21:37:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ef785a95cf3941fdf252ef2d30a59f0ca1c9066d25e98a5edff5a35d01ab79`  
		Last Modified: Tue, 02 Aug 2016 00:49:05 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6896a242b284c25739e39c650e1cde1657bfee1e128ece90818c387cd73f3f6`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 1.2 MB (1216557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c56b8b7d6b9f4164b5afb041bd6355d19cab86829ad2d494bb3789e79c9924c`  
		Last Modified: Tue, 02 Aug 2016 00:49:04 GMT  
		Size: 2.5 KB (2509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d625e5cf0d72f988b2a719087235db3c76d1b66f84d4f1ca78c15210dd3a49`  
		Last Modified: Tue, 02 Aug 2016 00:49:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad313f796b8ad51b7f5eeec212621304e2eb278b4ef390b7193dedad4be23c3`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 27.7 MB (27721420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82526de14adc2a874fe8f41934ead814f87f21b77ef2f8494c45f3b86e98e34d`  
		Last Modified: Tue, 02 Aug 2016 00:49:00 GMT  
		Size: 5.3 KB (5350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47f600cb3bbcbb56d06affe67c644d34cbdb6a3d8dcb818ef1abd753b24e4ea`  
		Last Modified: Tue, 02 Aug 2016 00:49:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23212953d7a89ecc56516eaf1aaa6b60cd8ecf17db59b7fa1fc2b2876b678bf0`  
		Last Modified: Fri, 05 Aug 2016 21:45:34 GMT  
		Size: 6.3 MB (6265403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6be077d21c9775d2d3a309cc41a1b38451545b10d5d5f9e5cf4d6e8560b7c`  
		Last Modified: Fri, 05 Aug 2016 21:45:32 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ee2537fe4dc5bee6f64df5d14d51b561e4aa40bdc699b475b8cc6ba58905d`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 2.3 KB (2297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6960c81ccb572d280ce1012f7ba6463ffeca94d6841529060c9899469e86a3`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fef2b1c5bbdb8049f03afda58cd64a83ecac6c9f4ab600819e420453d73e9`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f15367134347b9b51646cdadb28c378a4a96480160c67b0c294eb5bf7d6abf`  
		Last Modified: Mon, 22 Aug 2016 21:38:06 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d592fb4e1acf61b78d63a5d471044e499733ec1b962d1a528e33aeb8a29f810`  
		Last Modified: Mon, 22 Aug 2016 21:38:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:295cae29da42a8e87a6864c962d30a08daa085fc05936fe10c2c0df4f59c6d78
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86587063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0463354ada4df3f67113a0b8492bfa32f0defe56863a2929248d73c4b53a71ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 22:43:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 01 Aug 2016 22:43:56 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 22:45:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 22:45:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Mon, 01 Aug 2016 22:45:37 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Mon, 01 Aug 2016 22:46:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 22:46:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 01 Aug 2016 22:47:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 01 Aug 2016 22:47:18 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 05 Aug 2016 21:43:59 GMT
ENV RABBITMQ_VERSION=3.6.5
# Fri, 05 Aug 2016 21:44:00 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Fri, 05 Aug 2016 21:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 21:45:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Aug 2016 21:45:06 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Fri, 05 Aug 2016 21:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 05 Aug 2016 21:45:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 05 Aug 2016 21:45:11 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 22 Aug 2016 21:37:41 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/
# Mon, 22 Aug 2016 21:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 21:37:44 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 21:37:46 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 22 Aug 2016 21:37:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ef785a95cf3941fdf252ef2d30a59f0ca1c9066d25e98a5edff5a35d01ab79`  
		Last Modified: Tue, 02 Aug 2016 00:49:05 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6896a242b284c25739e39c650e1cde1657bfee1e128ece90818c387cd73f3f6`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 1.2 MB (1216557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c56b8b7d6b9f4164b5afb041bd6355d19cab86829ad2d494bb3789e79c9924c`  
		Last Modified: Tue, 02 Aug 2016 00:49:04 GMT  
		Size: 2.5 KB (2509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d625e5cf0d72f988b2a719087235db3c76d1b66f84d4f1ca78c15210dd3a49`  
		Last Modified: Tue, 02 Aug 2016 00:49:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad313f796b8ad51b7f5eeec212621304e2eb278b4ef390b7193dedad4be23c3`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 27.7 MB (27721420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82526de14adc2a874fe8f41934ead814f87f21b77ef2f8494c45f3b86e98e34d`  
		Last Modified: Tue, 02 Aug 2016 00:49:00 GMT  
		Size: 5.3 KB (5350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47f600cb3bbcbb56d06affe67c644d34cbdb6a3d8dcb818ef1abd753b24e4ea`  
		Last Modified: Tue, 02 Aug 2016 00:49:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23212953d7a89ecc56516eaf1aaa6b60cd8ecf17db59b7fa1fc2b2876b678bf0`  
		Last Modified: Fri, 05 Aug 2016 21:45:34 GMT  
		Size: 6.3 MB (6265403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6be077d21c9775d2d3a309cc41a1b38451545b10d5d5f9e5cf4d6e8560b7c`  
		Last Modified: Fri, 05 Aug 2016 21:45:32 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ee2537fe4dc5bee6f64df5d14d51b561e4aa40bdc699b475b8cc6ba58905d`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 2.3 KB (2297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6960c81ccb572d280ce1012f7ba6463ffeca94d6841529060c9899469e86a3`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fef2b1c5bbdb8049f03afda58cd64a83ecac6c9f4ab600819e420453d73e9`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f15367134347b9b51646cdadb28c378a4a96480160c67b0c294eb5bf7d6abf`  
		Last Modified: Mon, 22 Aug 2016 21:38:06 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d592fb4e1acf61b78d63a5d471044e499733ec1b962d1a528e33aeb8a29f810`  
		Last Modified: Mon, 22 Aug 2016 21:38:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.5-management`

```console
$ docker pull rabbitmq@sha256:1800254e1f10770adaed36225062f081633298c0f5025bab99c18fd60101c677
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.5-management` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86587251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb479f313c9370583e6e5e40128f9b0a02dc77e7d61cad0236bbbee0a6a44e53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 22:43:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 01 Aug 2016 22:43:56 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 22:45:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 22:45:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Mon, 01 Aug 2016 22:45:37 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Mon, 01 Aug 2016 22:46:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 22:46:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 01 Aug 2016 22:47:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 01 Aug 2016 22:47:18 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 05 Aug 2016 21:43:59 GMT
ENV RABBITMQ_VERSION=3.6.5
# Fri, 05 Aug 2016 21:44:00 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Fri, 05 Aug 2016 21:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 21:45:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Aug 2016 21:45:06 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Fri, 05 Aug 2016 21:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 05 Aug 2016 21:45:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 05 Aug 2016 21:45:11 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 22 Aug 2016 21:37:41 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/
# Mon, 22 Aug 2016 21:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 21:37:44 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 21:37:46 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 22 Aug 2016 21:37:47 GMT
CMD ["rabbitmq-server"]
# Mon, 22 Aug 2016 21:37:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 22 Aug 2016 21:37:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ef785a95cf3941fdf252ef2d30a59f0ca1c9066d25e98a5edff5a35d01ab79`  
		Last Modified: Tue, 02 Aug 2016 00:49:05 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6896a242b284c25739e39c650e1cde1657bfee1e128ece90818c387cd73f3f6`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 1.2 MB (1216557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c56b8b7d6b9f4164b5afb041bd6355d19cab86829ad2d494bb3789e79c9924c`  
		Last Modified: Tue, 02 Aug 2016 00:49:04 GMT  
		Size: 2.5 KB (2509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d625e5cf0d72f988b2a719087235db3c76d1b66f84d4f1ca78c15210dd3a49`  
		Last Modified: Tue, 02 Aug 2016 00:49:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad313f796b8ad51b7f5eeec212621304e2eb278b4ef390b7193dedad4be23c3`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 27.7 MB (27721420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82526de14adc2a874fe8f41934ead814f87f21b77ef2f8494c45f3b86e98e34d`  
		Last Modified: Tue, 02 Aug 2016 00:49:00 GMT  
		Size: 5.3 KB (5350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47f600cb3bbcbb56d06affe67c644d34cbdb6a3d8dcb818ef1abd753b24e4ea`  
		Last Modified: Tue, 02 Aug 2016 00:49:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23212953d7a89ecc56516eaf1aaa6b60cd8ecf17db59b7fa1fc2b2876b678bf0`  
		Last Modified: Fri, 05 Aug 2016 21:45:34 GMT  
		Size: 6.3 MB (6265403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6be077d21c9775d2d3a309cc41a1b38451545b10d5d5f9e5cf4d6e8560b7c`  
		Last Modified: Fri, 05 Aug 2016 21:45:32 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ee2537fe4dc5bee6f64df5d14d51b561e4aa40bdc699b475b8cc6ba58905d`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 2.3 KB (2297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6960c81ccb572d280ce1012f7ba6463ffeca94d6841529060c9899469e86a3`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fef2b1c5bbdb8049f03afda58cd64a83ecac6c9f4ab600819e420453d73e9`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f15367134347b9b51646cdadb28c378a4a96480160c67b0c294eb5bf7d6abf`  
		Last Modified: Mon, 22 Aug 2016 21:38:06 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d592fb4e1acf61b78d63a5d471044e499733ec1b962d1a528e33aeb8a29f810`  
		Last Modified: Mon, 22 Aug 2016 21:38:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfec80c9d25cf0fd0ed8a11ce4f90bb2f59dfa79fd86000e15f581c3aa7ddd1`  
		Last Modified: Mon, 22 Aug 2016 21:38:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:1800254e1f10770adaed36225062f081633298c0f5025bab99c18fd60101c677
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86587251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb479f313c9370583e6e5e40128f9b0a02dc77e7d61cad0236bbbee0a6a44e53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 22:43:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 01 Aug 2016 22:43:56 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 22:45:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 22:45:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Mon, 01 Aug 2016 22:45:37 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Mon, 01 Aug 2016 22:46:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 22:46:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 01 Aug 2016 22:47:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 01 Aug 2016 22:47:18 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 05 Aug 2016 21:43:59 GMT
ENV RABBITMQ_VERSION=3.6.5
# Fri, 05 Aug 2016 21:44:00 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Fri, 05 Aug 2016 21:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 21:45:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Aug 2016 21:45:06 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Fri, 05 Aug 2016 21:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 05 Aug 2016 21:45:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 05 Aug 2016 21:45:11 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 22 Aug 2016 21:37:41 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/
# Mon, 22 Aug 2016 21:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 21:37:44 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 21:37:46 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 22 Aug 2016 21:37:47 GMT
CMD ["rabbitmq-server"]
# Mon, 22 Aug 2016 21:37:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 22 Aug 2016 21:37:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ef785a95cf3941fdf252ef2d30a59f0ca1c9066d25e98a5edff5a35d01ab79`  
		Last Modified: Tue, 02 Aug 2016 00:49:05 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6896a242b284c25739e39c650e1cde1657bfee1e128ece90818c387cd73f3f6`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 1.2 MB (1216557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c56b8b7d6b9f4164b5afb041bd6355d19cab86829ad2d494bb3789e79c9924c`  
		Last Modified: Tue, 02 Aug 2016 00:49:04 GMT  
		Size: 2.5 KB (2509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d625e5cf0d72f988b2a719087235db3c76d1b66f84d4f1ca78c15210dd3a49`  
		Last Modified: Tue, 02 Aug 2016 00:49:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad313f796b8ad51b7f5eeec212621304e2eb278b4ef390b7193dedad4be23c3`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 27.7 MB (27721420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82526de14adc2a874fe8f41934ead814f87f21b77ef2f8494c45f3b86e98e34d`  
		Last Modified: Tue, 02 Aug 2016 00:49:00 GMT  
		Size: 5.3 KB (5350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47f600cb3bbcbb56d06affe67c644d34cbdb6a3d8dcb818ef1abd753b24e4ea`  
		Last Modified: Tue, 02 Aug 2016 00:49:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23212953d7a89ecc56516eaf1aaa6b60cd8ecf17db59b7fa1fc2b2876b678bf0`  
		Last Modified: Fri, 05 Aug 2016 21:45:34 GMT  
		Size: 6.3 MB (6265403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6be077d21c9775d2d3a309cc41a1b38451545b10d5d5f9e5cf4d6e8560b7c`  
		Last Modified: Fri, 05 Aug 2016 21:45:32 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ee2537fe4dc5bee6f64df5d14d51b561e4aa40bdc699b475b8cc6ba58905d`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 2.3 KB (2297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6960c81ccb572d280ce1012f7ba6463ffeca94d6841529060c9899469e86a3`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fef2b1c5bbdb8049f03afda58cd64a83ecac6c9f4ab600819e420453d73e9`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f15367134347b9b51646cdadb28c378a4a96480160c67b0c294eb5bf7d6abf`  
		Last Modified: Mon, 22 Aug 2016 21:38:06 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d592fb4e1acf61b78d63a5d471044e499733ec1b962d1a528e33aeb8a29f810`  
		Last Modified: Mon, 22 Aug 2016 21:38:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfec80c9d25cf0fd0ed8a11ce4f90bb2f59dfa79fd86000e15f581c3aa7ddd1`  
		Last Modified: Mon, 22 Aug 2016 21:38:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:1800254e1f10770adaed36225062f081633298c0f5025bab99c18fd60101c677
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86587251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb479f313c9370583e6e5e40128f9b0a02dc77e7d61cad0236bbbee0a6a44e53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 22:43:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 01 Aug 2016 22:43:56 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 22:45:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 22:45:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Mon, 01 Aug 2016 22:45:37 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Mon, 01 Aug 2016 22:46:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 22:46:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 01 Aug 2016 22:47:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 01 Aug 2016 22:47:18 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 05 Aug 2016 21:43:59 GMT
ENV RABBITMQ_VERSION=3.6.5
# Fri, 05 Aug 2016 21:44:00 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Fri, 05 Aug 2016 21:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 21:45:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Aug 2016 21:45:06 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Fri, 05 Aug 2016 21:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 05 Aug 2016 21:45:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 05 Aug 2016 21:45:11 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 22 Aug 2016 21:37:41 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/
# Mon, 22 Aug 2016 21:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 21:37:44 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 21:37:46 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 22 Aug 2016 21:37:47 GMT
CMD ["rabbitmq-server"]
# Mon, 22 Aug 2016 21:37:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 22 Aug 2016 21:37:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ef785a95cf3941fdf252ef2d30a59f0ca1c9066d25e98a5edff5a35d01ab79`  
		Last Modified: Tue, 02 Aug 2016 00:49:05 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6896a242b284c25739e39c650e1cde1657bfee1e128ece90818c387cd73f3f6`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 1.2 MB (1216557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c56b8b7d6b9f4164b5afb041bd6355d19cab86829ad2d494bb3789e79c9924c`  
		Last Modified: Tue, 02 Aug 2016 00:49:04 GMT  
		Size: 2.5 KB (2509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d625e5cf0d72f988b2a719087235db3c76d1b66f84d4f1ca78c15210dd3a49`  
		Last Modified: Tue, 02 Aug 2016 00:49:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad313f796b8ad51b7f5eeec212621304e2eb278b4ef390b7193dedad4be23c3`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 27.7 MB (27721420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82526de14adc2a874fe8f41934ead814f87f21b77ef2f8494c45f3b86e98e34d`  
		Last Modified: Tue, 02 Aug 2016 00:49:00 GMT  
		Size: 5.3 KB (5350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47f600cb3bbcbb56d06affe67c644d34cbdb6a3d8dcb818ef1abd753b24e4ea`  
		Last Modified: Tue, 02 Aug 2016 00:49:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23212953d7a89ecc56516eaf1aaa6b60cd8ecf17db59b7fa1fc2b2876b678bf0`  
		Last Modified: Fri, 05 Aug 2016 21:45:34 GMT  
		Size: 6.3 MB (6265403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6be077d21c9775d2d3a309cc41a1b38451545b10d5d5f9e5cf4d6e8560b7c`  
		Last Modified: Fri, 05 Aug 2016 21:45:32 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ee2537fe4dc5bee6f64df5d14d51b561e4aa40bdc699b475b8cc6ba58905d`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 2.3 KB (2297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6960c81ccb572d280ce1012f7ba6463ffeca94d6841529060c9899469e86a3`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fef2b1c5bbdb8049f03afda58cd64a83ecac6c9f4ab600819e420453d73e9`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f15367134347b9b51646cdadb28c378a4a96480160c67b0c294eb5bf7d6abf`  
		Last Modified: Mon, 22 Aug 2016 21:38:06 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d592fb4e1acf61b78d63a5d471044e499733ec1b962d1a528e33aeb8a29f810`  
		Last Modified: Mon, 22 Aug 2016 21:38:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfec80c9d25cf0fd0ed8a11ce4f90bb2f59dfa79fd86000e15f581c3aa7ddd1`  
		Last Modified: Mon, 22 Aug 2016 21:38:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:1800254e1f10770adaed36225062f081633298c0f5025bab99c18fd60101c677
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86587251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb479f313c9370583e6e5e40128f9b0a02dc77e7d61cad0236bbbee0a6a44e53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 22:43:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 01 Aug 2016 22:43:56 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 22:45:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 22:45:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Mon, 01 Aug 2016 22:45:37 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Mon, 01 Aug 2016 22:46:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 22:46:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 01 Aug 2016 22:47:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 01 Aug 2016 22:47:18 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 05 Aug 2016 21:43:59 GMT
ENV RABBITMQ_VERSION=3.6.5
# Fri, 05 Aug 2016 21:44:00 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.5-1
# Fri, 05 Aug 2016 21:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 21:45:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Aug 2016 21:45:06 GMT
RUN echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config
# Fri, 05 Aug 2016 21:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 05 Aug 2016 21:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 05 Aug 2016 21:45:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 05 Aug 2016 21:45:11 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 22 Aug 2016 21:37:41 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/
# Mon, 22 Aug 2016 21:37:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 21:37:44 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 21:37:46 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 22 Aug 2016 21:37:47 GMT
CMD ["rabbitmq-server"]
# Mon, 22 Aug 2016 21:37:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 22 Aug 2016 21:37:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ef785a95cf3941fdf252ef2d30a59f0ca1c9066d25e98a5edff5a35d01ab79`  
		Last Modified: Tue, 02 Aug 2016 00:49:05 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6896a242b284c25739e39c650e1cde1657bfee1e128ece90818c387cd73f3f6`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 1.2 MB (1216557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c56b8b7d6b9f4164b5afb041bd6355d19cab86829ad2d494bb3789e79c9924c`  
		Last Modified: Tue, 02 Aug 2016 00:49:04 GMT  
		Size: 2.5 KB (2509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d625e5cf0d72f988b2a719087235db3c76d1b66f84d4f1ca78c15210dd3a49`  
		Last Modified: Tue, 02 Aug 2016 00:49:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad313f796b8ad51b7f5eeec212621304e2eb278b4ef390b7193dedad4be23c3`  
		Last Modified: Tue, 02 Aug 2016 00:49:06 GMT  
		Size: 27.7 MB (27721420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82526de14adc2a874fe8f41934ead814f87f21b77ef2f8494c45f3b86e98e34d`  
		Last Modified: Tue, 02 Aug 2016 00:49:00 GMT  
		Size: 5.3 KB (5350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47f600cb3bbcbb56d06affe67c644d34cbdb6a3d8dcb818ef1abd753b24e4ea`  
		Last Modified: Tue, 02 Aug 2016 00:49:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23212953d7a89ecc56516eaf1aaa6b60cd8ecf17db59b7fa1fc2b2876b678bf0`  
		Last Modified: Fri, 05 Aug 2016 21:45:34 GMT  
		Size: 6.3 MB (6265403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6be077d21c9775d2d3a309cc41a1b38451545b10d5d5f9e5cf4d6e8560b7c`  
		Last Modified: Fri, 05 Aug 2016 21:45:32 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ee2537fe4dc5bee6f64df5d14d51b561e4aa40bdc699b475b8cc6ba58905d`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 2.3 KB (2297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6960c81ccb572d280ce1012f7ba6463ffeca94d6841529060c9899469e86a3`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fef2b1c5bbdb8049f03afda58cd64a83ecac6c9f4ab600819e420453d73e9`  
		Last Modified: Fri, 05 Aug 2016 21:45:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f15367134347b9b51646cdadb28c378a4a96480160c67b0c294eb5bf7d6abf`  
		Last Modified: Mon, 22 Aug 2016 21:38:06 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d592fb4e1acf61b78d63a5d471044e499733ec1b962d1a528e33aeb8a29f810`  
		Last Modified: Mon, 22 Aug 2016 21:38:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfec80c9d25cf0fd0ed8a11ce4f90bb2f59dfa79fd86000e15f581c3aa7ddd1`  
		Last Modified: Mon, 22 Aug 2016 21:38:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
