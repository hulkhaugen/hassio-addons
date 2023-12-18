# Home Assistant Add-ons

This is a small set of add-ons for Home Assistant. These are ment to be as plain and simple as possible with no bells or whistles. There are no built-in VPN services or SMB mounting. If you need to mount an external drive, I suggest using this [80-mount-usb-to-media-by-label.rules](https://gist.github.com/eklex/c5fac345de5be9d9bc420510617c86b5) by @eklex. They do not have SSL support built in. I reccomend using the [NGINX Proxy Manager](https://github.com/hassio-addons/addon-nginx-proxy-manager) Add-on to handle all the external traffic as a proxy, and just use HTTP traffic on the internal network.

### Adding Add-on repository to Home Assistant

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fhulkhaugen%2Fhassio-addons)

1. Open your Home Assistant instance.
2. Open `Settings` -> `Add-ons` and click on `Add-on Store`.
3. Click on the three dots in the upper right corner and select `Repositories`.
4. Paste https://github.com/hulkhaugen/hassio-addons and click `Add`.

# Add-ons

## NGINX Web Server
<img src="https://raw.githubusercontent.com/hulkhaugen/hassio-addons/main/nginx_ws/icon.png" alt="NGINX Web Server" width="64" align="left" style="padding-right:12px">[NGINX](https://www.nginx.com/) is a web server that can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache. This particular Add-on will let you host up to 3 different servers which can be accessed with uniqe ports and/or subdomains. There is no backend stuff included, but you can still host anything that is handeled in the frontend such as HTML, CSS, JavaScript, Images etc.

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