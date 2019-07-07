FROM alpine:3.5
ADD dynamodb-client-web-gui-1.2.0.jar /dynamodb/dynamodb-client-web-gui-1.2.0.jar
RUN apk update && apk add openjdk8-jre-base
ENTRYPOINT java -jar /dynamodb/dynamodb-client-web-gui-1.2.0.jar --endpoint.url=$AWS_DYNAMODB_ENDPOINT

