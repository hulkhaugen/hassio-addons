# Home Assistant Add-ons

This is a small set of Add-ons for Home Assistant. These are ment to be as plain and simple as possible with no bells or whistles. There are no built-in VPN services or SMB mounting. They do not have SSL support built in. Some personal tips:

- Use the [NGINX Proxy Manager](https://github.com/hassio-addons/addon-nginx-proxy-manager) Add-on by @frenck to handle all the external traffic as a reverse proxy, and just use HTTP traffic on the internal network. NGINX Proxy Manager will handle SSL certificates and renewal for you.
- Mount external drives using [80-mount-usb-to-media-by-label.rules](https://gist.github.com/eklex/c5fac345de5be9d9bc420510617c86b5) by @eklex. This will autmatically mount your hard drives to `/media`. You can easily modify that file to mount in `/share` if you prefer, as I did.
- Use the internal backup functions of the Add-ons to store the backups in a folder you backup. For instance in [Sonarr](https://github.com/hulkhaugen/hassio-addons/tree/main/sonarr), navigate to `Settings` -> `General` and click on `Show Advanced`. Scroll down to `Backups` -> `Folder` and input something like `/media/addon_backups/sonarr/`. Now if you use something like the [Home Assistant Google Drive Backup](https://github.com/sabeechen/hassio-google-drive-backup) Add-on by @sabeechen, make sure you configure it to backup the `/media` folder, and ignore the `Sonarr` Add-on. This will save lots of space for your backups.

## Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your Home Assistant instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

# Add-ons

## EmulatorJS
<img src="https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/emulatorjs/icon.png" alt="EmulatorJS" width="64" align="left" style="padding-right:12px">[EmulatorJS](https://docs.linuxserver.io/images/docker-emulatorjs/) - In browser web based emulation portable to nearly any device for many retro consoles. A mix of emulators is used between Libretro and EmulatorJS. The frontend application has been initially optimized around being used with a standard gamepad. The navigation revolves around the up/down/left/right keys to browse the menus and launch games. Mobile browsers will function, just keep in mind compatibility will be reduced especially for CD based games.

## Jellyfin
<img src="https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/jellyfin/icon.png" alt="Jellyfin" width="64" align="left" style="padding-right:12px">[Jellyfin](https://jellyfin.org/) is a Free Software Media System that puts you in control of managing and streaming your media. It is an alternative to the proprietary Emby and Plex, to provide media from a dedicated server to end-user devices via multiple apps. Jellyfin is descended from Emby's 3.5.2 release and ported to the .NET Core framework to enable full cross-platform support. There are no strings attached, no premium licenses or features, and no hidden agendas: just a team who want to build something better and work together to achieve it.

## NGINX Web Server
<img src="https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/nginx_ws/icon.png" alt="NGINX Web Server" width="64" align="left" style="padding-right:12px">[NGINX](https://www.nginx.com/) is based on the official [NGINX Alpine Slim](https://hub.docker.com/_/nginx) image from Docker Hub, and has a footprint of only 5 MB. It installs the NGINX image, and sets up a folder structure where you can configure a server, configure crontab, add Alpine APK packages and PyPI packages, add and modify start-up scripts. Initially very light, but flexible in that you can add pretty much anything you need.

## Prowlarr
<img src="https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/prowlarr/icon.png" alt="Prowlarr" width="64" align="left" style="padding-right:12px">[Prowlarr](https://prowlarr.com/) is an indexer manager/proxy built on the popular arr .net/reactjs base stack to integrate with your various PVR apps. Prowlarr supports management of both Torrent Trackers and Usenet Indexers. It integrates seamlessly with LazyLibrarian, Lidarr, Mylar3, Radarr, Readarr, and Sonarr offering complete management of your indexers with no per app Indexer setup required (we do it all).

## qBittorrent
<img src="https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/qbittorrent/icon.png" alt="qBittorrent" width="64" align="left" style="padding-right:12px">The [qBittorrent project](https://www.qbittorrent.org/) aims to provide an open-source software alternative to µTorrent.Additionally, qBittorrent runs and provides the same features on all major platforms (FreeBSD, Linux, macOS, OS/2, Windows). qBittorrent is based on the Qt toolkit and libtorrent-rasterbar library.

## Radarr
<img src="https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/radarr/icon.png" alt="Radarr" width="64" align="left" style="padding-right:12px">[Radarr](https://radarr.video/) is a movie collection manager for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new movies and will interface with clients and indexers to grab, sort, and rename them. It can also be configured to automatically upgrade the quality of existing files in the library when a better quality format becomes available.

## Sonarr
<img src="https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/sonarr/icon.png" alt="Sonarr" width="64" align="left" style="padding-right:12px">[Sonarr](https://sonarr.tv/) is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

## Tautulli
<img src="https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/tautulli/icon.png" alt="Tautulli" width="64" align="left" style="padding-right:12px">[Tautulli](https://tautulli.com/) is a 3rd party application that you can run alongside your Plex Media Server to monitor activity and track various statistics. Most importantly, these statistics include what has been watched, who watched it, when and where they watched it, and how it was watched. The only thing missing is "why they watched it", but who am I to question your 42 plays of Frozen. All statistics are presented in a nice and clean interface with many tables and graphs, which makes it easy to brag about your server to everyone else.