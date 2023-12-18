# NGINX Web Server Add-on

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/nginx_ws/logo.png)

[NGINX](https://www.nginx.com/) is a web server that can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache. The software was created by Russian developer Igor Sysoev and publicly released in 2004. NGINX is free and open-source software, released under the terms of the 2-clause BSD license. A large fraction of web servers use NGINX, often as a load balancer.

This Add-on is very plain and simple. It installs NGINX on top of the Home Assistant Base image. Up to 3 different servers can be setup, and each have their own port which can be accessed with by setting up subdomains. There is no backend stuff included, but you can still host anything that is handeled in the frontend such as HTML, CSS, JavaScript, Images etc. I reccomend using the [NGINX Proxy Manager](https://github.com/hassio-addons/addon-nginx-proxy-manager) Add-on to handle all the external traffic as a proxy, and just use HTTP traffic on the internal network. If you need to mount an external drive, I suggest using [80-mount-usb-to-media-by-label.rules](https://gist.github.com/eklex/c5fac345de5be9d9bc420510617c86b5) by [eklex](https://github.com/eklex).

## Installation

### Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your **Home Assistant** instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

### Installation
1. Locate **NGINX Web Server** and click `Install`.
2. You will see options like `name_1`, `root_1`, `Port 8001/tcp` which are the first of three Web Servers. You can expand to get access to the other two.
3. Set the name for your server(s), and `root` is where you'll put your `index`-file. `/config`, `/media` and `/share` are available. Please note that the path to `/config` outside of the container will be `/addon_configs/5ec262d9_nginx_ws`. If no index file(s) are present, the Add-on will copy a default one to the location specified.
4. Once the configuration is done, you can start the Add-on.