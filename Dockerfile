FROM openjdk:11

ARG JAR_FILE=target/spring-boot-data-jpa-0.0.1-SNAPSHOT.jar
ARG DEPENDENCY=target

COPY ${JAR_FILE} spring-boot-data-jpa-0.0.1-SNAPSHOT.jar

CMD  target/
ENTRYPOINT ["java","-jar","/spring-boot-data-jpa-0.0.1-SNAPSHOT.jar"]