# 빌드 단계
FROM gradle:8.6-jdk17-jammy as builder

ENV APP_HOME=/apps

WORKDIR $APP_HOME

# Gradle Wrapper 파일 복사
COPY gradle $APP_HOME/gradle
COPY gradlew $APP_HOME

# Gradle Wrapper 실행 권한 설정
RUN chmod +x gradlew

# 소스 코드 복사
COPY build.gradle settings.gradle $APP_HOME
COPY src $APP_HOME/src

# 빌드 수행
RUN ./gradlew build

# 런타임 단계
FROM openjdk:17-jdk-oraclelinux8

ENV APP_HOME=/apps

ARG JAR_FILE_PATH=build/libs
ARG JAR_FILE=demo-0.0.1-SNAPSHOT.jar

WORKDIR $APP_HOME

# 빌드된 JAR 파일 복사
#COPY $JAR_FILE_PATH/$JAR_FILE app.jar
COPY --from=builder $APP_HOME/$JAR_FILE_PATH/$JAR_FILE app.jar

EXPOSE 8080

CMD ["java", "-jar", "-Dspring.profiles.active=prod", "app.jar"]
