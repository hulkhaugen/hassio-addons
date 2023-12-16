# Tautulli Add-on

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/tautulli/icon.png)

[Tautulli](https://tautulli.com/) is a 3rd party application that you can run alongside your Plex Media Server to monitor activity and track various statistics. Most importantly, these statistics include what has been watched, who watched it, when and where they watched it, and how it was watched. The only thing missing is "why they watched it", but who am I to question your 42 plays of Frozen. All statistics are presented in a nice and clean interface with many tables and graphs, which makes it easy to brag about your server to everyone else.

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/tautulli/screenshot.png)

## Installation

### Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your **Home Assistant** instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

### Installation
1. Locate **Tautulli** and click `Install`.
2. If you want to change the **Frontend** port, this can be done in the `Configuration` tab.
3. Once the installation has finnished, you can start the Add-on.
4. Click on the **Web UI** and follow the instructions.

More info can be found in the [Tautulli wiki at GitHub](https://github.com/Tautulli/Tautulli/wiki).
