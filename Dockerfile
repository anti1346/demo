FROM openjdk:17.0.2-jdk

ENV APP_HOME=/apps

ARG JAR_FILE_PATH=build/libs
ARG JAR_FILE=demo-0.0.1-SNAPSHOT.jar

WORKDIR $APP_HOME

COPY $JAR_FILE_PATH/$JAR_FILE app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=prod", "app.jar"]
