# Prowlarr Add-on

### 12.01.2023 - 1.11.4.4173-ls46
  - Update to latest version [1.11.4.4173-ls45](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.11.4.4173-ls45)
  - Excluding all Prowlarr files and folders except for the `Backups` folder from HA config to minimize HA backup file sizes. These backups are created weekly by Prowlarr, and can be managed in the Prowlarr GUI.

### 31.12.2023 - 1.11.4.4173-ls45
  - Update to latest version [1.11.4.4173-ls45](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.11.4.4173-ls45)
  - Split up installations instructions from README.md to DOCS.md
  - Added `rw` properties for the `media` and `share` folders.

### 16.12.2023 - 1.10.5.4116-ls43
  - Initial Add-on release based on [LinuxServer.io Prowlarr 1.10.5.4116-ls43](https://github.com/linuxserver/docker-prowlarr/releases/tag/1.10.5.4116-ls43)
