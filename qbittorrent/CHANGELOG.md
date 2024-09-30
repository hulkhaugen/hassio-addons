# qBittorrent Add-on

### 30.09.2024 - 5.0.0-r0 
  - Update to latest version [5.0.0-r0](https://github.com/linuxserver/docker-qbittorrent/releases/tag/5.0.0-r0-ls354).

### 19.09.2024 - 4.6.7-r0 
  - Update to latest version [4.6.7-r0](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.7-r0-ls351).

### 20.08.2024 - 4.6.6-r0 
  - Update to latest version [4.6.6-r0](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.6-r0-ls347).

### 30.05.2024 - 4.6.5-r0 
  - Update to latest version [4.6.5-r0](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.5-r0-ls333).

### 22.04.2024 - 4.6.4-r1 
  - Update to latest version [4.6.4-r1](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.4-r1-ls326).

### 28.03.2024 - 4.6.4-r0 
  - Update to latest version [4.6.4-r0](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.4-r0-ls321).

### 02.02.2024 - 4.6.3-r0 
  - Update to latest version [4.6.3-r0](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.3-r0-ls309).
  - Changed version scheme to exclude minor Linuxserver specific versions.

### 28.01.2024 - 4.6.3-r0-ls308 
  - Update to latest version [4.6.3-r0-ls308](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.3-r0-ls308).

### 21.01.2024 - 4.6.3-r0-ls307 
  - Update to latest version [4.6.3-r0-ls307](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.3-r0-ls307).
  - Added `build.json` for specificity of image to pull based on arcitechure.

### 17.01.2024 - 4.6.3-r0-ls306
  - Update to latest version [4.6.3-r0-ls306](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.3-r0-ls306).

### 14.01.2024 - 4.6.2-r0-ls305
  - Update to latest version [4.6.2-r0-ls305](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.2-r0-ls305).
  - Fix permissions by setting PUID and PGID environment variables to 0.

### 12.01.2024 - 4.6.2-r0-ls304
  - Update to latest version [4.6.2-r0-ls304](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.2-r0-ls304).
  - Excluding some unimportant data from HA backups to save space.

### 15.12.2023 - 4.6.2-r0-ls302
  - Initial Add-on release based on [LinuxServer.io qBittorrent 4.6.2-r0-ls302](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.2-r0-ls302).
  - Changed the default listening port from 6881 to 60065.
  - Disabled the following default settings as they are not allowed on some private trackers:
    - DHT (Decentralized Network)
    - PeX (Peer Exchange)
    - LPD (Local Peer Discovery)
