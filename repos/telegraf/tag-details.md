<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:0.12`](#telegraf012)
-	[`telegraf:0.12.0`](#telegraf0120)
-	[`telegraf:0.13`](#telegraf013)
-	[`telegraf:0.13.1`](#telegraf0131)
-	[`telegraf:latest`](#telegraflatest)
-	[`telegraf:0.13-alpine`](#telegraf013-alpine)
-	[`telegraf:0.13.1-alpine`](#telegraf0131-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:1.0.0-rc1`](#telegraf100-rc1)
-	[`telegraf:1.0.0-rc1-alpine`](#telegraf100-rc1-alpine)

## `telegraf:0.12`

```console
$ docker pull telegraf@sha256:d878a94e45a72353da666c4e3abe7a18e1f57be6a8e5a6ad43d0143bf9440bf0
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79400687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503a7c263ad1237cca56fefbc3d99a4ccdb9bc51bb4a8a196f013974db5c6975`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:58 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in / 
# Tue, 30 Aug 2016 17:47:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:01 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:29:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 23:29:47 GMT
ENV TELEGRAF_VERSION=0.12.0
# Tue, 30 Aug 2016 23:29:57 GMT
RUN wget -q https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf_$TELEGRAF_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     gpg --batch --verify telegraf_$TELEGRAF_VERSION-1_amd64.deb.asc telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     dpkg -i telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     rm -f telegraf_$TELEGRAF_VERSION-1_amd64.deb*
# Tue, 30 Aug 2016 23:29:58 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:29:58 GMT
COPY file:b1f698df13c6ba0d317a807c67e49549da5cded27353d8823ce643ef2059b2bf in /entrypoint.sh 
# Tue, 30 Aug 2016 23:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:29:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623aaf4140d62e6096882bf6762ea6b4baeea37eb933471f87a67fdff142b3`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9274a13e26ac0f1c49ec236e6a74098e54f9622a12636f6dac9ba6b5dac33b2a`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab185c837bea98a42b032bdf4621b6d8eb9ee617d1405f4110f38865ffc334e2`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55122420e5f51a86b316465bd5217ffc5a49292282b6d409753682c526cd82ff`  
		Last Modified: Tue, 30 Aug 2016 23:30:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780fea09bec239cbbbe6ec9230d4e2de137e371a7f77617d0b0c4d74e184a8e6`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 4.6 MB (4599342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e44502973fc89bfb7573c44ec7d4a2202d8a27b98d0bcab3491d0f351d80b`  
		Last Modified: Tue, 30 Aug 2016 23:30:31 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d58db7a6f9ab13dfd3df67d494b04e0580c742f75db9ef94fbe04b7f4af06d`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 9.0 MB (9020555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e317c3d7cee0ddbd90cae2c9bb768f9094b3bb24afd64deaec596c9b3ea633df`  
		Last Modified: Tue, 30 Aug 2016 23:30:31 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.12.0`

```console
$ docker pull telegraf@sha256:d878a94e45a72353da666c4e3abe7a18e1f57be6a8e5a6ad43d0143bf9440bf0
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.12.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79400687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503a7c263ad1237cca56fefbc3d99a4ccdb9bc51bb4a8a196f013974db5c6975`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:58 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in / 
# Tue, 30 Aug 2016 17:47:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:01 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:29:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 23:29:47 GMT
ENV TELEGRAF_VERSION=0.12.0
# Tue, 30 Aug 2016 23:29:57 GMT
RUN wget -q https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf_$TELEGRAF_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     gpg --batch --verify telegraf_$TELEGRAF_VERSION-1_amd64.deb.asc telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     dpkg -i telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     rm -f telegraf_$TELEGRAF_VERSION-1_amd64.deb*
# Tue, 30 Aug 2016 23:29:58 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:29:58 GMT
COPY file:b1f698df13c6ba0d317a807c67e49549da5cded27353d8823ce643ef2059b2bf in /entrypoint.sh 
# Tue, 30 Aug 2016 23:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:29:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623aaf4140d62e6096882bf6762ea6b4baeea37eb933471f87a67fdff142b3`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9274a13e26ac0f1c49ec236e6a74098e54f9622a12636f6dac9ba6b5dac33b2a`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab185c837bea98a42b032bdf4621b6d8eb9ee617d1405f4110f38865ffc334e2`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55122420e5f51a86b316465bd5217ffc5a49292282b6d409753682c526cd82ff`  
		Last Modified: Tue, 30 Aug 2016 23:30:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780fea09bec239cbbbe6ec9230d4e2de137e371a7f77617d0b0c4d74e184a8e6`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 4.6 MB (4599342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e44502973fc89bfb7573c44ec7d4a2202d8a27b98d0bcab3491d0f351d80b`  
		Last Modified: Tue, 30 Aug 2016 23:30:31 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d58db7a6f9ab13dfd3df67d494b04e0580c742f75db9ef94fbe04b7f4af06d`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 9.0 MB (9020555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e317c3d7cee0ddbd90cae2c9bb768f9094b3bb24afd64deaec596c9b3ea633df`  
		Last Modified: Tue, 30 Aug 2016 23:30:31 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.13`

```console
$ docker pull telegraf@sha256:ee55286799ae09348c0f284633cb39a542250fd12b470dea0b813067e7a017ca
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.13` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79614610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10f0f96230423362ec529d94e9f91937e391b63540516ba71a1efa21ca9a824`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:58 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in / 
# Tue, 30 Aug 2016 17:47:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:01 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:29:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 23:29:59 GMT
ENV TELEGRAF_VERSION=0.13.1
# Tue, 30 Aug 2016 23:30:01 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 23:30:01 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:30:02 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 30 Aug 2016 23:30:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:30:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623aaf4140d62e6096882bf6762ea6b4baeea37eb933471f87a67fdff142b3`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9274a13e26ac0f1c49ec236e6a74098e54f9622a12636f6dac9ba6b5dac33b2a`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab185c837bea98a42b032bdf4621b6d8eb9ee617d1405f4110f38865ffc334e2`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55122420e5f51a86b316465bd5217ffc5a49292282b6d409753682c526cd82ff`  
		Last Modified: Tue, 30 Aug 2016 23:30:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780fea09bec239cbbbe6ec9230d4e2de137e371a7f77617d0b0c4d74e184a8e6`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 4.6 MB (4599342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e44502973fc89bfb7573c44ec7d4a2202d8a27b98d0bcab3491d0f351d80b`  
		Last Modified: Tue, 30 Aug 2016 23:30:31 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701e3fbf7d420974e5ce0ebbbfab869d5dcdf3789db556e4697f89a0d4e42fd2`  
		Last Modified: Tue, 30 Aug 2016 23:31:31 GMT  
		Size: 9.2 MB (9234534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8917854bb5b76518e92fb390f878f811b15bfb0a8897ed3bdfdc010ba46b639`  
		Last Modified: Tue, 30 Aug 2016 23:31:28 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.13.1`

```console
$ docker pull telegraf@sha256:ee55286799ae09348c0f284633cb39a542250fd12b470dea0b813067e7a017ca
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.13.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79614610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10f0f96230423362ec529d94e9f91937e391b63540516ba71a1efa21ca9a824`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:58 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in / 
# Tue, 30 Aug 2016 17:47:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:01 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:29:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 23:29:59 GMT
ENV TELEGRAF_VERSION=0.13.1
# Tue, 30 Aug 2016 23:30:01 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 23:30:01 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:30:02 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 30 Aug 2016 23:30:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:30:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623aaf4140d62e6096882bf6762ea6b4baeea37eb933471f87a67fdff142b3`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9274a13e26ac0f1c49ec236e6a74098e54f9622a12636f6dac9ba6b5dac33b2a`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab185c837bea98a42b032bdf4621b6d8eb9ee617d1405f4110f38865ffc334e2`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55122420e5f51a86b316465bd5217ffc5a49292282b6d409753682c526cd82ff`  
		Last Modified: Tue, 30 Aug 2016 23:30:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780fea09bec239cbbbe6ec9230d4e2de137e371a7f77617d0b0c4d74e184a8e6`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 4.6 MB (4599342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e44502973fc89bfb7573c44ec7d4a2202d8a27b98d0bcab3491d0f351d80b`  
		Last Modified: Tue, 30 Aug 2016 23:30:31 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701e3fbf7d420974e5ce0ebbbfab869d5dcdf3789db556e4697f89a0d4e42fd2`  
		Last Modified: Tue, 30 Aug 2016 23:31:31 GMT  
		Size: 9.2 MB (9234534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8917854bb5b76518e92fb390f878f811b15bfb0a8897ed3bdfdc010ba46b639`  
		Last Modified: Tue, 30 Aug 2016 23:31:28 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:ee55286799ae09348c0f284633cb39a542250fd12b470dea0b813067e7a017ca
```

-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79614610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10f0f96230423362ec529d94e9f91937e391b63540516ba71a1efa21ca9a824`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:58 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in / 
# Tue, 30 Aug 2016 17:47:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:01 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:29:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 23:29:59 GMT
ENV TELEGRAF_VERSION=0.13.1
# Tue, 30 Aug 2016 23:30:01 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 23:30:01 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:30:02 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 30 Aug 2016 23:30:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:30:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623aaf4140d62e6096882bf6762ea6b4baeea37eb933471f87a67fdff142b3`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9274a13e26ac0f1c49ec236e6a74098e54f9622a12636f6dac9ba6b5dac33b2a`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab185c837bea98a42b032bdf4621b6d8eb9ee617d1405f4110f38865ffc334e2`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55122420e5f51a86b316465bd5217ffc5a49292282b6d409753682c526cd82ff`  
		Last Modified: Tue, 30 Aug 2016 23:30:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780fea09bec239cbbbe6ec9230d4e2de137e371a7f77617d0b0c4d74e184a8e6`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 4.6 MB (4599342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e44502973fc89bfb7573c44ec7d4a2202d8a27b98d0bcab3491d0f351d80b`  
		Last Modified: Tue, 30 Aug 2016 23:30:31 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701e3fbf7d420974e5ce0ebbbfab869d5dcdf3789db556e4697f89a0d4e42fd2`  
		Last Modified: Tue, 30 Aug 2016 23:31:31 GMT  
		Size: 9.2 MB (9234534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8917854bb5b76518e92fb390f878f811b15bfb0a8897ed3bdfdc010ba46b639`  
		Last Modified: Tue, 30 Aug 2016 23:31:28 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.13-alpine`

```console
$ docker pull telegraf@sha256:4e0d55147b4724f0da66705c9af6adee3d7cf4532c159e09d55689a0ed817cdf
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.13-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8930136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a014fc15ee0d0a7ed8b16d19fb4e8859edfab370973eec88cd0eb53042b77f5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 23:30:03 GMT
ENV TELEGRAF_VERSION=0.13.1
# Tue, 30 Aug 2016 23:30:11 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 23:30:11 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:30:12 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 30 Aug 2016 23:30:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:30:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199f1204d645cf6387cb0c8ac83c5a4e36e88f63a7fb18f08953804e34660e65`  
		Last Modified: Tue, 30 Aug 2016 23:31:57 GMT  
		Size: 6.6 MB (6619669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a352473e74cff3107e0834039c31966e531407c65524598b175be9e614ddc493`  
		Last Modified: Tue, 30 Aug 2016 23:31:54 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.13.1-alpine`

```console
$ docker pull telegraf@sha256:4e0d55147b4724f0da66705c9af6adee3d7cf4532c159e09d55689a0ed817cdf
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.13.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8930136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a014fc15ee0d0a7ed8b16d19fb4e8859edfab370973eec88cd0eb53042b77f5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 23:30:03 GMT
ENV TELEGRAF_VERSION=0.13.1
# Tue, 30 Aug 2016 23:30:11 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 23:30:11 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:30:12 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 30 Aug 2016 23:30:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:30:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199f1204d645cf6387cb0c8ac83c5a4e36e88f63a7fb18f08953804e34660e65`  
		Last Modified: Tue, 30 Aug 2016 23:31:57 GMT  
		Size: 6.6 MB (6619669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a352473e74cff3107e0834039c31966e531407c65524598b175be9e614ddc493`  
		Last Modified: Tue, 30 Aug 2016 23:31:54 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:4e0d55147b4724f0da66705c9af6adee3d7cf4532c159e09d55689a0ed817cdf
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8930136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a014fc15ee0d0a7ed8b16d19fb4e8859edfab370973eec88cd0eb53042b77f5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 23:30:03 GMT
ENV TELEGRAF_VERSION=0.13.1
# Tue, 30 Aug 2016 23:30:11 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 23:30:11 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:30:12 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 30 Aug 2016 23:30:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:30:12 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199f1204d645cf6387cb0c8ac83c5a4e36e88f63a7fb18f08953804e34660e65`  
		Last Modified: Tue, 30 Aug 2016 23:31:57 GMT  
		Size: 6.6 MB (6619669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a352473e74cff3107e0834039c31966e531407c65524598b175be9e614ddc493`  
		Last Modified: Tue, 30 Aug 2016 23:31:54 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.0.0-rc1`

```console
$ docker pull telegraf@sha256:2ff8f6f17a0edec6d6b793018f512a4141f582960c082a3b5a743fbf5715d5e4
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.0.0-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81047550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfca95f2587674ad9069f7d552e213f91bfac54f8a3d56f2b75a6f2070173ea6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:58 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in / 
# Tue, 30 Aug 2016 17:47:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:01 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:29:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 30 Aug 2016 23:30:12 GMT
ENV TELEGRAF_VERSION=1.0.0-rc1
# Tue, 30 Aug 2016 23:30:15 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Tue, 30 Aug 2016 23:30:16 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:30:16 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 30 Aug 2016 23:30:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:30:16 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623aaf4140d62e6096882bf6762ea6b4baeea37eb933471f87a67fdff142b3`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9274a13e26ac0f1c49ec236e6a74098e54f9622a12636f6dac9ba6b5dac33b2a`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab185c837bea98a42b032bdf4621b6d8eb9ee617d1405f4110f38865ffc334e2`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55122420e5f51a86b316465bd5217ffc5a49292282b6d409753682c526cd82ff`  
		Last Modified: Tue, 30 Aug 2016 23:30:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780fea09bec239cbbbe6ec9230d4e2de137e371a7f77617d0b0c4d74e184a8e6`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 4.6 MB (4599342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e44502973fc89bfb7573c44ec7d4a2202d8a27b98d0bcab3491d0f351d80b`  
		Last Modified: Tue, 30 Aug 2016 23:30:31 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65ad9a192e91a407f90e0d7363084aa9dbdf439f5f44ff7160183a75223e1ae`  
		Last Modified: Tue, 30 Aug 2016 23:32:23 GMT  
		Size: 10.7 MB (10667475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d961a556e25965dbb6bc26e8e9e6675a482ed9c7c7e4963e5786d0c3f0d34f42`  
		Last Modified: Tue, 30 Aug 2016 23:32:20 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.0.0-rc1-alpine`

```console
$ docker pull telegraf@sha256:9c6171e35a4e50ac9a0d892f041058d0d1387acd2009712832dc8b8511c5095d
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.0.0-rc1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10141926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0736748f47ecfdb554a5e2974590105a03c31a7487062f41993e068c14389cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 23:30:17 GMT
ENV TELEGRAF_VERSION=1.0.0-rc1
# Tue, 30 Aug 2016 23:30:25 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 Aug 2016 23:30:25 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 30 Aug 2016 23:30:25 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 30 Aug 2016 23:30:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:30:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a032014143c073aa13d26135871a92ba323e1e44da2f719a8600ccd15acf6459`  
		Last Modified: Tue, 30 Aug 2016 23:32:38 GMT  
		Size: 7.8 MB (7831459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d44bc4a8b0c4a9ba0681f51cf6579e425e59044d4d3ed311074d83a173a060c`  
		Last Modified: Tue, 30 Aug 2016 23:32:35 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
