FROM adoptopenjdk/openjdk8:alpine-slim

ENV JMXTERM_UBERJAR_URL https://github.com/jiaqi/jmxterm/releases/download/v1.0.1/jmxterm-1.0.1-uber.jar

RUN apk update \
    && apk add ca-certificates wget \
    && update-ca-certificates \
    && wget -O jmxterm.jar $JMXTERM_UBERJAR_URL

ENTRYPOINT ["java", "-jar", "jmxterm.jar"]

