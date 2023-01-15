FROM maven as build
COPY . .
RUN mvn clean install

FROM tomcat
COPY --from=build /target/onlinebookstore.war /usr/local/tomcat/webapps/
EXPOSE 8080
