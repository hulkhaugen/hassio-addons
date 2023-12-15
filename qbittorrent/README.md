# qBittorrent Add-on

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/qbittorrent/icon.png)

The [qBittorrent project](https://www.qbittorrent.org/) aims to provide an open-source software alternative to µTorrent.
qBittorrent is based on the Qt toolkit and libtorrent-rasterbar library.

![image](https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/qbittorrent/screenshot.png)

This Add-on is very plain and simple. It has no VPN functionality built in, SMB mounts or fancy-smancy GUI. If you need to mount an external drive, I suggest using [80-mount-usb-to-media-by-label.rules](https://gist.github.com/eklex/c5fac345de5be9d9bc420510617c86b5) by [eklex](https://github.com/eklex). A custom theme can still be applied manually. The only things I altered is to set DHT (Decentralized Network), PeX (Peer Exchange) and LPD (Local Peer Discovery) to `disabled` by default, but these can be enabled again in the settings. The reason being that most private trackers don't allow those functions. The listening port is changed from 6881 to 60065, as some ISPs are blocking traffic on those ports.

## Installation

### Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your **Home Assistant** instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

### Installation
1. Locate **qBittorent** and click `Install`.
2. If you want to change the **Web UI** port, this can be done in the `Configuration` tab. Do not change the other ports, leave them at **60065**. This port should also be forwarded in your router.
3. Once the installation has finnished, you can start the Add-on.
4. Check the `Log` tab, and you will see that your username is `admin`, and a temporary password is generated for you. Open the **Web UI**, log in and change the password in the settings.

### Backup and restore

- This Add-on will store the configuration files in a persistent folder that you can locate at `/addon_configs/xxxxx_qbittorrent/qBittorrent/`.
- The `BT_backup/` folder contains all the `.fastresume` which holds the info about where the content is stored etc. The `.torrent` files is what was used to add the torrents to the client, and holds info about the trackers and content.
- The `categories.json` file holds the custom categories you might have created to organize your torrents.
- The `qBittorrent.conf` file holds all the application settings. This can safely be deleted to restore default settings, which will happen on Add-on restart. This will not affect your active torrents or your stats.
- The `qBittorrent-data.conf` file holds the client stats.
- The `watched_folders.json` file holds the data for the folders that you might have configured qBittorent to monitor and add content from.