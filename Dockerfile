FROM alpine:latest

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache gcompat bash coreutils curl grep gzip openconnect xmlstarlet

RUN addgroup -g 1001 openconnect \
	&& adduser -G openconnect -u 1001 -D openconnect

USER openconnect

CMD ["openconnect"]
