FROM ubuntu:latest 

RUN apt-get --yes update \
	&& DEBIAN_FRONTEND=noninteractive apt-get --yes install curl openconnect 

CMD ["openconnect"]
