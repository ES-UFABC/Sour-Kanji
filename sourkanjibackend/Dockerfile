FROM  maven:3.6.3-openjdk-11-slim as builder

WORKDIR /app
COPY . ./.

RUN mvn install -Dmaven.test.skip=true -f /app
RUN cp -a target/sourkanjibackend.jar app.jar

FROM  openjdk:11-jre-slim

WORKDIR /app
COPY --from=builder /app/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
