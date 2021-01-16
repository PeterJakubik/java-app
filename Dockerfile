FROM gradle:jdk8 as builder
WORKDIR /usr/app/src

COPY . /usr/app/src

RUN gradle build
 
FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY --from=builder usr/app/src/build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
