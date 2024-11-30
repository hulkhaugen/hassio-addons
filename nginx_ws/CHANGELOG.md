# NGINX Web Server Add-on

### 30.11.2024 - 1.27.3-alpine3.20-slim

- Update image to [nginx:1.27.3-alpine3.20-slim](https://hub.docker.com/layers/library/nginx/1.27.3-alpine3.20-slim/images/sha256-a2d509cbd8a5a54c894cf518e94739f0936189631a24d05bb7c90e73ec639251).
- Removed `build.json` as all files uses the same image. `Dockerfile` now directly use the Add-on version from `config.json` to build the image.

### 26.08.2024 - 1.27.1-alpine3.20-slim

- Update image to [nginx:1.27.1-alpine3.20-slim](https://hub.docker.com/layers/library/nginx/1.27.1-alpine3.20-slim/images/sha256-15d20a9e80b094bc7fea73c8207bac1d2196d02251df24c6bbc58b19af1b4fd5).

### 05.07.2024 - 1.27.0-alpine3.19-slim

- Update image to [nginx:1.27.0-alpine3.19-slim](https://hub.docker.com/layers/library/nginx/1.27.0-alpine3.19-slim/images/sha256-20f83f2e3d34133d52bffba21c0ddde6c194e8c2bb4efd9812cd6842feed184a).

### 17.04.2024 - 1.25.5-alpine3.19-slim

- Update image to [nginx:1.25.5-alpine3.19-slim](https://hub.docker.com/layers/library/nginx/1.25.5-alpine3.19-slim/images/sha256-eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb).

### 01.03.2024 - 1.25.4-alpine3.18-slim

- Update image to [nginx:1.25.4-alpine3.18-slim](https://hub.docker.com/layers/library/nginx/1.25.4-alpine3.18-slim/images/sha256-bfe4c4c4c3a640ca73f5a43231b5382034968506d3bb37c9b98e4a8d695e0e10).
- Breaking change, renamed a couple of global variables related to NGINX. If you're having issues, try deleting the `55-nginx-init.sh` script and others if you suspect them. They will be re-added.
- Further cleaned up code.

### 29.01.2024 - 1.25.3-alpine3.18-slim-b

- Added a default `.htpasswd` file and example setup in NGINX config file.
- Moved `logs` folder from `<base_dir>` to `/config` for backup pupouses.
- Cleand up the code and corrected a minor bug in the variables.

### 28.01.2024 - 1.25.3-alpine3.18-slim

- Basically changed everything in the backend, so it's much more flexible, but here's a short summary.
- Set `base_folder` in config, this will be the folder that will contain the website and all the configuration files. Default is `/config`, but ou can change this to `/share` or `/media`, with or without subfolders as you like.
- Set `site_name` and `site_url` in config, these are used for filenames and folders, as well as generating a NGINX config file at `/<base_folder>/<site_name>/cfg/nginx/<site_name>.conf` unless you already have a config file in that folder. It will be enabled by default, and can be modified to suit your needs.
- `/<base_folder>/<site_name>/html/` is the defult root folder for your web server. If this is empty, a default NGINX `index.html` welcome page will be generated in here.
- `/<base_folder>/<site_name>/cfg/` will hold the `apk.txt`, `crontab` and `requirements.txt` files where you can define packages to be installed and cron jobs that shall run on a schedule.
- `/<base_folder>/<site_name>/cfg/cont-init.d/` will hold the container startup scripts. These scripts will be repopulated if deleted, but you can comment out or remove the contents of the files to disable them. You can also add your own scripts. The scripts are ran in alphanumerical order, hence the numbers on the start of the filenames.
- Fix execute permission for custom scripts in `/<base_folder>/<site_name>/cfg/cont-init.d`.
- Added `build.json` for specificity of image to pull based on arcitechure.

### 18.01.2024 - 1.25.3-alpine-slim

- Changed listening port to `8765`.
- ~~Added `conf.d` folder to server config files from `/addon_configs/5ec262d9_nginx_ws/nginx/conf.d/`. If no files is present, a template file is generated, but all options are commented out.~~
- Added the possibilty to add Alpine packages ~~to `/addon_configs/5ec262d9_nginx_ws/apk.txt`.~~
- Added the possibilty to add PyPI packages ~~to `/addon_configs/5ec262d9_nginx_ws/requirements.txt`. Requires `python3` in `apk.txt`.~~
- Changed the `crontab` file location ~~to `/addon_configs/5ec262d9_nginx_ws/crontab`.~~
- ~~Added the folder `/addon_configs/5ec262d9_nginx_ws/www/temp/`. Content in this folder will not be backed up by HA.~~
- Excluding `**/__pycache__` ~~and `/addon_configs/5ec262d9_nginx_ws/log/` from HA backups.~~

### 20.12.2023 - 1.25.3-alpine3.18-slim

- Re-base to the official [NGINX Alpine Slim](https://hub.docker.com/layers/library/nginx/1.25.3-alpine3.18-slim/images/sha256-d196915ddcdba9c28059bf111b2beeeb39d2cd0f8353a1ff4bfbf4b6189f3b0c) image from Docker Hub. This image has a footprint of only 5 MB.

### 18.12.2023 - 1.24.0-r14

- Initial Add-on release, just the Home Assistant Base image with NGINX 1.24.0-r14 on top.
