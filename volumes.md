## Volumes
    
Additional Storage attached to Container
Can be Shared between Containers (Usually READYONLY)
Volumes are folders/directory on HOST systems
    
##Volume Binding
    
    -v HOST-DIR-PATH:GUEST-DIR-PATH:OPTIONS   
    -v c:\myfiles:/usr/share/nginx/html:ro

Minimum Volumes in Single Container : ZERO
Maximum Volumes in Single Container : No Limit	

### Use-Cases

1. DATA directory of RDBMS or NoSQL databases
2. LOG directory
3. Shared Directory between TWO containers	
 	
## Linux Demo

1.  Create a Directory C:\myfiles with `index.html` page
2.  Create a new container to use `c:\myfiles` as volume mounted at `/usr/share/nginx/html` location.

    ```pwsh
    $  docker run -d -v c:\\myfiles:/usr/share/nginx/html:ro -p 8080:80  nginx
    ```
3.  Try Accessing application through URL http://localhost:8080

## Windows Demo
1.  Pull the container image and retag it

    ```pwsh
    $ docker pull mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2016
    $ docker tag mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2016    iis
    ```

2.  Launch a new IIS Web server container with following code

    ```pwsh
    $ docker run --name w1  -d -v c:\myfiles:c:\inetpub\wwwroot iis
    $ docker inspect w1 -f "{{ .NetworkSettings.IPAddress }}"
    ```

3.  Open web browser and use IP Address of Container to access HTML page from c:\myfiles.

4.  Clean Up

    ```pwsh
    $ docker stop $(docker ps -q)
    $ docker rm $(docker ps -aq)
    ```