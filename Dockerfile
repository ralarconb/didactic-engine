FROM maven
RUN mkdir -p /usr/src/didactic-engine
COPY . /usr/src/didactic-engine
WORKDIR /usr/src/didactic-engine
#RUN -v m3repo:/root/.m2 mvn package && java -jar target/spring-boot-docker-0.0.1-SNAPSHOT.jar
RUN mvn package && java -jar target/spring-boot-docker-0.0.1-SNAPSHOT.jar
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","/spring-boot-docker-0.0.1-SNAPSHOT.jar"]