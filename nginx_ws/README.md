# NGINX Web Server Add-on

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/nginx_ws/logo.png)

[NGINX](https://www.nginx.com/) is free and open-source software, released under the terms of the 2-clause BSD license. A large fraction of web servers use NGINX, often as a load balancer. This Add-on is based on the official [NGINX Alpine Slim](https://hub.docker.com/_/nginx) image from Docker Hub, and has a footprint of only 5 MB. It installs the NGINX image, and sets up a server on a port you can configure. There is no backend stuff included, but you can still host anything that is handeled in the frontend such as HTML, CSS, JavaScript, Images etc. I recommend using the [NGINX Proxy Manager](https://github.com/hassio-addons/addon-nginx-proxy-manager) Add-on to handle all the external traffic for any Add-on or service you want to expose.

## Installation

### Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your **Home Assistant** instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

### Installation
1. Locate **NGINX Web Server** and click `Install`.
2. The default external port is `8000`, but you can change this as you see fit.
3. Put your site files in the root folder `/addon_configs/5ec262d9_nginx_ws/`.
4. Once the configuration is done, you can start the Add-on.
5. Click on the `Open Web UI` button.