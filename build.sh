#!/bin/sh

mvn package -Dmaven.test.skip=true \
    && mv target/spring-petclinic-*.jar target/springpetclinic.jar
