# NGINX Web Server Add-on

### 18.01.2024 - 1.25.3-alpine-slim
 - Changed listening port to `8765`.
 - Added `conf.d` folder to server config files from `/addon_configs/5ec262d9_nginx_ws/nginx/conf.d/`. If no files is present, a template file is generated, but all options are commented out.
 - Added the possibilty to add Alpine packages to `/addon_configs/5ec262d9_nginx_ws/apk.txt`.
 - Added the possibilty to add PyPI packages to `/addon_configs/5ec262d9_nginx_ws/requirements.txt`. Requires `python3` in `apk.txt`.
 - Changed the `crontab` file location to `/addon_configs/5ec262d9_nginx_ws/crontab`.
- Added the folder `/addon_configs/5ec262d9_nginx_ws/www/temp/`. Content in this folder will not be backed up by HA.
- Excluding `**/__pycache__` and `/addon_configs/5ec262d9_nginx_ws/log/` from HA backups.
 
### 20.12.2023 - 1.25.3-alpine3.18-slim
  - Re-base to the official [NGINX Alpine Slim](https://hub.docker.com/layers/library/nginx/1.25.3-alpine3.18-slim/images/sha256-d196915ddcdba9c28059bf111b2beeeb39d2cd0f8353a1ff4bfbf4b6189f3b0c) image from Docker Hub. This image has a footprint of only 5 MB.


### 18.12.2023 - 1.24.0-r14
  - Initial Add-on release, just the Home Assistant Base image with NGINX 1.24.0-r14 on top.