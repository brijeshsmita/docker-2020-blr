## Installing Docker Desktop

### Pre-Requisite:
  - Enable `Virtualization` from your `System BIOS`

1.  Visit https://www.docker.com/products/docker-desktop
    
    Click on Download "Docker Desktop for Mac & Windows"

2.  Docker.com Would ask for docker-id and password, click "SignUp"
    Fill in your UNQIUE DOCKER-ID (Retry untill you get it!)
  
3.  Email & Docker password.

    Check all mandatory boxes and click Sign Up

4.  Click on the Link to Download Docker Desktop Installer

5.  Run installer and accept all the defaults

6.  Docker Desktop Should be launched and Visible in System Tray

7.  Right click on "Docker Deskop" in System Tray and Use "Switch to Linux Containers"

8.  Run following command to test docker installation and daemon mode

    ```bash
    $ docker -v
    $ docker info -f "{{ .OSType }}"
    ```
  
9.  Use "Docker Desktop" from `System Tray` and Use option `Switch to Windows Containers` and then repeat command from step# 8.
  
  
