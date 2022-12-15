FROM openjdk:8
EXPOSE 80
COPY /var/jenkins_home/workspace/demo/target/appservice-1.0-SNAPSHOT.war appservice-1.0-SNAPSHOT.war
ENTRYPOINT ["java", "-jar", "/appservice-1.0-SNAPSHOT.war"]
