FROM openjdk:8
COPY target/appservice-1.0-SNAPSHOT.war /tmp
WORKDIR /tmp
ENTRYPOINT ["java", "-jar", "appservice-1.0-SNAPSHOT.war"]
