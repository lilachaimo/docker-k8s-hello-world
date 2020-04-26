FROM adoptopenjdk/openjdk13:alpine-jre
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
WORKDIR /opt/app
COPY ${JAR_FILE} docker-k8s-hello-world.jar
ENTRYPOINT ["java","-jar","/docker-k8s-hello-world.jar"] 