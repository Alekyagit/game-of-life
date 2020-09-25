FROM tomcat:8.5.0-alpine

MAINTAINER alekya

COPY ["jenkins.war","/usr/local/tomcat/webapps/"]
COPY ["context.xml","/usr/local/tomcat/webapps/manager/META-INF"]
COPY ["tomcat-users.xml","/usr/local/tomcat/conf/"]

CMD ["catalina.sh","run"]
