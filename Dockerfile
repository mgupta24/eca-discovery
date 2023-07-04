FROM adoptopenjdk/openjdk11:jre-11.0.19_7-ubuntu
ADD target/eca-discovery-*.jar ecadiscovery.jar
ENV JAVA_OPTS=""
ENV APP_NAME="ecadiscovery"
ENV SECURITY_OPTS="-Djava.security.egd=file:/dev/./urandom"

COPY entrypoint.sh ./
RUN chmod 755 ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]