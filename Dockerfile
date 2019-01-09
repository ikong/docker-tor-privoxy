FROM alpine:latest

EXPOSE 8118 9050 9051

RUN apk add --no-cache su-exec runit tor privoxy

COPY service /etc/service/

CMD ["runsvdir", "/etc/service"]
