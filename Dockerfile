# Create the base
FROM ubuntu:latest

# Metadata
LABEL owner="Alin"
LABEL purpose="proiect"

# Install java
RUN apt update && apt install openjdk-11-jdk -y

# Copy the jar file
COPY ./target/spring-petclinic-2.7.0-SNAPSHOT.jar ./

# Run jar app on port 8888
#RUN java -Dserver.port=8888 -jar ./spring-petclinic-2.7.0-SNAPSHOT.jar
#RUN java -jar ./spring-petclinic-2.7.0-SNAPSHOT.jar

ENTRYPOINT [ "java", "-jar", "/app/spring-petclinic-2.7.0-SNAPSHOT.jar" ]
