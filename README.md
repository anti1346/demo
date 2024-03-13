# Spring Boot DEMO
## gradlew 빌드
```angular2html
./gradlew buil
```
```angular2html
java -jar build/libs/demo-0.0.1-SNAPSHOT.jar
```
## Docker 빌드
##### Docker Buildx 활성화
```
docker buildx create --use
```
##### Docker Buildx를 사용하여 이미지를 빌드하고 푸시
```
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --tag anti1346/demo:0.0.1 --push .
```
##### docker tag(도커 이미지 태그 이름 변경)
```
docker tag anti1346/ubuntu2204:nettools anti1346/demo:0.0.1
```
##### docker run test
```
docker run -it --rm -p 8181:8080 --name demo anti1346/demo:0.0.1 bash
```
```
docker run -d -p 8181:8080 --name demo anti1346/demo:0.0.1
```
```angular2html
docker exec -it --name demo bash
```
