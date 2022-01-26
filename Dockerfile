FROM adoptopenjdk/openjdk11:alpine
EXPOSE 8888
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} config-server.jar
ENTRYPOINT ["java","-jar","config-server.jar"]