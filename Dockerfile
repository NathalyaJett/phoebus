FROM maven:3.6.3-jdk-11-slim

COPY . .
RUN mvn package

#Start application
ENTRYPOINT ["java","-jar","target/*.jar"]