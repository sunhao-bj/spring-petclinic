FROM maven:latest
COPY . /usr/src/spring-petclinic
WORKDIR /usr/src/spring-petclinic
RUN mvn package -Dmaven.test.skip=true \
    && mv target/spring-petclinic-*.jar target/springpetclinic.jar

FROM openjdk:8-alpine
COPY --from=maven:latest /usr/src/spring-petclinic/target/springpetclinic.jar .
EXPOSE 8080
CMD java -jar ./springpetclinic.jar
