# Radarr Add-on

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/radarr/logo.png)

[Radarr](https://radarr.video/) is a movie collection manager for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new movies and will interface with clients and indexers to grab, sort, and rename them. It can also be configured to automatically upgrade the quality of existing files in the library when a better quality format becomes available.

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/radarr/screenshot.png)

This Add-on is very plain and simple. If you need to mount an external drive, I suggest using [80-mount-usb-to-media-by-label.rules](https://gist.github.com/eklex/c5fac345de5be9d9bc420510617c86b5) by [eklex](https://github.com/eklex). 

## Installation

### Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your **Home Assistant** instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

### Installation
1. Locate **Radarr** and click `Install`.
2. If you want to change the **Frontend** port, this can be done in the `Configuration` tab.
3. Once the installation has finnished, you can start the Add-on.
4. Click on the **Web UI** and follow the instructions.

More info can be found in the [Radarr wiki at Servarr](https://wiki.servarr.com/radarr).
