FROM openjdk:17-jdk-oraclelinux8

ENV APP_HOME=/apps

ARG JAR_FILE_PATH=build/libs
ARG JAR_FILE=demo-0.0.1-SNAPSHOT.jar

WORKDIR $APP_HOME

# 빌드된 JAR 파일 복사
COPY $JAR_FILE_PATH/$JAR_FILE app.jar

EXPOSE 8080

CMD ["java", "-jar", "-Dspring.profiles.active=prod", "app.jar"]
