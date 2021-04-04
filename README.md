# didactic-engine
SpringBoot, Docker integration example.
# Setup
- Build the project
- Run the app
- Windows
```sh
mvn package
java -jar target\spring-boot-docker-0.0.1-SNAPSHOT.jar
```
- Linux
```sh
./mvn package && java -jar target/spring-boot-docker-0.0.1-SNAPSHOT.jar
```
- Go to http://localhost:8080/
- Containarize it
```sh
docker build -t springio/spring-boot-docker .
```