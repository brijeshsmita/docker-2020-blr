### Build OWN TOMCAT Container Base image
## Steps

> Please make sure that you are running docker desktop in `Windows mode`

1. Download the OpenJDK 10 from https://jdk.java.net/java-se-ri/10

    Please rename the downloaded file as `jdk-10.tar.gz` 

2. Download the apache tomcat 9 from 

    http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz 

3.  Once both files are downloaded, create a new directory `tomcat-win` and copy both files
    inside this new directory.


4.  Create a new file inside `tomcat-win` directory with name `Dockerfile` (No Extension!)

    ```
    FROM mcr.microsoft.com/windows/nanoserver:1803

    WORKDIR /tools

    ADD jdk-10.tar.gz .

    ENV PATH=/Windows;/tools/jdk-10/bin
    ENV JAVA_HOME=/tools/jdk-10

    ADD apache-tomcat-9.0.30.tar.gz .

    ENV CATALINA_HOME=/tools/apache-tomcat-9.0.30/

    EXPOSE 8080

    CMD ["/tools/apache-tomcat-9.0.30/bin/startup.bat"]
    ```

5.  Now, Open new command prompt or powershell terminal in directory `tomcat-win` and use following command

    ```cmd
    ## CHECK ALL FILES
    $ dir 
    ## Build an image
    $ docker build -t mytom:nano .
    ```

6.  Once image is built, try creating the container.

    ```
    $ docker run -d --name test1 mytom:nano
    $ docker inspect test1 -f "{{ .NetworkSettings.Networks.nat.IPAddress }}"
    ```

7.  Use the IP address reported by previous step (#6) to test tomcat

    http://172.21.234.11:8080

    > NOTE: Please replace IP address 172.21.234.11 with IP returned by step# 6.

8.  Login with Docker ID and Password 

    ```bash
    $ docker login
    Username: mahendrshinde
    Password:        
    Login Succeeded!
    ```

9.  Re-TAG your local image, use docker-id as PREFIX, then PUSH

    ```
    $ docker tag mytom:nano mahendrshinde/tomcat9:nano1803
    $ docker push mahendrshinde/tomcat9:nano1803
    ```

10. Visit hub.docker.com and check the new repository

11. To set DEFAULT tag (ie latest) for image.

    ```bash
    $ docker tag mahendrshinde/tomcat9:nano1803 mahendrshinde/tomcat9:latest
    $ docker push mahendrshinde/tomcat9:latest
    ```
