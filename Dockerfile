FROM openjdk:8-jdk-alpine
RUN apk --no-cache add curl
RUN curl -u admin:admin -o ExamThourayaS2-0.0.1.jar "http://192.168.71.179:8081/repository/maven-snapshots/tn/esprit/spring/ExamThourayaS2/0.0.1/ExamThourayaS2-0.0.1.jar" -L
ENTRYPOINT java -jar /ExamThourayaS2-0.0.1.jar
EXPOSE 8083
