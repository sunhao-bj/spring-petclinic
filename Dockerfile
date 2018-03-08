FROM openjdk:8-alpine
COPY target/springpetclinic.jar .
EXPOSE 8080
CMD java -jar ./springpetclinic.jar
