## Docker Commands

1.  Create and Launch new Container in INTERACTIVE MODE

    ```bash
    $ docker run -it --name c1 busybox sh
    $ exit
    ```

2.  Create and launch new container in DETACHED MODE

    ```bash
    $ docker run -d --name c2 -p 8080:80 nginx
    ```

3.  Access/Test container using URL localhost:8080/

4.  List all RUNNING containers

    ```bash
    $ docker ps
    ```

5.  List ALL containers including STOPPED one

    ```bash
    $ docker ps -a
    ```

6.  List All RUNNING container-id only

    ```bash
    $ docker ps -q
    ```

7.  List all Processes inside the container

    ```bash
    $ docker top c1
    $ docker top c2
    ```

8.  Container Resource usage (live streaming)

    ```bash
    $ docker stats
    ```

9.  View containers logs 

    ```bash
    $ docker logs c2
    ```

10. Execute a NEW command/process INSIDE running container (For Debugging purpose)

    ```bash
    $ docker exec -it c2 sh
    $ cd /usr/share/nginx/html
    $ rm index.html
    $ echo -n "<h2>Hello World</h2>" > index.html
    $ exit
    ```

11. Inspect the RUNNING containers 

    ```bash
    $ docker inspect c2
    $ docker inspect c2 -f "{{ .NetworkSettings.IPAddress }}"
    ```

12. Stop the RUNNING container(s) and Delete them

    ```bash
    $ docker stop c1 c2
    $ docker rm c1 c2
    ```