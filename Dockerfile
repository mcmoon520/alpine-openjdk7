FROM mcmoon/alpine:3.2.0
MAINTAINER wangchaobin <mcmoon520@163.com>

#Install jre
ADD repositories /etc/apk/repositories

RUN apk add java-common --update
RUN apk add openjdk7 --update && rm -rf /var/cache/apk/*

ENTRYPOINT ["java -version"]
