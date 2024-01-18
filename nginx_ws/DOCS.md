## Installation

### Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your **Home Assistant** instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

### Install Add-on
1. Locate **Nginx Web Server** and click `Install`.
2. The default external port is `8765`, but you can change this as you see fit.
3. Put your site files in the root folder `/addon_configs/5ec262d9_nginx_ws/www/html/`.
4. Once the configuration is done, you can start the Add-on.
5. Click on the `Open Web UI` button.

## Folder structure

```
config/                <- /addon_configs/5ec262d9_nginx_py/
 ├─ log/
 │  └─ nginx/
 ├─ nginx/
 │  └─ conf.d/
 │     └─ template.conf  <- Dummy file, edit to enable
 ├─ www/
 │  ├─ html/
 │  │  └─ index.html     <- Suggested location for index
 │  └─ temp/             <- Temporary files, not backed up
 ├─ apk.txt              <- Alpine packages to be installed
 ├─ crontab              <- Cron jobs, empty by default
 └─ requirements.txt     <- Pip packages to be installed
```

### Example `apk.txt` file
[Alpine Linux packages](https://pkgs.alpinelinux.org/packages)   
These packages will be installed using the `apk add --no-cache` command. Version numbers are optional.
```
bash=5.2.26-r0
curl
python3
```
### Example `requirements.txt` file
[PyPI - The Python Package Index](https://pypi.org/)   
These packages will be installed using the `pip3 install --no-cache-dir` command. Version numbers are optional.
```
beautifulsoup4==4.12.2
requests
```
