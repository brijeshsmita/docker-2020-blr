## Container Networks

1.  Stop / Remove all Containers using Powershell 

    ```pwsh
    $ docker stop $(docker ps -q)
    $ docker rm $(docker ps -qa)
    ```

2.  List all container networks and view details of BRIDGE network

    ```pwsh
    $ docker network ls
    $ docker inspect bridge
    ## You should have ZERO containers in BRIDGE network
    ```

3.  Launch FIRST container in BRIDGE network

    ```pwsh
    $ docker run -d --net bridge --name c1 nginx
    $ docker inspect c1 -f "{{ .NetworkSettings.IPAddress }}"
    ```

4.  Launch SECOND container in BRIDGE network

    ```pwsh
    $ docker run -it --net brigde --name c2 mahendrshinde/mysql-client bash
    $ hostname -i
    ### Please replace IP address from one that you received in step #3.
    $ curl http://172.17.0.2
    $ exit
    ```

5.  View the list of containers in BRIDGE network

    ```pwsh
    $ docker inspect bridge
    ```