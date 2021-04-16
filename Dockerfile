FROM maven
RUN mkdir -p /usr/src/didactic-engine
COPY . /usr/src/didactic-engine
WORKDIR /usr/src/didactic-engine
RUN mvn package
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]