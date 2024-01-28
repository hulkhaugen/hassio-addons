# NGINX Web Server Add-on

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/nginx_ws/logo.png)

[NGINX](https://www.nginx.com/) is free and open-source software, released under the terms of the 2-clause BSD license. A large fraction of web servers use NGINX, often as a load balancer.

This Add-on is based on the official [NGINX Alpine Slim](https://hub.docker.com/_/nginx) image from Docker Hub, and has a footprint of only 5 MB. It installs the NGINX image, and sets up a server on a port you can configure. It comes with a predefined folder structure, but it is very customizable.
 - Need to install additional Alpine apk packages? Add them to the `apk.txt` file.
 - Need to install Python packages? Add them to the `requirements.txt` file.
 - Need to run scripts on a schedule? Add them to the `crontab` file.
 - Need to run scripts on (re)start? Add them to the `<base_dir>/<site_name>/cfg/cont-init.d/` folder.