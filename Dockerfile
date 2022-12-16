FROM openjdk:8
COPY target/appservice-1.0-SNAPSHOT.war myapp.war
ENTRYPOINT ["java", "-jar", "/myapp.war"]
