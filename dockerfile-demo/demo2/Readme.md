## Building a lightweight NGINX Container image

This demo image when run as container would display name of "Pod" or "Container" along with it's IP Address.

Make changes in [HTML file](./files/index.htm)  if you want to redesign it.

You can customize the [script file](./files/script.sh) as well to suite your requirement.

Command to build and test an image would be:

```bash
$ docker build -t {IMAGENAME} .
$ docker run --rm --name t1 -d -p 8080:80 {IMAGENAME}
## try http://localhost:8080 in web browser
## Now, Stop the container (would delete automatically)
$ docker stop t1
```