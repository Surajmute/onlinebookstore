FROM tomcat
COPY target/onlinebookstore.war /usr/local/tomcat/webapps/
EXPOSE 8080
MAINTAINER suraj
