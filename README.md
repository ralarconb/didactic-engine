# didactic-engine
SpringBoot, Docker integration example.
# Build
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
# Setup
- Clone the repository
- Go into the project directory
- Build the local image
- Test the running application
```sh
git clone https://github.com/ralarconb/didactic-engine.git
cd didactic-engine
docker build -t spring-boot-docker .
docker run -d -p8080:8080 spring-boot-docker
curl http://localhost:8080/
```