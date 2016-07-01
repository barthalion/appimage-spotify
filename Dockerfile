FROM ubuntu:trusty

RUN apt-get update && \
	apt-get install -y \
		openssl \
		libcurl3 \
		wget \
		libfuse2 \
		libglib2.0 \
		librtmp0 \
		libgconf-2-4

ADD Recipe /Recipe

VOLUME /out

ENTRYPOINT ["bash", "-ex", "/Recipe"]
