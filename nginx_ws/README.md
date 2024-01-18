# NGINX Web Server Add-on

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/nginx_ws/logo.png)

[NGINX](https://www.nginx.com/) is free and open-source software, released under the terms of the 2-clause BSD license. A large fraction of web servers use NGINX, often as a load balancer.

This Add-on is based on the official [NGINX Alpine Slim](https://hub.docker.com/_/nginx) image from Docker Hub, and has a footprint of only 5 MB. It installs the NGINX image, and sets up a server on a port you can configure. It comes with a predefined folder structure, but it is somewhat customizable.
- Modify the server at `nginx/conf.d/template.conf` or create your own in the same folder to host a website.
- Setup scheduled tasks in the `crontab` file desired.
- Add extra apk packages to the `apk.txt` and restart the add-on to have them added.
- If Python is added to the `apk.txt`, you can also add pip packages to the `requirements.txt` file pip3 will be installed with them.
- Content in `www/temp/` folder will not be backed up by HA. This is a neat place to store temporary data for your website.