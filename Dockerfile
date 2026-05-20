FROM eclipse-temurin:25-alpine
LABEL maintainer="samuelgallego44@gmail.com"
COPY /target/*.jar /home/spring-petclinic.jar
CMD ["java","-jar","/home/spring-petclinic.jar"]
EXPOSE 8080
