FROM alpine:3.4
RUN apk add --update mysql-client bash openssh-client && rm -rf /var/cache/apk/*
ADD dump.sh /
ADD import.sh /
ENTRYPOINT ["/dump.sh"]
