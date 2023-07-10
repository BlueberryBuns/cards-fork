FROM alpine:latest

ARG PB_VERSION=0.16.8

RUN apk add --no-cache \
    unzip \
    ca-certificates

ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /pb/

RUN mkdir /data
RUN mkdir /data/pocketbase_data
RUN mkdir /data/migrations_data

EXPOSE 8080

CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080", "--dir=/data/pocketbase_data", "--migrationsDir='/data/migrations_data'"]