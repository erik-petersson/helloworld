FROM alpine:3.4

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV JRE ${JAVA_HOME}/jre

RUN apk add --no-cache ca-certificates openjdk8 && \
    echo "export LANG=C.UTF-8" > /etc/profile.d/locale.sh && \
    echo 'hosts: files mdns4_minmal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf && \
    for f in $(find /usr/share/ca-certificates -name "*.crt"); \
        do keytool -importcert -alias a$(basename $f .crt) -file $f -keystore ${JRE}/lib/security/cacerts -storepass changeit -noprompt; done


RUN apk add --update bash \
  && apk add --update libstdc++ \
  && rm -rf /var/cache/apk/* 