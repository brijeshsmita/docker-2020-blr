## Dockerfile

1. Ready to deploy script for building container images
2. Few Conventions to be followed
    2.1 Filename MUST BE "Dockerfile"
    2.2 File must be stored in a folder which contains ALL the required supporting files
    2.3 Extra files should be AVOIDED
    2.4 None of the files / directories mentioned in Dockerfile should be OUTSIDE
        the present working directory.
    2.5 Can't use ..\ to access parent directory
3. Dockerfile syntax is easy

## Dockerfile commands

- FROM <IMAGE>

    define the base image for current container image.

- COPY <SOURCE> <DESTINATION>

    Copy files/directories from current directory (build context) to inside the container

- ADD <SOURCE> <DESTINATION>

    Same as COPY, with ONE Additional benefit, "ADD" with Archives like "ZIP" and "TAR"
    result in Auto-extraction inside container.

- RUN ["Command","Arg1"..."ArgN"]

    Run an OS Command (Windows: CMD/POWERSHELL, Linux: sh/bash)

- LABEL NAME=VALUE

    Adds a label.

- ENV NAME=VALUE

    Pass ENV Variable (name & value) pair.

- CMD

    Command to be run when container is launched.