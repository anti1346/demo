# Spring Boot DEMO

## gradlew 빌드
```angular2html
./gradlew buil
```
```angular2html
java -jar build/libs/demo-0.0.1-SNAPSHOT.jar
```

## Docker 빌드
##### Docker 이미지 빌드
```
docker build --no-cache --tag anti1346/demo:0.0.1 .
```
##### Docker 이미지 PUSH
```
docker push anti1346/demo:0.0.1
```

## Docker Buildx 빌드
##### Docker Buildx 활성화
```
docker buildx create --use
```
##### Docker Buildx를 사용하여 이미지를 빌드하고 푸시
```
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --tag anti1346/demo:0.0.1 --push .
```

### Docker 컨테이너 실행
##### docker run test
```
docker run -d -p 8181:8080 --name demo anti1346/demo:0.0.1
```
```angular2html
docker exec -it --name demo bash
```
```
docker run -it --rm -p 8181:8080 --name demo anti1346/demo:0.0.1 bash
```
