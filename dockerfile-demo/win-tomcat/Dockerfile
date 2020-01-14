FROM mcr.microsoft.com/windows/nanoserver:1803
## Create a Working Directory for all tools
WORKDIR /tools

## Copy and Extract contents of jdk10.tar.gz into c:\tools directory
ADD jdk10.tar.gz .

## Set Windows PATH and JAVA_HOME enviornment entries
ENV PATH=/Windows;/tools/jdk-10/bin
ENV JAVA_HOME=/tools/jdk-10

## Copy and Extract the contents of tomcat-9 into C:\tools directory
ADD apache-tomcat-9.0.30.tar.gz .

## Set the CATALINA_HOME environment entry
ENV CATALINA_HOME=/tools/apache-tomcat-9.0.30/

EXPOSE 8080

## Start TOMCAT when Container is Launched!
CMD ["/tools/apache-tomcat-9.0.30/bin/startup.bat"]
