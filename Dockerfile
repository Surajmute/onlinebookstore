FROM tomcat
COPY /var/lib/jenkins/.m2/repository/onlinebookstore/onlinebookstore/0.0.1-SNAPSHOT/onlinebookstore-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
MAINTAINER suraj

