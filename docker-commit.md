## Building Container Image from CLI 

1.  Create a new temp container `t1`

    ```bash
    $ docker run -d -p 8080:80 --name t1 nginx
    ```

2.  Execute a command to delete default `index.html` file from `/usr/share/nginx/html` directory.

    ```bash
    $ docker exec -it t1 bash
    $ cd /usr/share/nginx/html
    $ rm index.html
    $ exit
    ```

3.  Create a new file `d:\myfiles\index.html` and copy it inside the container t1

    ```bash
    $ docker cp d:\myfiles\index.html t1:/usr/share/nginx/html/index.html
    ```

4.  Test the result in web browser

    http://localhost:8080

5.  Commit the changes to container `t1` and create a new IMAGE 

    ```bash
    $ docker stop t1
    $ docker commit t1 webapp:v1
    $ docker rm t1
    ```

6.  Test the new container image `webapp:v1`

    ```bash
    $ docker run -d -p 8080:80 --name t2 webapp:v1
    ```

7.  Test the new application using web browser at URL http://localhost:8080
    
    And then delete the container `t2`

    ```bash
    $ docker stop t2
    $ docker rm t2
    ```