FROM openjdk:8-jdk-alpine
RUN mkdir -p /opt/app-0.0.1/lib
WORKDIR /opt/demo-0.0.1/
RUN ls -l
COPY /target/app-0.0.1-SNAPSHOT.jar /opt/app-0.0.1/lib/app-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/app.jar"]