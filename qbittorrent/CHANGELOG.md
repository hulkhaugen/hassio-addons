# qBittorrent Add-on

### 15.12.2023 - 4.6.2-r0-ls302

  - Initial Add-on release based on [LinuxServer.io qBittorrent 4.6.2-r0-ls302](https://github.com/linuxserver/docker-qbittorrent/releases/tag/4.6.2-r0-ls302)
  - Changed the default listening port from 6881 to 60065.
  - Disabled the following default settings as they are not allowed on some private trackers:
    - DHT (Decentralized Network)
    - PeX (Peer Exchange)
    - LPD (Local Peer Discovery)
