FROM alpine:latest

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache gcompat bash coreutils curl grep gzip openconnect xmlstarlet

CMD ["openconnect"]
