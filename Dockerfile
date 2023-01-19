FROM tomcat:8.0.20-jre8

COPY target/govt*.war /usr/local/tomcat/webapps/govt.war
