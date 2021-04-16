FROM maven
RUN mkdir -p /usr/src/didactic-engine
COPY . /usr/src/didactic-engine
WORKDIR /usr/src/didactic-engine
#RUN mvn package && java -jar target/spring-boot-docker-0.0.1-SNAPSHOT.jar
RUN mvn package
#ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
#COPY ${JAR_FILE} spring-boot-docker-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","target/spring-boot-docker-0.0.1-SNAPSHOT.jar"]