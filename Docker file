FROM maven as build
WORKDIR /var/lib/jenkins/workspace/new-project/
COPY . .
RUN mvn clean install

FROM tomcat
COPY --from=build /var/lib/jenkins/workspace/new-project/target/onlinebookstore.war /usr/local/tomcat/webapps/
EXPOSE 8080
