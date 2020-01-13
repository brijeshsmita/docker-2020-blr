## Enviornment Variables

Passing KEY-VALUE Pairs as enviornment variables to container.
Example: Container Images for RDBMS May require multiple Enviornment Variables

    1.  MSSQL
            -e SA_PASSWORD=
            -e ACCEPT_EULA=y
    
    2.  MySQL
            -e MYSQL_ROOT_PASSWORD=
            -e MYSQL_DATABASE=
            -e MYSQL_USERNAME=
            -e MYSQL_USER_PASSWORD=


##  Demos (Linux)
1.  Create a new MySQL Server Container using ROOT-PASSWORD abcd@1234

    ```pwsh
    $ docker run --name db1 -d -e MYSQL_ROOT_PASSWORD=abcd@1234 -p 3306:3306 mysql:5.7
    $ docker logs db1
    $ docker exec -it db1 sh
    $ echo $MYSQL_ROOT_PASSWORD
    $ mysql -uroot -pabcd@1234 
    $ exit
    $ exit
    ```

