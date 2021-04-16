FROM maven
RUN mkdir -p /usr/src/didactic-engine
COPY . /usr/src/didactic-engine
WORKDIR /usr/src/didactic-engine
RUN ./mvn package && java -jar target/spring-boot-docker-0.0.1-SNAPSHOT.jar
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker-0.0.1-SNAPSHOT.jar"]