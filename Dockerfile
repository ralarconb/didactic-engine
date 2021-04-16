FROM maven
RUN mkdir -p /usr/src/didactic-engine
COPY . /usr/src/didactic-engine
WORKDIR /usr/src/didactic-engine
RUN mvn package
ENTRYPOINT ["java","-jar","target/spring-boot-docker-0.0.1-SNAPSHOT.jar"]