## Installation

### Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your **Home Assistant** instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

### Install Add-on
1. Locate **NGINX Web Server** and click `Install`.
2. Check the Add-on configuration: 
   - `HTTP Interface` is the port where you can access your site. Default is `8765`.
   - `base_folder` is where the site and config files will be stored. Default is `/config` which appears as `/addon_configs/5ec262d9_nginx_ws` outside the container.
   - `site_name` is used for configurations and creating subfolders.
   - `site_url` is used in the NGINX `<site_name>.conf` file.
3. Start the Add-on and check the logs. If evereything went well, click on the `Open Web UI` button or open `http://<server-ip-adress>:8765`. Unless you have your own index.html file already in the html folder, you will see a NGINX welcome site.

### Configuration alternatives
- Add Alpine apk packages to the `<base_dir>/<site_name>/cfg/apk.txt` file if needed.
- Add Python pip packages to the `<base_dir>/<site_name>/cfg/requirements.txt` file if needed.
- Add script(s) or modify existing ons in the `<base_dir>/<site_name>/cfg/cont-init.d/` folder, and it will run on (re)start. If you delete an original script, it be re-created on restart. Modifications will not be overwritten. Erase content in original scripts to disable.
- Setup scheduled tasks in the `<base_dir>/<site_name>/cfg/crontab` file if needed.
- Modify the server at `<base_dir>/<site_name>/nginx/<site_name>.conf` if needed.
- Add password protection to the whole server, or just a path/location under the main domain. Replace/update the deafault `.htpasswd` file as the default cridentials `user` and `password` are not very safe at all.

## Folder structure

```
<base_folder>/
 └─<site_name>/
    ├─cfg/
    │  ├─cont-init.d/
    │  │  └─xx-script.sh           <- Scripts to run at startup
    │  ├─log/
    │  │  ├─<site_name>.access.log 
    │  │  └─<site_name>.error.log 
    │  ├─nginx/
    │  │  ├─.htpasswd              <- Basic auth cridentials file
    │  │  └─<site_name>.conf       <- Server configuration
    │  ├─apk.txt                   <- Alpine packages to be installed
    │  ├─crontab                   <- Cron jobs
    │  └─requirements.txt          <- Pip packages to be installed
    └─html/
       └─index.html                <- Website
 ```

### Example `apk.txt` file
[Alpine Linux packages](https://pkgs.alpinelinux.org/packages)   
These packages will be installed using the `apk add --no-cache` command. Version numbers are optional.
```
apache2-utils
bash=5.2.26-r0
```
### Example `requirements.txt` file
[PyPI - The Python Package Index](https://pypi.org/)   
These packages will be installed using the `pip3 install --no-cache-dir` command. Version numbers are optional. If Python and/or py3-pip is not defined in `apk.txt`, they will still be installed anyway if anything is defined in this file.
```
beautifulsoup4==4.12.2
requests
```
### Example `crontab` file
[Crontab.guru](https://crontab.guru/) is a helpful site to configure the crontab file. You'll need to restart the Add-on for changes in this file to take effect.
```
# Run daily every hour from 7 through 20
0 7-20 * * * /usr/bin/python3 /config/example/cfg/py/my_script.py

# Run script daily at 08:30
30 8 * * * /share/scripts/my_script.sh
```

### Example `.htpasswd` file
[Htpasswd Generator](https://wtools.io/generate-htpasswd-online) is one of many online tools that can help you generate a `.htpasswd` file, like the one below where username is `user` and password is obviously `password`.
```
user:$apr1$5t0fhqlk$wlo9IyPjYDwmAjq6hDRzn0
```

