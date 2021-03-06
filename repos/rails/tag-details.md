<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rails`

-	[`rails:5.0.0.1`](#rails5001)
-	[`rails:5.0.0`](#rails500)
-	[`rails:5.0`](#rails50)
-	[`rails:5`](#rails5)
-	[`rails:latest`](#railslatest)
-	[`rails:onbuild`](#railsonbuild)

## `rails:5.0.0.1`

```console
$ docker pull rails@sha256:a710156e9569714a0f02355714776edc753dc03a2d40bb9990a2743adee26745
```

-	Platforms:
	-	linux; amd64

### `rails:5.0.0.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318459791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e6d0f349218fb5987425a86126d984914b7b1796673ddebac991cac7d9c85`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:24:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 26 Aug 2016 21:30:23 GMT
ENV RUBY_MAJOR=2.3
# Fri, 26 Aug 2016 21:30:24 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 26 Aug 2016 21:30:25 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Fri, 26 Aug 2016 21:30:26 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 26 Aug 2016 21:35:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Fri, 26 Aug 2016 21:35:26 GMT
ENV BUNDLER_VERSION=1.12.5
# Fri, 26 Aug 2016 21:35:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 26 Aug 2016 21:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:35:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 26 Aug 2016 21:35:34 GMT
CMD ["irb"]
# Fri, 26 Aug 2016 22:32:12 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:11 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:12 GMT
ENV RAILS_VERSION=5.0.0.1
# Fri, 26 Aug 2016 22:34:39 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b1403edee446c296f57d2184f60b9c0fd383a933433a21156a67ac245d73ae`  
		Last Modified: Fri, 26 Aug 2016 21:29:25 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816e8b50d36d6e80b08759296ae5beff9e2904e6dd842c488c8f1c62c826fd9a`  
		Last Modified: Fri, 26 Aug 2016 21:35:59 GMT  
		Size: 35.3 MB (35267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e35b3ade06284863c7bedc5b70eb9f9d397c4b130aaef32657689b2268a712a`  
		Last Modified: Fri, 26 Aug 2016 21:35:46 GMT  
		Size: 557.2 KB (557247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa708653111f17f3df0c3ab1cef2222feb521a6947dcaf904224aad19d80076`  
		Last Modified: Fri, 26 Aug 2016 21:35:45 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5680dd006638368e5906f8333bebed58774d5c1b243ecca3c8b3879a5c5b32d6`  
		Last Modified: Fri, 26 Aug 2016 22:34:52 GMT  
		Size: 2.9 MB (2879561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab240c803093dcfe15e3b46caa06f8ed1bf76ffa799e881a2d5b227c4eb5296`  
		Last Modified: Fri, 26 Aug 2016 22:34:56 GMT  
		Size: 13.8 MB (13750309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de54b338b579a5767fd326a5906b40faff50ade0881c9173cf454b2220d8b856`  
		Last Modified: Fri, 26 Aug 2016 22:34:58 GMT  
		Size: 23.4 MB (23370880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5.0.0`

```console
$ docker pull rails@sha256:a710156e9569714a0f02355714776edc753dc03a2d40bb9990a2743adee26745
```

-	Platforms:
	-	linux; amd64

### `rails:5.0.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318459791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e6d0f349218fb5987425a86126d984914b7b1796673ddebac991cac7d9c85`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:24:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 26 Aug 2016 21:30:23 GMT
ENV RUBY_MAJOR=2.3
# Fri, 26 Aug 2016 21:30:24 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 26 Aug 2016 21:30:25 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Fri, 26 Aug 2016 21:30:26 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 26 Aug 2016 21:35:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Fri, 26 Aug 2016 21:35:26 GMT
ENV BUNDLER_VERSION=1.12.5
# Fri, 26 Aug 2016 21:35:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 26 Aug 2016 21:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:35:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 26 Aug 2016 21:35:34 GMT
CMD ["irb"]
# Fri, 26 Aug 2016 22:32:12 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:11 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:12 GMT
ENV RAILS_VERSION=5.0.0.1
# Fri, 26 Aug 2016 22:34:39 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b1403edee446c296f57d2184f60b9c0fd383a933433a21156a67ac245d73ae`  
		Last Modified: Fri, 26 Aug 2016 21:29:25 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816e8b50d36d6e80b08759296ae5beff9e2904e6dd842c488c8f1c62c826fd9a`  
		Last Modified: Fri, 26 Aug 2016 21:35:59 GMT  
		Size: 35.3 MB (35267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e35b3ade06284863c7bedc5b70eb9f9d397c4b130aaef32657689b2268a712a`  
		Last Modified: Fri, 26 Aug 2016 21:35:46 GMT  
		Size: 557.2 KB (557247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa708653111f17f3df0c3ab1cef2222feb521a6947dcaf904224aad19d80076`  
		Last Modified: Fri, 26 Aug 2016 21:35:45 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5680dd006638368e5906f8333bebed58774d5c1b243ecca3c8b3879a5c5b32d6`  
		Last Modified: Fri, 26 Aug 2016 22:34:52 GMT  
		Size: 2.9 MB (2879561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab240c803093dcfe15e3b46caa06f8ed1bf76ffa799e881a2d5b227c4eb5296`  
		Last Modified: Fri, 26 Aug 2016 22:34:56 GMT  
		Size: 13.8 MB (13750309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de54b338b579a5767fd326a5906b40faff50ade0881c9173cf454b2220d8b856`  
		Last Modified: Fri, 26 Aug 2016 22:34:58 GMT  
		Size: 23.4 MB (23370880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5.0`

```console
$ docker pull rails@sha256:a710156e9569714a0f02355714776edc753dc03a2d40bb9990a2743adee26745
```

-	Platforms:
	-	linux; amd64

### `rails:5.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318459791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e6d0f349218fb5987425a86126d984914b7b1796673ddebac991cac7d9c85`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:24:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 26 Aug 2016 21:30:23 GMT
ENV RUBY_MAJOR=2.3
# Fri, 26 Aug 2016 21:30:24 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 26 Aug 2016 21:30:25 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Fri, 26 Aug 2016 21:30:26 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 26 Aug 2016 21:35:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Fri, 26 Aug 2016 21:35:26 GMT
ENV BUNDLER_VERSION=1.12.5
# Fri, 26 Aug 2016 21:35:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 26 Aug 2016 21:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:35:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 26 Aug 2016 21:35:34 GMT
CMD ["irb"]
# Fri, 26 Aug 2016 22:32:12 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:11 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:12 GMT
ENV RAILS_VERSION=5.0.0.1
# Fri, 26 Aug 2016 22:34:39 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b1403edee446c296f57d2184f60b9c0fd383a933433a21156a67ac245d73ae`  
		Last Modified: Fri, 26 Aug 2016 21:29:25 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816e8b50d36d6e80b08759296ae5beff9e2904e6dd842c488c8f1c62c826fd9a`  
		Last Modified: Fri, 26 Aug 2016 21:35:59 GMT  
		Size: 35.3 MB (35267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e35b3ade06284863c7bedc5b70eb9f9d397c4b130aaef32657689b2268a712a`  
		Last Modified: Fri, 26 Aug 2016 21:35:46 GMT  
		Size: 557.2 KB (557247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa708653111f17f3df0c3ab1cef2222feb521a6947dcaf904224aad19d80076`  
		Last Modified: Fri, 26 Aug 2016 21:35:45 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5680dd006638368e5906f8333bebed58774d5c1b243ecca3c8b3879a5c5b32d6`  
		Last Modified: Fri, 26 Aug 2016 22:34:52 GMT  
		Size: 2.9 MB (2879561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab240c803093dcfe15e3b46caa06f8ed1bf76ffa799e881a2d5b227c4eb5296`  
		Last Modified: Fri, 26 Aug 2016 22:34:56 GMT  
		Size: 13.8 MB (13750309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de54b338b579a5767fd326a5906b40faff50ade0881c9173cf454b2220d8b856`  
		Last Modified: Fri, 26 Aug 2016 22:34:58 GMT  
		Size: 23.4 MB (23370880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5`

```console
$ docker pull rails@sha256:a710156e9569714a0f02355714776edc753dc03a2d40bb9990a2743adee26745
```

-	Platforms:
	-	linux; amd64

### `rails:5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318459791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e6d0f349218fb5987425a86126d984914b7b1796673ddebac991cac7d9c85`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:24:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 26 Aug 2016 21:30:23 GMT
ENV RUBY_MAJOR=2.3
# Fri, 26 Aug 2016 21:30:24 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 26 Aug 2016 21:30:25 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Fri, 26 Aug 2016 21:30:26 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 26 Aug 2016 21:35:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Fri, 26 Aug 2016 21:35:26 GMT
ENV BUNDLER_VERSION=1.12.5
# Fri, 26 Aug 2016 21:35:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 26 Aug 2016 21:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:35:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 26 Aug 2016 21:35:34 GMT
CMD ["irb"]
# Fri, 26 Aug 2016 22:32:12 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:11 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:12 GMT
ENV RAILS_VERSION=5.0.0.1
# Fri, 26 Aug 2016 22:34:39 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b1403edee446c296f57d2184f60b9c0fd383a933433a21156a67ac245d73ae`  
		Last Modified: Fri, 26 Aug 2016 21:29:25 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816e8b50d36d6e80b08759296ae5beff9e2904e6dd842c488c8f1c62c826fd9a`  
		Last Modified: Fri, 26 Aug 2016 21:35:59 GMT  
		Size: 35.3 MB (35267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e35b3ade06284863c7bedc5b70eb9f9d397c4b130aaef32657689b2268a712a`  
		Last Modified: Fri, 26 Aug 2016 21:35:46 GMT  
		Size: 557.2 KB (557247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa708653111f17f3df0c3ab1cef2222feb521a6947dcaf904224aad19d80076`  
		Last Modified: Fri, 26 Aug 2016 21:35:45 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5680dd006638368e5906f8333bebed58774d5c1b243ecca3c8b3879a5c5b32d6`  
		Last Modified: Fri, 26 Aug 2016 22:34:52 GMT  
		Size: 2.9 MB (2879561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab240c803093dcfe15e3b46caa06f8ed1bf76ffa799e881a2d5b227c4eb5296`  
		Last Modified: Fri, 26 Aug 2016 22:34:56 GMT  
		Size: 13.8 MB (13750309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de54b338b579a5767fd326a5906b40faff50ade0881c9173cf454b2220d8b856`  
		Last Modified: Fri, 26 Aug 2016 22:34:58 GMT  
		Size: 23.4 MB (23370880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:latest`

```console
$ docker pull rails@sha256:a710156e9569714a0f02355714776edc753dc03a2d40bb9990a2743adee26745
```

-	Platforms:
	-	linux; amd64

### `rails:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318459791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6e6d0f349218fb5987425a86126d984914b7b1796673ddebac991cac7d9c85`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:24:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 26 Aug 2016 21:30:23 GMT
ENV RUBY_MAJOR=2.3
# Fri, 26 Aug 2016 21:30:24 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 26 Aug 2016 21:30:25 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Fri, 26 Aug 2016 21:30:26 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 26 Aug 2016 21:35:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Fri, 26 Aug 2016 21:35:26 GMT
ENV BUNDLER_VERSION=1.12.5
# Fri, 26 Aug 2016 21:35:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 26 Aug 2016 21:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:35:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 26 Aug 2016 21:35:34 GMT
CMD ["irb"]
# Fri, 26 Aug 2016 22:32:12 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:11 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:33:12 GMT
ENV RAILS_VERSION=5.0.0.1
# Fri, 26 Aug 2016 22:34:39 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b1403edee446c296f57d2184f60b9c0fd383a933433a21156a67ac245d73ae`  
		Last Modified: Fri, 26 Aug 2016 21:29:25 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816e8b50d36d6e80b08759296ae5beff9e2904e6dd842c488c8f1c62c826fd9a`  
		Last Modified: Fri, 26 Aug 2016 21:35:59 GMT  
		Size: 35.3 MB (35267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e35b3ade06284863c7bedc5b70eb9f9d397c4b130aaef32657689b2268a712a`  
		Last Modified: Fri, 26 Aug 2016 21:35:46 GMT  
		Size: 557.2 KB (557247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa708653111f17f3df0c3ab1cef2222feb521a6947dcaf904224aad19d80076`  
		Last Modified: Fri, 26 Aug 2016 21:35:45 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5680dd006638368e5906f8333bebed58774d5c1b243ecca3c8b3879a5c5b32d6`  
		Last Modified: Fri, 26 Aug 2016 22:34:52 GMT  
		Size: 2.9 MB (2879561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab240c803093dcfe15e3b46caa06f8ed1bf76ffa799e881a2d5b227c4eb5296`  
		Last Modified: Fri, 26 Aug 2016 22:34:56 GMT  
		Size: 13.8 MB (13750309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de54b338b579a5767fd326a5906b40faff50ade0881c9173cf454b2220d8b856`  
		Last Modified: Fri, 26 Aug 2016 22:34:58 GMT  
		Size: 23.4 MB (23370880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:onbuild`

```console
$ docker pull rails@sha256:e341d65444e25557011a0fca1bcc3f8cfb490cd136a97adf01ead3ca9d91c0d4
```

-	Platforms:
	-	linux; amd64

### `rails:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295089219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78620b6cf026c64bef4b6c34793055db20f83a4866b7d2b818aba71dfa83c07`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:24:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 26 Aug 2016 21:30:23 GMT
ENV RUBY_MAJOR=2.3
# Fri, 26 Aug 2016 21:30:24 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 26 Aug 2016 21:30:25 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Fri, 26 Aug 2016 21:30:26 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 26 Aug 2016 21:35:25 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Fri, 26 Aug 2016 21:35:26 GMT
ENV BUNDLER_VERSION=1.12.5
# Fri, 26 Aug 2016 21:35:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 26 Aug 2016 21:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 26 Aug 2016 21:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:35:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 26 Aug 2016 21:35:34 GMT
CMD ["irb"]
# Fri, 26 Aug 2016 21:36:44 GMT
RUN bundle config --global frozen 1
# Fri, 26 Aug 2016 21:36:46 GMT
RUN mkdir -p /usr/src/app
# Fri, 26 Aug 2016 21:36:47 GMT
WORKDIR /usr/src/app
# Fri, 26 Aug 2016 21:36:48 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 26 Aug 2016 21:36:49 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 26 Aug 2016 21:36:50 GMT
ONBUILD RUN bundle install
# Fri, 26 Aug 2016 21:36:51 GMT
ONBUILD COPY . /usr/src/app
# Fri, 26 Aug 2016 22:36:49 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:37:50 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 22:37:51 GMT
EXPOSE 3000/tcp
# Fri, 26 Aug 2016 22:37:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b1403edee446c296f57d2184f60b9c0fd383a933433a21156a67ac245d73ae`  
		Last Modified: Fri, 26 Aug 2016 21:29:25 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816e8b50d36d6e80b08759296ae5beff9e2904e6dd842c488c8f1c62c826fd9a`  
		Last Modified: Fri, 26 Aug 2016 21:35:59 GMT  
		Size: 35.3 MB (35267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e35b3ade06284863c7bedc5b70eb9f9d397c4b130aaef32657689b2268a712a`  
		Last Modified: Fri, 26 Aug 2016 21:35:46 GMT  
		Size: 557.2 KB (557247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa708653111f17f3df0c3ab1cef2222feb521a6947dcaf904224aad19d80076`  
		Last Modified: Fri, 26 Aug 2016 21:35:45 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9ca179ef74730df4d8ad6e6cdfe007038dc3b031e33a8422bad52027460de8`  
		Last Modified: Fri, 26 Aug 2016 21:37:03 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051d663c5de1e3354f468af64c1e07dc96df1273f092fa505f7aae19bb3b12a4`  
		Last Modified: Fri, 26 Aug 2016 21:37:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4fec61e40e0caa9eda0eeba7807eb819e4c2d959ad52bae64179f7a7f23443`  
		Last Modified: Fri, 26 Aug 2016 22:38:05 GMT  
		Size: 2.9 MB (2879545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0e0dccd1e2c178e1026a77835728a80ebcc63c5677c266a25790a69db8e6dd`  
		Last Modified: Fri, 26 Aug 2016 22:38:07 GMT  
		Size: 13.8 MB (13750321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
